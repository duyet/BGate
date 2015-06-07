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

class AdBannerDailyTracker extends \_factory\CachedTableRead
{

	static protected $instance = null;

	public static function get_instance() {

		if (self::$instance == null):
			self::$instance = new \_factory\AdBannerDailyTracker();
		endif;
		return self::$instance;
	}


    function __construct() {

            $this->table = 'AdBannerDailyTracker';
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
                        "AdBannerDailyTrackerID" => "AdBannerDailyTrackerID",
                        "AdCampaignBannerID" => "AdCampaignBannerID",
                        "ClickCount" => new \Zend\Db\Sql\Expression("SUM(ClickCount)"),
                        "ImpCount" => new \Zend\Db\Sql\Expression("SUM(ImpCount)"),
                        "Outcomes" => new \Zend\Db\Sql\Expression("SUM(Outcome)"),
                        "Date" => new \Zend\Db\Sql\Expression("CAST(AdBannerDailyTracker.DateCreated AS DATE)")
                    )
                );

                $select->join("AdCampaignBannerPreview",
                    "AdCampaignBannerPreview.AdCampaignBannerPreviewID = AdBannerDailyTracker.AdCampaignBannerID",
                    array(
                        "BannerName" => "Name",
                        ),
                    $select::JOIN_INNER);

                $select->group(array('Date', 'BannerName'));

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
                            ->like("Name", "%". $search ."%" )
                            ->or
                            ->equalTo("AdBannerDailyTrackerID", (int) $search) 
                          ->unnest;
                endif;

                if($orders == null):
                        $select->order('AdBannerDailyTrackerID');
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

    public function get_outcome($flag) {

        $obj_list = array();

        $resultSet = $this->select(function (\Zend\Db\Sql\Select $select) use ($flag){

                $select->columns(
                    array(
                        "Outcomes" => new \Zend\Db\Sql\Expression("SUM(Outcome)")
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

    function getConditionByFlag($flag)
    {
        $condition = null;
        switch ($flag) {
          case "0":
            //Today
            $condition = 'DATEDIFF(AdBannerDailyTracker.DateCreated,NOW()) = 0';  
            break;
          case "1":
            //Yesterday
            $condition = 'DATEDIFF(AdBannerDailyTracker.DateCreated,NOW()) = -1';
            break;
          case "2":
            //This week
            $condition = 'YEARWEEK(AdBannerDailyTracker.DateCreated) - YEARWEEK(NOW()) = 0';
            break;
          case "3":
            //Last week
            $condition = 'YEARWEEK(AdBannerDailyTracker.DateCreated) - YEARWEEK(NOW()) = -1';   
            break;
          case "4":
            //This month
            $condition = 'MONTH(AdBannerDailyTracker.DateCreated) - MONTH(NOW()) = 0 AND YEAR(AdBannerDailyTracker.DateCreated) = YEAR(NOW())'; 
            break;
          case "5":
            //Last month
            $condition = 'MONTH(AdBannerDailyTracker.DateCreated) - MONTH(NOW()) = -1 AND YEAR(AdBannerDailyTracker.DateCreated) = YEAR(NOW())'; 
            break;
          case "6":
            //This year
            $condition = 'YEAR(AdBannerDailyTracker.DateCreated) = YEAR(NOW())'; 
            break; 
          case "7":
            //This year
            $condition = 'YEAR(AdBannerDailyTracker.DateCreated) = YEAR(NOW())'; 
            break;             
          default:
            $condition = null;
            break;
        }
        return $condition;
    }


    public function saveRecord(\model\AdBannerDailyTracker $AdBannerDailyTracker) {
    	$data = array(
    			
    	   'AdBannerDailyTrackerID'    => $AdBannerDailyTracker->AdBannerDailyTrackerID,
           'AdCampaignBannerID'    => $AdBannerDailyTracker->AdCampaignBannerID,
           'ClickCount'    => $AdBannerDailyTracker->ClickCount,
           'ImpCount'    => $AdBannerDailyTracker->ImpCount,
           'OutCome'    => $AdBannerDailyTracker->Outcome,

    	);

    	$daily_tracker_id = (int)$AdBannerDailyTracker->AdBannerDailyTrackerID;
    	if ($daily_tracker_id === 0): 
    		$data['DateCreated'] 		= $AdBannerDailyTracker->DateCreated;
    		$this->insert($data);
    		return $this->getLastInsertValue();
    	else: 
            $data["DateUpdated"] = $AdBannerDailyTracker->DateUpdated;
    		$this->update($data, array('AdBannerDailyTrackerID' => $daily_tracker_id));
    		return $daily_tracker_id;
        endif;
    }

    public function saveRecordFromDataArray($data) {

    	$this->update($data, array('AdBannerDailyTrackerID' => $data['AdBannerDailyTrackerID']));
    }

    public function deleteRecord($AdBannerDailyTrackerID) {
    	$this->delete(array('AdBannerDailyTrackerID' => $AdBannerDailyTrackerID));
    }


};
