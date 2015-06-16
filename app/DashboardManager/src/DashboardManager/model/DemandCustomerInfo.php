<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace model;

class DemandCustomerInfo {

    public $DemandCustomerInfoID;
    public $Name;
    public $Email;
    public $Website;
    public $Company;
    public $PartnerType;
    public $DateCreated;
    public $DateUpdated;
    public $ContactNo;
    public $Debuty;
    public $Title;
    public $Address;
    public $Tax;
    public $Phone;

    public function get_locale(){

        $authUsersFactory = new \_factory\authUsers();
        $result = $authUsersFactory->get_row(array("DemandCustomerInfoID" => $this->DemandCustomerInfoID));

        return isset($result->locale) ? $result->locale : "en_US";

    }

}

?>