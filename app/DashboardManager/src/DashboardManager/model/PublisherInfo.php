<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace model;

class PublisherInfo {

    public $PublisherInfoID;
    public $Name;
    public $Email;
    public $Domain;
    public $IABCategory;
    public $DateCreated;
    public $FirstName;
    public $LastName;
    public $Country;
    public $City;
    public $Addr;
    public $DomainDescribe;
    public $Balance;

    public function get_locale(){

        $authUsersFactory = new \_factory\authUsers();
        $result = $authUsersFactory->get_row(array("PublisherInfoID" => $this->PublisherInfoID));

        return isset($result->locale) ? $result->locale : "en_US";

    }

}

?>