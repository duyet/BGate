<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace buygenericbuysidepartner;

class GenericBuysidePartnerLogger extends \rtbbuyv22\RtbBuyV22Logger
{
	protected $rtb_provider = "GenericBuysidePartner";
	
	// logging settings
	public $setting_debug 					= false;
	public $setting_log 					= false;
	public $setting_min_log 				= true;
	public $setting_only_log_bids 			= true;
	public $setting_log_to_screen 			= false;
	public $setting_log_file_location 		= "logs/genericbuysidepartner/";

}
