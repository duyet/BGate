<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace buyrtb\workflows\tasklets\common\adcampaignbanner;

class CheckIsContract {
	
	public static function execute(&$Logger, &$Workflow, \model\openrtb\RtbBidRequest &$RtbBidRequest, \model\openrtb\RtbBidRequestImp &$RtbBidRequestImp, &$AdCampaignBanner) {
	
		/*
     	* Check to see if this AdCampaginBanner is associated to a
      	* contract zone. Contract bound banners are not eligible for
      	* RTB bidding.
     	*/
    	if ($AdCampaignBanner->AdCampaignTypeID == AD_TYPE_CONTRACT):
        	return false;
     	elseif ($AdCampaignBanner->AdCampaignTypeID == AD_TYPE_IN_HOUSE_REMNANT && $RtbBidRequest->is_local_request == false):
        	return false;
       	elseif ($AdCampaignBanner->AdCampaignTypeID == AD_TYPE_RTB_REMNANT && $RtbBidRequest->is_local_request == true):
	  		return false;
     	endif;
			
		return true;
	}
	
	
}

