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

class TransactionDetail extends \_factory\CachedTableRead
{

	static protected $instance = null;

	public static function get_instance() {

		if (self::$instance == null):
			self::$instance = new \_factory\TransactionDetail();
		endif;
		return self::$instance;
	}


    function __construct() {

            $this->table = 'TransactionDetail';
            $this->featureSet = new Feature\FeatureSet();
            $this->featureSet->addFeature(new Feature\GlobalAdapterFeature());
            $this->initialize();
    }

	/**
     * Query database and return a row of results.
     * 
     * @param string $params
     * @return Ambigous <\Zend\Db\ResultSet\ResultSet, NULL, \Zend\Db\ResultSet\ResultSetInterface>|NULL
     */
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
        	$select->order('ID');

        }
        	);

    	    foreach ($resultSet as $obj):
    	         return $obj;
    	    endforeach;

        	return null;
    }

   
    /**
     * Query database and return results.
     * 
     * @param string $params
     * @return multitype:Ambigous <\Zend\Db\ResultSet\ResultSet, NULL, \Zend\Db\ResultSet\ResultSetInterface>
     */
    //public function get($params = null, $orders = null) {
    public function get($params = null, $orders = null, $search = null, $limit = null, $offset = 0, $flag = NULL ) {
        	// http://files.zend.com/help/Zend-Framework/zend.db.select.html
        $obj_list = array();
        $resultSet = $this->select(function (\Zend\Db\Sql\Select $select) use ($params, $orders, $search, $limit, $offset, $flag) {
        		
                if ($flag != null):
                    $condition = $this->getConditionByFlag(intval($flag));
                    $select->where($condition);
                endif;

                if ($search != null):
                  $select->where
                          ->nest
                            ->like("AdCampaignPreview.Name", "%". $search ."%" )
                            ->or
                            ->equalTo("AdBannerDailyTrackerID", (int) $search) 
                          ->unnest;
                endif;

                if($params != null):
	        		foreach ($params as $name => $value):
	        		$select->where(
	        				$select->where->equalTo($name, $value)
	        		);
	        		endforeach;
        		endif;
        		//$select->limit(10, 0);
        		if($orders == null):
        		  $select->order('ID');
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
    
    
	/**
     * Query database for a row and return results as an object.
     * 
     * @param string $params
     * @return \model\Wesbsites
     */
    public function get_row_object($params = null)
   {
       $rawData = $this->get_row($params);
       $DataObj = new \model\TransactionDetail();
       if ($rawData !== null):
       
           foreach (get_object_vars($DataObj) AS $key => $value):
           
               $DataObj->$key =$rawData[$key];
           endforeach;
       endif;

       return $DataObj;
   }

   /**
    * 
    * @param \model\PublisherWebsite $rawData
    * @return int Number of Rows affected by the save.
    */
    public function saveTransactionDetail(\model\TransactionDetail $TransactionDetail) {
    	
    	$data['ID']               = $TransactionDetail->ID;

        if (isset($TransactionDetail->TransactionLogID)) {
            $data['TransactionLogID'] = $TransactionDetail->TransactionLogID;
        }else{
            $data['TransactionLogID'] = NULL;
        }

        if (isset($TransactionDetail->UserID)) {
            $data['UserID'] = $TransactionDetail->UserID;
        }else{
            $data['UserID'] = NULL;
        }
    	
        $data['Type']           = $TransactionDetail->Type;
        
        $data['Amount']           = $TransactionDetail->Amount;
    	$data['Description']      = $TransactionDetail->Description;

     //    $data["DateCreated"]        = $TransactionDetail->DateCreated;

        
    	$ID = (int)$TransactionDetail->ID;
    	if ($ID === 0): 		
    		$this->insert($data);
    		return $this->getLastInsertValue();

    	else: 
    		return $this->update($data, array('ID' => $ID));
    	endif;
 
    }

    public function deleteTransactionDetail($ID) {
    	return $this->delete(array('ID' => $ID));
    }

    function getConditionByFlag($flag)
    {
        $condition = array();
        switch ($flag) {
          case 0:
            //Today
            $condition = 'DATEDIFF(DateCreated,NOW()) = 0';  
            break;
          case 1:
            //Yesterday
            $condition = 'DATEDIFF(DateCreated,NOW()) = -1';
            break;
          case 2:
            //This week
            $condition = 'YEARWEEK(DateCreated) - YEARWEEK(NOW()) = 0';
            break;
          case 3:
            //Last week
            $condition = 'YEARWEEK(DateCreated) - YEARWEEK(NOW()) = -1';   
            break;
          case 4:
            //This month
            $condition = 'MONTH(DateCreated) - MONTH(NOW()) = 0 AND YEAR(DateCreated) = YEAR(NOW())'; 
            break;
          case 5:
            //Last month
            $condition = 'MONTH(DateCreated) - MONTH(NOW()) = -1 AND YEAR(DateCreated) = YEAR(NOW())'; 
            break;
          case 6:
            //This year
            $condition = 'YEAR(DateCreated) = YEAR(NOW())'; 
            break; 
          case 7:
            //This year
            $condition = 'YEAR(DateCreated) = YEAR(NOW())'; 
            break;             
          default:
            $condition = array();
            break;
        }
        return $condition;
    }
};
