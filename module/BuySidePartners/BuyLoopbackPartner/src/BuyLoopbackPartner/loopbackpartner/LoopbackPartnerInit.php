<?php
/**
 * BGate Project 
 * 
 * @copyright Copyright (c) ISLab 
 * @year 2015 
 *  */

namespace buyloopbackpartner;

class LoopbackPartnerInit extends \rtbbuyv22\RtbBuyV22Init
{

	private static $logger_class_name = "\buyloopbackpartner\LoopbackPartnerLogger";
	private static $workflow_class_name = "\buyloopbackpartner\LoopbackPartnerWorkflow";
	
	public static function init() {
		
		\rtbbuyv22\RtbBuyV22Logger::$rtb_child_class_name = self::$logger_class_name;
		\rtbbuyv22\RtbBuyV22Workflow::$rtb_child_class_name = self::$workflow_class_name;
		
	}
	
}

