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
        $details->setInvNum($Amount);
        $details->setPaymentRequestId($user_login);
        $details->setPaymentReason('Refund');
		$express = new \SpeckPaypal\Request\SetExpressCheckout(array('paymentDetails' => $details));

		$uri = new \Zend\Uri\Uri($this->getRequest()->getUri());

		$returnUrl = $uri->getScheme() . '://' . $uri->getHost() . $this->url()->fromRoute('payment',
					array('controller'=>'payment',
				        'action' => 'returnpaypal'));
		$cancelUrl = $uri->getScheme() . '://' . $uri->getHost() . $this->url()->fromRoute('payment',
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
		$TransactionLog->Status = 1;

		$TransactionLogFactory->saveTransactionLog($TransactionLog);

		return $this->redirect()->toUrl($url);

	}
	public function returnpaypalAction()
	{
		//To capture express payment
		$captureExpress = new \SpeckPaypal\Request\DoExpressCheckoutPayment(array(
		    'token'             => $token,
		    'payerId'           => $payerId,
		    'paymentDetails'    => $paymentDetails
		));
		$response = $paypalRequest->send($captureExpress);

		$paypalRequest = $this->initPaypal();
		$token = $_GET['token'];
		$details = new \SpeckPaypal\Request\GetExpressCheckoutDetails(array('token' => $token));
		$response = $paypalRequest->send($details);
		var_dump($response);
		die();

	}
	public function cancelpaypalAction()
	{
		$paypalRequest = $this->initPaypal();
		$token = $_GET['token'];
		$details = new \SpeckPaypal\Request\GetExpressCheckoutDetails(array('token' => $token));
		$response = $paypalRequest->send($details);
		var_dump($response);
		die();

	}
}
?>