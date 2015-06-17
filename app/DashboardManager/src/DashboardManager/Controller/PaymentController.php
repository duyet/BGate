<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */
namespace DashboardManager\Controller;


//use Zend\Mvc\Controller\AbstractActionController;
use DashboardManager\ParentControllers\DemandAbstractActionController;
use Zend\View\Model\ViewModel;

use Zend\Http\Client\Adapter\Curl;
use SpeckPaypal\Element;
use SpeckPaypal\Element\Config;
use SpeckPaypal\Service\Request;
use SpeckPaypal\Element\PaymentDetails;
/**
 * @author Kelvin Mok
 * This is the Company Controller class that controls the static
 * pages.
 */
class PaymentController extends DemandAbstractActionController {
	protected $config_handle;
	protected $paypalRequest;

	public function initPaypal()
	{
		$this->config_handle = $this->getServiceLocator()->get('Config');

		$config = array(
		    'username'      => $this->config_handle['settings']['paypal']['username'],
		    'password'      => $this->config_handle['settings']['paypal']['password'],
		    'signature'     => $this->config_handle['settings']['paypal']['signature'],
		    'endpoint'      => $this->config_handle['settings']['paypal']['endpoint']
		);

		$paypalConfig = new \SpeckPaypal\Element\Config($config);

		//set up http client
		$client = new \Zend\Http\Client;
		$client->setMethod('POST');
		
		$adapter = new \Zend\Http\Client\Adapter\Curl();
		$adapter->setOptions(array(
			'curloptions' => array(
				CURLOPT_SSL_VERIFYPEER => false,
				CURLOPT_SSL_VERIFYHOST => false,
				
			)
		));
		$client->setAdapter($adapter);
		
		$paypalRequest = new \SpeckPaypal\Service\Request;
		$paypalRequest->setClient($client);
		$paypalRequest->setConfig($paypalConfig);
		return $paypalRequest;
	}
	
