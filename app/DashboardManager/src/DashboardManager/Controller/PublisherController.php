<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */
namespace DashboardManager\Controller;

use DashboardManager\ParentControllers\PublisherAbstractActionController;
use Zend\View\Model\ViewModel;
use transformation;
use _factory\PublisherInfo;
use Zend\Mail\Message;
use Zend\View\Helper\Url;
use Zend\Mime;

/**
 * This is the Publisher Manager Controller class that controls the management
 * of publisher functions.
 */
class PublisherController extends PublisherAbstractActionController {

	/**
	 * Display the publisher dashboard page
	 * 
	 * @return \Zend\View\Model\ViewModel
	 */
	public function dashboardAction() {
		$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;

		$user_info_factory = \_factory\PublisherInfo::get_instance();
		$user_info = new \model\PublisherInfo;
        $user_info = $user_info_factory->get_row_object(array("PublisherInfoID" => $this->PublisherInfoID));

        $domain_factory = \_factory\PublisherWebsite::get_instance();
        $domain_list = $domain_factory->get(array("DomainOwnerID" => $this->PublisherInfoID));

        $adzone_factory = \_factory\PublisherAdZone::get_instance();
        $adzone_count = $adzone_factory->count_adzone(array("AdOwnerID" => $this->PublisherInfoID));

        // header('Content-type: application/json');
        // print_r($user_info);
        // print_r($domain_list);
        // print_r(count($domain_list));
        // print_r($adzone_count);
        $view = new ViewModel(array(
			 'dashboard_view' => 'dashboard',
			 'true_user_name' => $this->auth->getUserName(),
			 'is_admin' => $this->is_admin,
			 'user_id_list' => $this->user_id_list_publisher,
			 'domain_owner' => isset($PublisherInfo->Name) ? $PublisherInfo->Name : "",
			 'impersonate_id' => $this->ImpersonateID,
			 'effective_id' => $this->auth->getEffectiveIdentityID(),
			 'publisher_info_id' => $this->PublisherInfoID,
			 'user_identity' => $this->identity(),
			 'domain_list' => $domain_list,
			 "user_info" => $user_info
		));

		return $view;
	}

	/**
	 * Display the publisher index page, and list all domains associated.
	 * 
	 * @return \Zend\View\Model\ViewModel
	 */
	public function domainlistAction() {
		$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;

		$parameters = array(); // Set the parameters to empty first.
		// sort map array
		// if ($this->is_admin):
			$SortMap = array("1"=> "WebDomain","5" => "DateCreated", "6" => "DateUpdated");
		// else:
		// 	$SortMap = array("1"=> "WebDomain", "4" => "DateCreated");
		// endif;

		$OrderArr = $this->getRequest()->getQuery("order");
		$order = $SortMap[$OrderArr[0]["column"]] . " " . strtoupper($OrderArr[0]["dir"]);
		
		// get search value
		$search = $this->getRequest()->getQuery("search")["value"];

		// pagination value
		$PageSize = (int) $this->getRequest()->getQuery("length");
		$Offset =   (int) $this->getRequest()->getQuery("start");

		// custom filter
		if ($this->getRequest()->getQuery("category") != ""):
			$parameters["IABCategory"] = $this->getRequest()->getQuery("category");
		endif;
		if ($this->getRequest()->getQuery("approval") != ""):
			$parameters["ApprovalFlag"] = $this->getRequest()->getQuery("approval");
		endif;

		//Pull list of websites.
		$PublisherWebsiteFactory = \_factory\PublisherWebsite::get_instance();
		if (!$this->is_admin):
			$parameters['DomainOwnerID'] = $this->PublisherInfoID;
		endif;

		$PublisherWebsiteList = $PublisherWebsiteFactory->get($parameters, $order, $search, $PageSize, $Offset);
		$TotalPublisherWebsiteCount = $PublisherWebsiteFactory->count($parameters, $search);

		$is_admin = $this->is_admin;
		
		$basePath = '';

		$result = array();

		$category_mapper = \util\DeliveryFilterOptions::$vertical_map;
		$approval_mapper = array(1=>"Auto-Approved", 2=>"Stop", 3=> "Running");
		if (count($PublisherWebsiteList)> 0):
				foreach ($PublisherWebsiteList AS $row_number => $row_data): 
					$row = array();

					$row["index"] = $Offset + $row_number+1;
					$row["PublisherWebsiteID"] = $row_data["PublisherWebsiteID"];
					$row["DomainName"] = array('name' => $row_data["WebDomain"], "id" => $row_data["PublisherWebsiteID"] );
					$row["IABCategory"] = $category_mapper[$row_data["IABCategory"]];
					$row["DomainMarkup"] = $row_data["DomainMarkup"];
					$row["DomainOwnerID"] = $row_data["DomainOwnerID"];
					$row["ApprovalFlag"] = array('flag' => $approval_mapper[$row_data["ApprovalFlag"]], "id" => $row_data["PublisherWebsiteID"] );
					$row["created_at"] = $row_data["DateCreated"];
					$row["updated_at"] = $row_data["DateUpdated"];
					$row["is_admin"] = $this->is_admin;
					$row["UserName"] = $row_data["UserName"];

					//Count Ad-Zone
					$PublisherAdZoneFactory = \_factory\PublisherAdZone::get_instance();
					$PublisherAdZoneList = $PublisherAdZoneFactory->get(array("PublisherWebsiteID" => $row_data["PublisherWebsiteID"]));
					$adzones = count($PublisherAdZoneList);
					$row["AdZones"] = $adzones;
					$result[] = $row;

				endforeach;
		endif;

		header('Content-type: application/json');
		echo json_encode(array("recordsTotal" => $TotalPublisherWebsiteCount, "recordsFiltered" => $TotalPublisherWebsiteCount , 'data' => $result, 'is_admin' => $this->is_admin));

		die;
	}

