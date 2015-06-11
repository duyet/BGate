<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace model;

class TransactionLog {
    public $ID;
	public $Identify;

	public $RequestURL;
	public $RequestIP;
	public $RequestTime;

	public $ResponseURL;
	public $ResponseIP;
	public $ResponseTime;

	public $MerchTxnRef;
	public $IP;
	public $Type;
	public $Status;

	public $HashValidated;
	public $ResponseCode;
	public $ResponseDescription;
	
	public $Result;
	public $DateCreated;
}

?>