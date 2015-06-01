<?php
/**
 * BGate Project
 * 
 * @version 1.x
 * @author ISLab UIT
 * @copyright (C) 2015 
 */

namespace model;

class AdCampaignBannerPreview {

    public $AdCampaignBannerPreviewID;
    public $AdCampaignPreviewID;
    public $AdCampaignBannerID;  // nullable
    public $AdCampaignTypeID;
    public $ImpressionType;
    public $UserID;
    public $Name;
    public $StartDate;
    public $EndDate;
    public $IsMobile;
    public $IABSize;
    public $Height;
    public $Width;
    public $Weight;
    public $BidAmount;
    public $AdTag;
    public $DeliveryType;
    public $LandingPageTLD;
    public $ImpressionsCounter;
    public $BidsCounter;
    public $CurrentSpend;
    public $Active;
    public $DateCreated;
    public $ChangeWentLive;
    public $WentLiveDate;
// New
    public $AdUrl;
    public $Label;
    public $AltText;
    public $BidType;
    public $Target;
    public $TargetVal;
    public $DailyBudget;
    public $MaximumBudget;
    public $IABAudienceCategory;
    public $GEOCountry;
    public $TimeZone;
    public $FrequencyCap;
    public $FreCapShowTime;
    public $FreCapTimeFromHr;
    public $FreCapTimeToHr;
    public $FreCapCampaignApply;
    public $FreCapZoneApply;
    public $AdTagType;
    public $InAnIframe;
    public $MultiNestedIframe;
    public $AdPostLeft;
    public $AdPostTop;
    public $ResolutionMinW;
    public $ResolutionMaxW;
    public $ResolutionMinH;
    public $ResolutionMaxH;
    public $HttpLang;
    public $BrowerAgentGrep;
    public $CookieGrep;
    public $PmpEnable;
    public $Secure;
    public $FoldPosition;

}

?>