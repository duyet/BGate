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

class UserPayout extends \_factory\CachedTableRead
{

	static protected $instance = null;

	public static function get_instance() {

		if (self::$instance == null):
			self::$instance = new \_factory\UserPayout();
		endif;
		return self::$instance;
	}


    function __construct() {

            $this->table = 'UserPayout';
            $this->featureSet = new Feature\FeatureSet();
            $this->featureSet->addFeature(new Feature\GlobalAdapterFeature());
            $this->initialize();
    }

    public function get_row($params = null) {
        // http://files.zend.com/help/Zend-Framework/zend.db.select.html

        $obj_list = array();

        $resultSet = $this->select(function (\Zend\Db\Sql\Select $select) use ($params) {
            $select->join("PublisherInfo",
              "PublisherInfo.PublisherInfoID = UserPayout.UserID",
              array(
                  "UserName" => "Name"
                  ),
              $select::JOIN_INNER);  
            
            foreach ($params as $name => $value):
        	$select->where(
        			$select->where->equalTo($name, $value)
        	);
        	endforeach;
        	$select->limit(1, 0);
        	$select->order('UserPayoutID');

        }
    	);

	    foreach ($resultSet as $obj):
	         return $obj;
	    endforeach;

    	return null;
    }

    public function get($params = null, $orders = null, $search = null, $limit = null, $offset = 0) {

        $obj_list = array();

    	$resultSet = $this->select(function (\Zend\Db\Sql\Select $select) use ($params, $orders, $search, $limit, $offset) {
        		
                $select->join("PublisherInfo",
                    "PublisherInfo.PublisherInfoID = UserPayout.UserID",
                    array(
                        "Name" => "Name",
                        ),
                    $select::JOIN_INNER);

                foreach ($params as $name => $value):
        		$select->where(
        				$select->where->equalTo($name, $value)
        		);
        		endforeach;

                if($orders == null):
                        $select->order('UserPayoutID');
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

    public function saveRecord(\model\UserPayout $UserPayout) {
    	$data = array(
    	   'UserID'    => $UserPayout->UserID,
    	   'Amount'    => $UserPayout->Amount,
           'Status'    => $UserPayout->Status
    	);
    	$user_payout_id = (int)$UserPayout->UserPayoutID;
    	if ($user_payout_id === 0): 
    		$data['DateCreated'] = $UserPayout->DateCreated;
    		$this->insert($data);
    		return $this->getLastInsertValue();
    	else: 
            $data["DateUpdated"] = $UserPayout->DateUpdated;
    		$this->update($data, array('UserPayoutID' => $user_payout_id));
    		return $user_payout_id;
        endif;
    }

    public function saveRecordFromDataArray($data) {

    	$this->update($data, array('UserPayoutID' => $data['UserPayoutID']));
    }

    public function deleteRecord($UserPayoutID) {
    	$this->delete(array('UserPayoutID' => $UserPayoutID));
    }


};
