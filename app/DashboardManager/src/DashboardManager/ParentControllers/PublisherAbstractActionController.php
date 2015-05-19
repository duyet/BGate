<?php 
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */
namespace DashboardManager\ParentControllers;

/**
 * @author Kelvin Mok
 * This class puts in common data structures for all DashboardManager action controller classes.
 * This class allows for easy extension of things repeatable across all action controllers.
 */
abstract class PublisherAbstractActionController extends DashboardAbstractActionController
{
    
    /**
     * Set and update common user status function that must be loaded after each Controller Action.
     */
    protected function initialize()
    {
    	
    	if ($this->PublisherInfoID != null):
	    	$this->dashboard_home = "publisher";
    	endif;

		$initialized = parent::initialize();
		if (!$initialized) return $initialized;

		$route_name = $this->getEvent()->getRouteMatch()->getMatchedRouteName();
		if (!$this->is_admin &&
			(strpos($route_name, 'publisher') === 0
			&& $this->PublisherInfoID == null
			&& $this->DemandCustomerInfoID != null)):
			return $this->redirect()->toRoute('demand');
		endif;
		
		return $initialized;
		
		/*
		 * ADD STUFF HERE
		*/
		
    }
}
?>