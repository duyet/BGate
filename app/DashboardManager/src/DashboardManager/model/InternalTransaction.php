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
    public $PolymorphicID;
    public $PolymorphicType; //0: Campaign, 1: Website
    public $TransactionType; // 0 => "Campaign Income" , 1 => "Website Outcome"
    public $UserID;
    public $GrossMoney;
    public $NetMoney;
    public $Markup;
    public $DateCreated;
    public $DateUpdated;
}

?>