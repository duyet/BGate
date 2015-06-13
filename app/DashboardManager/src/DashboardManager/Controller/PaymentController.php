<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */
namespace DashboardManager\Controller;


use Zend\Mvc\Controller\AbstractActionController;
use DashboardManager\ParentControllers\PublisherAbstractActionController;
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
class PaymentController extends PublisherAbstractActionController {
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
	public function indexAction()
	{
		$auth = $this->getServiceLocator()->get('AuthService');
		 if (!$auth->hasIdentity()):
     	 	return $this->redirect()->toRoute('login');
    	 endif;
    	 
		$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;
		$success_msg = null;

		$request = $this->getRequest();
	    if ($request->isPost()):
	    	$Amount	 = $request->getPost('Amount');
	    	$method	 = $request->getPost('method');
	    	if(intval($method) === 0):
	   //  		return $this->redirect()->toRoute('paypaltransfer', array(
				//     'amount' => $Amount
				// ));
	    		return $this->redirect()->toRoute('payment',
					array('controller'=>'payment',
				        'action' => 'paypaltransfer',
				        'param1' => $Amount));
	    	endif;
	    	var_dump($_POST);
	    	die();
	   	endif;
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
        // $details->setInvNum(date("YmdHisu"));
        $details->setPaymentRequestId($user_id);
        $details->setPaymentReason('Refund');
		$express = new \SpeckPaypal\Request\SetExpressCheckout(array('paymentDetails' => $details));

		$uri = new \Zend\Uri\Uri($this->getRequest()->getUri());

		$port = intval($uri->getPort());
		$url_base = $uri->getScheme() . '://' . $uri->getHost();
		if($port !== 80):
			$url_base = $uri->getScheme() . '://' . $uri->getHost() . ':' . $port;
		endif;
		$returnUrl = $url_base . $this->url()->fromRoute('payment',
					array('controller'=>'payment',
				        'action' => 'returnpaypal'));
		$cancelUrl = $url_base . $this->url()->fromRoute('payment',
					array('controller'=>'payment',
				        'action' => 'cancelpaypal'));
		// var_dump($returnUrl);
		// var_dump($cancelUrl);
		// die();
		$express->setReturnUrl($returnUrl);
		$express->setCancelUrl($cancelUrl);
		$response = $paypalRequest->send($express);

		$token = $response->getToken();
		$url = $this->config_handle['settings']['paypal']['url'].$token;
		// var_dump($response->isSuccess());
		// var_dump($response);
		// die();
		//Log Transaction
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

					return $this->redirect()->toRoute('payment',
					array('controller'=>'payment',
				        'action' => 'paypaltransfer',
				        'param1' => $TransactionLog->ID));
				else:
					return $this->redirect()->toRoute('payment',
					array('controller'=>'payment',
				        'action' => 'paypaltransfer',
				        'param1' => $TransactionLog->ID));
				endif;
			else:
				$TransactionLog->ResponseDescription = $result['message'];
				$TransactionLog->Result = 'Transaction was not paid successful';
				$TransactionLogFactory->saveTransactionLog($TransactionLog);
				return $this->redirect()->toRoute('payment',
					array('controller'=>'payment',
				        'action' => 'paypaltransfer',
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
			return $this->redirect()->toRoute('payment',
				array('controller'=>'payment',
			        'action' => 'paypaltransfer',
			        'param1' => $TransactionLog->ID));
		else:
			return $this->notFoundAction ();
		endif;

	}
	public function resultpaymentAction()
	{
		$auth = $this->getServiceLocator()->get('AuthService');
		if (!$auth->hasIdentity()):
     	 	return $this->redirect()->toRoute('login');
    	endif;
    	 
		$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;
		$success_msg = null;

		$ID = $this->getEvent()->getRouteMatch()->getParam('param1');

		$TransactionLogFactory = \_factory\TransactionLog::get_instance();
		$TransactionLog = $TransactionLogFactory->get_row_object(array(
			"ID" => $ID,
		));

		$view = new ViewModel(array(
    		// 'dashboard_view' => 'signup',
    		'transaction' => $TransactionLog,
    		// 'success_msg' => $success_msg,
    		// 'partner_type' => \util\DeliveryFilterOptions::$partner_type
    	));
		return $view->setTemplate('dashboard-manager/payment/resultpayment.phtml');

	}
}
?>