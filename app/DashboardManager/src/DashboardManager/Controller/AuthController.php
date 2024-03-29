<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */
namespace DashboardManager\Controller;

use Zend\Mvc\Controller\AbstractActionController as ZendAbstractActionController;
use Zend\Session\Container; 
use Zend\View\Model\ViewModel;
use Zend\Mail\Message;
use Zend\Mime;
/**
 * Authentication Action Controller class to handle user login of the
 * management dashboard.
 */
class AuthController extends ZendAbstractActionController {
    protected $storage;
    protected $authservice;
    protected $config;

    protected function getAuthService()
    {
    	if (! $this->authservice): 
    		$this->authservice = $this->getServiceLocator()
    		->get('AuthService');
    	endif;
    	
    	return $this->authservice;
    }

    protected function getConfig()
    {
    	if (! $this->config): 
    		$this->config = $this->getServiceLocator()
    		->get('Config');
    	endif;

    	return $this->config;
    }

    protected function getSessionStorage()
    {
    	if (! $this->storage): 
    		$this->storage = $this->getAuthService()
    		->getStorage();
    	endif;

    	return $this->storage;
    }

    public function loginAction()
    {
    	$user_session = new Container('user');
    	
    	//if already login, redirect to success page
    	if ($this->getAuthService()->hasIdentity()):
    		$user_session->message = '';
    		if ($this->getAuthService()->getPublisherInfoID() != null):
    			return $this->redirect()->toRoute('publisher');
    		else:
    			return $this->redirect()->toRoute('demand');
    		endif;
    	endif;

    	return array(
    			'messages'  => $user_session->message,
    			'center_class' => 'centerj',
    			'dashboard_view' => 'login'
    	);
    }

    public function recoverAction()
    {
        $request = $this->getRequest();
        if ($request->isPost()):
            $params["user_email"] = $request->getPost('username');
            $authUsersFactory = \_factory\authUsers::get_instance();
            $auth_user = $authUsersFactory->get_row_object($params);
    
            if ($auth_user->user_id == null):
                $user_session = new Container('user');
                $user_session->message = 'Invalid email';
            else:
                
                $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
                $password = substr(str_shuffle($chars),0,8);
                
                $auth_user->user_password = \util\Password::md5_split_salt($password);
                $authUsersFactory->saveUser($auth_user);

                $config = $this->getServiceLocator()->get('Config');
                if ($config['mail']['subscribe']['recover_password'] === true):
        
                    $message = 'We have successfully generated your new Bgate password <br><br> Your new password: <b>' . $password . "</b><br><br>Please log in and change your password for security  <br><br> Thank you. <br> BDA team";
                   
                    $subject = "[BgateProject] Your new BGate password! ";
                    
                    $transport = $this->getServiceLocator()->get('mail.transport');
                    
                    $text = new Mime\Part($message);
                    $text->type = Mime\Mime::TYPE_HTML;
                    $text->charset = 'utf-8';
                    
                    $mimeMessage = new Mime\Message();
                    $mimeMessage->setParts(array($text));
                    $zf_message = new Message();
                    
                    $zf_message->addTo($auth_user->user_email, $auth_user->user_login)
                    ->addFrom($config['mail']['reply-to']['email'], $config['mail']['reply-to']['name'])
                    ->setSubject($subject)
                    ->setBody($mimeMessage);
                    $transport->send($zf_message);
                    
                    $view = new ViewModel(array(
                        'dashboard_view' => 'signup',
                        'recover_success' => 1,
                    ));
                    return $view->setTemplate('dashboard-manager/auth/login.phtml');
                endif;
                
            endif;
            
        endif;
         return array(
            'center_class' => 'centerj',
            'dashboard_view' => 'login'
        );
        
    }