	public function reportlistAction() {
		$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;

		$parameters = array();
		$order = null;
		
		// get search value
		$search = $this->getRequest()->getQuery("search")["value"];
		// pagination value
		$PageSize = (int) $this->getRequest()->getQuery("length");
		$Offset =   (int) $this->getRequest()->getQuery("start");
		
		$flag = $this->getRequest()->getQuery("timefilter");

		$PublisherWebsiteFactory = \_factory\PublisherWebsite::get_instance();

		if (!$this->is_admin):
			$parameters['PublisherWebsite.DomainOwnerID'] = $this->PublisherInfoID;
		endif;

		//Pull list of websites.		
		$AdzoneDailyTrackerFactory = \_factory\AdzoneDailyTracker::get_instance();
		$AdzoneDailyTrackerList = $AdzoneDailyTrackerFactory->get($parameters, $order, $search, $PageSize, $Offset, $flag);

		$result = array();
		$TotalAdzoneDailyTrackerListCount = count($AdzoneDailyTrackerList);
		$ClickTotal = 0;
		$ImpTotal = 0;
		$Incomes = 0;

		if (count($AdzoneDailyTrackerList)> 0):
				foreach ($AdzoneDailyTrackerList AS $row_number => $row_data): 

					$ClickTotal += (int)$row_data["ClickCount"];
					$ImpTotal 	+= (int)$row_data["ImpCount"];
					$Incomes 	+= (float)$row_data["Incomes"];

					$row = array();	
					$row["index"] = $Offset + $row_number+1;
					$row["AdName"] = $row_data["AdName"];
					$row["AdDomain"] = $row_data["WebDomain"];
					$row["ClickCount"] = $row_data["ClickCount"];
					$row["ImpCount"] = $row_data["ImpCount"];
					$row["Incomes"] = $row_data["Incomes"];
					$row["created_at"] = $row_data["Date"];
					$row["is_admin"] = $this->is_admin;
					$result[] = $row;

				endforeach;
		endif;

		header('Content-type: application/json');
		echo json_encode(array("ClickTotal" => $ClickTotal, "ImpTotal" => $ImpTotal, "Incomes" => $Incomes, "recordsTotal" => $TotalAdzoneDailyTrackerListCount, "recordsFiltered" => $TotalAdzoneDailyTrackerListCount , 'data' => $result));

		die;
		
	}

	/**
	 * Display the publisher index page, and list all payout history associated.
	 * 
	 * @return \Zend\View\Model\ViewModel
	 */
	public function payoutlistAction() {
		$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;

		$parameters = array(); // Set the parameters to empty first.
		$SortMap = array("1"=> "DateCreated", "4" => "Status");

		$OrderArr = $this->getRequest()->getQuery("order");
		$order = $SortMap[$OrderArr[0]["column"]] . " " . strtoupper($OrderArr[0]["dir"]);
		
		// // get search value
		// $search = $this->getRequest()->getQuery("search")["value"];

		// pagination value
		$PageSize = (int) $this->getRequest()->getQuery("length");
		$Offset =   (int) $this->getRequest()->getQuery("start");
		//Pull list of websites.
		$UserPayoutFactory = \_factory\UserPayout::get_instance();
		if (!$this->is_admin):
			$parameters['UserID'] = $this->PublisherInfoID;
		endif;

		$UserPayoutList = $UserPayoutFactory->get($parameters, $order, null, $PageSize, $Offset);
		$TotalUserPayoutCount = count($UserPayoutFactory->get($parameters, null));

		$is_admin = $this->is_admin;
		
		$basePath = '';

		$result = array();

		$status_mapper = array(0=>"Processing", 1=>"Transfer Completed", 2=> "Canceled");
		if (count($UserPayoutList)> 0):
				foreach ($UserPayoutList AS $row_number => $row_data): 
					$row = array();

					$row["index"] = $Offset + $row_number+1;
					$row["UserPayoutID"] = $row_data["UserPayoutID"];
					$row["UserID"] = $row_data["UserID"];
					$row["Amount"] = $row_data["Amount"];
					$row["Name"] = $row_data["Name"];
					$row["Status"] = array('flag' => $status_mapper[$row_data["Status"]], "id" => $row_data["UserPayoutID"] );
					$row["created_at"] = $row_data["DateCreated"];
					$row["updated_at"] = $row_data["DateUpdated"];
					$row["is_admin"] = $this->is_admin;
					$result[] = $row;

				endforeach;
		endif;

		header('Content-type: application/json');
		echo json_encode(array("recordsTotal" => $TotalUserPayoutCount, "recordsFiltered" => $TotalUserPayoutCount , 'data' => $result));

		die;
	}

	public function PayoutProcessAction($value='')
	{
	    $needed_input = array(
	        'Amount'
	    );

		$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;
	    $this->validateInput($needed_input);

	    $amount = $this->getRequest()->getPost('Amount');
	    $userPayoutID = $this->getRequest()->getPost('UserPayoutID');

	    $UserPayout = new \model\UserPayout();


	    if ($userPayoutID != null):
		    
	       	$UserPayout->UserPayoutID = $userPayoutID;

	       	$params = array();
	       	$params["UserPayoutID"] = $userPayoutID;
	       	$UserPayoutFactory = \_factory\UserPayout::get_instance();
	       	$_UserPayout = $UserPayoutFactory->get_row($params);
	       	$UserPayout->UserPayoutID 	= $_UserPayout->UserPayoutID;
	    endif;

	    $UserPayout->UserID             	   = $this->PublisherInfoID; //$this->auth->getEffectiveUserID();

    	$UserPayout->Amount                    = $amount;
    	$UserPayout->Status                    = 0;
    	$UserPayout->DateCreated               = date("Y-m-d H:i:s");
    	$UserPayout->DateUpdated               = date("Y-m-d H:i:s");
	    $UserPayoutFactory = \_factory\UserPayout::get_instance();
	    $new_user_payout_id = $UserPayoutFactory->saveRecord($UserPayout);
	    
	    return $this->redirect()->toRoute('publisher_report');
	}

