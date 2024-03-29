<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace buyrtb\parsers\openrtb\parselets\common;

class ParseData {
	
	public static function execute(&$Logger, \buyrtb\parsers\openrtb\OpenRTBParser &$Parser, \model\openrtb\RtbBidRequest &$RtbBidRequest, \model\openrtb\RtbBidRequestData &$RtbBidRequestData, &$data) {
	
		// data id
	
		\util\ParseHelper::parse_item(
				$RtbBidRequestData,
				$data,
				"id");
		
		// data name
		
		\util\ParseHelper::parse_item(
				$RtbBidRequestData,
				$data,
				"name");
		
		// data segment objects
		
		if (isset($data["segment"]) && is_array($data["segment"])):
		
			$data_segment_list = $data["segment"];
				
			foreach ($data_segment_list as $data_segment):
					
				$RtbBidRequestSegment = new \model\openrtb\RtbBidRequestSegment();
				\buyrtb\parsers\openrtb\parselets\common\ParseSegment::execute($Logger, $Parser, $RtbBidRequest, $RtbBidRequestSegment, $data_segment);
				$RtbBidRequestData->RtbBidRequestSegmentList[] = $RtbBidRequestSegment;
				
			endforeach;
			
		endif;
		
	}
	
}
