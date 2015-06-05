<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace buyrtb\workflows\tasklets\common\adcampaignmediarestrictions;

class CheckSecureOnly {

	public static function execute(&$Logger, &$Workflow, \model\openrtb\RtbBidRequest &$RtbBidRequest, \model\openrtb\RtbBidRequestImp &$RtbBidRequestImp, &$AdCampaignBanner, &$AdCampaignMediaRestrictions) {
	
		/*
		 * Check banner for https:// secure
		 */
		if ($AdCampaignMediaRestrictions->Secure !== null && $RtbBidRequestImp->secure !== null && $RtbBidRequestImp->secure != $AdCampaignMediaRestrictions->Secure):
			if ($Logger->setting_log === true):
				$Logger->log[] = "Failed: " . "Check banner for https:// secure :: EXPECTED: " . $AdCampaignMediaRestrictions->Secure . " GOT: " . $RtbBidRequestImp->secure;
			endif;
			return false;
		endif;		
		
		return true;
		
	}

}
