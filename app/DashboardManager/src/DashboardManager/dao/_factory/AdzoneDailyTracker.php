<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace _factory;

use Zend\Db\TableGateway\Feature;

class AdzoneDailyTracker extends \_factory\CachedTableRead
{

	static protected $instance = null;

	public static function get_instance() {

		if (self::$instance == null):
			self::$instance = new \_factory\AdzoneDailyTracker();
		endif;
		return self::$instance;
	}


    function __construct() {

            $this->table = 'AdzoneDailyTracker';
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
        	$select->order('AdzoneDailyTrackerID');

        }
        	);

    	    foreach ($resultSet as $obj):
    	         return $obj;
    	    endforeach;

        	return null;
    }

    public function get($params = null, $orders = null, $search = null, $limit = null, $offset = 0, $flag = 0 ) {
        	// http://files.zend.com/help/Zend-Framework/zend.db.select.html

        $obj_list = array();

    	$resultSet = $this->select(function (\Zend\Db\Sql\Select $select) use ($params, $orders, $search, $limit, $offset, $flag) {

                $select->columns(
                    array(
                        "AdzoneDailyTrackerID" => "AdzoneDailyTrackerID",
                        "PublisherAdZoneID" => "PublisherAdZoneID",
                        "ClickCount" => new \Zend\Db\Sql\Expression("SUM(ClickCount)"),
                        "ImpCount" => new \Zend\Db\Sql\Expression("SUM(ImpCount)"),
                        "Incomes" => new \Zend\Db\Sql\Expression("ROUND(SUM(Income),2)"),
                        "Date" => new \Zend\Db\Sql\Expression("CAST(AdzoneDailyTracker.DateCreated AS DATE)")
                    )
                );

                $select->join("PublisherAdZone",
                    "PublisherAdZone.PublisherAdZoneID = AdzoneDailyTracker.PublisherAdZoneID",
                    array(
                        "AdName" => "AdName",
                        ),
                    $select::JOIN_INNER);
                
                $select->join("PublisherWebsite",
                    "PublisherWebsite.PublisherWebsiteID = PublisherAdZone.PublisherWebsiteID",
                    array(
                        "WebDomain" => "WebDomain",
                        "PublisherWebsiteID" => "PublisherWebsiteID"
                        ),
                    $select::JOIN_INNER);

                $select->group(array('Date', 'AdName'));

                //Condition filter
                $condition = $this->getConditionByFlag($flag);

                $select->where($condition);

                foreach ($params as $name => $value):
        		$select->where(
        				$select->where->equalTo($name, $value)
        		);
        		endforeach;

                if ($search != null):
                  $select->where
                          ->nest
                            ->like("WebDomain", "%". $search ."%" )
                            ->or
                            ->equalTo("AdzoneDailyTrackerID", (int) $search) 
                          ->unnest;
                endif;

                if($orders == null):
                        $select->order('AdzoneDailyTrackerID');
                    else:
                        $select->order($orders);
                    endif;

                if ($limit != null):
                  $select->limit($limit);
                  $select->offset($offset);
                endif;

                // $sql = $select->getSqlString();
                // print_r($sql);
                // die();

        	}
    	);

	    foreach ($resultSet as $obj):
	        $obj_list[] = $obj;
	    endforeach;

		return $obj_list;
    }



    public function get_income($params = null, $flag = null) {
        $obj_list = array();
        $resultSet = $this->select(function (\Zend\Db\Sql\Select $select) use ($params, $flag){
                foreach ($params as $name => $value):
                $select->where(
                        $select->where->equalTo($name, $value)
                );
                endforeach;
                $select->columns(
                    array(
                        "Incomes" => new \Zend\Db\Sql\Expression("SUM(Income)")
                    )
                );
                //Condition filter
                $condition = $this->getConditionByFlag($flag);
                $select->where($condition);
            }
        );
        foreach ($resultSet as $obj):
            $obj_list[] = $obj;
        endforeach;

        return $obj_list;
    }

    public function get_detail($params = null, $flag = null) {
        $obj_list = array();
        $resultSet = $this->select(function (\Zend\Db\Sql\Select $select) use ($params, $flag){
                
                $select->join("PublisherAdZone",
                    "PublisherAdZone.PublisherAdZoneID = AdzoneDailyTracker.PublisherAdZoneID",
                    array(
                        "PublisherWebsiteID" => "PublisherWebsiteID",
                        ),
                    $select::JOIN_INNER);

                foreach ($params as $name => $value):
                $select->where(
                        $select->where->equalTo($name, $value)
                );
                endforeach;
                $select->columns(
                    array(
                        "Incomes" => new \Zend\Db\Sql\Expression("SUM(Income)"),
                        "Clicks" => new \Zend\Db\Sql\Expression("SUM(ClickCount)"),
                        "Impressions" => new \Zend\Db\Sql\Expression("SUM(ImpCount)"),
                        "eCPM" => new \Zend\Db\Sql\Expression("ROUND((SUM(Income)/SUM(ImpCount)*1000),2)"),
                        "CTR" => new \Zend\Db\Sql\Expression("ROUND((SUM(ClickCount)/SUM(ImpCount)*1000),2)")
                    )
                );
                //Condition filter
                if ($flag != null):
                    $condition = $this->getConditionByFlag($flag);
                    $select->where($condition);
                endif;
            }
        );
        foreach ($resultSet as $obj):
            $obj_list[] = $obj;
        endforeach;

        return $obj_list;
    }

    function getConditionByFlag($flag){
        $condition = array();
        switch ($flag) {
          case "0":
            //Today
            $condition = 'DATEDIFF(AdzoneDailyTracker.DateCreated,NOW()) = 0';  
            break;
          case "1":
            //Yesterday
            $condition = 'DATEDIFF(AdzoneDailyTracker.DateCreated,NOW()) = -1';
            break;
          case "2":
            //This week
            $condition = 'YEARWEEK(AdzoneDailyTracker.DateCreated) - YEARWEEK(NOW()) = 0';
            break;
          case "3":
            //Last week
            $condition = 'YEARWEEK(AdzoneDailyTracker.DateCreated) - YEARWEEK(NOW()) = -1';   
            break;
          case "4":
            //This month
            $condition = 'MONTH(AdzoneDailyTracker.DateCreated) - MONTH(NOW()) = 0 AND YEAR(AdzoneDailyTracker.DateCreated) = YEAR(NOW())'; 
            break;
          case "5":
            //Last month
            $condition = 'MONTH(AdzoneDailyTracker.DateCreated) - MONTH(NOW()) = -1 AND YEAR(AdzoneDailyTracker.DateCreated) = YEAR(NOW())'; 
            break;
          case "6":
            //This year
            $condition = 'YEAR(AdzoneDailyTracker.DateCreated) = YEAR(NOW())'; 
            break; 
          case "7":
            //This year
            $condition = 'YEAR(AdzoneDailyTracker.DateCreated) = YEAR(NOW())'; 
            break;             
          default:
            $condition = array();
            break;
        }
        return $condition;
    }


    public function saveRecord(\model\AdzoneDailyTracker $AdzoneDailyTracker) {
    	$data = array(
    			
    	   'PublisherAdZoneID'    => $AdzoneDailyTracker->PublisherAdZoneID,
           'AdCampaignBannerID'    => $AdzoneDailyTracker->AdCampaignBannerID,
           'ClickCount'    => $AdzoneDailyTracker->ClickCount,
           'ImpCount'    => $AdzoneDailyTracker->ImpCount,
           'Income'    => $AdzoneDailyTracker->Income,

    	);

    	$daily_tracker_id = (int)$AdzoneDailyTracker->AdzoneDailyTrackerID;
    	if ($daily_tracker_id === 0): 
    		$data['DateCreated'] 				= $AdzoneDailyTracker->DateCreated;
    		$this->insert($data);
    		return $this->getLastInsertValue();
    	else: 
            $data["DateUpdated"] = $AdzoneDailyTracker->DateUpdated;
    		$this->update($data, array('AdzoneDailyTrackerID' => $daily_tracker_id));
    		return $daily_tracker_id;
        endif;
    }

    public function saveRecordFromDataArray($data) {

    	$this->update($data, array('AdzoneDailyTrackerID' => $data['AdzoneDailyTrackerID']));
    }

    public function deleteRecord($AdzoneDailyTrackerID) {
    	$this->delete(array('AdzoneDailyTrackerID' => $AdzoneDailyTrackerID));
    }


};
