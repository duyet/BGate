<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

/*
 * This partner is REQUIRED for sell side RTB,
 * DO NOT DELETE
 */

class LoopbackPartner {

	public $partner_name  				= 'LoopbackPartner';
	public $partner_id  				= 2110;
	// not used for this partner
	public $partner_rtb_url 			= "http://localhost"; 
	public $rtb_connection_timeout_ms 	= 50;
	public $rtb_timeout_ms 				= 130;
	public $partner_quality_score 		= 70;
	public $verify_ssl 					= false;
	public $enable_timeout 				= false;
	
	public function customize($json_ping_data) {
		
		return $json_ping_data;
	}
}