	public function paypaltransferAction()
    {
    	$auth = $this->getServiceLocator()->get('AuthService');
		if (!$auth->hasIdentity()):
     	 	return $this->redirect()->toRoute('login');
    	endif;
    	 
		$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;
		$success_msg = null;

		$authUsers = new \model\authUsers();
		$authUsersFactory = \_factory\authUsers::get_instance();
		$userData = $authUsersFactory->get_row(array("user_id" => $this->auth->getUserID()));
		$user_id = $this->auth->getUserID();
		$user_login = $userData->user_login;

		$Amount = $this->getEvent()->getRouteMatch()->getParam('param1');

		//setup config object
		$paypalRequest = $this->initPaypal();
		$details = new \SpeckPaypal\Element\PaymentDetails (array('amt' => $Amount));

        $details->setDesc("Transfer money online ($".$Amount.") to ".$user_login."'s account on BGATE");
        $details->setCustom('custom');
        $details->setInvNum(date("YmdHis"));
        $details->setPaymentRequestId($user_id);
        $details->setPaymentReason('Refund');
		$express = new \SpeckPaypal\Request\SetExpressCheckout(array('paymentDetails' => $details));

		$uri = new \Zend\Uri\Uri($this->getRequest()->getUri());

		$port = intval($uri->getPort());
		$url_base = $uri->getScheme() . '://' . $uri->getHost();
		//if($port !== 80):
			//$url_base = $uri->getScheme() . '://' . $uri->getHost() . ':' . $port;
		//endif;
		$returnUrl = $url_base . $this->url()->fromRoute('payment',
					array('controller'=>'payment',
				        'action' => 'returnpaypal'));
		$cancelUrl = $url_base . $this->url()->fromRoute('payment',
					array('controller'=>'payment',
				        'action' => 'cancelpaypal'));
		//var_dump(expression)
		$express->setReturnUrl($returnUrl);
		$express->setCancelUrl($cancelUrl);
		$response = $paypalRequest->send($express);

		$token = $response->getToken();
		$url = $this->config_handle['settings']['paypal']['url'].$token;

		$TransactionLog = new \model\TransactionLog();
		$TransactionLogFactory = \_factory\TransactionLog::get_instance();
		$TransactionLog->ID = 0;
		$TransactionLog->Identify = $user_id;
		$TransactionLog->RequestURL = $url;
		$TransactionLog->RequestIP = $_SERVER ['REMOTE_ADDR'];
		$TransactionLog->RequestTime = date("Y-m-d H:i:s");
		$TransactionLog->MerchTxnRef = $token;
		$TransactionLog->IP = $_SERVER ['REMOTE_ADDR'];
		$TransactionLog->Type = 0;
		$TransactionLog->Status = 0;

		$TransactionLogFactory->saveTransactionLog($TransactionLog);

		return $this->redirect()->toUrl($url);

	}
	protected function checkSuccessPaypal($response)
    {
    	$success = false;
    	$Message = '';
        if(!isset($response['ACK'])) {
            $success = false;
            $Message = 'ACK key not found in response.';
        } else if($response['ACK'] == "Success" || $response['ACK'] == "SuccessWithWarning") {
            $success = true;
        }

        if(isset($response['ERRORS'])) {
            foreach($response['ERRORS'] as $error) {
                if(isset($error['LONGMESSAGE'])) {
                    $Message .= ' '.$error['LONGMESSAGE'];
                }
            }
        } 

        return array('result' => $success, 'message' => $Message);
    }
	public function returnpaypalAction()
	{
		$request = $this->getRequest();
		// var_dump($request->isGet());
		// 			die('getRequest');
		if ($request->isGet()):
			$token		   = $request->getQuery('token');
			$payerId       = $request->getQuery('PayerID');
			$paypalRequest = $this->initPaypal();

			$details = new \SpeckPaypal\Request\GetExpressCheckoutDetails(array('token' => $token));
			$response = $paypalRequest->send($details);
			$details_arr = $response->toArray();
			//var_dump($response_arr);
			//die('getRequest');
			$doAuthorize = new \SpeckPaypal\Request\DoAuthorize(array(
				'transactionId' => '6H9860437V720670R',
				'amt' => $details_arr['AMT'],
				'msgSubId' => $details_arr['CHECKOUTSTATUS']

			));

			$paymentDetails = new \SpeckPaypal\Element\PaymentDetails (array('amt' => $details_arr['AMT']));
	        $paymentDetails->setDesc($details_arr['DESC']);
	        $paymentDetails->setCustom($details_arr['CUSTOM']);
	        $paymentDetails->setInvNum($details_arr['INVNUM']);
	        $paymentDetails->setPaymentRequestId($details_arr['PAYMENTREQUEST'][0]['PAYMENTREQUESTID']);
	        $paymentDetails->setPaymentReason($details_arr['PAYMENTREQUEST'][0]['PAYMENTREASON']);

			//To capture express payment			
			$captureExpress = new \SpeckPaypal\Request\DoExpressCheckoutPayment(array(
			    'token'             => $token,
			    'payerId'           => $payerId,
			    'paymentDetails'    => $paymentDetails
			));
			$response = $paypalRequest->send($captureExpress);
			$response_arr = $response->toArray();

			$result = $this->checkSuccessPaypal($response_arr);

			$initialized = $this->initialize();
			$user_id = $this->auth->getUserID();

			$checkout_details = $paypalRequest->send($details);
			$checkout_details_arr = $checkout_details->toArray();

			$TransactionLogFactory = \_factory\TransactionLog::get_instance();
			$TransactionLog = $TransactionLogFactory->get_row_object(array(
				"MerchTxnRef" => $token,
			));

			if($result['result'] AND isset($user_id) AND !empty($user_id)):			
				if(empty($TransactionLog->ResponseURL)):
					$uri = new \Zend\Uri\Uri($this->getRequest()->getUri());

					$TransactionLog->RequestURL =  $uri;
					$TransactionLog->RequestIP =  $_SERVER ['REMOTE_ADDR'];
					$TransactionLog->RequestTime =  $response_arr["TIMESTAMP"];
					$TransactionLog->Status = 1;
					
					$TransactionLog->HashValidated =  $response_arr['ACK'];
					$TransactionLog->ResponseCode =  $checkout_details_arr['CHECKOUTSTATUS'];					
					$TransactionLog->ResponseDescription = $result['message'];
					$TransactionLog->Result = 'Transaction was paid successful';
					$TransactionLogFactory->saveTransactionLog($TransactionLog);

					$TransactionDetail = new \model\TransactionDetail();
					$TransactionDetailFactory = \_factory\TransactionDetail::get_instance();
					$TransactionDetail->TransactionLogID = $TransactionLog->ID;
					$TransactionDetail->UserID = $user_id;
					$TransactionDetail->Type = 0;
					$TransactionDetail->Amount = $details_arr['AMT'];
					$TransactionDetail->Description = $details_arr['DESC'];
					$TransactionDetailFactory->saveTransactionDetail($TransactionDetail);

					return $this->redirect()->toRoute('demand',
					array('controller'=>'demand',
				        'action' => 'resultpayment',
				        'param1' => $TransactionLog->ID));
				else:
					return $this->redirect()->toRoute('demand',
					array('controller'=>'demand',
				        'action' => 'resultpayment',
				        'param1' => $TransactionLog->ID));
				endif;
			else:
				$TransactionLog->ResponseDescription = $result['message'];
				$TransactionLog->Result = 'Transaction was not paid successful';
				$TransactionLogFactory->saveTransactionLog($TransactionLog);
				return $this->redirect()->toRoute('demand',
					array('controller'=>'demand',
				        'action' => 'resultpayment',
				        'param1' => $TransactionLog->ID));
			endif;

                // var_dump ($result);
			// die();
		else:
			return $this->notFoundAction ();
		endif;
	}
	public function cancelpaypalAction()
	{
		$request = $this->getRequest();
		if ($request->isGet()):
			$token		   = $request->getQuery('token');
			$TransactionLogFactory = \_factory\TransactionLog::get_instance();
			$TransactionLog = $TransactionLogFactory->get_row_object(array(
				"MerchTxnRef" => $token,
			));

			$TransactionLog->ResponseDescription = 'A customer had cancel a transaction';
			$TransactionLog->Result = 'Transaction was not paid successful';
			$TransactionLogFactory->saveTransactionLog($TransactionLog);
			return $this->redirect()->toRoute('demand',
				array('controller'=>'demand',
			        'action' => 'resultpayment',
			        'param1' => $TransactionLog->ID));
		else:
			return $this->notFoundAction ();
		endif;

	}