	public function reportAction()
	{    
		$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;
		// get search value
		$search = $this->getRequest()->getQuery("search")["value"];
		// pagination value
		$PageSize = (int) $this->getRequest()->getQuery("length");
		$Offset =   (int) $this->getRequest()->getQuery("start");
		// End List web
		$headers = array("#","Ad-Domain","Ad-Zones","Click Count","Imp Count","Income","Date",);
		
		$PublisherInfoFactory = \_factory\PublisherInfo::get_instance();
		$params = array();
		$params["PublisherInfoID"] = $this->PublisherInfoID;
		$PublisherInfo = $PublisherInfoFactory->get_row($params);

		$view = new ViewModel(array(
			'is_admin' => $this->is_admin,
			'user_id_list' => $this->user_id_list_publisher,
			'true_user_name' => $this->true_user_name,
			'user_identity' => $this->identity(),
			'table_list' => $headers,
			'user_balance' => $PublisherInfo->Balance,
			'dashboard_view' => 'report'

		));
		return $view;
	}

	public function indexAction()
	{	    
		$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;
		
		//Pull list of websites.
		$PublisherWebsiteFactory = \_factory\PublisherWebsite::get_instance();
		$parameters = array(); // Set the parameters to empty first.

		$parameters['DomainOwnerID'] = $this->PublisherInfoID;
		
		$publisher_markup_rate = $this->config_handle['system']['default_publisher_markup_rate'];
		$publisher_impressions_network_loss_rate = $this->config_handle['system']['default_publisher_impressions_network_loss_rate'];
		
		$PublisherWebsiteList = $PublisherWebsiteFactory->get($parameters);
	   
		// if ($this->is_admin):
		
			//"Imps Loss Rate","DomainPublisherImpressionsLossRate"	
			$headers = array("#","Domain","Domain Markup","User Name", "Ad-Zones","IAB Category","Created","Updated","Approval");
			$meta_data = array("WebDomain","DomainMarkupRate","DomainOwnerID","DateCreated","DateUpdated","ApprovalFlag");
		
			// admin is logged in as a user, get the markup if any for that user
			if ($this->ImpersonateID != 0 && !empty($this->PublisherInfoID)):

				$publisher_markup = \util\Markup::getMarkupForPublisher($this->PublisherInfoID, $this->config_handle, false);
				if ($publisher_markup != null):
					$publisher_markup_rate = $publisher_markup->MarkupRate;
				endif;
				
				$publisher_impressions_network_loss = \util\NetworkLossCorrection::getNetworkLossCorrectionRateForPublisher($this->PublisherInfoID, $this->config_handle, false);
				if ($publisher_impressions_network_loss != null):
					$publisher_impressions_network_loss_rate = $publisher_impressions_network_loss->CorrectionRate;
				endif;
				
			endif;
			
		// else:
		
		// 	$headers = array("#","Domain","Ad Zone","IAB Category","Created Date","Approval");
		// 	$meta_data = array("WebDomain","AutoApprove","DateCreated","DateUpdated","ApprovalFlag");
		// endif;

		foreach ($PublisherWebsiteList as $PublisherWebsite):

			$website_markup = \util\Markup::getMarkupForPublisherWebsite($PublisherWebsite->PublisherWebsiteID, $this->config_handle, false);
				
			if ($website_markup != null):
				$website_markup_rate_list[$PublisherWebsite->PublisherWebsiteID] = $website_markup->MarkupRate * 100;
			else:
				$website_markup_rate_list[$PublisherWebsite->PublisherWebsiteID] = $publisher_markup_rate * 100;
			endif;
			
			$website_impressions_network_loss = \util\NetworkLossCorrection::getNetworkLossCorrectionRateForPublisherWebsite($PublisherWebsite->PublisherWebsiteID, $this->config_handle, false);
			 
			if ($website_impressions_network_loss != null):
				$website_impressions_network_loss_rate_list[$PublisherWebsite->PublisherWebsiteID] = $website_impressions_network_loss->CorrectionRate * 100;
			else:
				$website_impressions_network_loss_rate_list[$PublisherWebsite->PublisherWebsiteID] = $publisher_impressions_network_loss_rate * 100;
			endif;
				
		endforeach;
		
		$PublisherInfoFactory = \_factory\PublisherInfo::get_instance();
		$params = array();
		$params["PublisherInfoID"] = $this->PublisherInfoID;
		$PublisherInfo = $PublisherInfoFactory->get_row($params);
		
		$publisher_markup_rate *= 100;
		$publisher_impressions_network_loss_rate *= 100;
		
		$view = new ViewModel(array(
			 'true_user_name' => $this->auth->getUserName(),
			 'domain_list_raw' => $PublisherWebsiteList,
			 'domain_list' => $this->order_data_table($meta_data, $PublisherWebsiteList, $headers),
			 'is_admin' => $this->is_admin,
			 'user_id_list' => $this->user_id_list_publisher,
			 'domain_owner' => isset($PublisherInfo->Name) ? $PublisherInfo->Name : "",
			 'impersonate_id' => $this->ImpersonateID,
			 'effective_id' => $this->auth->getEffectiveIdentityID(),
			 'publisher_info_id' => $this->PublisherInfoID,
			 'dashboard_view' => 'publisher',
			 'user_identity' => $this->identity(),
			 'publisher_markup_rate' => $publisher_markup_rate,
			 'publisher_impressions_network_loss_rate' => $publisher_impressions_network_loss_rate,
			 'website_markup_rate_list' => isset($website_markup_rate_list) ? $website_markup_rate_list : array(),
			 'vertical_map' => \util\DeliveryFilterOptions::$vertical_map,
			 'website_impressions_network_loss_rate_list' => isset($website_impressions_network_loss_rate_list) ? $website_impressions_network_loss_rate_list : array()
		));

		if ($this->is_admin == false
				|| ($this->is_admin == true && $this->PublisherInfoID != null && $this->auth->getEffectiveIdentityID() != 0)):
		
			$view->header_title = '<a href="/publisher/createdomain">Create New Domain</a>';
		else:
			$view->header_title = '&nbsp;';
		endif;
		
		return $view;
		
	}
	

