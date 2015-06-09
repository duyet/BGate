<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace buyrtb\workflows;

class DisplayWorkflow
{
    public function process_business_rules_workflow(&$Logger, &$ParentWorkflow, \model\openrtb\RtbBidRequest &$RtbBidRequest, &$RtbBidRequestImp, &$AdCampaignBanner, &$AdCampaignBannerRestrictionsFactory) {

    	// Check banner height and width match
    	if (\buyrtb\workflows\tasklets\display\adcampaignbanner\CheckDisplayBannerDimensions::execute($Logger, $ParentWorkflow, $RtbBidRequest, $RtbBidRequestImp, $AdCampaignBanner) === false):
    		return false;
    	endif;
    	 
    	// Check is mobile web, phone, tablet, native iOS or native Android
    	if (\buyrtb\workflows\tasklets\display\adcampaignbanner\CheckIsMobile::execute($Logger, $ParentWorkflow, $RtbBidRequest, $RtbBidRequestImp, $AdCampaignBanner) === false):
    		return false;
    	endif;
    	 
    	// Check banner restrictions
    	if (\buyrtb\workflows\tasklets\display\adcampaignbanner\BannerRestrictionsWorkflow::execute($Logger, $ParentWorkflow, $RtbBidRequest, $RtbBidRequestImp, $AdCampaignBanner, $AdCampaignBannerRestrictionsFactory) === false):
    		return false;
    	endif;
    	
    	return true;
    	
    }


}
