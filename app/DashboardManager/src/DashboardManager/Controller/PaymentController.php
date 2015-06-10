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
		//setup config object
		$paypalRequest = $this->initPaypal();
		$details = new \SpeckPaypal\Element\PaymentDetails (array('amt' => '100.00'));
        //$details->setSellerPaypalAccountId('123456');
        // $details->setItemAmt('10.00');
        // //$details->setShippingAmt('10.00');
        // //$details->setInsuranceAmt('1.00');
        // //$details->setShipDiscAmt('5.00');
        // //$details->setInsuranceOptionOffered(true);
        // $details->setHandlingAmt('1.00');
        // $details->setTaxAmt('1.00');
        $details->setDesc('BGATE description');
        $details->setCustom('custom');
        $details->setInvNum('1234');
        // //$details->setNotifyUrl('http://notify.url');
        // //$details->setNoteText('note');
        // $details->setTransactionId('1234');
        // $details->setAllowedPaymentMethod('InstantPaymentOnly');
        $details->setPaymentRequestId('1234');
        $details->setPaymentReason('Refund');
        // //$details->setButtonSource('http://buttonsource.url');
        // //$details->setRecurring(true);
        $item = new \SpeckPaypal\Element\PaymentItem;
        $item->setName('name');
        $item->setDesc('desc');
        $item->setAmt('10.00');
        $item->setNumber('1234');
        $item->setQty('1');
        // $item->setTaxAmt('0.00');
        // $item->setItemWeightValue('1.0');
        // $item->setItemWeightUnit('lbs');
        // $item->setItemLengthValue('1.0');
        // $item->setItemLengthUnit('inch');
        // $item->setItemWidthValue('1.0');
        // $item->setItemWidthUnit('inch');
        // $item->setItemHeightValue('1.0');
        // $item->setItemHeightUnit('inch');
        // $item->setItemUrl('http://anitem.url');
        // $item->setItemCategory('Digital');

        $details->setItems(array($item));

		$express = new \SpeckPaypal\Request\SetExpressCheckout(array('paymentDetails' => $details));
		$express->setReturnUrl('http://localhost/bgate/payment/returnpaypal');
		$express->setCancelUrl('http://localhost/bgate/payment/cancel');
		$response = $paypalRequest->send($express);

		return $this->redirect()->toUrl("https://www.sandbox.paypal.com/webscr&cmd=_express-checkout&token=".$response->getToken());

		//echo $response->isSuccess();
		// var_dump($response->getToken());


		// $token = $response->getToken();

		// $details = new \SpeckPaypal\Request\GetExpressCheckoutDetails(array('token' => $token));

		// $response = $paypalRequest->send($details);

		// $payerId = $response->getPayerId();

		// var_dump($response->getPayerId());

		// To capture express payment
		// $captureExpress = new \SpeckPaypal\Request\DoExpressCheckoutPayment(array(
		//     'token'             => $token,
		//     'payerId'           => $payerId,
		//     'paymentDetails'    => $paymentDetails
		// ));
		// $response = $paypalRequest->send($captureExpress);

		// echo $response->isSuccess();

		// $transactionSearch = new \SpeckPaypal\Request\TransactionSearch();
		// $transactionSearch->setStartDate('2014-06-21T00:00:00Z');

		// $paypalRequest = $serviceManager->get('SpeckPaypal\Service\Request');
		// $response = $paypalRequest->send($transactionSearch);

		//var_dump($response->isSuccess());

		// echo $response->getTransactionId();
		// var_dump($paypalRequest->getConfig());
		//var_dump($response->isSuccess());
		//var_dump($token);
		// var_dump($response->getTransactionId());
		// die();
		// var_dump(	}
	}
	public function returnpaypalAction()
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