	public function loadDomainDetailAction($value='')
	{
        $initialized = $this->initialize();
        if ($initialized !== true) return $initialized;
        $flag = ($this->getRequest()->getQuery("param1") == '') ? 7 : $this->getRequest()->getQuery("param1");
        $domain_id = $this->getRequest()->getQuery("domainId");
		$params = array();
		$params["PublisherWebsiteID"] = $domain_id;

        $AdzoneDailyTrackerFactory = \_factory\AdzoneDailyTracker::get_instance();
        $details = $AdzoneDailyTrackerFactory->get_detail($params, $flag);
        if (count($details)> 0):
            foreach ($details AS $row_number => $row_data): 
                $row = array();
                $row["Incomes"] = ($row_data["Incomes"] == null)? 0 : $row_data["Incomes"];
                $row["Clicks"] = ($row_data["Clicks"] == null)? 0 : $row_data["Clicks"];
                $row["Impressions"] = ($row_data["Impressions"] == null)? 0 : $row_data["Impressions"];
                $row["eCPM"] = ($row_data["eCPM"] == null)? 0 : $row_data["eCPM"];
                $row["CTR"] = ($row_data["CTR"] == null)? 0 : $row_data["CTR"];

                $result[] = $row;
            endforeach;
        endif;
        header('Content-type: application/json');
        echo json_encode(array('data' => $result));
        die;
	}

	/*
	 * Change domain flag
	*/
	public function changedomainflagAction()
	{
		// Initialize things.
		$error_message = null;
		$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;
		$request = $this->getRequest();
		$PublisherWebsiteFactory = \_factory\PublisherWebsite::get_instance();

		$success = false;
		
		// Check to make sure the value is valid to begin with.
		$PublisherWebsiteID = intval($this->params()->fromRoute('param1', 0));
		$flag = $request->getPost('flag');
		// print_r($PublisherWebsiteID);
		// print_r($flag);
		// die();

		$params = array();
	    $params["PublisherWebsiteID"] = $PublisherWebsiteID;
	    $_PublisherWebsite = $PublisherWebsiteFactory->get_row($params);

		$PublisherWebsite = new \model\PublisherWebsite();
		$PublisherWebsite->PublisherWebsiteID  = $_PublisherWebsite->PublisherWebsiteID;
		$PublisherWebsite->WebDomain       	   = $_PublisherWebsite->WebDomain;
		$PublisherWebsite->DomainMarkup    	   = $_PublisherWebsite->DomainMarkup;
		$PublisherWebsite->DomainOwnerID   	   = $_PublisherWebsite->DomainOwnerID;
		$PublisherWebsite->AutoApprove     	   = $_PublisherWebsite->AutoApprove;
		$PublisherWebsite->IABCategory     	   = $_PublisherWebsite->IABCategory;
		$PublisherWebsite->IABSubCategory  	   = $_PublisherWebsite->IABSubCategory;
		$PublisherWebsite->Description     	   = $_PublisherWebsite->Description;
		$PublisherWebsite->DateCreated     	   = $_PublisherWebsite->DateCreated;
		$PublisherWebsite->DateUpdated     	   = date("Y-m-d H:i:s");

		//Update Deleted flag
		$PublisherWebsite->ApprovalFlag      = $flag;
		
	    $update_publisher_website_id = $PublisherWebsiteFactory->save_domain($PublisherWebsite);;
		if($update_publisher_website_id):
			$success = true;
		else:
			$error_message = "Unable to update the entry. Please contact customer service.";
		endif;			

		$data = array(
			'success' => $success,
			'data' => array('error_msg' => $error_message)
		 );
		 
		 return $this->getResponse()->setContent(json_encode($data));
	}



	/*
	 * Change payout flag
	*/
	public function changepayoutflagAction()
	{
		// Initialize things.
		$error_message = null;
		$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;
		$request = $this->getRequest();
		$UserPayoutFactory = \_factory\UserPayout::get_instance();

		$success = false;
		
		// Check to make sure the value is valid to begin with.
		$UserPayoutID = intval($this->params()->fromRoute('param1', 0));
		$flag = $request->getPost('flag');
		// print_r($UserPayoutID);
		// print_r($flag);
		// die();

		$params = array();
	    $params["UserPayoutID"] = $UserPayoutID;
	    $_UserPayout = $UserPayoutFactory->get_row($params);

		$UserPayout = new \model\UserPayout();
		$UserPayout->UserPayoutID  		   = $_UserPayout->UserPayoutID;
		$UserPayout->UserID       	   	   = $_UserPayout->UserID;
		$UserPayout->Amount    	   		   = $_UserPayout->Amount;
		$UserPayout->DateCreated     	   = $_UserPayout->DateCreated;
		$UserPayout->DateUpdated     	   = date("Y-m-d H:i:s");

		//Update Deleted flag
		$UserPayout->Status      = $flag;
		
	    $user_payout = $UserPayoutFactory->saveRecord($UserPayout);;
		if($user_payout):
			if($flag==1):
				$TransactionDetail = new \model\TransactionDetail();
				$TransactionDetailFactory = \_factory\TransactionDetail::get_instance();
				$TransactionDetail->TransactionLogID = '';
				$TransactionDetail->UserID = $UserPayout->UserID;
				$TransactionDetail->Type = 1;
				$TransactionDetail->Amount = $UserPayout->Amount ;
				$TransactionDetail->Description = "";
				$TransactionDetailFactory->saveTransactionDetail($TransactionDetail);
				$success = true;
			endif;
		else:
			$error_message = "Unable to update the entry. Please contact customer service.";
		endif;			

		$data = array(
			'success' => $success,
			'data' => array('error_msg' => $error_message)
		 );
		 
		 return $this->getResponse()->setContent(json_encode($data));
	}
	/**
	 * Allows an administrator to "login as another user", to impersonate a lower user to manage another user's objects.
	 * @return Ambigous <\Zend\Http\Response, \Zend\Stdlib\ResponseInterface>
	 */
	public function loginasAction()
	{
		$this->ImpersonateUser();
		return $this->redirect()->toRoute('publisher');
	}
	
