<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace sellrtb\parsers\openrtb;
use \Exception;

class OpenRTBParser {

	public $raw_post;
	public $json_response;
	public $RtbBidResponse;
	
	public $expeption_missing_min_bid_request_params = "Bid Request missing required parameter";
	public $missing_optional_bid_request_params = "Bid Request missing optional parameter";
	public $got_optional_bid_request_params = "Got Bid Request optional parameter";
	
	public function parse_request($raw_post) {

		$this->raw_post = $raw_post;
		
		// prepare the logger
		$logger = \rtbsellv22\RtbSellV22Logger::get_instance();
		
		// prepare the response object
		$this->RtbBidResponse = new \model\openrtb\RtbBidResponse();
		
		// Initialize Data
		try {
			\sellrtb\parsers\openrtb\parselets\common\Init::execute($logger, $this, $this->RtbBidResponse);
		} catch (Exception $e) {	
			throw new Exception($e->getMessage(), $e->getCode(), $e->getPrevious());
        }
		
        // Parse Seat Bids
        try {
        	\sellrtb\parsers\openrtb\parselets\common\ParseSeatBids::execute($logger, $this, $this->RtbBidResponse);
        } catch (Exception $e) {
        	throw new Exception($e->getMessage(), $e->getCode(), $e->getPrevious());
        }
        
        return $this->RtbBidResponse;
	}

}
