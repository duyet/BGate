<?php
/**
 * BGate Project 
 * 
 * @copyright Copyright (c) ISLab 
 * @year 2015 
 *  */

namespace buyrtb\workflows\tasklets\common\adcampaign;

class CheckMaxSpend {
	
	public static function execute(&$Logger, &$Workflow, \model\openrtb\RtbBidRequest &$RtbBidRequest, &$AdCampaign) {
	
        	if ($AdCampaign->CurrentSpend >= $AdCampaign->MaxSpend):
            	if ($Logger->setting_log === true):
            	   $Logger->log[] = "Failed: " . "Max Campaign Spend Exceeded";
            	endif;
        	   return false;
        	endif;
        	
        	return true;
	}
}