	/**
	 * Toggle the approval given the supplied flag to toggle.
	 * 
	 * @param integer $flag 0 = Pending | 1 = Approved
	 * @return boolean TRUE if successful, FALSE if failure.
	 */
	private function domainApprovalToggle($flag)
	{
		$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;
		$PublisherWebsiteID = intval($this->params()->fromRoute('param1', 0));

		if ($this->is_admin && $PublisherWebsiteID > 0 && ($flag === 2 || $flag === 1 || $flag === 0)):

			$PublisherWebsiteFactory = \_factory\PublisherWebsite::get_instance();
			$domain_object = new \model\PublisherWebsite();
			$request = $this->getRequest();
			$parameters = array("PublisherWebsiteID" => $PublisherWebsiteID);
			$domain_object = $PublisherWebsiteFactory->get_row_object($parameters);

			// Make sure entry exists.
			if (intval($domain_object->PublisherWebsiteID) == $PublisherWebsiteID):

				$domain_object->AutoApprove = 0;
			
				$domain_object->ApprovalFlag = $flag;
				
				if ($flag == 2):
					
					$PublisherAdZoneFactory = \_factory\PublisherAdZone::get_instance();
					
					$params = array();
					$params["PublisherWebsiteID"] = $PublisherWebsiteID;
					$PublisherAdZoneList = $PublisherAdZoneFactory->get($params);

					foreach ($PublisherAdZoneList as $PublisherAdZone):
					
						$PublisherAdZoneFactory->updatePublisherAdZonePublisherAdZoneStatus($PublisherAdZone->PublisherAdZoneID, 2);
					
					endforeach;
				endif;
				
				if (($flag == 1 || $flag == 2) && $this->config_handle['mail']['subscribe']['user_domains']):

					$PublisherInfoFactory = \_factory\PublisherInfo::get_instance();
					$params = array();
					$params["PublisherInfoID"] = $domain_object->DomainOwnerID;
					$PublisherInfo = $PublisherInfoFactory->get_row($params);
					
					if ($PublisherInfo !== null):
						// approval, send out email
						if ($flag == 1):
							$message = 'Your NginAd Exchange Publisher Domain: ' . $domain_object->WebDomain . ' was approved.<br /><br />Please login <a href="http://server.nginad.com/auth/login">here</a> with your email and password';
							$subject = "Your NginAd Exchange Publisher Domain: " . $domain_object->WebDomain . " was approved";
						else:
							$message = 'Your NginAd Exchange Publisher Domain: ' . $domain_object->WebDomain . ' was rejected.<br /><br />Please login <a href="http://server.nginad.com/auth/login">here</a> with your email and password';
							$subject = "Your NginAd Exchange Publisher Domain: " . $domain_object->WebDomain . " was rejected";
						endif;
						$transport = $this->getServiceLocator()->get('mail.transport');
							
						$text = new Mime\Part($message);
						$text->type = Mime\Mime::TYPE_HTML;
						$text->charset = 'utf-8';
							
						$mimeMessage = new Mime\Message();
						$mimeMessage->setParts(array($text));
						$zf_message = new Message();
						$zf_message->addTo($PublisherInfo->Email)
						->addFrom($this->config_handle['mail']['reply-to']['email'], $this->config_handle['mail']['reply-to']['name'])
						->setSubject($subject)
						->setBody($mimeMessage);
						$transport->send($zf_message);
						
					endif;
					
				endif;
				
				if ($PublisherWebsiteFactory->save_domain($domain_object) > 0):
					return TRUE;
				endif;
			endif;
		endif;
		
		return FALSE;
	}
	
	/**
	 * Approve a domain.
	 */
	public function approvedomainAction()
	{
		$this->domainApprovalToggle(1);
		
		return $this->redirect()->toRoute('publisher');
	}
	
	/**
	 * Reject a domain.
	 */
	public function rejectdomainAction()
	{
		$this->domainApprovalToggle(2);
		 
		return $this->redirect()->toRoute('publisher');
	}

	/**
	 * Show confirmation and process the deleting of domains.
	 * @return Ambigous <\Zend\Http\Response, \Zend\Stdlib\ResponseInterface>|multitype:Ambigous <NULL, string> \DashboardManager\model\PublisherWebsite
	 */
	public function deletedomainAction()
	{
		// Initialize things.
		$error_message = null;
		$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;
		$request = $this->getRequest();
		$PublisherWebsiteFactory = \_factory\PublisherWebsite::get_instance();
		$PublisherAdZoneFactory = \_factory\PublisherAdZone::get_instance();
		$deleteCheckResultObj = new \model\PublisherWebsite();
		$success = false;
		
		// Check to make sure the value is valid to begin with.
		$PublisherWebsiteID = intval($this->params()->fromRoute('param1', 0));
		if ($PublisherWebsiteID > 0):
		
			$parameters = array("PublisherWebsiteID" => $PublisherWebsiteID);
			$deleteCheckResultObj = $PublisherWebsiteFactory->get_row_object($parameters);
			
			//if (intval($deleteCheckResultObj->PublisherWebsiteID) == $PublisherWebsiteID):
			
				if ($request->isPost()):
				
					if ($request->getPost('del', 'No') == 'Yes'):
					
						// Is this user allowed to delete this entry?
						if ($this->is_admin || $deleteCheckResultObj->DomainOwnerID == $this->PublisherInfoID):
						
						   if (intval($PublisherWebsiteFactory->delete_domain($PublisherWebsiteID)) > -1):

							   $params = array();
							   $params['PublisherWebsiteID'] = intval($PublisherWebsiteID);
							   $PublisherAdZoneList = $PublisherAdZoneFactory->get($params);
								
							   foreach ($PublisherAdZoneList as $PublisherAdZone):
							   
									$PublisherAdZoneFactory->delete_zone(intval($PublisherAdZone->PublisherAdZoneID));
							   
							   endforeach;    	                   
							   // Delete success! Return to publisher.
							   $success = true;
						   
						   else: 
						   
							   // Something blew up.
							   $error_message = "Unable to delete the entry. Please contact customer service.";
						   endif;
						
						else:
						
							// User is either not the owner of the entry, or is not an admin.
							$error_message = "You do not have permission to delete this entry.";
						endif;
					
					else: 
					
						// Cancel.
					endif;
				
				else:
				
					// Valid entry, show confirmation.
				endif;
			
			//else:
			
				//$error_message = "The specified domain entry ID was not found.";
				//return $this->redirect()->toRoute('publisher');
			//endif;
		   
		
		else: 
		
			$error_message = "An invalid domain entry ID was provided.";
		endif;

		
		$data = array(
			'success' => $success,
			'data' => array('error_msg' => $error_message)
		 );
		 
		 return $this->getResponse()->setContent(json_encode($data));
	}
	
