<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace buyrtb\workflows\tasklets\common\adcampaign;

class GetGeoCodeCountry {
	
	public static function execute(&$Logger, &$Workflow, \model\openrtb\RtbBidRequest &$RtbBidRequest) {
		
		/*
		 * use maxmind incrementally. The geo-Country pay DB we have is only 1 meg
		 * if we need city/state ok, but only load it if absolutely necessary
		 */
		
		$RtbBidRequestGeo = new \model\openrtb\RtbBidRequestGeo();
		$RtbBidRequest->RtbBidRequestDevice->RtbBidRequestGeo = $RtbBidRequestGeo;

		// Trust country from partner Geo object?
		//if (!empty($RtbBidRequest->RtbBidRequestDevice->ip) && filter_var($RtbBidRequest->RtbBidRequestDevice->ip, FILTER_VALIDATE_IP) && empty($RtbBidRequest->RtbBidRequestDevice->RtbBidRequestGeo->country)):
		if (!empty($RtbBidRequest->RtbBidRequestDevice->ip) && filter_var($RtbBidRequest->RtbBidRequestDevice->ip, FILTER_VALIDATE_IP)):
			$Workflow->maxmind = new \geoip\maxmind();
			$RtbBidRequest->RtbBidRequestDevice->RtbBidRequestGeo->country = $Workflow->maxmind->get_geo_code_country($RtbBidRequest->RtbBidRequestDevice->ip);
		endif;
	}
	
}
