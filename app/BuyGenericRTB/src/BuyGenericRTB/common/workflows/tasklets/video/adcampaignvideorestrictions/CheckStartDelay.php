<?php
/**
 * BGate Project 
 * 
 * @copyright Copyright (c) ISLab 
 * @year 2015 
 *  */

namespace buyrtb\workflows\tasklets\video\adcampaignvideorestrictions;

class CheckStartDelay {
	
	public static function execute(&$Logger, &$Workflow, \model\openrtb\RtbBidRequest &$RtbBidRequest, \model\openrtb\RtbBidRequestImp &$RtbBidRequestImp, &$AdCampaignBanner, &$AdCampaignVideoRestrictions) {
		
		$RtbBidRequestVideo = $RtbBidRequestImp->RtbBidRequestVideo;
		
		if (!is_numeric($AdCampaignVideoRestrictions->StartDelay)):
			return true;
		endif;
		
		// Validate that the value is a number
		if (!is_numeric($RtbBidRequestVideo->startdelay)):
			if ($Logger->setting_log === true):
				$Logger->log[] = "Failed: " . "Check video start delay code :: EXPECTED: "
						. 'Numeric Value,'
						. " GOT: " . $RtbBidRequestVideo->startdelay;
			endif;
			return false;
		endif;
		
		$result = $AdCampaignVideoRestrictions->StartDelay == $RtbBidRequestVideo->startdelay;
		
		if ($result === false && $Logger->setting_log === true):
			$Logger->log[] = "Failed: " . "Check video start delay code :: EXPECTED: "
				. $AdCampaignVideoRestrictions->StartDelay
				. " GOT: " . $RtbBidRequestVideo->startdelay;
		endif;
		
		return $result;
		
	}
}