	/**
	 * Shows and process the creation of new domains.
	 * 
	 * @return multitype:Ambigous <NULL, string> 
	 */
	public function createdomainAction()
	{
		$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;
		
		$error_msg = null;
		
		$needed_input = array(
				'WebDomain',
				'Description'
		);
		
		$request = $this->getRequest();
		if ($request->isPost()):
		
			$domain = new \model\PublisherWebsite();
			
			$validate = $this->validateInput($needed_input, false);
			
			if ($validate):
			
				$PublisherWebsiteFactory = \_factory\PublisherWebsite::get_instance();
				
				$web_domain = $request->getPost("WebDomain");
				$description = $request->getPost("Description");
				$iab_category = $request->getPost("IABCategory");
				$domain_owner_id = $request->getPost("DomainOwnerID");
				
				$domain->WebDomain = $web_domain;
				$domain->Description = $description;
				$domain->IABCategory = $iab_category;
				$domain->DomainOwnerID = $domain_owner_id;
				$auto_approve_websites = $this->config_handle['settings']['publisher']['auto_approve_websites'];
				if ($auto_approve_websites == true):
					$domain->AutoApprove = 1;
					$domain->ApprovalFlag = 1;
					#Flag of domain:
					# 1: Auto Approved
					# 2: Stop
					# 3: Running
					
				endif;
				// Check if an entry exists with the same name. A NULL means there is no duplicate.
				if ($PublisherWebsiteFactory->get_row(array("WebDomain" => $domain->WebDomain)) === null):

					//Make sure the user can save as this user claimed and has the correct ID!
					//This is to prevent an entry intended for user ED from being saved as
					//user AL when an admin changes impersonation during input after form is
					//displayed but before the form is submitted.
					if ($domain->DomainOwnerID == $this->PublisherInfoID):
					
						try {
							$PublisherWebsiteFactory->save_domain($domain);
							
							if ($auto_approve_websites != true || $this->config_handle['mail']['subscribe']['websites'] === true):
							
								if ($auto_approve_websites != true):
									$message = "New Website for Approval.<br /><b>".$domain->WebDomain."</b><br /><br />Username: " . $this->true_user_name;
									$subject = "New Website for Approval: " . $domain->WebDomain;
								else:
									$message = "New Website.<br /><b>".$domain->WebDomain."</b><br /><br />Username: " . $this->true_user_name;
									$subject = "New Website: " . $domain->WebDomain;
								endif;
								$transport = $this->getServiceLocator()->get('mail.transport');
								
								$text = new Mime\Part($message);
								$text->type = Mime\Mime::TYPE_HTML;
								$text->charset = 'utf-8';
								
								$mimeMessage = new Mime\Message();
								$mimeMessage->setParts(array($text));
								$zf_message = new Message();
								$zf_message->addTo($this->config_handle['mail']['admin-email']['email'], $this->config_handle['mail']['admin-email']['name'])
								->addFrom($this->config_handle['mail']['reply-to']['email'], $this->config_handle['mail']['reply-to']['name'])
								->setSubject($subject)
								->setBody($mimeMessage);
								$transport->send($zf_message);
							endif;
						}
						catch(\Zend\Db\Adapter\Exception\InvalidQueryException $e) {
							$error_msg ="ERROR: A database error has occurred, please contact customer service.";
							return array('form' => $form,
								'error_message' => $error_msg,
								'is_admin' => $this->is_admin,
								'user_id_list' => $this->user_id_list_publisher,
								'effective_id' => $this->auth->getEffectiveIdentityID(),
								'impersonate_id' => $this->ImpersonateID,
								'domain_owner_id' => $this->PublisherInfoID,
								//'vertical_map' => \util\DeliveryFilterOptions::$vertical_map,
								'true_user_name' => $this->true_user_name,
								'user_identity' => $this->identity(),
								'header_title' => 'Create New Domain'
							);
						}
						
						return $this->redirect()->toRoute('publisher');
					
					else: 
					
						$error_msg = "ERROR: You do not have permission to create an entry as this user.";
					endif;
				
				else:
				
				$error_msg = "ERROR: A duplicate Web Domain may exist. Please try another.";
				endif;
			
			else:
			
			   $error_msg = "ERROR: Required fields are not filled in or invalid input.";
			endif;
		
		else: 

		endif;
		
		return array(
			'error_message' => $error_msg,
			'is_admin' => $this->is_admin,
			'user_id_list' => $this->user_id_list_publisher,
			'effective_id' => $this->auth->getEffectiveIdentityID(),
			'impersonate_id' => $this->ImpersonateID,
			'true_user_name' => $this->true_user_name,
			'domain_owner_id' => $this->PublisherInfoID,
			'vertical_map' => \util\DeliveryFilterOptions::$vertical_map,
			'dashboard_view' => 'publisher',
			'user_identity' => $this->identity(),
			'header_title' => 'Create New Domain'
		);
		
	}
	
