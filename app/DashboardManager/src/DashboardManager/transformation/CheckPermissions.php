<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace transformation;

class CheckPermissions {

	public static function checkEditPermissionAdCampaignBanner($banner_id, $auth, $config) {
		$params = array();
		$params["AdCampaignBannerID"] = $banner_id;
		if (strpos(self::getPrimaryRole($auth), $config['roles']['admin']) === false):
			$params["UserID"] = $auth->getUserID();
		endif;
		$AdCampaignBannerFactory = \_factory\AdCampaignBanner::get_instance();
		$AdCampaignBanner = $AdCampaignBannerFactory->get_row($params);
		if ($AdCampaignBanner === null):
			//die("You are trying to view/edit an item you do not have permissions on");
			$params["error"] = "You are trying to view/edit an item you do not have permissions on";
		endif;
		return $params;
	}

	public static function checkEditPermissionAdCampaign($campaign_id, $auth, $config) {
		$params = array();
		$params["AdCampaignID"] = $campaign_id;
		if (strpos(self::getPrimaryRole($auth), $config['roles']['admin']) === false):
			$params["UserID"] = $auth->getUserID();
		endif;
		$AdCampaignFactory = \_factory\AdCampaign::get_instance();
		$AdCampaign = $AdCampaignFactory->get_row($params);
		if ($AdCampaign === null):
			die("You are trying to view/edit an item you do not have permissions on");
		endif;
	}

	public static function checkEditPermissionAdCampaignBannerPreview($banner_preview_id, $auth, $config) {
		$params = array();
		$params["AdCampaignBannerPreviewID"] = $banner_preview_id;
		if (strpos(self::getPrimaryRole($auth), $config['roles']['admin']) === false):
			$params["UserID"] = $auth->getUserID();
		endif;
		$AdCampaignBannerPreviewFactory = \_factory\AdCampaignBannerPreview::get_instance();
		$AdCampaignBannerPreview = $AdCampaignBannerPreviewFactory->get_row($params);
		if ($AdCampaignBannerPreview === null):
			//die("You are trying to view/edit an item you do not have permissions on");
			$params["error"] = "You are trying to view/edit an item you do not have permissions on";
		endif;
		return $params;
	}

	public static function checkEditPermissionAdCampaignPreview($campaign_preview_id, $auth, $config) {
		$params = array();
		$params["AdCampaignPreviewID"] = $campaign_preview_id;
		if (strpos(self::getPrimaryRole($auth), $config['roles']['admin']) === false):
			$params["UserID"] = $auth->getUserID();
		endif;
		$AdCampaignPreviewFactory = \_factory\AdCampaignPreview::get_instance();
		$AdCampaignPreview = $AdCampaignPreviewFactory->get_row($params);
		if ($AdCampaignPreview === null):
			//die("You are trying to view/edit an item you do not have permissions on");
			$params["error"] = "You are trying to view/edit an item you do not have permissions on";
		endif;
		return $params;
	}

	public static function checkEditPermissionRevenueReport($auth, $config) {
		if (strpos(self::getPrimaryRole($auth), $config['roles']['admin']) === false):
			die("You are trying to view/edit an item you do not have permissions on");
		endif;
	}

	public static function getPrimaryRole($auth) {
		$roles = $auth->getRoles();
		return $roles[0];
	}



}