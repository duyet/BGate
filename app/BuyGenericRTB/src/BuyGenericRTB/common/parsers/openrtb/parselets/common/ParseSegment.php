<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace buyrtb\parsers\openrtb\parselets\common;

class ParseSegment {
	
	public static function execute(&$Logger, \buyrtb\parsers\openrtb\OpenRTBParser &$Parser, \model\openrtb\RtbBidRequest &$RtbBidRequest, \model\openrtb\RtbBidRequestSegment &$RtbBidRequestSegment, &$segment) {
	
		// segment id
	
		\util\ParseHelper::parse_item(
				$RtbBidRequestSegment,
				$segment,
				"id");
	
		// segment name
	
		\util\ParseHelper::parse_item(
				$RtbBidRequestSegment,
				$segment,
				"name");
	
		// segment value
		
		\util\ParseHelper::parse_item(
				$RtbBidRequestSegment,
				$segment,
				"value");
	}
	
}
