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

class RawImp extends \_factory\CachedTableRead
{

	static protected $instance = null;

	public static function get_instance() {

		if (self::$instance == null):
			self::$instance = new \_factory\RawImp();
		endif;
		return self::$instance;
	}


    function __construct() {

            $this->table = 'RawImp';
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
        	$select->order('RawImpID');

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
                        $select->order('RawImpID');
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

    public function saveRecord(\model\RawImp $RawImp) {
    	$data = array(
    			
    	   'PublisherAdZoneID'    => $RawImp->PublisherAdZoneID,
           'AdCampaignBannerID'    => $RawImp->AdCampaignBannerID,
           'UserIP'    => $RawImp->UserIP,
           'Country'    => $RawImp->Country,

    	);

    	$daily_tracker_id = (int)$RawImp->RawImpID;
    	if ($daily_tracker_id === 0): 
    		$data['DateCreated'] 				= $RawImp->DateCreated;
    		$this->insert($data);
    		return $this->getLastInsertValue();
    	else: 
            $data["DateUpdated"] = $RawImp->DateUpdated;
    		$this->update($data, array('RawImpID' => $daily_tracker_id));
    		return $daily_tracker_id;
        endif;
    }

    public function saveRecordFromDataArray($data) {

    	$this->update($data, array('RawImpID' => $data['RawImpID']));
    }

    public function deleteRecord($RawImpID) {
    	$this->delete(array('RawImpID' => $RawImpID));
    }


};
