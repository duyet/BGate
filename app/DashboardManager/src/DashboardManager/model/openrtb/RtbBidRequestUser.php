<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

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
