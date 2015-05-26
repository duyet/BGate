<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace model;

class PublisherWebsite
{
    public $PublisherWebsiteID;
    public $WebDomain;
    public $DomainOwnerID;
    public $AutoApprove;
    public $ApprovalFlag;
    public $IABCategory;
    public $IABSubCategory;
    public $Description;
    public $DateCreated;
    public $DateUpdated;

    public function ApprovalStatus(){
        $approval_mapper = array(1=>"Auto-Approved", 2=>"Stop", 3=> "Running");
        return $approval_mapper[$this->ApprovalFlag];
    }
}

?>