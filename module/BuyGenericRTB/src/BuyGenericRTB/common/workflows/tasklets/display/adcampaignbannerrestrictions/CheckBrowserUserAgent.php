<?php
/**
 * BGate Project 
 * 
 * @copyright Copyright (c) ISLab 
 * @year 2015 
 *  */

namespace buyrtb\workflows\tasklets\display\adcampaignbannerrestrictions;

class CheckBrowserUserAgent {
	
	public static function execute(&$Logger, &$Workflow, \model\openrtb\RtbBidRequest &$RtbBidRequest, \model\openrtb\RtbBidRequestImp &$RtbBidRequestImp, &$AdCampaignBanner, &$AdCampaignBannerRestrictions) {
	
		/*
		 * Check browser user-agent for string
		 */
		if ($AdCampaignBannerRestrictions->BrowserUserAgentGrep !== null && $RtbBidRequest->RtbBidRequestDevice->ua !== null):
		
			if (strpos(strtolower($RtbBidRequest->RtbBidRequestDevice->ua), strtolower($AdCampaignBannerRestrictions->BrowserUserAgentGrep)) === false):
				if ($Logger->setting_log === true):
					$Logger->log[] = "Failed: " . "Check browser user-agent for string :: EXPECTED: " 
							. $AdCampaignBannerRestrictions->BrowserUserAgentGrep . " GOT: " 
							. $RtbBidRequest->RtbBidRequestDevice->ua;
				endif;
				return false;
			endif;
			
		endif;
		
		return true;
		
	}
	
}
