<?php
/**
 * BGate Project 
 * 
 * @copyright Copyright (c) ISLab 
 * @year 2015 
 *  */

namespace model\openrtb;

class RtbBidResponseBid {
	
	public $id;
	
	public $impid;
	
	public $price;
	
	public $adid;
	
	public $nurl;
	
	public $adm;
	
	public $adomain;
	
	public $lurl;
	
	public $cid;
	
	public $crid;
	
	public $attr;
	
	public $dealid;
	
	public $h;
	
	public $w;
	
	public $ext;
	
	// used internally
	public $adusted_bid_amount;
	
	public $won_auction = false;
	public $uid;
}
