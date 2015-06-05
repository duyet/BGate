<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace DashboardManager\Controller;

 use DashboardManager\ParentControllers\DemandAbstractActionController;
 use Zend\View\Model\ViewModel;
//use Zend\Session\Container; // We need this when using sessions
use transformation;
use Zend\Mail\Message;
use Zend\Mime;

/**
 * @author Kelvin Mok
 * This is the ManagerController that is the initial display of the Manager class.
 */
class ManagerController extends DemandAbstractActionController {

    
    public function indexAction() {
    	$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;
    	
    }
    
    public function revenueAction() {
    	$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;
    	transformation\CheckPermissions::checkEditPermissionRevenueReport($this->auth, $this->config_handle);
    	$AdzoneDailyTrackerFactory = \_factory\AdzoneDailyTracker::get_instance();
    	$list = $AdzoneDailyTrackerFactory->get();
    	
    }
}