	public function onepayvisaAction()
    {
    	$auth = $this->getServiceLocator()->get('AuthService');
		if (!$auth->hasIdentity()):
     	 	return $this->redirect()->toRoute('login');
    	endif;
    	 
		$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;
		$success_msg = null;

		$ID = $this->getEvent()->getRouteMatch()->getParam('param1');


        //$encryptExt = new encryptExt;
        //$record = BdaVisa::model()->findByPk($encryptExt->decrypt($id));

        $uri = new \Zend\Uri\Uri($this->getRequest()->getUri());

		$port = intval($uri->getPort());
		$url_base = $uri->getScheme() . '://' . $uri->getHost();
		if($port !== 80):
			$url_base = $uri->getScheme() . '://' . $uri->getHost() . ':' . $port;
		endif;
		$returnUrl = $url_base . $this->url()->fromRoute('payment',
					array('controller'=>'payment',
				        'action' => 'feedonepayvisa'));

		$squareUrl = $url_base . $this->url()->fromRoute('payment',
					array('controller'=>'payment',
				        'action' => 'transferonepayvisa'));

		$user_id = $this->auth->getUserID();

        if(isset($user_id) AND !empty($user_id)):
            //$payExt = new payExt;
            $usd = $this->get_exchange_rates('USD');
            $infopayment = $this->config_handle['settings']['onepay_conf'];

            $square =  $squareUrl.//$this->createUrl('onepay/transferinternational'). 
                "?Title=" . $infopayment['title'].
                '&vpc_TicketNo=' . $_SERVER ['REMOTE_ADDR'].
                "&virtualPaymentClientURL=" . $infopayment['url'].
                "&vpc_Merchant=" . $infopayment['merchant'].
                "&vpc_AccessCode=" . $infopayment['accesscode'].
                "&vpc_MerchTxnRef=" .  md5(rand()).
                "&vpc_OrderInfo=" . 'BGATE-'.$user_id .'-'.date("YmdHis").'-'.$ID.
                "&vpc_Amount=" . (intval($ID)*intval($usd)*100).
                "&vpc_ReturnURL=" . $returnUrl .//(Yii::app()->request->hostInfo).($this->createUrl('onepay/feedinternational')).//"http://localhost:800/bda/quocte_php/dr.php" .
                "&vpc_Version=" . $infopayment['version'] .
                "&vpc_Command=" . $infopayment['command'] .
                "&vpc_Locale=" . $infopayment['locale'] ;
            return $this->redirect()->toUrl($square);
            //$this->redirect($square);
        else:
            return $this->notFoundAction ();
        endif;
    }
    public function transferonepayvisaAction()
    {
    	$auth = $this->getServiceLocator()->get('AuthService');
		if (!$auth->hasIdentity()):
     	 	return $this->redirect()->toRoute('login');
    	endif;
    	 
		$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;
		$success_msg = null;

		$user_id = $this->auth->getUserID();

		$uri = new \Zend\Uri\Uri($this->getRequest()->getUri());

		$port = intval($uri->getPort());
		$url_base = $uri->getScheme() . '://' . $uri->getHost();
		if($port !== 80):
			$url_base = $uri->getScheme() . '://' . $uri->getHost() . ':' . $port;
		endif;
		$AgainLink = $url_base . $this->url()->fromRoute('payment',
					array('controller'=>'payment',
				        'action' => 'transferonepayvisa'));


        //$infopayment = Yii::app()->params['onepay_conf'];
        $infopayment = $this->config_handle['settings']['onepay_conf'];
        $SECURE_SECRET = $infopayment['securehash'];
        $vpcURL = $_GET["virtualPaymentClientURL"] . "?";
        unset($_GET["virtualPaymentClientURL"]); 
        $_GET['AgainLink']= $AgainLink;//(Yii::app()->request->hostInfo).($this->createUrl('onepay/transferinternational'));
        $md5HashData = "";
        ksort ($_GET);
        $appendAmp = 0;
        foreach($_GET as $key => $value) {
            if (strlen($value) > 0) {
                if ($appendAmp == 0) {
                    $vpcURL .= urlencode($key) . '=' . urlencode($value);
                    $appendAmp = 1;
                } else {
                    $vpcURL .= '&' . urlencode($key) . "=" . urlencode($value);
                }
                if ((strlen($value) > 0) && ((substr($key, 0,4)=="vpc_") || (substr($key,0,5) =="user_"))) {
                    $md5HashData .= $key . "=" . $value . "&";
                }
            }
        }
        $md5HashData = rtrim($md5HashData, "&");
        if (strlen($SECURE_SECRET) > 0) {
            $vpcURL .= "&vpc_SecureHash=" . strtoupper(hash_hmac('SHA256', $md5HashData, pack('H*',$SECURE_SECRET)));
        }
        // $vpc_MerchTxnRef = $_GET['vpc_MerchTxnRef'];
        // $ip = $_GET['vpc_TicketNo'];
        // $vpc_DO_ip = $_SERVER ['REMOTE_ADDR'];
        // $vpc_DO = $vpcURL;

        // $invoice_id = (explode("-",$_GET['vpc_OrderInfo']));
        // $invoice = BdaInvoice::model()->find(array('condition' => 't.number = '.$invoice_id[1]));
        // $invoice->status = 1;
        // $invoice->update(array('status'));

        // $condition = BdaCondition::model()->find(array('condition' => 't.key = "progress"'));
        // $visa = BdaVisa::model()->findByPk($invoice->visa_id);
        // $visa->status = $condition->id;
        // $visa->update(array('status'));

        // $payment = new BdaPayment;
        // $payment->visa_id = $invoice->visa_id;
        // $payment->vpc_DO = $vpc_DO;
        // $payment->vpc_DO_ip = $vpc_DO_ip;
        // $payment->vpc_DO_time = date('Y-m-d H:i:s');
        // $payment->ip = $ip;
        // $payment->vpc_MerchTxnRef = $vpc_MerchTxnRef;
        // $payment->status = 1;
        // $payment->type = 1;
        // $payment->save();

        // $this->redirect($vpcURL);
        $TransactionLog = new \model\TransactionLog();
		$TransactionLogFactory = \_factory\TransactionLog::get_instance();
		$TransactionLog->ID = 0;
		$TransactionLog->Identify = $user_id;
		$TransactionLog->RequestURL = $vpcURL;
		$TransactionLog->RequestIP = $_SERVER ['REMOTE_ADDR'];
		$TransactionLog->RequestTime = date("Y-m-d H:i:s");
		$TransactionLog->MerchTxnRef = $_GET['vpc_MerchTxnRef'];//$token;
		$TransactionLog->IP = $_SERVER ['REMOTE_ADDR'];
		$TransactionLog->Type = 1;
		$TransactionLog->Status = 0;

		$TransactionLogFactory->saveTransactionLog($TransactionLog);

        return $this->redirect()->toUrl($vpcURL);
    }
    public function feedonepayvisaAction(){
    	
        //$infopayment = Yii::app()->params['onepay_conf'];
        $initialized = $this->initialize();
		if ($initialized !== true) return $initialized;

        $authUsers = new \model\authUsers();
		$authUsersFactory = \_factory\authUsers::get_instance();
		$userData = $authUsersFactory->get_row(array("user_id" => $this->auth->getUserID()));
		$user_id = $this->auth->getUserID();
		$user_login = $userData->user_login;

        $vpc_OrderInfo = $_GET["vpc_OrderInfo"];
        $info_arr  = explode("-", $vpc_OrderInfo);
        //var_dump($vpc_OrderInfo);
    	//var_dump($info_arr);
    	//die('feedonepayvisa');

        $infopayment = $this->config_handle['settings']['onepay_conf'];
        $SECURE_SECRET = $infopayment['securehash'];
        $vpc_Txn_Secure_Hash = $_GET["vpc_SecureHash"];
        unset($_GET["vpc_SecureHash"]);
        $errorExists = false;
        if (strlen($SECURE_SECRET) > 0 && $_GET["vpc_TxnResponseCode"] != "7" && $_GET["vpc_TxnResponseCode"] != "No Value Returned") {
            ksort($_GET);
            $md5HashData = "";
            foreach ($_GET as $key => $value) {
                if ($key != "vpc_SecureHash" && (strlen($value) > 0) && ((substr($key, 0,4)=="vpc_") || (substr($key,0,5) =="user_"))) {
                    $md5HashData .= $key . "=" . $value . "&";
                }
            }
            $md5HashData = rtrim($md5HashData, "&");
            if (strtoupper ( $vpc_Txn_Secure_Hash ) == strtoupper(hash_hmac('SHA256', $md5HashData, pack('H*',$SECURE_SECRET)))) {
                $hashValidated = "CORRECT";
            } else {
                $hashValidated = "INVALID HASH";
            }
        } else {
            $hashValidated = "INVALID HASH";
        }

        if(isset($_GET['vpc_MerchTxnRef'])){
            $vpc_MerchTxnRef = $_GET['vpc_MerchTxnRef'];
            $vpc_DR_ip = $_SERVER ['REMOTE_ADDR'];;
            $vpc_DR = (!empty($_SERVER['HTTPS'])) ? "https://".$_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'] : "http://".$_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'];

            

            $response_code=$_GET["vpc_TxnResponseCode"];
            //$payExt = new payExt;
            $response_description = $this->get_onepay_response_description($response_code);

            //$invoice_id = (explode("-",$_GET['vpc_OrderInfo']));
            //$invoice = BdaInvoice::model()->find(array('condition' => 't.number = '.$invoice_id[1]));            
            $TransactionLogFactory = \_factory\TransactionLog::get_instance();
			$TransactionLog = $TransactionLogFactory->get_row_object(array(
				"MerchTxnRef" => $vpc_MerchTxnRef,
			));

            if($hashValidated=="CORRECT" && $response_code=="0"){
            	$TransactionDetail = new \model\TransactionDetail();
				$TransactionDetailFactory = \_factory\TransactionDetail::get_instance();
				$TransactionDetail->TransactionLogID = $TransactionLog->ID;
				$TransactionDetail->UserID = $user_id;
				$TransactionDetail->Type = 0;
				$TransactionDetail->Amount = $info_arr[3];
				$TransactionDetail->Description = "Transfer money online ($".$info_arr[3].") to ".$user_login."'s account on BGATE";
				$TransactionDetailFactory->saveTransactionDetail($TransactionDetail);
            }elseif ($response_code != "0"){
                $transStatus = "Transaction was not paid successful";
            }elseif ($hashValidated=="INVALID HASH"){
                $transStatus = "Transaction is pending";
            }

            // $payment = BdaPayment::model()->find(array(
            //     'condition' => 't.vpc_MerchTxnRef = "'.$vpc_MerchTxnRef.'"'
            // ));
            // $payment->vpc_DR = $vpc_DR;
            // $payment->vpc_DR_ip = $vpc_DR_ip;
            // $payment->vpc_DR_time = date('Y-m-d H:i:s');
            // $payment->hashValidated = $hashValidated;
            // $payment->response_code = $response_code;
            // $payment->response_description = $response_description;
            // $payment->result = $transStatus;
            // $payment->status = 2;
            // $payment->update(array('vpc_DR','vpc_DR_ip', 'vpc_DR_time', 'hashValidated', 'status', 'response_code', 'response_description', 'result'));

            $TransactionLog->ResponseURL =  $vpc_DR;
			$TransactionLog->ResponseIP =  $vpc_DR_ip;
			$TransactionLog->ResponseTime =  date('Y-m-d H:i:s');
			$TransactionLog->Status = 1;
			
			$TransactionLog->HashValidated =  $hashValidated;
			$TransactionLog->ResponseCode =  $response_code;					
			$TransactionLog->ResponseDescription = $response_description;
			$TransactionLog->Result = $transStatus;
			$TransactionLogFactory->saveTransactionLog($TransactionLog);

			return $this->redirect()->toRoute('demand',
					array('controller'=>'demand',
				        'action' => 'resultpayment',
				        'param1' => $TransactionLog->ID));

			// $TransactionDetail = new \model\TransactionDetail();
			// $TransactionDetailFactory = \_factory\TransactionDetail::get_instance();
			// $TransactionDetail->TransactionLogID = $TransactionLog->ID;
			// $TransactionDetail->UserID = $user_id;
			// $TransactionDetail->Type = 0;
			// $TransactionDetail->Amount = $details_arr['AMT'];
			// $TransactionDetail->Description = $details_arr['DESC'];
			// $TransactionDetailFactory->saveTransactionDetail($TransactionDetail);


            //$encryptExt = new encryptExt;
            // if($hashValidated=="CORRECT" && $response_code=="0"){
            //     $emailExt = new emailExt;
            //     $re = $emailExt->send_mail_by_key('payment_succesfull', $invoice->visa_id);
            //     $this->redirect($this->createUrl('/payment-succesfull'). 
            //         '/' . $encryptExt->encrypt($payment->id)
            //     );
            // }else{
            //     $emailExt = new emailExt;
            //     $re = $emailExt->send_mail_by_key('not_payment', $invoice->visa_id);
            //     $this->redirect($this->createUrl('/payment-not-succesfull'). 
            //         '/' . $encryptExt->encrypt($payment->id)
            //     );
            // }
        }else{
        	return $this->notFoundAction ();
            //$this->render('error', array('message' => 'The server could not find what was requested', 'code' => 404));
        }
    }
    public function get_exchange_rates($currency_code = 'USD')
    {
        $url = 'http://www.vietcombank.com.vn/ExchangeRates/ExrateXML.aspx';
        $xml = simplexml_load_file($url) or die("feed not loading");
        $usd = 0;
        $exrate_current = NULL;
        foreach ($xml->Exrate as  $Exrate) {
            foreach ($Exrate->attributes() as $key => $value) {
                if($key == 'CurrencyCode' and $value == $currency_code){
                    $exrate_current = $Exrate;
                    break;
                }
            }
            if($exrate_current != NULL){
                break;
            }
        }
        foreach ($exrate_current->attributes() as $key => $value) {
            if($key == 'Transfer'){
                return $value;
                break;
            }
        }
        return 1;
    }
    function get_onepay_response_description($responseCode)
    {

        switch ($responseCode) {
            case "0" :
                $result = "Transaction Successful";
                break;
            case "?" :
                $result = "Transaction status is unknown";
                break;
            case "1" :
                $result = "Bank system reject";
                break;
            case "2" :
                $result = "Bank Declined Transaction";
                break;
            case "3" :
                $result = "No Reply from Bank";
                break;
            case "4" :
                $result = "Expired Card";
                break;
            case "5" :
                $result = "Insufficient funds";
                break;
            case "6" :
                $result = "Error Communicating with Bank";
                break;
            case "7" :
                $result = "Payment Server System Error";
                break;
            case "8" :
                $result = "Transaction Type Not Supported";
                break;
            case "9" :
                $result = "Bank declined transaction (Do not contact Bank)";
                break;
            case "A" :
                $result = "Transaction Aborted";
                break;
            case "C" :
                $result = "Transaction Cancelled";
                break;
            case "D" :
                $result = "Deferred transaction has been received and is awaiting processing";
                break;
            case "F" :
                $result = "3D Secure Authentication failed";
                break;
            case "I" :
                $result = "Card Security Code verification failed";
                break;
            case "L" :
                $result = "Shopping Transaction Locked (Please try the transaction again later)";
                break;
            case "N" :
                $result = "Cardholder is not enrolled in Authentication scheme";
                break;
            case "P" :
                $result = "Transaction has been received by the Payment Adaptor and is being processed";
                break;
            case "R" :
                $result = "Transaction was not processed - Reached limit of retry attempts allowed";
                break;
            case "S" :
                $result = "Duplicate SessionID (OrderInfo)";
                break;
            case "T" :
                $result = "Address Verification Failed";
                break;
            case "U" :
                $result = "Card Security Code Failed";
                break;
            case "V" :
                $result = "Address Verification and Card Security Code Failed";
                break;
            case "99" :
                $result = "User Cancel";
                break;
            default  :
                $result = "Unable to be determined";
        }
        return $result;
    }
}
?>