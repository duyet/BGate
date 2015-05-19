<?php
/**
 * BGate Project 
 * 
 * @copyright Copyright (c) ISLab 
 * @year 2015 
 *  */

namespace rtbbuy;

abstract class RtbBuyWorkflow {
	
	protected $rtb_provider = "none";
	public static $rtb_child_class_name = "none";
	
	// singleton
	private static $_instance;
	
	public static function get_instance() {
		if (self::$_instance == null):
		self::$_instance = new self::$rtb_child_class_name();
		endif;
		return self::$_instance;
	}
	
}
