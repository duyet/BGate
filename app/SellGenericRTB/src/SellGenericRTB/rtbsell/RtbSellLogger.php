<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace rtbsell;

abstract class RtbSellLogger {

	// logging settings
	public $setting_debug;
	public $setting_log;
	public $setting_min_log;
	public $setting_only_log_bids;
	public $setting_log_to_screen;
	public $setting_log_file_location;
	
	public $log;
	public $min_log;
	
	protected $rtb_provider;
	public static $rtb_child_class_name;
	
	// singleton
	private static $_instance;
	
	public static function get_instance() {
		if (self::$_instance == null):
		self::$_instance = new self::$rtb_child_class_name();
		endif;
		return self::$_instance;
	}
	
	public function output_min_log() { } 
	
	public function output_log() { } 
	
	public function output_log_full() { } 
	
}
