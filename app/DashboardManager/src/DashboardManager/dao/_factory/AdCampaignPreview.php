<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace _factory;

use Zend\Db\TableGateway\AbstractTableGateway;
use Zend\Db\TableGateway\Feature;

class AdCampaignPreview extends AbstractTableGateway
{

	static protected $instance = null;

	public static function get_instance() {

		if (self::$instance == null):
			self::$instance = new \_factory\AdCampaignPreview();
		endif;
		return self::$instance;
	}


    function __construct() {

            $this->table = 'AdCampaignPreview';
            $this->featureSet = new Feature\FeatureSet();
            $this->featureSet->addFeature(new Feature\GlobalAdapterFeature());
            $this->initialize();
    }

    public function get_row($params = null) {
        // http://files.zend.com/help/Zend-Framework/zend.db.select.html

        $obj_list = array();

        $resultSet = $this->select(function (\Zend\Db\Sql\Select $select) use ($params) {
        	foreach ($params as $name => $value):
        	$select->where(
        			$select->where->equalTo($name, $value)
        	);
        	endforeach;
        	$select->limit(1, 0);
        	$select->order('AdCampaignPreviewID');

        }
        	);

    	    foreach ($resultSet as $obj):
    	         return $obj;
    	    endforeach;

        	return null;
    }

    public function get($params = null, $orders = null, $search = null, $limit = null, $offset = 0) {
        	// http://files.zend.com/help/Zend-Framework/zend.db.select.html

        $obj_list = array();

    	$resultSet = $this->select(function (\Zend\Db\Sql\Select $select) use ($params,  $orders, $search, $limit, $offset) {
                $select->join("auth_Users",
                    "auth_Users.user_id = AdCampaignPreview.UserID",
                    array(
                        "UserName" => "user_login"
                        ),
                    $select::JOIN_INNER);	

                foreach ($params as $name => $value):
        		$select->where(
        				$select->where->equalTo($name, $value)
        		);
        		endforeach;

                if ($search != null):
                  $select->where
                          ->nest
                            ->like("Name", "%". $search ."%" )
                            ->or
                            ->equalTo("AdCampaignPreviewID", (int) $search) 
                          ->unnest;
                endif;
                
                if($orders == null):
                        $select->order('Name');
                    else:
                        $select->order($orders);
                    endif;

                if ($limit != null):
                  $select->limit($limit);
                  $select->offset($offset);
                endif;
        	}
    	);

    	    foreach ($resultSet as $obj):
    	        $obj_list[] = $obj;
    	    endforeach;
    		return $obj_list;
    }

    public function saveAdCampaignPreview(\model\AdCampaignPreview $AdCampaignPreview) {
    	$data = array(
    	        'AdCampaignID'  	   => $AdCampaignPreview->AdCampaignID,
    			'Name'                 => $AdCampaignPreview->Name,
    	         // convert to MySQL DateTime
    			'StartDate'            => $AdCampaignPreview->StartDate,
    	        'EndDate'              => $AdCampaignPreview->EndDate,
    	        'Customer'             => $AdCampaignPreview->Customer,
    	        'CustomerID'           => $AdCampaignPreview->CustomerID,
    	        'MaxImpressions'       => $AdCampaignPreview->MaxImpressions,
    	        'MaxSpend'             => $AdCampaignPreview->MaxSpend,
                'CPMTarget'            => $AdCampaignPreview->CPMTarget,
                'CPMTargetValue'       => $AdCampaignPreview->CPMTargetValue,
                'CPCTarget'            => $AdCampaignPreview->CPCTarget,
                'CPCTargetValue'       => $AdCampaignPreview->CPCTargetValue,
    	        'Active'               => $AdCampaignPreview->Active,
    	        'DateUpdated'          => $AdCampaignPreview->DateUpdated,
    			'ChangeWentLive'       => $AdCampaignPreview->ChangeWentLive,
    			'WentLiveDate'         => $AdCampaignPreview->WentLiveDate,
                'CampaignMarkup'       => $AdCampaignPreview->CampaignMarkup
    	);

    	$ad_campaign_preview_id = (int)$AdCampaignPreview->AdCampaignPreviewID;
    	if ($ad_campaign_preview_id === 0):
    		$data['UserID'] 				= $AdCampaignPreview->UserID;
    		$data['DateCreated'] 			= $AdCampaignPreview->DateCreated;
    		$data['ImpressionsCounter']   	= $AdCampaignPreview->ImpressionsCounter;
    		$data['CurrentSpend']         	= $AdCampaignPreview->CurrentSpend;
    		$this->insert($data);
    		return $this->getLastInsertValue();
    	else: 
            $data['Deleted']                 = $AdCampaignPreview->Deleted;
            $data['Approval']                = $AdCampaignPreview->Approval;
    		$this->update($data, array('AdCampaignPreviewID' => $ad_campaign_preview_id));
    		return 1;
    	endif;
    }

    public function deleteAdCampaignPreview($ad_campaign_preview_id) {
    	$this->delete(array('AdCampaignPreviewID' => $ad_campaign_preview_id));
    }

    public function deActivateAdCampaignPreview($ad_campaign_preview_id) {

    	$params = array();
    	$params["AdCampaignPreviewID"] = $ad_campaign_preview_id;
    	$AdCampaignPreview = $this->get_row($params);

    	$AdCampaignPreview->Active = 0;
    	// get array of data
    	$data = $AdCampaignPreview->getArrayCopy();

    	$this->update($data, array('AdCampaignPreviewID' => $ad_campaign_preview_id));
    }

    public function doDeletedAdCampaignPreview($ad_campaign_preview_id) {

    	$params = array();
    	$params["AdCampaignPreviewID"] = $ad_campaign_preview_id;
    	$AdCampaignPreview = $this->get_row($params);

    	$AdCampaignPreview->Deleted = 1;
    	// get array of data
    	$data = $AdCampaignPreview->getArrayCopy();

    	$this->update($data, array('AdCampaignPreviewID' => $ad_campaign_preview_id));
    }

   public function get_row_object($params = null)
   {
       $rawData = $this->get_row($params);
       $DataObj = new \model\AdCampaignPreview();
       if ($rawData !== null):
       
           foreach (get_object_vars($DataObj) AS $key => $value):
           
               $DataObj->$key =$rawData[$key];
           endforeach;
       endif;

       return $DataObj;
   }

};
