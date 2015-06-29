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

class TransactionLog extends \_factory\CachedTableRead
{

	static protected $instance = null;

	public static function get_instance() {

		if (self::$instance == null):
			self::$instance = new \_factory\TransactionLog();
		endif;
		return self::$instance;
	}


    function __construct() {

            $this->table = 'TransactionLog';
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
    public function get($params = null, $orders = null) {
        	// http://files.zend.com/help/Zend-Framework/zend.db.select.html

        $obj_list = array();

    	$resultSet = $this->select(function (\Zend\Db\Sql\Select $select) use ($params, $orders) {
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
       $DataObj = new \model\TransactionLog();
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
    public function saveTransactionLog(\model\TransactionLog $TransactionLog) {
    	
    	$data['ID']                  = $TransactionLog->ID;
    	$data['Identify']            = $TransactionLog->Identify;
        // if(isset($TransactionLog->ResponseURL)){
            $data['RequestURL']          = $TransactionLog->RequestURL;
        	$data['RequestIP']           = $TransactionLog->RequestIP;
        	$data['RequestTime']         = $TransactionLog->RequestTime; 
        // }
        // if(isset($TransactionLog->ResponseURL)){
            $data["ResponseURL"]         = $TransactionLog->ResponseURL;
            $data["ResponseIP"]          = $TransactionLog->ResponseIP;
            $data["ResponseTime"]        = $TransactionLog->ResponseTime;

            $data["HashValidated"]       = $TransactionLog->HashValidated;
            $data["ResponseCode"]        = $TransactionLog->ResponseCode;
            $data["ResponseDescription"] = $TransactionLog->ResponseDescription;

            $data["Result"]              = $TransactionLog->Result;
        // }
    	

        $data["MerchTxnRef"]         = $TransactionLog->MerchTxnRef;
        $data["IP"]                  = $TransactionLog->IP;
        $data["Type"]                = $TransactionLog->Type;
        $data["Status"]              = $TransactionLog->Status;

        

        // $data["DateCreated"]        = $TransactionLog->DateCreated;

        
    	$ID = (int)$TransactionLog->ID;
    	if ($ID === 0): 
    		$data['DateCreated']  = date("Y-m-d H:i:s");
    		$this->insert($data);
    		return $this->getLastInsertValue();

    	else: 
    	    // $data['DateUpdated']  = $TransactionLog->DateUpdated;
    		return $this->update($data, array('ID' => $ID));
    	endif;
 
    }

    public function deleteTransactionLog($ID) {
    	return $this->delete(array('ID' => $ID));
    }
};
