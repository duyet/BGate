<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace model\openrtb;

class RtbBidRequest {
	
	/*
	 * RTB V2 API Request Params
	*/
	
	// REQUIRED
	
	// bid
	public $id;
	
	public $RtbBidRequestImpList = array();

	public $RtbBidRequestSite;

	public $RtbBidRequestApp;
	
	public $RtbBidRequestDevice;
	
	public $RtbBidRequestUser;
	
	// second price default as per OpenRTB 2.2 spec
	public $at = 2;
	
	public $tmax;

	public $wseat;
	
	public $allimps = 0;
	
	public $cur;
	
	public $bcat;
	
	public $badv;
	
	public $RtbBidRequestRegulations;
	
	public $ext;

	// used only by NginAd internally
	public $is_local_request;
}
