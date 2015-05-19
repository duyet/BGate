<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace rtbbuyv22;

use rtbbuy\RtbBuyWorkflow;

abstract class RtbBuyV22Workflow extends RtbBuyWorkflow
{
	
    public function process_business_rules_workflow($config, $rtb_seat_id, &$no_bid_reason, \model\openrtb\RtbBidRequest &$RtbBidRequest) {

    	$logger = \rtbbuyv22\RtbBuyV22Logger::get_instance();
    	$OpenRTBWorkflow = new \buyrtb\workflows\OpenRTBWorkflow();
    	
    	return $OpenRTBWorkflow->process_business_rules_workflow($logger, $config, $rtb_seat_id, $no_bid_reason, $RtbBidRequest);
    
    }

}
