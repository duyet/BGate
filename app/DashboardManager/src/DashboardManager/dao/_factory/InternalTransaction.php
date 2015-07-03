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

class InternalTransaction extends \_factory\CachedTableRead
{

    static protected $instance = null;

    public static function get_instance() {

        if (self::$instance == null):
            self::$instance = new \_factory\InternalTransaction();
        endif;
        return self::$instance;
    }


    function __construct() {

            $this->table = 'InternalTransaction';
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
            $select->order(array('InternalTransactionID'));

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
    public function get($params = null, $orders = null, $search = null, $limit = null, $offset = 0, $flag = 0, $type = 0) {
    
        $obj_list = array();
    
        $resultSet = $this->select(function (\Zend\Db\Sql\Select $select) use ($params, $orders, $search, $limit, $offset, $flag, $type) {
            if ($type == 0): //Campaign
              $params["PolymorphicType"] = 0;
              $select->join("AdCampaignPreview",
                  "AdCampaignPreview.AdCampaignPreviewID = InternalTransaction.PolymorphicID",
                  array(
                      "Name" => "Name",
                      ),
                  $select::JOIN_INNER);

              //Join with auth_Users
              $select->join("auth_Users",
                  "auth_Users.user_id = InternalTransaction.UserID",
                  array(
                      "UserName" => "user_login",
                      ),
                  $select::JOIN_INNER);

            elseif($type == 1): //Website
              $params["PolymorphicType"] = 1;
              $select->join("PublisherWebsite",
                  "PublisherWebsite.PublisherWebsiteID = InternalTransaction.PolymorphicID",
                  array(
                      "Name" => "WebDomain",
                      ),
                  $select::JOIN_INNER);

              //Join with PublisherInfo
              $select->join("PublisherInfo",
                  "PublisherInfo.PublisherInfoID = InternalTransaction.UserID",
                  array(
                      "UserName" => "Name",
                      ),
                  $select::JOIN_INNER);

            endif;


            //Condition filter
            $condition = $this->getConditionByFlag($flag);

            $select->where($condition);

            foreach ($params as $name => $value):
            $select->where(
                    $select->where->equalTo($name, $value)
            );
            endforeach;

            if ($search != null):
              if ($type == 0): //Campaign
                $select->where
                        ->nest
                          ->like("AdCampaignPreview.Name", "%". $search ."%" )
                          ->or
                          ->equalTo("PolymorphicID", (int) $search) 
                        ->unnest;
              elseif($type == 1): //Website
                $select->where
                        ->nest
                          ->like("PublisherWebsite.WebDomain", "%". $search ."%" )
                          ->or
                          ->equalTo("PolymorphicID", (int) $search) 
                        ->unnest;
              endif;
            endif;

            if($orders == null):
                    $select->order('PolymorphicID');
                else:
                    $select->order($orders);
                endif;

            if ($limit != null):
              $select->limit($limit);
              $select->offset($offset);
            endif;
        });
    
        foreach ($resultSet as $obj):
            $obj_list[] = $obj;
        endforeach;

        return $obj_list;
    }


    function getConditionByFlag($flag)
    {
        $condition = array();
        switch ($flag) {
          case "0":
            //Today
            $condition = 'DATEDIFF(InternalTransaction.DateCreated,NOW()) = 0';  
            break;
          case "1":
            //Yesterday
            $condition = 'DATEDIFF(InternalTransaction.DateCreated,NOW()) = -1';
            break;
          case "2":
            //This week
            $condition = 'YEARWEEK(InternalTransaction.DateCreated) - YEARWEEK(NOW()) = 0';
            break;
          case "3":
            //Last week
            $condition = 'YEARWEEK(InternalTransaction.DateCreated) - YEARWEEK(NOW()) = -1';   
            break;
          case "4":
            //This month
            $condition = 'MONTH(InternalTransaction.DateCreated) - MONTH(NOW()) = 0 AND YEAR(InternalTransaction.DateCreated) = YEAR(NOW())'; 
            break;
          case "5":
            //Last month
            $condition = 'MONTH(InternalTransaction.DateCreated) - MONTH(NOW()) = -1 AND YEAR(InternalTransaction.DateCreated) = YEAR(NOW())'; 
            break;
          case "6":
            //This year
            $condition = 'YEAR(InternalTransaction.DateCreated) = YEAR(NOW())'; 
            break; 
          case "7":
            //This year
            $condition = 'YEAR(InternalTransaction.DateCreated) = YEAR(NOW())'; 
            break;             
          default:
            $condition = array();
            break;
        }
        return $condition;
    }

    /**
     * Query database and return joined table results. This query has a potential to result in high load.
     * 
     * @param string $params
     * @return multitype:Ambigous <\Zend\Db\ResultSet\ResultSet, NULL, \Zend\Db\ResultSet\ResultSetInterface>
     */
    public function get_joined($params = null, $orders = null, $search = null, $limit = null, $offset = 0, $total_ret = false) {
            // http://files.zend.com/help/Zend-Framework/zend.db.select.html

        $obj_list = array();

        $resultSet = $this->select(function (\Zend\Db\Sql\Select $select) use ($params, $orders, $search, $limit, $offset) {
                // $select->join("AdTemplates",
                //     "InternalTransaction.AdTemplateID = AdTemplates.AdTemplateID",
                //     array(
                //         "TemplateName" => "TemplateName",
                //         "TemplateX" => "Width",
                //         "TemplateY" => "Height",
                //        ),
                //     $select::JOIN_LEFT);
                // $select->join("PublisherWebsite",
                //     "PublisherWebsite.PublisherWebsiteID = InternalTransaction.PublisherWebsiteID",
                //     array(
                //         "WebDomain" => "WebDomain",
                //         "DomainOwnerID" => "DomainOwnerID",
                //         "DomainDescription" => "Description",
                //         "DomainID" => "PublisherWebsiteID",
                //         ),
                //     $select::JOIN_INNER);
                foreach ($params as $name => $value):
                $select->where(
                        $select->where->equalTo($name, $value)
                );
                endforeach;
                if ($search != null):
              // $select->where
              //         ->nest
              //           ->like("InternalTransaction.AdName", "%". $search ."%" )
              //           ->or
              //           ->equalTo("InternalTransaction.InternalTransactionID", (int) $search) 
              //         ->unnest;
                endif;
            
            if($orders == null):
              $select->order('InternalTransaction.InternalTransactionID');
            else:
              $select->order($orders);
            endif;

            if ($limit != null):
              $select->limit($limit);
              $select->offset($offset);
            endif;

                // $select->order(array('InternalTransaction.PublisherWebsiteID', 'InternalTransaction.AdName'));
            }
        );

            foreach ($resultSet as $obj):
                $obj_list[] = $obj;
            endforeach;
          
        if ($total_ret == true):

          return array( "total" => $this->count_adzone($params,$search) , "data" => $obj_list);
        else:
          return $obj_list;
        endif;
            
    }
   
    public function count_adzone($params = null, $search = null) {

      $resultSetCount = $this->select(function (\Zend\Db\Sql\Select $select) use ($params, $search) {
        // $select->join("AdTemplates",
        //           "InternalTransaction.AdTemplateID = AdTemplates.AdTemplateID",
        //           array(
        //             "TemplateName" => "TemplateName",
        //               "TemplateX" => "Width",
        //               "TemplateY" => "Height",
        //              ),
        //           $select::JOIN_LEFT);
        //       $select->join("PublisherWebsite",
        //           "PublisherWebsite.PublisherWebsiteID = InternalTransaction.PublisherWebsiteID",
        //           array(
        //               "WebDomain" => "WebDomain",
        //               "DomainOwnerID" => "DomainOwnerID",
        //               "DomainDescription" => "Description",
        //               "DomainID" => "PublisherWebsiteID",
        //               ),
        //           $select::JOIN_INNER);
        foreach ($params as $name => $value):
        $select->where(
            $select->where->equalTo($name, $value)
        );
        endforeach;
        if ($search != null):
          // $select->where
          //         ->nest
          //           ->like("InternalTransaction.AdName", "%". $search ."%" )
          //           ->or
          //           ->equalTo("InternalTransaction.InternalTransactionID", (int) $search) 
          //         ->unnest;
        endif;
      });
      return $resultSetCount->count();
    }

    /**
     * Query database for a row and return results as an object.
     * 
     * @param string $params
     * @return \DashboardManager\dao\InternalTransaction
     */
   public function get_row_object($params = null)
   {
       $rawData = $this->get_row($params);
       $DataObj = new \model\InternalTransaction();
       if ($rawData !== null):
       
           foreach (get_object_vars($DataObj) AS $key => $value):
           
               $DataObj->$key =$rawData[$key];
           endforeach;
       endif;

       return $DataObj;
   }
   
   /**
    * Query database and return results as an array of objects.
    * 
    * @param string $params
    * @return array:\DashboardManager\dao\InternalTransaction
    */
   public function get_object($params = null)
   {
       $rawData = $this->get($params);
       $DataObj = array();
       if ($rawData !== null):
       
           foreach ($rawData AS $row_number => $row_data): // Get each row in the raw data.
           
               // New instance of model object in each row.
               $DataObj[$row_number] = new \model\InternalTransaction();
                foreach (get_object_vars($DataObj[$row_number]) AS $key => $value): //Assign to object.
                
                   $DataObj[$row_number]->$key = $row_data[$key];
                endforeach;
           endforeach;
       endif;
       
       return $DataObj;
   }
   
   /**
    * Save Ads data, insert or update.
    * @param \DashboardManager\dao\InternalTransaction $rawData
    * @return int Number of Rows affected by the save.
    */
   public function save_ads(\model\InternalTransaction $rawData)
   {
       
    // We must enforce data integrity!
    
   
   }
   
   /**
    * Delete the Ad specified.
    * 
    * @param int $InternalTransactionID The integer ID of the Ad to delete.
    * @throws \InvalidArgumentException is thrown when an invalid integer is provided.
    * @return boolean|int Returns the rows affected, or FALSE if failure.
    */
   public function delete_zone($InternalTransactionID)
   {
       
       
   }
   


};
?>