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

    public function get($params = null, $orders = null, $limit = null, $offset = 0) {
        	// http://files.zend.com/help/Zend-Framework/zend.db.select.html

        $obj_list = array();

    	$resultSet = $this->select(function (\Zend\Db\Sql\Select $select) use ($params, $orders, $search, $limit, $offset) {
        		foreach ($params as $name => $value):
        		$select->where(
        				$select->where->equalTo($name, $value)
        		);
        		endforeach;

                if($orders == null):
                        $select->order('AdBannerDailyTrackerID');
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
