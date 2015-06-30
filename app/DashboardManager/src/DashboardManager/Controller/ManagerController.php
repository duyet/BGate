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

    public function testAction(){
        $sync_adserver = file_get_contents(PUBLISHER_SYNC_URL);
        die($sync_adserver);
    }
    public function indexAction() {
    	$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;

        //Pulisher
        $user_info_factory = \_factory\PublisherInfo::get_instance();
        $user_info = new \model\PublisherInfo;
        $user_info = $user_info_factory->get_row_object(array("PublisherInfoID" => $this->PublisherInfoID));

        $domain_factory = \_factory\PublisherWebsite::get_instance();
        $domain_list = $domain_factory->get(array("DomainOwnerID" => $this->PublisherInfoID));

        $adzone_factory = \_factory\PublisherAdZone::get_instance();
        $adzone_count = $adzone_factory->count_adzone(array("AdOwnerID" => $this->PublisherInfoID));

        //Demand
        $AdCampaignPreviewFactory = \_factory\AdCampaignPreview::get_instance();
        $params = array();
        $params["Active"] = 1;
        $params["Deleted"] = 0;
        if ($this->is_admin == true && $this->auth->getEffectiveIdentityID() != 0):
            $params["UserID"] = $this->auth->getEffectiveUserID();
        elseif ($this->is_admin == false):
            $params["UserID"] = $this->auth->getUserID();
        endif;     
        $campaigns_list = $AdCampaignPreviewFactory->get($params);

        //Count members
        //Publisher
        $PublisherInfo = new \model\PublisherInfo();
        $PublisherInfoFactory = \_factory\PublisherInfo::get_instance();
        $publishers_number = count($PublisherInfoFactory->get());

        //Advertisers
        $DemandCustomerInfo = new \model\DemandCustomerInfo();
        $DemandCustomerInfoFactory = \_factory\DemandCustomerInfo::get_instance();
        $advertisers_number = count($DemandCustomerInfoFactory->get());

        $view = new ViewModel(array(
             'dashboard_view' => 'manager_index',
             'true_user_name' => $this->auth->getUserName(),
             'is_admin' => $this->is_admin,
             'user_id_list' => $this->user_id_list_publisher,
             'domain_owner' => isset($PublisherInfo->Name) ? $PublisherInfo->Name : "",
             'impersonate_id' => $this->ImpersonateID,
             'effective_id' => $this->auth->getEffectiveIdentityID(),
             'publisher_info_id' => $this->PublisherInfoID,
             'user_identity' => $this->identity(),
             'domain_list' => $domain_list,
             'campaigns_list' => $campaigns_list,
             "user_info" => $user_info,
             "publishers_number" => $publishers_number,
             "advertisers_number" => $advertisers_number
        ));

        return $view; 	
    }
    
    public function revenueAction() {
    	$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;
    	transformation\CheckPermissions::checkEditPermissionRevenueReport($this->auth, $this->config_handle);

        $view = new ViewModel(array(
                'user_id_list' => $this->user_id_list_demand_customer,
                'effective_id' => $this->auth->getEffectiveIdentityID(),
                'dashboard_view' => 'demand',
                'user_identity' => $this->identity(),
                'true_user_name' => $this->auth->getUserName(),
                'is_admin' => $this->is_admin,
                'effective_id' => $this->auth->getEffectiveIdentityID(),
                'impersonate_id' => $this->ImpersonateID
        )); 
    	return $view;
    }

    public function incomelistAction()
    {
        $initialized = $this->initialize();
        if ($initialized !== true) return $initialized;
        $params = array(); // Set the parameters to empty first.
        $flag = 7;
        // sort map array
        $SortMap = array("1"=> "AdzoneDailyTracker.DateCreated", "2" => "PublisherWebsite.WebDomain", "3" => "PublisherAdZone.AdName",  "4" => "ClickCount", "5" => "ImpCount",  "6" => "Incomes");
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
                $row["Domain"] = $row_data["WebDomain"];
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
        $adzone_id = $this->getRequest()->getQuery("adzoneId");
        $flag = ($this->getRequest()->getQuery("param1") == '') ? 7 : $this->getRequest()->getQuery("param1");
        $AdzoneDailyTrackerFactory = \_factory\AdzoneDailyTracker::get_instance();

        $params = array();
        if ($adzone_id != ''):
            $params["PublisherAdZoneID"] = $adzone_id;
        endif;

        $incomes = $AdzoneDailyTrackerFactory->get_income($params, $flag);
        if (count($incomes)> 0):
            foreach ($incomes AS $row_number => $row_data): 
                $row = array();
                $row["Incomes"] = ($row_data["Incomes"] == null)? 0 : $row_data["Incomes"];
                $result[] = $row;
            endforeach;
        endif;
        header('Content-type: application/json');
        echo json_encode(array('data' => $result));

        die;
    }

    public function outcomelistAction()
    {
        $initialized = $this->initialize();
        if ($initialized !== true) return $initialized;
        $params = array(); // Set the parameters to empty first.
        $flag = 7;
        // sort map array
        $SortMap = array("1"=> "AdBannerDailyTracker.DateCreated", "2" => "AdCampaignPreview.Name", "3" => "AdCampaignBannerPreview.Name",  "4" => "ClickCount", "5" => "ImpCount",  "6" => "Outcomes");
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
        $AdBannerDailyTrackerFactory = \_factory\AdBannerDailyTracker::get_instance();
        $trakerListTotal = $AdBannerDailyTrackerFactory->get($params, $order, $search, null, null, $flag);
        $TotalAdBannerDailyTrackerCount = count($trakerListTotal);

        $trakerList = $AdBannerDailyTrackerFactory->get($params, $order, $search, $PageSize, $Offset, $flag);
        $result = array();
        if (count($trakerList)> 0):
            foreach ($trakerList AS $row_number => $row_data): 
                $row = array();

                $row["index"] = $Offset + $row_number+1;
                $row["Time"] = $row_data["Date"];
                $row["CampaignName"] = $row_data["CampaignName"];
                $row["BannerName"] = $row_data["BannerName"];
                $row["ClickCount"] = $row_data["ClickCount"];
                $row["ImpCount"] = $row_data["ImpCount"];
                $row["Outcomes"] = $row_data["Outcomes"];
                $result[] = $row;
            endforeach;
        endif;

        header('Content-type: application/json');
        echo json_encode(array("recordsTotal" => $TotalAdBannerDailyTrackerCount, "recordsFiltered" => $TotalAdBannerDailyTrackerCount , 'data' => $result));

        die;
    }

    public function getoutcomeAction()
    {
        $initialized = $this->initialize();
        if ($initialized !== true) return $initialized;
        $flag = ($this->getRequest()->getQuery("param1") == '') ? 7 : $this->getRequest()->getQuery("param1");
        $AdBannerDailyTrackerFactory = \_factory\AdBannerDailyTracker::get_instance();
        $outcomes = $AdBannerDailyTrackerFactory->get_outcome($flag);
        if (count($outcomes)> 0):
            foreach ($outcomes AS $row_number => $row_data): 
                $row = array();
                $row["Outcomes"] = ($row_data["Outcomes"] == null)? 0 : $row_data["Outcomes"];
                $result[] = $row;
            endforeach;
        endif;
        header('Content-type: application/json');
        echo json_encode(array('data' => $result));

        die;
    }

    public function userPayoutAction()
    {
        $initialized = $this->initialize();
        if ($initialized !== true) return $initialized;
        transformation\CheckPermissions::checkEditPermissionRevenueReport($this->auth, $this->config_handle);
        $view = new ViewModel(array(
                'user_id_list' => $this->user_id_list_demand_customer,
                'effective_id' => $this->auth->getEffectiveIdentityID(),
                'dashboard_view' => 'demand',
                'user_identity' => $this->identity(),
                'true_user_name' => $this->auth->getUserName(),
                'is_admin' => $this->is_admin,
                'effective_id' => $this->auth->getEffectiveIdentityID(),
                'impersonate_id' => $this->ImpersonateID
        )); 
        return $view;
    }

}