	/**
	 * Show the editing of a domain and process it.
	 * 
	 * @return multitype:string  \DashboardManager\model\PublisherWebsite |multitype:Ambigous <NULL, string>  \DashboardManager\model\PublisherWebsite
	 */
	public function editdomainAction()
	{
		$error_message = null;
		$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;

		$PublisherWebsiteFactory = \_factory\PublisherWebsite::get_instance();
		$editResultObj = new \model\PublisherWebsite();
		
		$needed_input = array(
				'WebDomain',
				'Description'
		);
		
		// Check to make sure the value is valid to begin with.
		$PublisherWebsiteID = intval($this->params()->fromRoute('param1', 0));
		if ($PublisherWebsiteID > 0):
		
			// Only modify entries that belong to the user.
			if ($this->is_admin):
				$parameters = array("PublisherWebsiteID" => $PublisherWebsiteID);
			else:
				$parameters = array("PublisherWebsiteID" => $PublisherWebsiteID, "DomainOwnerID" => $this->PublisherInfoID);
			endif;
			$editResultObj = $PublisherWebsiteFactory->get_row_object($parameters);
			
			$request = $this->getRequest();

			// Check to make sure this entry exists for editing and make sure the user owns this entry.
			// Prevent the display of entries that the user does not own or have access.
			if ((intval($editResultObj->PublisherWebsiteID) == $PublisherWebsiteID &&
				$editResultObj->DomainOwnerID == $this->PublisherInfoID) || $this->is_admin):
			
				if ($request->isPost()):
				
					$validate = $this->validateInput($needed_input, false);
			
					if ($validate && ( $this->is_admin || ($editResultObj->DomainOwnerID == $this->PublisherInfoID ) )): 
					
						$web_domain = $request->getPost("WebDomain");
						$description = $request->getPost("Description");
						$iab_category = $request->getPost("IABCategory");
						if ($this->is_admin):
							$domain_markup = $request->getPost("DomainMarkup");
						else:
							$domain_markup = 0;
						endif;
				// Check if an entry exists with the same name. A NULL means there is no duplicate.
						//if ($PublisherWebsiteFactory->get_row(array("WebDomain" => $web_domain)) === null):
						$editResultObj->WebDomain = $web_domain;
						$editResultObj->Description = $description;
						$editResultObj->IABCategory = $iab_category;
 						$editResultObj->DomainMarkup = $domain_markup;
						try {
						$PublisherWebsiteFactory->save_domain($editResultObj);
							return $this->redirect()->toRoute('publisher');
						}
						catch(\Zend\Db\Adapter\Exception\InvalidQueryException $e) {
							$error_msg ="ERROR: A database error has occurred, please contact customer service.";
						}
						
						//else:
							//$error_msg = "ERROR: A duplicate Web Domain may exist. Please try another.";
					   // endif;
						
 
					else: 
					
						$error_message = "ERROR: Required fields are not filled in or invalid input.";
					endif;
					
				endif;

					// Valid entry, show edit.
					
			
			else:
			
				$error_message = "ERROR: The specified domain entry ID was not found or you do not have permission to edit this entry.";
				return $this->redirect()->toRoute('publisher');
			endif;
		   
		
		else: 
		
			$error_message = "An invalid domain entry ID was provided.";
			return $this->redirect()->toRoute('publisher');
		endif;

		return array(
				'error_message' => $error_message,
				'is_admin' => $this->is_admin,
				'user_id_list' => $this->user_id_list_publisher,
				'effective_id' => $this->auth->getEffectiveIdentityID(),
				'impersonate_id' => $this->ImpersonateID,
				'true_user_name' => $this->true_user_name,
				'editResultObj' => $editResultObj,
				'vertical_map' => \util\DeliveryFilterOptions::$vertical_map,
				'dashboard_view' => 'publisher',
				'user_identity' => $this->identity(),
				'header_title' => 'Edit Domain',
		);
		
	}
	
	public function changepublisherimpressionsnetworklossAction() {
	
		$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;
	
		if ($this->is_admin == false):
			die("You do not have permission to access this page");
		endif;
	 
		$publisher_info_id 						= $this->getRequest()->getQuery('networkimpressionslosspublisherinfoid');
		$publisher_impressions_network_loss 	= $this->getRequest()->getQuery('publisher-impressions-network-loss');
	
		$PublisherImpressionsNetworkLossFactory = \_factory\PublisherImpressionsNetworkLoss::get_instance();
		$params = array();
		$params["PublisherInfoID"] 				= $publisher_info_id;
		$PublisherImpressionsNetworkLoss 		= $PublisherImpressionsNetworkLossFactory->get_row($params);
	
		$publisher_impressions_network_loss 	= floatval($publisher_impressions_network_loss) / 100;
	
		if ($publisher_impressions_network_loss < 0):
			die("Publisher Impressions Network Loss can not be less than zero percent");
		endif;
	
		if ($publisher_impressions_network_loss >= 1):
			die("Publisher Impressions Network Loss can not be greater than or equal to one hundred percent");
		endif;
	
		$publisher_impressions_network_loss 	= sprintf("%1.2f", $publisher_impressions_network_loss);
	
		$_PublisherImpressionsNetworkLoss = new \model\PublisherImpressionsNetworkLoss();
		$_PublisherImpressionsNetworkLoss->PublisherInfoID 		= $publisher_info_id;
		$_PublisherImpressionsNetworkLoss->CorrectionRate 		= $publisher_impressions_network_loss;
	
		if ($PublisherImpressionsNetworkLoss != null):
	
			$PublisherImpressionsNetworkLossFactory->updatePublisherImpressionsNetworkLoss($_PublisherImpressionsNetworkLoss);
	
		else:
	
			$PublisherImpressionsNetworkLossFactory->insertPublisherImpressionsNetworkLoss($_PublisherImpressionsNetworkLoss);
	
		endif;
	
		return $this->redirect()->toRoute('publisher');
	
	}
	