    public function authenticateAction()
    {
        $debug = false;
        if ($debug):
        
        	echo "\n<div style=\"font-size: 90%;\">\n";
        	echo "\n<div style=\"font-weight: bold;\">Config: </div>";
        	print_r($this->getConfig());
        
        	echo "\n<div style=\"font-weight: bold;\">GLOBAL SESSION: </div>";
        	print_r($_SESSION);
        	echo "</div>\n";
        	die();
        endif;
        
    	$redirect = 'login';

    	$request = $this->getRequest();
    	if ($request->isPost()):
   			//check authentication...
   			$this->getAuthService()->getAdapter()
   			->setIdentity($request->getPost('username'))
   			->setCredential(mysql_real_escape_string($request->getPost('password')));
   			
   			$user_session = new Container('user');
   			
   			if ($request->getPost('username') == null || $request->getPost('password') == ""):
               $user_session->message = 'Invalid username or password.';
               return $this->redirect()->toRoute($redirect);
   			endif;
   			
   			$result = $this->getAuthService()->authenticate();
   			
   			if (!$result->isValid()):
   			
   				/*
   				 * Is it possible that this user was approved
   				 * but has not yet accepted the user agreement?
   				 */
		        $authUsersFactory = \_factory\authUsers::get_instance();
		        $params = array();
		        $params["user_email"] = $request->getPost('username');
		        $params["user_password"] = \util\Password::md5_split_salt($request->getPost('password'));
		        $auth_User = $authUsersFactory->get_row($params);
   				
		        if (
		        	$auth_User->user_enabled == 1
		        	&& $auth_User->user_verified == 1
		        	&& $auth_User->user_agreement_accepted != 1):

		        	return $this->msaagreement($auth_User);
		        	
		        endif;
		        
   			 	$user_session->message = 'Invalid username or password.';
                return $this->redirect()->toRoute($redirect);
   			else:
              //check if it has rememberMe :
              if ($request->getPost('rememberme') == 1 ): 
                $this->getSessionStorage()
                ->setRememberMe(1);
                //set storage again
                $this->getAuthService()->setStorage($this->getSessionStorage());
              endif;

   				$redirect = 'demand_dashboard';
	   			if ($this->getAuthService()->getPublisherInfoID() != null):
	   				$redirect = 'publisher';

                    return $this->redirect()->toRoute("publisher_dashboard");
	   			endif;

   			endif;
    	endif;
    	return $this->redirect()->toRoute($redirect);
    }

    public function msaAction()
    {
    
    	$redirect = intval($this->params()->fromRoute('param1', null));
    	
    	if ($redirect != 'demand'):
    		$redirect = 'publisher';
    	endif;
    	
    	$user_id = $this->getRequest()->getPost('user_id');
    	$sechash = $this->getRequest()->getPost('sechash');
    
    	$authUsersFactory = \_factory\authUsers::get_instance();
    	$params = array();
    	$params["user_id"] = $user_id;
    	$auth_User = $authUsersFactory->get_row_object($params);
    
    	$sechash_compare = md5(substr($auth_User->user_password, 0, 12));
    
    	if ($sechash == $sechash_compare):
	    	$auth_User->user_agreement_accepted				= 1;
    		$auth_User->user_agreement_acceptance_date		= date("Y-m-d H:i:s");
	    	$auth_service_trusted = $this->serviceLocator->get('AuthService');
	    		
	    	$userDetails = new \stdClass();
	    	$userDetails->user_password 		= $auth_User->user_password;
	    	$userDetails->user_password_salt 	= $auth_User->user_password_salt;
	    	$userDetails->user_role_name 		= $this->getConfig()['roles']['member'];
	    	$userDetails->user_id 				= $auth_User->user_id;
	    	$userDetails->user_login 			= $auth_User->user_login;
	    	$userDetails->PublisherInfoID 		= $auth_User->PublisherInfoID;
	    	$userDetails->DemandCustomerInfoID 	= $auth_User->DemandCustomerInfoID;
	    	$userDetails->user_fullname		 	= $auth_User->user_fullname;	
	    	
	    	$result = $auth_service_trusted->authenticateTrusted($userDetails);
	    	$authUsersFactory->saveUser($auth_User);
    		return $this->redirect()->toRoute('demand');
    	else:
    		return $this->redirect()->toRoute('login');
    	endif;
    
    }
    
    private function msaagreement($auth_User)
    {
    	$view_directory = "demand";
    	
    	if ($auth_User->PublisherInfoID != null):
    		$view_directory = "publisher";
    	endif;
    	
    	$msa_text = 'module/DashboardManager/view/dashboard-manager/' . $view_directory . '/msaagreement.txt';
    	
    	$view = new ViewModel(array(
    			'user_id' => $auth_User->user_id,
    			'sechash' => md5(substr($auth_User->user_password, 0, 12)),
    			'msa_agreement' => file_get_contents($msa_text),
    			'header_title' => ucfirst($view_directory) . ' Customer Master Services Agreement',
    			'user_id_list' => array(),
    			'true_user_name' => $auth_User->user_login
    	));
    
    	return $view->setTemplate('dashboard-manager/' . $view_directory . '/msaagreement.phtml');
    
    }
    
    public function logoutAction()
    {
    	$this->getSessionStorage()->forgetMe();
    	$this->getAuthService()->clearIdentity();

    	$this->flashmessenger()->addMessage("You've been logged out");
    	return $this->redirect()->toRoute('login');
    }
}

?>