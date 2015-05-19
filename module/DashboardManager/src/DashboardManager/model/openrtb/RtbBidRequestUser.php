<?php
/**
 * BGate Project 
 * 
 * @copyright Copyright (c) ISLab 
 * @year 2015 
 *  */

namespace model\openrtb;

// sort of cookie matching
class RtbBidRequestUser {
	
	public $id;
	
	public $buyeruid;
	
	public $yob;
	
	public $gender;
	
	public $keywords;
	
	public $customdata;
	
	public $RtbBidRequestGeo;
	
	public $RtbBidRequestDataList = array();
	
	public $ext;
	
}
