<?php
/**
 * BGate Project 
 * 
 * @copyright Copyright (c) ISLab 
 * @year 2015 
 *  */

namespace DashboardManager\view\Helper;

use Zend\View\Helper\AbstractHelper;
use Zend\ServiceManager\ServiceManager;

class Loginhelper extends AbstractHelper{

    protected $serviceLocator;
    protected $authService;

    public function __invoke(){
        $this->authService = $this->serviceLocator->get('AuthService');

        if($this->authService->hasIdentity()):
            return true;
        
        else:
            return false;
        endif;
    }

    public function setServiceLocator(ServiceManager $serviceLocator){
        $this->serviceLocator = $serviceLocator;
    }
}

?>