	public function changedomainimpressionsnetworklossAction() {
	
		$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;
	
		if ($this->is_admin == false):
			die("You do not have permission to access this page");
		endif;
	
		$publisher_website_id 							= $this->getRequest()->getQuery('impressionsnetworklossdomainid');
		$publisher_website_impressions_network_loss 	= $this->getRequest()->getQuery('domain-impressions-network-loss');
	
		$PublisherWebsiteImpressionsNetworkLossFactory 	= \_factory\PublisherWebsiteImpressionsNetworkLoss::get_instance();
		$params = array();
		$params["PublisherWebsiteID"] 					= $publisher_website_id;
		$PublisherWebsiteImpressionsNetworkLoss 		= $PublisherWebsiteImpressionsNetworkLossFactory->get_row($params);
	
		$publisher_website_impressions_network_loss 	= floatval($publisher_website_impressions_network_loss) / 100;
	
		if ($publisher_website_impressions_network_loss <= 0):
			die("Domain Impressions Network Loss can not be less than or equal to zero percent");
		endif;
	
		if ($publisher_website_impressions_network_loss >= 1):
			die("Domain Impressions Network Loss can not be greater than or equal to one hundred percent");
		endif;
	
		$publisher_website_impressions_network_loss 	= sprintf("%1.2f", $publisher_website_impressions_network_loss);
	
		$_PublisherWebsiteImpressionsNetworkLoss 						= new \model\PublisherWebsiteImpressionsNetworkLoss();
		$_PublisherWebsiteImpressionsNetworkLoss->PublisherWebsiteID 	= $publisher_website_id;
		$_PublisherWebsiteImpressionsNetworkLoss->CorrectionRate 		= $publisher_website_impressions_network_loss;
	
		if ($PublisherWebsiteImpressionsNetworkLoss != null):
	
			$PublisherWebsiteImpressionsNetworkLossFactory->updatePublisherWebsiteImpressionsNetworkLoss($_PublisherWebsiteImpressionsNetworkLoss);
	
		else:
	
			$PublisherWebsiteImpressionsNetworkLossFactory->insertPublisherWebsiteImpressionsNetworkLoss($_PublisherWebsiteImpressionsNetworkLoss);
	
		endif;
	
		return $this->redirect()->toRoute('publisher');
	
	}
	
	/**
	 *
	 * @return Ambigous <\Zend\Http\Response, \Zend\Stdlib\ResponseInterface>
	 */
	public function changepublishermarkupAction() {
		
		$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;
		
		if ($this->is_admin == false):
			die("You do not have permission to access this page");
		endif;
	
		$publisher_info_id 		= $this->getRequest()->getQuery('markuppublisherinfoid');
		$publisher_markup 		= $this->getRequest()->getQuery('publisher-markup');
	
		$PublisherMarkupFactory 	= \_factory\PublisherMarkup::get_instance();
		$params = array();
		$params["PublisherInfoID"] 	= $publisher_info_id;
		$PublisherMarkup 			= $PublisherMarkupFactory->get_row($params);
	
		$publisher_markup = floatval($publisher_markup) / 100;
	
		if ($publisher_markup <= 0):
			die("Publisher Markup can not be less than or equal to zero percent");
		endif;
	
		if ($publisher_markup >= 1):
			die("Publisher Markup can not be greater than or equal to one hundred percent");
		endif;
	
		$publisher_markup = sprintf("%1.2f", $publisher_markup);
	
		$_PublisherMarkup = new \model\PublisherMarkup();
		$_PublisherMarkup->PublisherInfoID 	= $publisher_info_id;
		$_PublisherMarkup->MarkupRate 		= $publisher_markup;
	
		if ($PublisherMarkup != null):
	
			$PublisherMarkupFactory->updatePublisherMarkup($_PublisherMarkup);
	
		else:
	
			$PublisherMarkupFactory->insertPublisherMarkup($_PublisherMarkup);
	
		endif;
	
		return $this->redirect()->toRoute('publisher');
	
	}
	
	/**
	 *
	 * @return Ambigous <\Zend\Http\Response, \Zend\Stdlib\ResponseInterface>
	 */
	public function changedomainmarkupAction() {
		
		$initialized = $this->initialize();
		if ($initialized !== true) return $initialized;
		
		if ($this->is_admin == false):
			die("You do not have permission to access this page");
		endif;
		
		$publisher_website_id 		= $this->getRequest()->getQuery('markupdomainid');
		$publisher_website_markup 	= $this->getRequest()->getQuery('domain-markup');
		
		$PublisherWebsiteMarkupFactory 	= \_factory\PublisherWebsiteMarkup::get_instance();
		$params = array();
		$params["PublisherWebsiteID"] 	= $publisher_website_id;
		$PublisherWebsiteMarkup 		= $PublisherWebsiteMarkupFactory->get_row($params);
		
		$publisher_website_markup = floatval($publisher_website_markup) / 100;
		
		if ($publisher_website_markup <= 0):
			die("Domain Markup can not be less than or equal to zero percent");
		endif;
		
		if ($publisher_website_markup >= 1):
			die("Domain Markup can not be greater than or equal to one hundred percent");
		endif;
		
		$publisher_website_markup = sprintf("%1.2f", $publisher_website_markup);
		
		$_PublisherWebsiteMarkup = new \model\PublisherWebsiteMarkup();
		$_PublisherWebsiteMarkup->PublisherWebsiteID 	= $publisher_website_id;
		$_PublisherWebsiteMarkup->MarkupRate 		= $publisher_website_markup;
		
		if ($PublisherWebsiteMarkup != null):
		
			$PublisherWebsiteMarkupFactory->updatePublisherWebsiteMarkup($_PublisherWebsiteMarkup);
		
		else:
		
			$PublisherWebsiteMarkupFactory->insertPublisherWebsiteMarkup($_PublisherWebsiteMarkup);
		
		endif;
		
		return $this->redirect()->toRoute('publisher');
	
	}

	
}

?>