<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace buyrtb\workflows\tasklets\display\adcampaignbanner;

class CheckIsMobile {
	
	public static function execute(&$Logger, &$Workflow, \model\openrtb\RtbBidRequest &$RtbBidRequest, \model\openrtb\RtbBidRequestImp &$RtbBidRequestImp, &$AdCampaignBanner) {
	
		/*
		 * Check is mobile web, phone, tablet, native iOS or native Android
		 */
		
		$is_mobile = 0;
		
		if ($RtbBidRequest->RtbBidRequestDevice->devicetype != DEVICE_DESKTOP) {
			$is_mobile = 1;
		}
		
     	if ($is_mobile != $AdCampaignBanner->IsMobile):
       		if ($Logger->setting_log === true):
        		$Logger->log[] = "Failed: " . "Check is mobile web :: EXPECTED: " . $AdCampaignBanner->IsMobile . " GOT: " . $is_mobile;
      		endif;
     		return false;
		endif;
			
		return true;
	}
	

	
}

