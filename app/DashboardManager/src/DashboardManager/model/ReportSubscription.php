<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace model;

class ReportSubscription {
    public $ReportSubscriptionID;
    public $UserID;
    public $Status;
    public $DateCreated;
    public $DateUpdated;
    
    public function initialize($data) {
        
        foreach ($data as $key=>$val){
            $this->$key = $val;
        }
        
    }
}

?>