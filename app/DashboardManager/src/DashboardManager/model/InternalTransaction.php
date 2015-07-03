<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace model;

class InternalTransaction {
    public $InternalTransactionID;
    public $CampaignID;
    public $WebsiteID;
    public $TransactionType; // 0 => "Campaign Income" , 1 => "Website Outcome"
    public $GrossMoney;
    public $NetMoney;
    public $Markup;
}

?>