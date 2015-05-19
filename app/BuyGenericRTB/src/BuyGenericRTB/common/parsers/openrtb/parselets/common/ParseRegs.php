<?php
/**
 * BGate Project 
 * 
 * @copyright Copyright (c) ISLab 
 * @year 2015 
 *  */

namespace buyrtb\parsers\openrtb\parselets\common;

class ParseRegs {
	
	public static function execute(&$Logger, \buyrtb\parsers\openrtb\OpenRTBParser &$Parser, \model\openrtb\RtbBidRequest &$RtbBidRequest, \model\openrtb\RtbBidRequestRegulations &$RtbBidRequestRegulations, &$ad_regs) {
	
		// Opt Out Coppa?
		
		\util\ParseHelper::parse_item(
				$RtbBidRequestRegulations,
				$ad_regs,
				"coppa");

	}
}
