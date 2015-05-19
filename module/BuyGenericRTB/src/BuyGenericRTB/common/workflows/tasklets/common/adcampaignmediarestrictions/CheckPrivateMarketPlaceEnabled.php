<?php
/**
 * BGate Project 
 * 
 * @copyright Copyright (c) ISLab 
 * @year 2015 
 *  */

namespace buyrtb\workflows\tasklets\common\adcampaignmediarestrictions;

class CheckPrivateMarketPlaceEnabled {
	
	public static function execute(&$Logger, &$Workflow, \model\openrtb\RtbBidRequest &$RtbBidRequest, \model\openrtb\RtbBidRequestImp &$RtbBidRequestImp, &$AdCampaignBanner, &$AdCampaignMediaRestrictions) {
	
		/*
		 * Check banner for PMP Enable
		 */
		if ($AdCampaignMediaRestrictions->PmpEnable !== null && $RtbBidRequestImp->RtbBidRequestPmp !== null && $AdCampaignMediaRestrictions->PmpEnable == 1):
			
			/*
			 * PMP is enabled and this campaign is eligible, handle this case
			 */
			
		endif;
		
		return true;
		
	}
	
}
