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
    	// $list = $AdzoneDailyTrackerFactory->get();
    	
    }

    public function incomelistAction()
    {
        $initialized = $this->initialize();
        if ($initialized !== true) return $initialized;
        $params = array(); // Set the parameters to empty first.
        $flag = 7;
        // sort map array
        $SortMap = array("1"=> "AdzoneDailyTracker.DateCreated", "2" => "PublisherAdZone.AdName",  "5" => "Incomes");
        $OrderArr = $this->getRequest()->getQuery("order");
        $order = $SortMap[$OrderArr[0]["column"]] . " " . strtoupper($OrderArr[0]["dir"]);
        // get search value
        $search = $this->getRequest()->getQuery("search")["value"];

        // pagination value
        $PageSize = (int) $this->getRequest()->getQuery("length");
        $Offset =   (int) $this->getRequest()->getQuery("start");

        if ($this->getRequest()->getQuery("flag") != ""):
            $flag = $this->getRequest()->getQuery("flag");
        endif;
        $AdzoneDailyTrackerFactory = \_factory\AdzoneDailyTracker::get_instance();
        $trakerListTotal = $AdzoneDailyTrackerFactory->get($params, $order, $search, null, null, $flag);
        $TotalAdzoneDailyTrackerCount = count($trakerListTotal);

        $trakerList = $AdzoneDailyTrackerFactory->get($params, $order, $search, $PageSize, $Offset, $flag);
        $result = array();
        if (count($trakerList)> 0):
            foreach ($trakerList AS $row_number => $row_data): 
                $row = array();

                $row["index"] = $Offset + $row_number+1;
                $row["Time"] = $row_data["Date"];
                $row["AdName"] = $row_data["AdName"];
                $row["ClickCount"] = $row_data["ClickCount"];
                $row["ImpCount"] = $row_data["ImpCount"];
                $row["Incomes"] = $row_data["Incomes"];
                $result[] = $row;
            endforeach;
        endif;

        header('Content-type: application/json');
        echo json_encode(array("recordsTotal" => $TotalAdzoneDailyTrackerCount, "recordsFiltered" => $TotalAdzoneDailyTrackerCount , 'data' => $result));

        die;
    }

    public function getincomeAction($value='')
    {
        $initialized = $this->initialize();
        if ($initialized !== true) return $initialized;
        $AdzoneDailyTrackerFactory = \_factory\AdzoneDailyTracker::get_instance();
        $incomes = $AdzoneDailyTrackerFactory->get_income();
        if (count($incomes)> 0):
            foreach ($incomes AS $row_number => $row_data): 
                $row = array();
                $row["Incomes"] = $row_data["Incomes"];
                $result[] = $row;
            endforeach;
        endif;
        header('Content-type: application/json');
        echo json_encode(array('data' => $result));

        die;
    }
}