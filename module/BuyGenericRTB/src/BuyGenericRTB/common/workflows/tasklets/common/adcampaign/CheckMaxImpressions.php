<?php
/**
 * BGate Project 
 * 
 * @copyright Copyright (c) ISLab 
 * @year 2015 
 *  */

namespace buyrtb\workflows\tasklets\common\adcampaign;

class CheckMaxImpressions {
	
	public static function execute(&$Logger, &$Workflow, \model\openrtb\RtbBidRequest &$RtbBidRequest, &$AdCampaign) {
	
        /*
       	 * Check max impressions
         */
    	if ($AdCampaign->ImpressionsCounter >= $AdCampaign->MaxImpressions):
      		if ($Logger->setting_log === true):
           		$Logger->log[] = "Failed: " . "Max Campaign Impressions Exceeded";
       		endif;
      		return false;
    	endif;
		 
		return true;
	}
	
}

