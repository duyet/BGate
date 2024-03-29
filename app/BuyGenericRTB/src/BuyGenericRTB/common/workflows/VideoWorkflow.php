<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace buyrtb\workflows;

class VideoWorkflow
{
	
	public function process_business_rules_workflow(&$Logger, &$ParentWorkflow, \model\openrtb\RtbBidRequest &$RtbBidRequest, &$RtbBidRequestImp, &$AdCampaignBanner, &$AdCampaignVideoRestrictionsFactory) {
    	
    	// Check video restrictions
    	if (\buyrtb\workflows\tasklets\video\adcampaignbanner\VideoRestrictionsWorkflow::execute($Logger, $ParentWorkflow, $RtbBidRequest, $RtbBidRequestImp, $AdCampaignBanner, $AdCampaignVideoRestrictionsFactory) === false):
    		return false;
    	endif;
    	
    	return true;
    }


}
