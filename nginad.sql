-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 13, 2015 at 08:32 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nginad`
--

DELIMITER $$
--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `MD5_SPLIT_SALT`(`password` VARCHAR(255), `salt` char(10)) RETURNS varchar(32) CHARSET latin1
    DETERMINISTIC
BEGIN

/* This function puts the salt in the middle of the plain text password before it feeds it to the MD5 hash.
 * The result is a more difficult to crack password database, as the cracker will also need to know
 * the plain text password string length to know where to put the salt to result in the MD5 hash.
 * Example: password --> passSALTword --> MD5(passSALTword)
 * Different passwords with different lengths will have their salt placed in a different place before it is
 * sent to the MD5 hash algorithm.
 */

DECLARE length INT;
DECLARE firsthalf INT;
DECLARE secondhalf INT;
DECLARE result VARCHAR(32);

SET length = LENGTH(`password`);
SET firsthalf = FLOOR(length/2);
SET secondhalf = length - firsthalf; /* YOU MUST subtract and not recalculate to avoid rounding errors! */
SET result =
			MD5(
				CONCAT(
					SUBSTRING(`password`, 1, firsthalf) ,
					CASE WHEN (`salt` IS NULL) THEN '' ELSE `salt` END, /* If salt is NULL, provide empty string for no salt. */
					SUBSTRING(`password`,secondhalf)
				)
			);

/* One liner:
RETURN MD5(CONCAT(SUBSTRING(`password`, 1, FLOOR(LENGTH(`password`)/2)),CASE WHEN (`salt` IS NULL) THEN '' ELSE `salt` END,SUBSTRING(`password`,(LENGTH(`password`) - FLOOR(LENGTH(`password`)/2)))));
*/

RETURN result;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `AdCampaign`
--

CREATE TABLE IF NOT EXISTS `AdCampaign` (
`AdCampaignID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Name` char(100) NOT NULL,
  `StartDate` datetime NOT NULL,
  `EndDate` datetime NOT NULL,
  `Customer` char(100) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `ImpressionsCounter` int(11) NOT NULL,
  `MaxImpressions` int(11) NOT NULL,
  `CurrentSpend` float NOT NULL,
  `MaxSpend` float NOT NULL,
  `Active` tinyint(1) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AdCampaign`
--

INSERT INTO `AdCampaign` (`AdCampaignID`, `UserID`, `Name`, `StartDate`, `EndDate`, `Customer`, `CustomerID`, `ImpressionsCounter`, `MaxImpressions`, `CurrentSpend`, `MaxSpend`, `Active`, `DateCreated`, `DateUpdated`) VALUES
(4, 21, 'My Media Campaign for XBrand', '2014-09-03 00:00:00', '2017-05-19 00:00:00', 'XBrand', 10101100, 0, 1000000, 0, 100, 1, '2014-09-03 15:57:27', '2014-09-03 15:57:27');

-- --------------------------------------------------------

--
-- Table structure for table `AdCampaignBanner`
--

CREATE TABLE IF NOT EXISTS `AdCampaignBanner` (
`AdCampaignBannerID` int(11) NOT NULL,
  `AdCampaignID` int(11) NOT NULL,
  `AdCampaignTypeID` int(11) NOT NULL,
  `ImpressionType` char(10) NOT NULL DEFAULT 'banner',
  `UserID` int(11) NOT NULL,
  `Name` char(100) NOT NULL,
  `StartDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `EndDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `IsMobile` smallint(1) NOT NULL,
  `IABSize` char(255) NOT NULL,
  `Height` int(11) NOT NULL,
  `Width` int(11) NOT NULL,
  `Weight` int(11) NOT NULL DEFAULT '5',
  `BidAmount` float NOT NULL,
  `AdTag` text NOT NULL,
  `DeliveryType` enum('if','js') NOT NULL DEFAULT 'if',
  `LandingPageTLD` char(100) NOT NULL,
  `ImpressionsCounter` int(11) NOT NULL,
  `BidsCounter` int(11) NOT NULL,
  `CurrentSpend` float NOT NULL,
  `Active` tinyint(1) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AdCampaignBanner`
--

INSERT INTO `AdCampaignBanner` (`AdCampaignBannerID`, `AdCampaignID`, `AdCampaignTypeID`, `ImpressionType`, `UserID`, `Name`, `StartDate`, `EndDate`, `IsMobile`, `IABSize`, `Height`, `Width`, `Weight`, `BidAmount`, `AdTag`, `DeliveryType`, `LandingPageTLD`, `ImpressionsCounter`, `BidsCounter`, `CurrentSpend`, `Active`, `DateCreated`, `DateUpdated`) VALUES
(1, 4, 1, 'banner', 21, 'Top Leaderboard Creative', '2014-09-02 17:00:00', '2015-11-03 17:00:00', 0, '728x90', 90, 728, 5, 0.25, '<script language="Javascript">\r\nvar zflag_nid="2674"; var zflag_cid="1"; var zflag_sid="1"; var zflag_width="728"; var zflag_height="90"; var zflag_sz="14";\r\n</script>\r\n<script language="Javascript" src="http://xp2.zedo.com/jsc/xp2/fo.js"></script>', 'js', 'nginad.com', 0, 0, 0, 1, '2014-09-03 15:57:27', '2014-09-03 15:57:27');

-- --------------------------------------------------------

--
-- Table structure for table `AdCampaignBannerDomainExclusion`
--

CREATE TABLE IF NOT EXISTS `AdCampaignBannerDomainExclusion` (
`AdCampaignBannerDomainExclusionID` int(11) NOT NULL,
  `AdCampaignBannerID` int(11) NOT NULL,
  `ExclusionType` enum('url','referrer') NOT NULL,
  `DomainName` char(255) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AdCampaignBannerDomainExclusionPreview`
--

CREATE TABLE IF NOT EXISTS `AdCampaignBannerDomainExclusionPreview` (
`AdCampaignBannerDomainExclusionPreviewID` int(11) NOT NULL,
  `AdCampaignBannerPreviewID` int(11) NOT NULL,
  `ExclusionType` enum('url','referrer') NOT NULL,
  `DomainName` char(255) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AdCampaignBannerDomainExclusiveInclusion`
--

CREATE TABLE IF NOT EXISTS `AdCampaignBannerDomainExclusiveInclusion` (
`AdCampaignBannerDomainExclusiveInclusionID` int(11) NOT NULL,
  `AdCampaignBannerID` int(11) NOT NULL,
  `InclusionType` enum('url','referrer') NOT NULL,
  `DomainName` char(255) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AdCampaignBannerDomainExclusiveInclusionPreview`
--

CREATE TABLE IF NOT EXISTS `AdCampaignBannerDomainExclusiveInclusionPreview` (
`AdCampaignBannerDomainExclusiveInclusionPreviewID` int(11) NOT NULL,
  `AdCampaignBannerPreviewID` int(11) NOT NULL,
  `InclusionType` enum('url','referrer') NOT NULL,
  `DomainName` char(255) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AdCampaignBannerPreview`
--

CREATE TABLE IF NOT EXISTS `AdCampaignBannerPreview` (
`AdCampaignBannerPreviewID` int(11) NOT NULL,
  `AdCampaignPreviewID` int(11) NOT NULL,
  `AdCampaignBannerID` int(11) NOT NULL,
  `AdCampaignTypeID` int(11) NOT NULL,
  `ImpressionType` char(10) NOT NULL DEFAULT 'banner',
  `UserID` int(11) NOT NULL,
  `Name` char(100) NOT NULL,
  `StartDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `EndDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `IsMobile` smallint(1) NOT NULL,
  `IABSize` char(255) NOT NULL,
  `Height` int(11) NOT NULL,
  `Width` int(11) NOT NULL,
  `Weight` int(11) NOT NULL DEFAULT '5',
  `BidAmount` float NOT NULL,
  `AdTag` text NOT NULL,
  `DeliveryType` enum('if','js') NOT NULL DEFAULT 'if',
  `LandingPageTLD` char(100) NOT NULL,
  `ImpressionsCounter` int(11) NOT NULL,
  `BidsCounter` int(11) NOT NULL,
  `CurrentSpend` float NOT NULL,
  `Active` tinyint(1) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ChangeWentLive` tinyint(1) NOT NULL DEFAULT '0',
  `WentLiveDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AdCampaignBannerPreview`
--

INSERT INTO `AdCampaignBannerPreview` (`AdCampaignBannerPreviewID`, `AdCampaignPreviewID`, `AdCampaignBannerID`, `AdCampaignTypeID`, `ImpressionType`, `UserID`, `Name`, `StartDate`, `EndDate`, `IsMobile`, `IABSize`, `Height`, `Width`, `Weight`, `BidAmount`, `AdTag`, `DeliveryType`, `LandingPageTLD`, `ImpressionsCounter`, `BidsCounter`, `CurrentSpend`, `Active`, `DateCreated`, `DateUpdated`, `ChangeWentLive`, `WentLiveDate`) VALUES
(1, 1, 0, 1, 'banner', 21, 'Top Leaderboard Creative', '2014-09-02 17:00:00', '2015-11-03 17:00:00', 0, '728x90', 90, 728, 5, 0.25, '<script language="Javascript">\r\nvar zflag_nid="2674"; var zflag_cid="1"; var zflag_sid="1"; var zflag_width="728"; var zflag_height="90"; var zflag_sz="14";\r\n</script>\r\n<script language="Javascript" src="http://xp2.zedo.com/jsc/xp2/fo.js"></script>', 'js', 'nginad.com', 0, 0, 0, 0, '2014-09-03 15:44:59', '2014-09-03 15:57:27', 1, '2014-09-03 15:57:27');

-- --------------------------------------------------------

--
-- Table structure for table `AdCampaignBannerRestrictions`
--

CREATE TABLE IF NOT EXISTS `AdCampaignBannerRestrictions` (
`AdCampaignBannerRestrictionsID` int(11) NOT NULL,
  `AdCampaignBannerID` int(11) NOT NULL,
  `GeoCountry` char(255) DEFAULT NULL,
  `GeoState` char(255) DEFAULT NULL,
  `GeoCity` char(255) DEFAULT NULL,
  `AdTagType` enum('JavaScript','Iframe') DEFAULT NULL,
  `AdPositionMinLeft` int(11) DEFAULT NULL,
  `AdPositionMaxLeft` int(11) DEFAULT NULL,
  `AdPositionMinTop` int(11) DEFAULT NULL,
  `AdPositionMaxTop` int(11) DEFAULT NULL,
  `FoldPos` int(11) DEFAULT NULL,
  `Freq` int(11) DEFAULT NULL,
  `Timezone` char(100) DEFAULT NULL,
  `InIframe` tinyint(1) DEFAULT NULL,
  `InMultipleNestedIframes` tinyint(1) DEFAULT NULL,
  `MinScreenResolutionWidth` int(11) DEFAULT NULL,
  `MaxScreenResolutionWidth` int(11) DEFAULT NULL,
  `MinScreenResolutionHeight` int(11) DEFAULT NULL,
  `MaxScreenResolutionHeight` int(11) DEFAULT NULL,
  `HttpLanguage` char(10) DEFAULT NULL,
  `BrowserUserAgentGrep` char(255) DEFAULT NULL,
  `CookieGrep` char(255) DEFAULT NULL,
  `PmpEnable` tinyint(1) DEFAULT NULL,
  `Secure` tinyint(1) DEFAULT NULL,
  `Optout` tinyint(1) DEFAULT NULL,
  `Vertical` char(100) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AdCampaignBannerRestrictionsPreview`
--

CREATE TABLE IF NOT EXISTS `AdCampaignBannerRestrictionsPreview` (
`AdCampaignBannerRestrictionsPreviewID` int(11) NOT NULL,
  `AdCampaignBannerPreviewID` int(11) NOT NULL,
  `GeoCountry` char(255) DEFAULT NULL,
  `GeoState` char(255) DEFAULT NULL,
  `GeoCity` char(255) DEFAULT NULL,
  `AdTagType` enum('JavaScript','Iframe') DEFAULT NULL,
  `AdPositionMinLeft` int(11) DEFAULT NULL,
  `AdPositionMaxLeft` int(11) DEFAULT NULL,
  `AdPositionMinTop` int(11) DEFAULT NULL,
  `AdPositionMaxTop` int(11) DEFAULT NULL,
  `FoldPos` int(11) DEFAULT NULL,
  `Freq` int(11) DEFAULT NULL,
  `Timezone` char(100) DEFAULT NULL,
  `InIframe` tinyint(1) DEFAULT NULL,
  `InMultipleNestedIframes` tinyint(1) DEFAULT NULL,
  `MinScreenResolutionWidth` int(11) DEFAULT NULL,
  `MaxScreenResolutionWidth` int(11) DEFAULT NULL,
  `MinScreenResolutionHeight` int(11) DEFAULT NULL,
  `MaxScreenResolutionHeight` int(11) DEFAULT NULL,
  `HttpLanguage` char(10) DEFAULT NULL,
  `BrowserUserAgentGrep` char(255) DEFAULT NULL,
  `CookieGrep` char(255) DEFAULT NULL,
  `PmpEnable` tinyint(1) DEFAULT NULL,
  `Secure` tinyint(1) DEFAULT NULL,
  `Optout` tinyint(1) DEFAULT NULL,
  `Vertical` char(100) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AdCampaignPreview`
--

CREATE TABLE IF NOT EXISTS `AdCampaignPreview` (
`AdCampaignPreviewID` int(11) NOT NULL,
  `AdCampaignID` int(11) DEFAULT NULL,
  `UserID` int(11) NOT NULL,
  `Name` char(100) NOT NULL,
  `StartDate` datetime NOT NULL,
  `EndDate` datetime NOT NULL,
  `Customer` char(100) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `ImpressionsCounter` int(11) NOT NULL,
  `MaxImpressions` int(11) NOT NULL,
  `CurrentSpend` float NOT NULL,
  `MaxSpend` float NOT NULL,
  `Active` tinyint(1) NOT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT '0',
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ChangeWentLive` tinyint(1) NOT NULL DEFAULT '0',
  `WentLiveDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AdCampaignPreview`
--

INSERT INTO `AdCampaignPreview` (`AdCampaignPreviewID`, `AdCampaignID`, `UserID`, `Name`, `StartDate`, `EndDate`, `Customer`, `CustomerID`, `ImpressionsCounter`, `MaxImpressions`, `CurrentSpend`, `MaxSpend`, `Active`, `Deleted`, `DateCreated`, `DateUpdated`, `ChangeWentLive`, `WentLiveDate`) VALUES
(1, NULL, 21, 'My Media Campaign for XBrand', '2014-09-03 00:00:00', '2017-05-19 00:00:00', 'XBrand', 10101100, 0, 1000000, 0, 100, 0, 0, '2014-09-03 15:42:03', '2014-09-03 15:42:03', 1, '2014-09-03 15:57:27');

-- --------------------------------------------------------

--
-- Table structure for table `AdCampaignType`
--

CREATE TABLE IF NOT EXISTS `AdCampaignType` (
  `AdCampaignTypeID` int(11) unsigned NOT NULL,
  `Description` varchar(255) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AdCampaignType`
--

INSERT INTO `AdCampaignType` (`AdCampaignTypeID`, `Description`, `DateCreated`, `DateUpdated`) VALUES
(1, 'Any Remnant', '2014-09-03 15:44:24', '2014-09-03 15:44:24'),
(2, 'In House Remnant', '2014-09-03 15:44:24', '2014-09-03 15:44:24'),
(3, 'RTB Remnant', '2014-09-03 15:44:24', '2014-09-03 15:44:24'),
(4, 'Contract', '2014-09-03 15:44:24', '2014-09-03 15:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `AdCampaignVideoRestrictions`
--

CREATE TABLE IF NOT EXISTS `AdCampaignVideoRestrictions` (
`AdCampaignVideoRestrictionsID` int(11) NOT NULL,
  `AdCampaignBannerID` int(11) DEFAULT NULL,
  `GeoCountry` char(255) DEFAULT NULL,
  `GeoState` char(255) DEFAULT NULL,
  `GeoCity` char(255) DEFAULT NULL,
  `MimesCommaSeparated` char(100) DEFAULT NULL,
  `MinDuration` int(10) unsigned DEFAULT NULL,
  `MaxDuration` int(10) unsigned DEFAULT NULL,
  `MinHeight` int(10) unsigned DEFAULT NULL,
  `MinWidth` int(10) unsigned DEFAULT NULL,
  `ApisSupportedCommaSeparated` char(100) DEFAULT NULL,
  `ProtocolsCommaSeparated` char(100) DEFAULT NULL,
  `DeliveryCommaSeparated` char(100) DEFAULT NULL,
  `PlaybackCommaSeparated` char(100) DEFAULT NULL,
  `StartDelay` char(5) DEFAULT NULL,
  `Linearity` int(10) DEFAULT NULL,
  `FoldPos` int(10) DEFAULT NULL,
  `PmpEnable` tinyint(1) DEFAULT NULL,
  `Secure` tinyint(1) DEFAULT NULL,
  `Optout` tinyint(1) DEFAULT NULL,
  `Vertical` char(100) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AdCampaignVideoRestrictionsPreview`
--

CREATE TABLE IF NOT EXISTS `AdCampaignVideoRestrictionsPreview` (
`AdCampaignVideoRestrictionsPreviewID` int(11) NOT NULL,
  `AdCampaignBannerPreviewID` int(11) NOT NULL,
  `GeoCountry` char(255) DEFAULT NULL,
  `GeoState` char(255) DEFAULT NULL,
  `GeoCity` char(255) DEFAULT NULL,
  `MimesCommaSeparated` char(100) DEFAULT NULL,
  `MinDuration` int(10) unsigned DEFAULT NULL,
  `MaxDuration` int(10) unsigned DEFAULT NULL,
  `MinHeight` int(10) unsigned DEFAULT NULL,
  `MinWidth` int(10) unsigned DEFAULT NULL,
  `ApisSupportedCommaSeparated` char(100) DEFAULT NULL,
  `ProtocolsCommaSeparated` char(100) DEFAULT NULL,
  `DeliveryCommaSeparated` char(100) DEFAULT NULL,
  `PlaybackCommaSeparated` char(100) DEFAULT NULL,
  `StartDelay` char(5) DEFAULT NULL,
  `Linearity` int(10) DEFAULT NULL,
  `FoldPos` int(10) DEFAULT NULL,
  `PmpEnable` tinyint(1) DEFAULT NULL,
  `Secure` tinyint(1) DEFAULT NULL,
  `Optout` tinyint(1) DEFAULT NULL,
  `Vertical` char(100) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AdCampainMarkup`
--

CREATE TABLE IF NOT EXISTS `AdCampainMarkup` (
  `AdCampaignID` int(11) NOT NULL,
  `MarkupRate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AdCampainMarkup`
--

INSERT INTO `AdCampainMarkup` (`AdCampaignID`, `MarkupRate`) VALUES
(4, 0.4);

-- --------------------------------------------------------

--
-- Table structure for table `AdTemplates`
--

CREATE TABLE IF NOT EXISTS `AdTemplates` (
`AdTemplateID` int(10) unsigned NOT NULL,
  `TemplateName` varchar(50) NOT NULL,
  `IsMobileFlag` smallint(6) NOT NULL DEFAULT '0',
  `Width` int(11) NOT NULL,
  `Height` int(11) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AdTemplates`
--

INSERT INTO `AdTemplates` (`AdTemplateID`, `TemplateName`, `IsMobileFlag`, `Width`, `Height`, `DateCreated`, `DateUpdated`) VALUES
(1, 'IAB Full Banner', 0, 468, 60, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(2, 'IAB Skyscraper', 0, 120, 600, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(3, 'IAB Leaderboard', 0, 728, 90, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(4, 'IAB Button 1', 0, 120, 90, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(5, 'IAB Button 2', 0, 120, 60, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(6, 'IAB Half Banner', 0, 234, 60, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(7, 'IAB Micro Bar', 0, 88, 31, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(8, 'IAB Square Button', 0, 125, 125, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(9, 'IAB VerticleBanner', 0, 120, 240, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(10, 'IAB Rectangle', 0, 180, 150, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(11, 'IAB Medium Rectangle', 0, 300, 250, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(12, 'IAB Large Rectangle', 0, 336, 280, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(13, 'IAB Vertical Rectangle', 0, 240, 400, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(14, 'IAB Square Pop-up', 0, 250, 250, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(15, 'IAB Wide Skyscraper', 0, 160, 600, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(16, 'IAB Pop-Under', 0, 720, 300, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(17, '3:1 Rectangle', 0, 300, 100, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(18, 'Mobile Phone Banner', 1, 320, 50, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(19, 'Mobile Phone Thin Banner', 1, 300, 50, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(20, 'Mobile Phone Medium Rectangle', 1, 300, 250, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(21, 'Mobile Phone Full Screen', 1, 320, 480, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(22, 'Mobile Phone Thin Full Screen', 1, 300, 480, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(23, 'Mobile Tablet Leaderboard', 2, 728, 90, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(24, 'Mobile Tablet Medium Rectangle', 2, 300, 250, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(25, 'Mobile Tablet Banner', 2, 300, 50, '2014-01-28 16:20:00', '2014-01-28 16:31:33'),
(26, 'Mobile Tablet Full Screen', 2, 728, 1024, '2014-01-28 16:20:00', '2014-01-28 16:31:33');

-- --------------------------------------------------------

--
-- Table structure for table `AdType`
--

CREATE TABLE IF NOT EXISTS `AdType` (
`AdTypeID` int(10) unsigned NOT NULL,
  `AdTypeName` varchar(50) NOT NULL,
  `AdTypeDescription` text,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AdType`
--

INSERT INTO `AdType` (`AdTypeID`, `AdTypeName`, `AdTypeDescription`, `DateCreated`, `DateUpdated`) VALUES
(1, 'Text', 'Text', '2014-01-28 16:20:00', '2014-01-28 16:20:40'),
(2, 'Static', 'Static Graphics', '2014-01-28 16:20:00', '2014-01-28 16:20:40'),
(3, 'Dynamic', 'Dynamic Graphics', '2014-01-28 16:20:00', '2014-01-28 16:20:40'),
(4, 'Flash', 'Flash Based', '2014-01-28 16:20:00', '2014-01-28 16:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `auth_Users`
--

CREATE TABLE IF NOT EXISTS `auth_Users` (
`user_id` int(10) unsigned NOT NULL,
  `user_login` varchar(50) NOT NULL,
  `user_email` varchar(255) NOT NULL DEFAULT '',
  `user_password` varchar(255) NOT NULL,
  `user_password_salt` char(10) DEFAULT NULL,
  `user_2factor_secret` binary(16) DEFAULT NULL,
  `user_fullname` varchar(255) DEFAULT NULL,
  `user_description` text,
  `user_enabled` smallint(6) NOT NULL DEFAULT '0',
  `user_verified` tinyint(4) NOT NULL DEFAULT '0',
  `user_agreement_accepted` tinyint(4) NOT NULL DEFAULT '0',
  `PublisherInfoID` int(11) DEFAULT NULL,
  `DemandCustomerInfoID` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_agreement_acceptance_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_permission_cache` blob,
  `user_role` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_Users`
--

INSERT INTO `auth_Users` (`user_id`, `user_login`, `user_email`, `user_password`, `user_password_salt`, `user_2factor_secret`, `user_fullname`, `user_description`, `user_enabled`, `user_verified`, `user_agreement_accepted`, `PublisherInfoID`, `DemandCustomerInfoID`, `create_date`, `update_date`, `user_agreement_acceptance_date`, `user_permission_cache`, `user_role`) VALUES
(1, 'admin', 'admin@localhost', '86a65acd94b33daa87c1c6a2d1408593', NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, '2013-11-06 02:24:00', '2013-11-06 02:25:07', '2013-11-06 02:25:07', NULL, 1),
(20, 'blowmedia', 'sergey.page@blowmedianow.com', '86a65acd94b33daa87c1c6a2d1408593', NULL, NULL, NULL, NULL, 1, 1, 1, 3, NULL, '2014-09-03 14:25:33', '2014-09-03 14:25:33', '2013-11-06 02:25:07', NULL, 3),
(21, 'suckmedia', 'larry.brin@suckmedianow.com', '86a65acd94b33daa87c1c6a2d1408593', NULL, NULL, NULL, NULL, 1, 1, 1, NULL, 18, '2014-09-03 14:32:24', '2014-09-03 14:32:24', '2013-11-06 02:25:07', NULL, 3),
(22, 'lvduit', 'duyet2000@gmail.com', 'e630c54b2ef08f20bafb50ca4c8cd507', NULL, NULL, NULL, NULL, 0, 0, 0, 4, NULL, '2015-05-13 01:20:19', '2015-05-13 06:20:19', '0000-00-00 00:00:00', NULL, 3),
(23, 'lvduitt', 'lvduit08@gmail.com', 'e630c54b2ef08f20bafb50ca4c8cd507', NULL, NULL, NULL, NULL, 0, 0, 0, 5, NULL, '2015-05-13 01:22:09', '2015-05-13 06:22:09', '0000-00-00 00:00:00', NULL, 3);

-- --------------------------------------------------------

--
-- Stand-in structure for view `auth_userslogin`
--
CREATE TABLE IF NOT EXISTS `auth_userslogin` (
`user_id` int(10) unsigned
,`user_login` varchar(50)
,`user_email` varchar(255)
,`user_password` varchar(255)
,`user_password_salt` char(10)
,`user_2factor_secret` binary(16)
,`user_fullname` varchar(255)
,`user_description` text
,`user_enabled` smallint(6)
,`user_verified` tinyint(4)
,`user_agreement_accepted` tinyint(4)
,`DemandCustomerInfoID` int(11)
,`PublisherInfoID` int(11)
,`create_date` timestamp
,`update_date` timestamp
,`user_permission_cache` blob
,`user_role` int(11) unsigned
,`user_role_name` varchar(32)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `auth_usersview`
--
CREATE TABLE IF NOT EXISTS `auth_usersview` (
`user_id` int(10) unsigned
,`user_login` varchar(50)
,`user_email` varchar(255)
,`user_password` varchar(255)
,`user_password_salt` char(10)
,`user_2factor_secret` binary(16)
,`user_fullname` varchar(255)
,`user_description` text
,`user_enabled` smallint(6)
,`user_verified` tinyint(4)
,`DemandCustomerInfoID` int(11)
,`PublisherInfoID` int(11)
,`create_date` timestamp
,`update_date` timestamp
,`user_permission_cache` blob
,`user_role` int(11) unsigned
,`user_role_name` varchar(32)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `BidTotalsRollup`
--
CREATE TABLE IF NOT EXISTS `BidTotalsRollup` (
`AdCampaignBannerID` int(11)
,`TotalBids` decimal(32,0)
);
-- --------------------------------------------------------

--
-- Table structure for table `BuySideDailyImpressionsByTLD`
--

CREATE TABLE IF NOT EXISTS `BuySideDailyImpressionsByTLD` (
`DailyImpressionsByTLDID` int(11) NOT NULL,
  `AdCampaignBannerID` int(11) NOT NULL,
  `MDY` char(10) NOT NULL,
  `PublisherTLD` char(100) NOT NULL,
  `Impressions` int(11) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `buySideHourlyBidsAvarage`
--
CREATE TABLE IF NOT EXISTS `buySideHourlyBidsAvarage` (
`avg_bids` decimal(14,4)
,`total_bids` decimal(32,0)
,`banner_name` char(100)
,`Name` char(100)
,`user_login` varchar(50)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `buySideHourlyBidsAvarageAdmin`
--
CREATE TABLE IF NOT EXISTS `buySideHourlyBidsAvarageAdmin` (
`BuySidePartnerID` char(100)
,`avg_bids` decimal(14,4)
,`total_bids` decimal(32,0)
,`banner_name` char(100)
,`Name` char(100)
,`user_login` varchar(50)
);
-- --------------------------------------------------------

--
-- Table structure for table `BuySideHourlyBidsCounter`
--

CREATE TABLE IF NOT EXISTS `BuySideHourlyBidsCounter` (
`BuySideHourlyBidsCounterID` int(11) NOT NULL,
  `BuySidePartnerID` char(100) NOT NULL,
  `AdCampaignBannerID` int(11) NOT NULL,
  `MDYH` char(15) NOT NULL,
  `BidsCounter` int(11) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `buySideHourlyBidsPerTime`
--
CREATE TABLE IF NOT EXISTS `buySideHourlyBidsPerTime` (
`BuySidePartnerID` char(100)
,`MDYH` char(15)
,`BidsCounter` int(11)
,`DateCreated` timestamp
,`DateUpdated` timestamp
,`Name` char(100)
);
-- --------------------------------------------------------

--
-- Table structure for table `BuySideHourlyImpressionsByTLD`
--

CREATE TABLE IF NOT EXISTS `BuySideHourlyImpressionsByTLD` (
`BuySideHourlyImpressionsByTLDID` int(11) NOT NULL,
  `AdCampaignBannerID` int(11) NOT NULL,
  `MDYH` char(15) NOT NULL,
  `PublisherTLD` char(100) NOT NULL,
  `Impressions` int(11) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `BuySideHourlyImpressionsCounterCurrentSpend`
--

CREATE TABLE IF NOT EXISTS `BuySideHourlyImpressionsCounterCurrentSpend` (
`BuySideHourlyImpressionsCounterCurrentSpendID` int(11) NOT NULL,
  `BuySidePartnerID` char(100) NOT NULL,
  `AdCampaignBannerID` int(11) NOT NULL,
  `MDYH` char(15) NOT NULL,
  `ImpressionsCounter` int(11) NOT NULL,
  `CurrentSpendGross` float NOT NULL,
  `CurrentSpendNet` float NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ContractPublisherZoneHourlyImpressions`
--

CREATE TABLE IF NOT EXISTS `ContractPublisherZoneHourlyImpressions` (
`ContractPublisherZoneHourlyImpressionsID` int(11) NOT NULL,
  `AdCampaignBannerID` int(11) NOT NULL,
  `PublisherAdZoneID` int(11) NOT NULL,
  `MDYH` char(15) NOT NULL,
  `Impressions` bigint(20) NOT NULL,
  `SpendTotalGross` float NOT NULL,
  `SpendTotalNet` float NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `DemandCustomerInfo`
--

CREATE TABLE IF NOT EXISTS `DemandCustomerInfo` (
`DemandCustomerInfoID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Website` varchar(255) NOT NULL,
  `Company` varchar(255) NOT NULL,
  `PartnerType` int(11) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DemandCustomerInfo`
--

INSERT INTO `DemandCustomerInfo` (`DemandCustomerInfoID`, `Name`, `Email`, `Website`, `Company`, `PartnerType`, `DateCreated`, `DateUpdated`) VALUES
(18, 'Larry Brin', 'larry.brin@suckmedianow.com', 'suckmedianow.com', 'Suck Media Now', 1, '2014-09-03 14:32:24', '2014-09-03 14:32:24');

-- --------------------------------------------------------

--
-- Stand-in structure for view `DemandImpressionsAndSpendHourly`
--
CREATE TABLE IF NOT EXISTS `DemandImpressionsAndSpendHourly` (
`MDYH` char(15)
,`AdCampaignBannerID` int(11)
,`DemandCustomerName` varchar(255)
,`DemandCustomerInfoID` int(11)
,`BannerName` char(100)
,`PublisherTLDs` text
,`Impressions` decimal(32,0)
,`Cost` double(24,7)
,`GrossCost` double(24,7)
,`CPM` double(24,7)
,`GrossCPM` double(24,7)
,`DateCreated` timestamp
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `DemandImpressionsAndSpendHourlyPre`
--
CREATE TABLE IF NOT EXISTS `DemandImpressionsAndSpendHourlyPre` (
`MDYH` char(15)
,`AdCampaignBannerID` int(11)
,`DemandCustomerName` varchar(255)
,`DemandCustomerInfoID` int(11)
,`BannerName` char(100)
,`Impressions` decimal(32,0)
,`Cost` double(24,7)
,`GrossCost` double(24,7)
,`CPM` double(24,7)
,`GrossCPM` double(24,7)
,`DateCreated` timestamp
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `ImpressionAndSpendTotalsRollup`
--
CREATE TABLE IF NOT EXISTS `ImpressionAndSpendTotalsRollup` (
`AdCampaignBannerID` int(11)
,`TotalSpendGross` double
,`TotalSpendNet` double
,`TotalImpressions` decimal(32,0)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `impressionsCurrentSpendPerTime`
--
CREATE TABLE IF NOT EXISTS `impressionsCurrentSpendPerTime` (
`BuySidePartnerID` char(100)
,`MDYH` char(15)
,`ImpressionsCounter` int(11)
,`CurrentSpendGross` float
,`CurrentSpendNet` float
,`AverageBidCurrentSpendNet` double(24,7)
,`AverageBidCurrentSpendGross` double(24,7)
,`DateCreated` timestamp
,`DateUpdated` timestamp
,`Name` char(100)
);
-- --------------------------------------------------------

--
-- Table structure for table `IndustryCategories`
--

CREATE TABLE IF NOT EXISTS `IndustryCategories` (
`IndustryID` int(10) unsigned NOT NULL,
  `IndustryName` varchar(50) NOT NULL,
  `IndustryDescription` text,
  `IndustryStatus` smallint(6) NOT NULL DEFAULT '1',
  `ParentIndustryID` int(10) unsigned DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `IndustryCategories`
--

INSERT INTO `IndustryCategories` (`IndustryID`, `IndustryName`, `IndustryDescription`, `IndustryStatus`, `ParentIndustryID`, `DateCreated`, `DateUpdated`) VALUES
(1, 'Not Applicable', NULL, 1, NULL, '2013-01-29 10:10:00', '2014-01-29 10:14:25'),
(2, 'Automotive', NULL, 1, NULL, '2013-01-29 10:10:00', '2014-01-29 10:14:25'),
(3, 'Business and Finance', NULL, 1, NULL, '2013-01-29 10:10:00', '2014-01-29 10:14:25'),
(8, 'Education', NULL, 1, NULL, '2013-01-29 10:10:00', '2014-01-29 10:14:25'),
(9, 'Employment and Career', NULL, 1, NULL, '2013-01-29 10:10:00', '2014-01-29 10:14:25'),
(10, 'Entertainment and Leisure', NULL, 1, NULL, '2013-01-29 10:10:00', '2014-01-29 10:14:25'),
(12, 'Gaming', NULL, 1, NULL, '2013-01-29 10:10:00', '2014-01-29 10:14:25'),
(14, 'Health and Fitness', NULL, 1, NULL, '2013-01-29 10:10:00', '2014-01-29 10:14:25'),
(16, 'Home and Garden', NULL, 1, NULL, '2013-01-29 10:10:00', '2014-01-29 10:14:25'),
(18, 'Men''s Interest', NULL, 1, NULL, '2013-01-29 10:10:00', '2014-01-29 10:14:25'),
(21, 'Music', NULL, 1, NULL, '2013-01-29 10:10:00', '2014-01-29 10:14:25'),
(23, 'News', NULL, 1, NULL, '2013-01-29 10:10:00', '2014-01-29 10:14:25'),
(24, 'Parenting and Family', NULL, 1, NULL, '2013-01-29 10:10:00', '2014-01-29 10:14:25'),
(27, 'Real Estate', NULL, 1, NULL, '2013-01-29 10:10:00', '2014-01-29 10:14:25'),
(28, 'Reference', NULL, 1, NULL, '2013-01-29 10:10:00', '2014-01-29 10:14:25'),
(29, 'Food and Dining', NULL, 1, NULL, '2013-01-29 10:10:00', '2014-01-29 10:14:25'),
(31, 'Shopping', NULL, 1, NULL, '2013-01-29 10:10:00', '2014-01-29 10:14:25'),
(32, 'Social Networking', NULL, 1, NULL, '2013-01-29 10:10:00', '2014-01-29 10:14:25'),
(33, 'Sports', NULL, 1, NULL, '2013-01-29 10:10:00', '2014-01-29 10:14:25'),
(34, 'Technology', NULL, 1, NULL, '2013-01-29 10:10:00', '2014-01-29 10:14:25'),
(36, 'Travel', NULL, 1, NULL, '2013-01-29 10:10:00', '2014-01-29 10:14:25'),
(38, 'Women''s Interest', NULL, 1, NULL, '2013-01-29 10:10:00', '2014-01-29 10:14:25');

-- --------------------------------------------------------

--
-- Table structure for table `LinkedBannerToAdZone`
--

CREATE TABLE IF NOT EXISTS `LinkedBannerToAdZone` (
`LinkedBannerToAdZoneID` int(11) unsigned NOT NULL,
  `AdCampaignBannerID` int(11) unsigned NOT NULL,
  `PublisherAdZoneID` int(11) unsigned NOT NULL,
  `Weight` int(11) NOT NULL DEFAULT '5',
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `LinkedBannerToAdZonePreview`
--

CREATE TABLE IF NOT EXISTS `LinkedBannerToAdZonePreview` (
`LinkedBannerToAdZonePreviewID` int(11) unsigned NOT NULL,
  `AdCampaignBannerPreviewID` int(11) unsigned NOT NULL,
  `PublisherAdZoneID` int(11) unsigned NOT NULL,
  `Weight` int(11) NOT NULL DEFAULT '5',
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Maintenance`
--

CREATE TABLE IF NOT EXISTS `Maintenance` (
  `TagName` char(100) NOT NULL,
  `LastUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Maintenance`
--

INSERT INTO `Maintenance` (`TagName`, `LastUpdated`) VALUES
('daily', '2014-09-06 09:05:03'),
('ten_minute', '2014-09-07 03:20:04');

-- --------------------------------------------------------

--
-- Table structure for table `PublisherAdIndustry`
--

CREATE TABLE IF NOT EXISTS `PublisherAdIndustry` (
  `PublisherAdIndustryID` bigint(20) unsigned NOT NULL,
  `IndustryID` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PublisherAdZone`
--

CREATE TABLE IF NOT EXISTS `PublisherAdZone` (
`PublisherAdZoneID` bigint(20) unsigned NOT NULL,
  `PublisherWebsiteID` int(10) unsigned NOT NULL,
  `PublisherAdZoneTypeID` int(11) NOT NULL,
  `ImpressionType` char(10) NOT NULL DEFAULT 'banner',
  `AdOwnerID` int(10) unsigned NOT NULL,
  `AdName` varchar(100) NOT NULL,
  `Description` char(255) DEFAULT NULL,
  `PassbackAdTag` text NOT NULL,
  `AdStatus` smallint(6) NOT NULL DEFAULT '0',
  `AutoApprove` smallint(6) NOT NULL DEFAULT '1',
  `AdTemplateID` int(10) unsigned DEFAULT NULL,
  `IsMobileFlag` smallint(6) DEFAULT NULL,
  `Width` int(11) NOT NULL,
  `Height` int(11) NOT NULL,
  `FloorPrice` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `TotalRequests` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Aggregated Statistics Field',
  `TotalImpressionsFilled` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Aggregated Statistics Field',
  `TotalAmount` decimal(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT 'Aggregated Statistics Field',
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PublisherAdZone`
--

INSERT INTO `PublisherAdZone` (`PublisherAdZoneID`, `PublisherWebsiteID`, `PublisherAdZoneTypeID`, `ImpressionType`, `AdOwnerID`, `AdName`, `Description`, `PassbackAdTag`, `AdStatus`, `AutoApprove`, `AdTemplateID`, `IsMobileFlag`, `Width`, `Height`, `FloorPrice`, `TotalRequests`, `TotalImpressionsFilled`, `TotalAmount`, `DateCreated`, `DateUpdated`) VALUES
(6, 4, 1, 'banner', 3, 'Leaderboard Top Banner', 'This leaderboard ad tag will be shown at the top of all the pages on the website.', '<script language="Javascript">\r\nvar zflag_nid="2674"; var zflag_cid="1"; var zflag_sid="1"; var zflag_width="728"; var zflag_height="90"; var zflag_sz="14";\r\n</script>\r\n<script language="Javascript" src="http://xp2.zedo.com/jsc/xp2/fo.js"></script>', 1, 0, 3, 0, 728, 90, '0.10', 0, 0, '0.00', '2014-09-03 15:40:17', '2014-09-03 15:40:56');

-- --------------------------------------------------------

--
-- Table structure for table `PublisherAdZoneType`
--

CREATE TABLE IF NOT EXISTS `PublisherAdZoneType` (
  `PublisherAdZoneTypeID` int(11) unsigned NOT NULL,
  `Description` varchar(255) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PublisherAdZoneType`
--

INSERT INTO `PublisherAdZoneType` (`PublisherAdZoneTypeID`, `Description`, `DateCreated`, `DateUpdated`) VALUES
(1, 'Any Remnant', '2014-08-17 05:16:21', '2014-08-17 05:16:21'),
(2, 'In House Remnant', '2014-08-17 05:16:21', '2014-08-17 05:16:21'),
(3, 'RTB Remnant', '2014-08-17 05:16:21', '2014-08-17 05:16:21'),
(4, 'Contract', '2014-08-17 05:16:21', '2014-08-17 05:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `PublisherAdZoneVideo`
--

CREATE TABLE IF NOT EXISTS `PublisherAdZoneVideo` (
`PublisherAdZoneVideoID` bigint(20) unsigned NOT NULL,
  `PublisherAdZoneID` int(11) NOT NULL,
  `MimesCommaSeparated` char(100) DEFAULT NULL,
  `MinDuration` int(10) unsigned DEFAULT NULL,
  `MaxDuration` int(10) unsigned DEFAULT NULL,
  `ApisSupportedCommaSeparated` char(100) DEFAULT NULL,
  `ProtocolsCommaSeparated` char(100) DEFAULT NULL,
  `DeliveryCommaSeparated` char(100) DEFAULT NULL,
  `PlaybackCommaSeparated` char(100) DEFAULT NULL,
  `StartDelay` char(5) DEFAULT NULL,
  `Linearity` int(10) DEFAULT NULL,
  `FoldPos` int(10) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PublisherHourlyBids`
--

CREATE TABLE IF NOT EXISTS `PublisherHourlyBids` (
`PublisherHourlyBidsID` int(10) unsigned NOT NULL,
  `PublisherAdZoneID` int(10) unsigned NOT NULL,
  `MDYH` char(15) NOT NULL,
  `AuctionCounter` bigint(20) NOT NULL,
  `BidsWonCounter` bigint(20) NOT NULL,
  `BidsLostCounter` bigint(20) NOT NULL,
  `BidsErrorCounter` bigint(20) NOT NULL,
  `SpendTotalGross` float NOT NULL,
  `SpendTotalNet` float NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `PublisherImpressionsAndSpendHourly`
--
CREATE TABLE IF NOT EXISTS `PublisherImpressionsAndSpendHourly` (
`MDYH` char(15)
,`PublisherAdZoneID` int(10) unsigned
,`PublisherName` varchar(255)
,`PublisherInfoID` int(10) unsigned
,`AdName` varchar(100)
,`Requests` bigint(20)
,`Impressions` bigint(20)
,`eCPM` double(24,7)
,`GrossECPM` double(24,7)
,`FillRate` varchar(28)
,`Revenue` double(24,7)
,`GrossRevenue` double(24,7)
,`DateCreated` timestamp
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `PublisherImpressionsAndSpendHourlyTotals`
--
CREATE TABLE IF NOT EXISTS `PublisherImpressionsAndSpendHourlyTotals` (
`PublisherAdZoneID` int(10) unsigned
,`PublisherName` varchar(255)
,`PublisherInfoID` int(10) unsigned
,`TotalRequests` decimal(41,0)
,`TotalImpressions` decimal(41,0)
,`TotalRevenue` double(24,7)
);
-- --------------------------------------------------------

--
-- Table structure for table `PublisherImpressionsNetworkLoss`
--

CREATE TABLE IF NOT EXISTS `PublisherImpressionsNetworkLoss` (
  `PublisherInfoID` int(11) NOT NULL,
  `CorrectionRate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PublisherInfo`
--

CREATE TABLE IF NOT EXISTS `PublisherInfo` (
`PublisherInfoID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Domain` varchar(255) NOT NULL,
  `IABCategory` char(8) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PublisherInfo`
--

INSERT INTO `PublisherInfo` (`PublisherInfoID`, `Name`, `Email`, `Domain`, `IABCategory`, `DateCreated`, `DateUpdated`) VALUES
(3, 'Blow Media Now', 'sergey.page@blowmedianow.com', 'blowmedianow.com', 'IAB19', '2014-09-03 14:25:33', '2014-09-03 14:25:33'),
(4, 'lvduitlvduit', 'duyet2000@gmail.com', 'lvduit.com', 'IAB1', '2015-05-13 01:20:18', '2015-05-13 06:20:18'),
(5, 'asasas', 'lvduit08@gmail.com', 'lvduit.com', 'IAB1', '2015-05-13 01:22:09', '2015-05-13 06:22:09');

-- --------------------------------------------------------

--
-- Table structure for table `PublisherMarkup`
--

CREATE TABLE IF NOT EXISTS `PublisherMarkup` (
  `PublisherInfoID` int(11) NOT NULL,
  `MarkupRate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PublisherWebsite`
--

CREATE TABLE IF NOT EXISTS `PublisherWebsite` (
`PublisherWebsiteID` int(11) unsigned NOT NULL,
  `WebDomain` varchar(255) NOT NULL,
  `DomainOwnerID` int(10) unsigned NOT NULL,
  `AutoApprove` smallint(6) NOT NULL DEFAULT '1',
  `ApprovalFlag` smallint(6) NOT NULL DEFAULT '0',
  `IABCategory` char(8) DEFAULT NULL,
  `IABSubCategory` char(8) DEFAULT NULL,
  `Description` text,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PublisherWebsite`
--

INSERT INTO `PublisherWebsite` (`PublisherWebsiteID`, `WebDomain`, `DomainOwnerID`, `AutoApprove`, `ApprovalFlag`, `IABCategory`, `IABSubCategory`, `Description`, `DateCreated`, `DateUpdated`) VALUES
(4, 'blowmedianow.com', 3, 1, 1, 'IAB19', NULL, 'Blow Media Website', '2014-09-03 15:38:06', '2014-09-03 15:38:06');

-- --------------------------------------------------------

--
-- Table structure for table `PublisherWebsiteImpressionsNetworkLoss`
--

CREATE TABLE IF NOT EXISTS `PublisherWebsiteImpressionsNetworkLoss` (
  `PublisherWebsiteID` int(11) NOT NULL,
  `CorrectionRate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PublisherWebsiteMarkup`
--

CREATE TABLE IF NOT EXISTS `PublisherWebsiteMarkup` (
  `PublisherWebsiteID` int(11) NOT NULL,
  `MarkupRate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rbac_permission`
--

CREATE TABLE IF NOT EXISTS `rbac_permission` (
`perm_id` int(11) unsigned NOT NULL,
  `perm_name` varchar(32) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rbac_role`
--

CREATE TABLE IF NOT EXISTS `rbac_role` (
`role_id` int(11) unsigned NOT NULL,
  `parent_role_id` int(11) unsigned DEFAULT NULL,
  `role_name` varchar(32) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rbac_role`
--

INSERT INTO `rbac_role` (`role_id`, `parent_role_id`, `role_name`, `create_date`, `update_date`) VALUES
(1, NULL, 'superadmin', '2013-11-30 07:48:08', '2013-11-30 07:48:08'),
(2, 1, 'admin', '2013-11-30 07:48:08', '2013-11-30 07:48:08'),
(3, 2, 'member', '2013-11-30 07:48:08', '2013-11-30 07:48:08'),
(4, 3, 'guest', '2013-11-30 07:48:08', '2013-11-30 07:48:08'),
(5, 4, 'anonymous', '2013-11-30 07:48:08', '2013-11-30 07:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `rbac_role_permission`
--

CREATE TABLE IF NOT EXISTS `rbac_role_permission` (
  `role_id` int(11) unsigned NOT NULL,
  `perm_id` int(11) unsigned NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ReportSubscription`
--

CREATE TABLE IF NOT EXISTS `ReportSubscription` (
`ReportSubscriptionID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Status` tinyint(1) DEFAULT '0',
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SellSidePartnerHourlyBids`
--

CREATE TABLE IF NOT EXISTS `SellSidePartnerHourlyBids` (
`SellSidePartnerHourlyBidsID` int(11) NOT NULL,
  `SellSidePartnerID` int(11) NOT NULL,
  `PublisherAdZoneID` int(11) NOT NULL,
  `MDYH` char(15) NOT NULL,
  `BidsWonCounter` bigint(20) NOT NULL,
  `BidsLostCounter` bigint(20) NOT NULL,
  `BidsErrorCounter` bigint(20) NOT NULL,
  `SpendTotalGross` float NOT NULL,
  `SpendTotalNet` float NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `sellSidePartnerHourlyBidsPerTime`
--
CREATE TABLE IF NOT EXISTS `sellSidePartnerHourlyBidsPerTime` (
`SellSidePartnerID` int(11)
,`MDYH` char(15)
,`BidsWonCounter` bigint(20)
,`BidsLostCounter` bigint(20)
,`BidsErrorCounter` bigint(20)
,`SpendTotalNet` float
,`AverageBidNet` double(24,7)
,`AverageBidGross` double(24,7)
,`DateCreated` timestamp
,`DateUpdated` timestamp
,`AdName` varchar(100)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `userImpressionsSpend`
--
CREATE TABLE IF NOT EXISTS `userImpressionsSpend` (
`TotalSpendGross` double(24,7)
,`TotalSpendNet` double(24,7)
,`Name` char(100)
,`user_login` varchar(50)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `userImpressionsSpendAdmin`
--
CREATE TABLE IF NOT EXISTS `userImpressionsSpendAdmin` (
`BuySidePartnerID` char(100)
,`TotalSpendGross` double(24,7)
,`TotalSpendNet` double(24,7)
,`Name` char(100)
,`user_login` varchar(50)
);
-- --------------------------------------------------------

--
-- Table structure for table `UserMarkupDemand`
--

CREATE TABLE IF NOT EXISTS `UserMarkupDemand` (
  `UserID` int(11) NOT NULL,
  `MarkupRate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure for view `auth_userslogin`
--
DROP TABLE IF EXISTS `auth_userslogin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `auth_userslogin` AS select `auth_Users`.`user_id` AS `user_id`,`auth_Users`.`user_login` AS `user_login`,`auth_Users`.`user_email` AS `user_email`,`auth_Users`.`user_password` AS `user_password`,`auth_Users`.`user_password_salt` AS `user_password_salt`,`auth_Users`.`user_2factor_secret` AS `user_2factor_secret`,`auth_Users`.`user_fullname` AS `user_fullname`,`auth_Users`.`user_description` AS `user_description`,`auth_Users`.`user_enabled` AS `user_enabled`,`auth_Users`.`user_verified` AS `user_verified`,`auth_Users`.`user_agreement_accepted` AS `user_agreement_accepted`,`auth_Users`.`DemandCustomerInfoID` AS `DemandCustomerInfoID`,`auth_Users`.`PublisherInfoID` AS `PublisherInfoID`,`auth_Users`.`create_date` AS `create_date`,`auth_Users`.`update_date` AS `update_date`,`auth_Users`.`user_permission_cache` AS `user_permission_cache`,`auth_Users`.`user_role` AS `user_role`,`rbac_role`.`role_name` AS `user_role_name` from (`auth_Users` join `rbac_role` on((`auth_Users`.`user_role` = `rbac_role`.`role_id`))) where ((`auth_Users`.`user_enabled` > 0) and (`auth_Users`.`user_verified` > 0) and (`auth_Users`.`user_agreement_accepted` > 0));

-- --------------------------------------------------------

--
-- Structure for view `auth_usersview`
--
DROP TABLE IF EXISTS `auth_usersview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `auth_usersview` AS select `auth_Users`.`user_id` AS `user_id`,`auth_Users`.`user_login` AS `user_login`,`auth_Users`.`user_email` AS `user_email`,`auth_Users`.`user_password` AS `user_password`,`auth_Users`.`user_password_salt` AS `user_password_salt`,`auth_Users`.`user_2factor_secret` AS `user_2factor_secret`,`auth_Users`.`user_fullname` AS `user_fullname`,`auth_Users`.`user_description` AS `user_description`,`auth_Users`.`user_enabled` AS `user_enabled`,`auth_Users`.`user_verified` AS `user_verified`,`auth_Users`.`DemandCustomerInfoID` AS `DemandCustomerInfoID`,`auth_Users`.`PublisherInfoID` AS `PublisherInfoID`,`auth_Users`.`create_date` AS `create_date`,`auth_Users`.`update_date` AS `update_date`,`auth_Users`.`user_permission_cache` AS `user_permission_cache`,`auth_Users`.`user_role` AS `user_role`,`rbac_role`.`role_name` AS `user_role_name` from (`auth_Users` join `rbac_role` on((`auth_Users`.`user_role` = `rbac_role`.`role_id`)));

-- --------------------------------------------------------

--
-- Structure for view `BidTotalsRollup`
--
DROP TABLE IF EXISTS `BidTotalsRollup`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `BidTotalsRollup` AS select `BuySideHourlyBidsCounter`.`AdCampaignBannerID` AS `AdCampaignBannerID`,sum(`BuySideHourlyBidsCounter`.`BidsCounter`) AS `TotalBids` from `BuySideHourlyBidsCounter` group by `BuySideHourlyBidsCounter`.`AdCampaignBannerID`;

-- --------------------------------------------------------

--
-- Structure for view `buySideHourlyBidsAvarage`
--
DROP TABLE IF EXISTS `buySideHourlyBidsAvarage`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `buySideHourlyBidsAvarage` AS select avg(`BuySideHourlyBidsCounter`.`BidsCounter`) AS `avg_bids`,sum(`BuySideHourlyBidsCounter`.`BidsCounter`) AS `total_bids`,`AdCampaignBanner`.`Name` AS `banner_name`,`AdCampaign`.`Name` AS `Name`,`auth_Users`.`user_login` AS `user_login` from (((`BuySideHourlyBidsCounter` join `AdCampaignBanner` on((`BuySideHourlyBidsCounter`.`AdCampaignBannerID` = `AdCampaignBanner`.`AdCampaignBannerID`))) join `AdCampaign` on((`AdCampaignBanner`.`AdCampaignID` = `AdCampaign`.`AdCampaignID`))) join `auth_Users` on((`auth_Users`.`user_id` = `AdCampaignBanner`.`UserID`))) group by `BuySideHourlyBidsCounter`.`AdCampaignBannerID` order by `BuySideHourlyBidsCounter`.`AdCampaignBannerID`;

-- --------------------------------------------------------

--
-- Structure for view `buySideHourlyBidsAvarageAdmin`
--
DROP TABLE IF EXISTS `buySideHourlyBidsAvarageAdmin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `buySideHourlyBidsAvarageAdmin` AS select `BuySideHourlyBidsCounter`.`BuySidePartnerID` AS `BuySidePartnerID`,avg(`BuySideHourlyBidsCounter`.`BidsCounter`) AS `avg_bids`,sum(`BuySideHourlyBidsCounter`.`BidsCounter`) AS `total_bids`,`AdCampaignBanner`.`Name` AS `banner_name`,`AdCampaign`.`Name` AS `Name`,`auth_Users`.`user_login` AS `user_login` from (((`BuySideHourlyBidsCounter` join `AdCampaignBanner` on((`BuySideHourlyBidsCounter`.`AdCampaignBannerID` = `AdCampaignBanner`.`AdCampaignBannerID`))) join `AdCampaign` on((`AdCampaignBanner`.`AdCampaignID` = `AdCampaign`.`AdCampaignID`))) join `auth_Users` on((`auth_Users`.`user_id` = `AdCampaignBanner`.`UserID`))) group by `BuySideHourlyBidsCounter`.`AdCampaignBannerID`,`BuySideHourlyBidsCounter`.`BuySidePartnerID` order by `BuySideHourlyBidsCounter`.`AdCampaignBannerID`;

-- --------------------------------------------------------

--
-- Structure for view `buySideHourlyBidsPerTime`
--
DROP TABLE IF EXISTS `buySideHourlyBidsPerTime`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `buySideHourlyBidsPerTime` AS select `BuySideHourlyBidsCounter`.`BuySidePartnerID` AS `BuySidePartnerID`,`BuySideHourlyBidsCounter`.`MDYH` AS `MDYH`,`BuySideHourlyBidsCounter`.`BidsCounter` AS `BidsCounter`,`BuySideHourlyBidsCounter`.`DateCreated` AS `DateCreated`,`BuySideHourlyBidsCounter`.`DateUpdated` AS `DateUpdated`,`AdCampaign`.`Name` AS `Name` from ((`BuySideHourlyBidsCounter` join `AdCampaignBanner` on((`BuySideHourlyBidsCounter`.`AdCampaignBannerID` = `AdCampaignBanner`.`AdCampaignBannerID`))) join `AdCampaign` on((`AdCampaignBanner`.`AdCampaignID` = `AdCampaign`.`AdCampaignID`))) order by `BuySideHourlyBidsCounter`.`AdCampaignBannerID`;

-- --------------------------------------------------------

--
-- Structure for view `DemandImpressionsAndSpendHourly`
--
DROP TABLE IF EXISTS `DemandImpressionsAndSpendHourly`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `DemandImpressionsAndSpendHourly` AS select `diashp`.`MDYH` AS `MDYH`,`diashp`.`AdCampaignBannerID` AS `AdCampaignBannerID`,`diashp`.`DemandCustomerName` AS `DemandCustomerName`,`diashp`.`DemandCustomerInfoID` AS `DemandCustomerInfoID`,`diashp`.`BannerName` AS `BannerName`,group_concat(distinct `bshibt`.`PublisherTLD` separator ', ') AS `PublisherTLDs`,`diashp`.`Impressions` AS `Impressions`,`diashp`.`Cost` AS `Cost`,`diashp`.`GrossCost` AS `GrossCost`,`diashp`.`CPM` AS `CPM`,`diashp`.`GrossCPM` AS `GrossCPM`,`diashp`.`DateCreated` AS `DateCreated` from (`DemandImpressionsAndSpendHourlyPre` `diashp` left join `BuySideHourlyImpressionsByTLD` `bshibt` on(((`diashp`.`AdCampaignBannerID` = `bshibt`.`AdCampaignBannerID`) and (`diashp`.`MDYH` = `bshibt`.`MDYH`)))) group by `diashp`.`AdCampaignBannerID`,`diashp`.`MDYH`;

-- --------------------------------------------------------

--
-- Structure for view `DemandImpressionsAndSpendHourlyPre`
--
DROP TABLE IF EXISTS `DemandImpressionsAndSpendHourlyPre`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `DemandImpressionsAndSpendHourlyPre` AS select `bshiccs`.`MDYH` AS `MDYH`,`bshiccs`.`AdCampaignBannerID` AS `AdCampaignBannerID`,`dci`.`Name` AS `DemandCustomerName`,`dci`.`DemandCustomerInfoID` AS `DemandCustomerInfoID`,`acb`.`Name` AS `BannerName`,sum(`bshiccs`.`ImpressionsCounter`) AS `Impressions`,round(sum(`bshiccs`.`CurrentSpendNet`),7) AS `Cost`,round(sum(`bshiccs`.`CurrentSpendGross`),7) AS `GrossCost`,round(((sum(`bshiccs`.`CurrentSpendNet`) / sum(`bshiccs`.`ImpressionsCounter`)) * 1000),7) AS `CPM`,round(((sum(`bshiccs`.`CurrentSpendGross`) / sum(`bshiccs`.`ImpressionsCounter`)) * 1000),7) AS `GrossCPM`,`bshiccs`.`DateCreated` AS `DateCreated` from (((`BuySideHourlyImpressionsCounterCurrentSpend` `bshiccs` join `AdCampaignBanner` `acb` on((`bshiccs`.`AdCampaignBannerID` = `acb`.`AdCampaignBannerID`))) join `auth_Users` `au` on((`au`.`user_id` = `acb`.`UserID`))) join `DemandCustomerInfo` `dci` on((`au`.`DemandCustomerInfoID` = `dci`.`DemandCustomerInfoID`))) group by `bshiccs`.`AdCampaignBannerID`,`bshiccs`.`MDYH`;

-- --------------------------------------------------------

--
-- Structure for view `ImpressionAndSpendTotalsRollup`
--
DROP TABLE IF EXISTS `ImpressionAndSpendTotalsRollup`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ImpressionAndSpendTotalsRollup` AS select `BuySideHourlyImpressionsCounterCurrentSpend`.`AdCampaignBannerID` AS `AdCampaignBannerID`,sum(`BuySideHourlyImpressionsCounterCurrentSpend`.`CurrentSpendGross`) AS `TotalSpendGross`,sum(`BuySideHourlyImpressionsCounterCurrentSpend`.`CurrentSpendNet`) AS `TotalSpendNet`,sum(`BuySideHourlyImpressionsCounterCurrentSpend`.`ImpressionsCounter`) AS `TotalImpressions` from `BuySideHourlyImpressionsCounterCurrentSpend` group by `BuySideHourlyImpressionsCounterCurrentSpend`.`AdCampaignBannerID`;

-- --------------------------------------------------------

--
-- Structure for view `impressionsCurrentSpendPerTime`
--
DROP TABLE IF EXISTS `impressionsCurrentSpendPerTime`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `impressionsCurrentSpendPerTime` AS select `BuySideHourlyImpressionsCounterCurrentSpend`.`BuySidePartnerID` AS `BuySidePartnerID`,`BuySideHourlyImpressionsCounterCurrentSpend`.`MDYH` AS `MDYH`,`BuySideHourlyImpressionsCounterCurrentSpend`.`ImpressionsCounter` AS `ImpressionsCounter`,`BuySideHourlyImpressionsCounterCurrentSpend`.`CurrentSpendGross` AS `CurrentSpendGross`,`BuySideHourlyImpressionsCounterCurrentSpend`.`CurrentSpendNet` AS `CurrentSpendNet`,round((`BuySideHourlyImpressionsCounterCurrentSpend`.`CurrentSpendNet` / `BuySideHourlyImpressionsCounterCurrentSpend`.`ImpressionsCounter`),7) AS `AverageBidCurrentSpendNet`,round((`BuySideHourlyImpressionsCounterCurrentSpend`.`CurrentSpendGross` / `BuySideHourlyImpressionsCounterCurrentSpend`.`ImpressionsCounter`),7) AS `AverageBidCurrentSpendGross`,`BuySideHourlyImpressionsCounterCurrentSpend`.`DateCreated` AS `DateCreated`,`BuySideHourlyImpressionsCounterCurrentSpend`.`DateUpdated` AS `DateUpdated`,`AdCampaign`.`Name` AS `Name` from ((`BuySideHourlyImpressionsCounterCurrentSpend` join `AdCampaignBanner` on((`BuySideHourlyImpressionsCounterCurrentSpend`.`AdCampaignBannerID` = `AdCampaignBanner`.`AdCampaignBannerID`))) join `AdCampaign` on((`AdCampaignBanner`.`AdCampaignID` = `AdCampaign`.`AdCampaignID`))) order by `BuySideHourlyImpressionsCounterCurrentSpend`.`BuySidePartnerID`;

-- --------------------------------------------------------

--
-- Structure for view `PublisherImpressionsAndSpendHourly`
--
DROP TABLE IF EXISTS `PublisherImpressionsAndSpendHourly`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `PublisherImpressionsAndSpendHourly` AS select `phb`.`MDYH` AS `MDYH`,`phb`.`PublisherAdZoneID` AS `PublisherAdZoneID`,`pi`.`Name` AS `PublisherName`,`pad`.`AdOwnerID` AS `PublisherInfoID`,`pad`.`AdName` AS `AdName`,`phb`.`AuctionCounter` AS `Requests`,`phb`.`BidsWonCounter` AS `Impressions`,round(((`phb`.`SpendTotalNet` / `phb`.`BidsWonCounter`) * 1000),7) AS `eCPM`,round(((`phb`.`SpendTotalGross` / `phb`.`BidsWonCounter`) * 1000),7) AS `GrossECPM`,concat(round(((`phb`.`BidsWonCounter` / `phb`.`AuctionCounter`) * 100),2),'%') AS `FillRate`,round(`phb`.`SpendTotalNet`,7) AS `Revenue`,round(`phb`.`SpendTotalGross`,7) AS `GrossRevenue`,`phb`.`DateCreated` AS `DateCreated` from ((`PublisherHourlyBids` `phb` join `PublisherAdZone` `pad` on((`phb`.`PublisherAdZoneID` = `pad`.`PublisherAdZoneID`))) join `PublisherInfo` `pi` on((`pad`.`AdOwnerID` = `pi`.`PublisherInfoID`)));

-- --------------------------------------------------------

--
-- Structure for view `PublisherImpressionsAndSpendHourlyTotals`
--
DROP TABLE IF EXISTS `PublisherImpressionsAndSpendHourlyTotals`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `PublisherImpressionsAndSpendHourlyTotals` AS select `PublisherImpressionsAndSpendHourly`.`PublisherAdZoneID` AS `PublisherAdZoneID`,`PublisherImpressionsAndSpendHourly`.`PublisherName` AS `PublisherName`,`PublisherImpressionsAndSpendHourly`.`PublisherInfoID` AS `PublisherInfoID`,sum(`PublisherImpressionsAndSpendHourly`.`Requests`) AS `TotalRequests`,sum(`PublisherImpressionsAndSpendHourly`.`Impressions`) AS `TotalImpressions`,sum(`PublisherImpressionsAndSpendHourly`.`Revenue`) AS `TotalRevenue` from `PublisherImpressionsAndSpendHourly` group by `PublisherImpressionsAndSpendHourly`.`PublisherAdZoneID` order by `PublisherImpressionsAndSpendHourly`.`PublisherAdZoneID`;

-- --------------------------------------------------------

--
-- Structure for view `sellSidePartnerHourlyBidsPerTime`
--
DROP TABLE IF EXISTS `sellSidePartnerHourlyBidsPerTime`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sellSidePartnerHourlyBidsPerTime` AS select `SellSidePartnerHourlyBids`.`SellSidePartnerID` AS `SellSidePartnerID`,`SellSidePartnerHourlyBids`.`MDYH` AS `MDYH`,`SellSidePartnerHourlyBids`.`BidsWonCounter` AS `BidsWonCounter`,`SellSidePartnerHourlyBids`.`BidsLostCounter` AS `BidsLostCounter`,`SellSidePartnerHourlyBids`.`BidsErrorCounter` AS `BidsErrorCounter`,`SellSidePartnerHourlyBids`.`SpendTotalNet` AS `SpendTotalNet`,round((`SellSidePartnerHourlyBids`.`SpendTotalNet` / `SellSidePartnerHourlyBids`.`BidsWonCounter`),7) AS `AverageBidNet`,round((`SellSidePartnerHourlyBids`.`SpendTotalGross` / `SellSidePartnerHourlyBids`.`BidsWonCounter`),7) AS `AverageBidGross`,`SellSidePartnerHourlyBids`.`DateCreated` AS `DateCreated`,`SellSidePartnerHourlyBids`.`DateUpdated` AS `DateUpdated`,`PublisherAdZone`.`AdName` AS `AdName` from (`SellSidePartnerHourlyBids` join `PublisherAdZone` on((`SellSidePartnerHourlyBids`.`PublisherAdZoneID` = `PublisherAdZone`.`PublisherAdZoneID`))) order by `SellSidePartnerHourlyBids`.`SellSidePartnerID`;

-- --------------------------------------------------------

--
-- Structure for view `userImpressionsSpend`
--
DROP TABLE IF EXISTS `userImpressionsSpend`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `userImpressionsSpend` AS select round(sum(`BuySideHourlyImpressionsCounterCurrentSpend`.`CurrentSpendGross`),7) AS `TotalSpendGross`,round(sum(`BuySideHourlyImpressionsCounterCurrentSpend`.`CurrentSpendNet`),7) AS `TotalSpendNet`,`AdCampaign`.`Name` AS `Name`,`auth_Users`.`user_login` AS `user_login` from (((`BuySideHourlyImpressionsCounterCurrentSpend` join `AdCampaignBanner` on((`BuySideHourlyImpressionsCounterCurrentSpend`.`AdCampaignBannerID` = `AdCampaignBanner`.`AdCampaignBannerID`))) join `AdCampaign` on((`AdCampaignBanner`.`AdCampaignID` = `AdCampaign`.`AdCampaignID`))) join `auth_Users` on((`auth_Users`.`user_id` = `AdCampaignBanner`.`UserID`))) group by `BuySideHourlyImpressionsCounterCurrentSpend`.`AdCampaignBannerID` order by `auth_Users`.`user_login`;

-- --------------------------------------------------------

--
-- Structure for view `userImpressionsSpendAdmin`
--
DROP TABLE IF EXISTS `userImpressionsSpendAdmin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `userImpressionsSpendAdmin` AS select `BuySideHourlyImpressionsCounterCurrentSpend`.`BuySidePartnerID` AS `BuySidePartnerID`,round(sum(`BuySideHourlyImpressionsCounterCurrentSpend`.`CurrentSpendGross`),7) AS `TotalSpendGross`,round(sum(`BuySideHourlyImpressionsCounterCurrentSpend`.`CurrentSpendNet`),7) AS `TotalSpendNet`,`AdCampaign`.`Name` AS `Name`,`auth_Users`.`user_login` AS `user_login` from (((`BuySideHourlyImpressionsCounterCurrentSpend` join `AdCampaignBanner` on((`BuySideHourlyImpressionsCounterCurrentSpend`.`AdCampaignBannerID` = `AdCampaignBanner`.`AdCampaignBannerID`))) join `AdCampaign` on((`AdCampaignBanner`.`AdCampaignID` = `AdCampaign`.`AdCampaignID`))) join `auth_Users` on((`auth_Users`.`user_id` = `AdCampaignBanner`.`UserID`))) group by `BuySideHourlyImpressionsCounterCurrentSpend`.`BuySidePartnerID`,`BuySideHourlyImpressionsCounterCurrentSpend`.`AdCampaignBannerID` order by `auth_Users`.`user_login`;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AdCampaign`
--
ALTER TABLE `AdCampaign`
 ADD PRIMARY KEY (`AdCampaignID`);

--
-- Indexes for table `AdCampaignBanner`
--
ALTER TABLE `AdCampaignBanner`
 ADD PRIMARY KEY (`AdCampaignBannerID`);

--
-- Indexes for table `AdCampaignBannerDomainExclusion`
--
ALTER TABLE `AdCampaignBannerDomainExclusion`
 ADD PRIMARY KEY (`AdCampaignBannerDomainExclusionID`);

--
-- Indexes for table `AdCampaignBannerDomainExclusionPreview`
--
ALTER TABLE `AdCampaignBannerDomainExclusionPreview`
 ADD PRIMARY KEY (`AdCampaignBannerDomainExclusionPreviewID`);

--
-- Indexes for table `AdCampaignBannerDomainExclusiveInclusion`
--
ALTER TABLE `AdCampaignBannerDomainExclusiveInclusion`
 ADD PRIMARY KEY (`AdCampaignBannerDomainExclusiveInclusionID`);

--
-- Indexes for table `AdCampaignBannerDomainExclusiveInclusionPreview`
--
ALTER TABLE `AdCampaignBannerDomainExclusiveInclusionPreview`
 ADD PRIMARY KEY (`AdCampaignBannerDomainExclusiveInclusionPreviewID`);

--
-- Indexes for table `AdCampaignBannerPreview`
--
ALTER TABLE `AdCampaignBannerPreview`
 ADD PRIMARY KEY (`AdCampaignBannerPreviewID`);

--
-- Indexes for table `AdCampaignBannerRestrictions`
--
ALTER TABLE `AdCampaignBannerRestrictions`
 ADD PRIMARY KEY (`AdCampaignBannerRestrictionsID`), ADD UNIQUE KEY `RTBBannerID` (`AdCampaignBannerID`);

--
-- Indexes for table `AdCampaignBannerRestrictionsPreview`
--
ALTER TABLE `AdCampaignBannerRestrictionsPreview`
 ADD PRIMARY KEY (`AdCampaignBannerRestrictionsPreviewID`), ADD UNIQUE KEY `RTBBannerPreviewID` (`AdCampaignBannerPreviewID`);

--
-- Indexes for table `AdCampaignPreview`
--
ALTER TABLE `AdCampaignPreview`
 ADD PRIMARY KEY (`AdCampaignPreviewID`);

--
-- Indexes for table `AdCampaignType`
--
ALTER TABLE `AdCampaignType`
 ADD PRIMARY KEY (`AdCampaignTypeID`), ADD UNIQUE KEY `AdCampaignType_UNIQUE` (`AdCampaignTypeID`);

--
-- Indexes for table `AdCampaignVideoRestrictions`
--
ALTER TABLE `AdCampaignVideoRestrictions`
 ADD PRIMARY KEY (`AdCampaignVideoRestrictionsID`), ADD UNIQUE KEY `RTBVideoID` (`AdCampaignBannerID`);

--
-- Indexes for table `AdCampaignVideoRestrictionsPreview`
--
ALTER TABLE `AdCampaignVideoRestrictionsPreview`
 ADD PRIMARY KEY (`AdCampaignVideoRestrictionsPreviewID`), ADD UNIQUE KEY `RTBVideoPreviewID` (`AdCampaignBannerPreviewID`);

--
-- Indexes for table `AdCampainMarkup`
--
ALTER TABLE `AdCampainMarkup`
 ADD PRIMARY KEY (`AdCampaignID`), ADD UNIQUE KEY `AdCampaignID` (`AdCampaignID`);

--
-- Indexes for table `AdTemplates`
--
ALTER TABLE `AdTemplates`
 ADD PRIMARY KEY (`AdTemplateID`), ADD UNIQUE KEY `TemplateName_UNIQUE` (`TemplateName`);

--
-- Indexes for table `AdType`
--
ALTER TABLE `AdType`
 ADD PRIMARY KEY (`AdTypeID`);

--
-- Indexes for table `auth_Users`
--
ALTER TABLE `auth_Users`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `user_login_UNIQUE` (`user_login`), ADD UNIQUE KEY `user_email_UNIQUE` (`user_email`) USING BTREE, ADD KEY `user_name` (`user_fullname`), ADD KEY `user_status` (`user_enabled`), ADD KEY `auth_Users_role_fk1` (`user_role`);

--
-- Indexes for table `BuySideDailyImpressionsByTLD`
--
ALTER TABLE `BuySideDailyImpressionsByTLD`
 ADD PRIMARY KEY (`DailyImpressionsByTLDID`), ADD UNIQUE KEY `RTBBannerID_IDX` (`AdCampaignBannerID`,`MDY`,`PublisherTLD`);

--
-- Indexes for table `BuySideHourlyBidsCounter`
--
ALTER TABLE `BuySideHourlyBidsCounter`
 ADD PRIMARY KEY (`BuySideHourlyBidsCounterID`), ADD UNIQUE KEY `BuySideHourlyBid_IDX` (`BuySidePartnerID`,`AdCampaignBannerID`,`MDYH`) USING BTREE;

--
-- Indexes for table `BuySideHourlyImpressionsByTLD`
--
ALTER TABLE `BuySideHourlyImpressionsByTLD`
 ADD PRIMARY KEY (`BuySideHourlyImpressionsByTLDID`), ADD UNIQUE KEY `AnyBannerID_IDX` (`AdCampaignBannerID`,`MDYH`,`PublisherTLD`);

--
-- Indexes for table `BuySideHourlyImpressionsCounterCurrentSpend`
--
ALTER TABLE `BuySideHourlyImpressionsCounterCurrentSpend`
 ADD PRIMARY KEY (`BuySideHourlyImpressionsCounterCurrentSpendID`), ADD UNIQUE KEY `BuySideHourlyIC_IDX` (`BuySidePartnerID`,`AdCampaignBannerID`,`MDYH`) USING BTREE;

--
-- Indexes for table `ContractPublisherZoneHourlyImpressions`
--
ALTER TABLE `ContractPublisherZoneHourlyImpressions`
 ADD PRIMARY KEY (`ContractPublisherZoneHourlyImpressionsID`), ADD UNIQUE KEY `ContractPublisherZoneHourlyImpression_IDX` (`ContractPublisherZoneHourlyImpressionsID`,`AdCampaignBannerID`,`PublisherAdZoneID`,`MDYH`) USING BTREE, ADD UNIQUE KEY `ContractPublisherZoneHourlyImpressions_IDX` (`AdCampaignBannerID`,`PublisherAdZoneID`,`MDYH`);

--
-- Indexes for table `DemandCustomerInfo`
--
ALTER TABLE `DemandCustomerInfo`
 ADD PRIMARY KEY (`DemandCustomerInfoID`);

--
-- Indexes for table `IndustryCategories`
--
ALTER TABLE `IndustryCategories`
 ADD PRIMARY KEY (`IndustryID`), ADD KEY `FK_ParentIndustry_idx` (`ParentIndustryID`), ADD KEY `IndustryName` (`IndustryName`);

--
-- Indexes for table `LinkedBannerToAdZone`
--
ALTER TABLE `LinkedBannerToAdZone`
 ADD PRIMARY KEY (`LinkedBannerToAdZoneID`), ADD UNIQUE KEY `LinkedBannerToAdZone_UNIQUE` (`LinkedBannerToAdZoneID`), ADD KEY `FK_Publisher_Zone_ID` (`AdCampaignBannerID`), ADD KEY `FK_AdCampaign_Banner_ID` (`PublisherAdZoneID`);

--
-- Indexes for table `LinkedBannerToAdZonePreview`
--
ALTER TABLE `LinkedBannerToAdZonePreview`
 ADD PRIMARY KEY (`LinkedBannerToAdZonePreviewID`), ADD UNIQUE KEY `LinkedBannerToAdZone_UNIQUE` (`LinkedBannerToAdZonePreviewID`);

--
-- Indexes for table `Maintenance`
--
ALTER TABLE `Maintenance`
 ADD PRIMARY KEY (`TagName`);

--
-- Indexes for table `PublisherAdIndustry`
--
ALTER TABLE `PublisherAdIndustry`
 ADD PRIMARY KEY (`PublisherAdIndustryID`,`IndustryID`), ADD KEY `FK_Types_idx` (`IndustryID`);

--
-- Indexes for table `PublisherAdZone`
--
ALTER TABLE `PublisherAdZone`
 ADD PRIMARY KEY (`PublisherAdZoneID`), ADD UNIQUE KEY `UQ_WebAdName` (`PublisherWebsiteID`,`AdName`), ADD KEY `FK_OwnerUser_idx` (`AdOwnerID`), ADD KEY `FK_WebAdTemplates_idx` (`AdTemplateID`);

--
-- Indexes for table `PublisherAdZoneType`
--
ALTER TABLE `PublisherAdZoneType`
 ADD PRIMARY KEY (`PublisherAdZoneTypeID`), ADD UNIQUE KEY `PublisherAdZoneType_UNIQUE` (`PublisherAdZoneTypeID`);

--
-- Indexes for table `PublisherAdZoneVideo`
--
ALTER TABLE `PublisherAdZoneVideo`
 ADD PRIMARY KEY (`PublisherAdZoneVideoID`), ADD UNIQUE KEY `UQ_PublisherAdZone` (`PublisherAdZoneID`);

--
-- Indexes for table `PublisherHourlyBids`
--
ALTER TABLE `PublisherHourlyBids`
 ADD PRIMARY KEY (`PublisherHourlyBidsID`), ADD UNIQUE KEY `PublisherHourlyBids_IDX` (`PublisherAdZoneID`,`MDYH`);

--
-- Indexes for table `PublisherImpressionsNetworkLoss`
--
ALTER TABLE `PublisherImpressionsNetworkLoss`
 ADD PRIMARY KEY (`PublisherInfoID`), ADD UNIQUE KEY `PublisherInfoID` (`PublisherInfoID`);

--
-- Indexes for table `PublisherInfo`
--
ALTER TABLE `PublisherInfo`
 ADD PRIMARY KEY (`PublisherInfoID`);

--
-- Indexes for table `PublisherMarkup`
--
ALTER TABLE `PublisherMarkup`
 ADD PRIMARY KEY (`PublisherInfoID`), ADD UNIQUE KEY `PublisherInfoID` (`PublisherInfoID`);

--
-- Indexes for table `PublisherWebsite`
--
ALTER TABLE `PublisherWebsite`
 ADD PRIMARY KEY (`PublisherWebsiteID`), ADD UNIQUE KEY `WebDomain_UNIQUE` (`WebDomain`,`DomainOwnerID`), ADD KEY `FK_Owner_User_ID` (`DomainOwnerID`);

--
-- Indexes for table `PublisherWebsiteImpressionsNetworkLoss`
--
ALTER TABLE `PublisherWebsiteImpressionsNetworkLoss`
 ADD PRIMARY KEY (`PublisherWebsiteID`), ADD UNIQUE KEY `PublisherWebsiteID` (`PublisherWebsiteID`);

--
-- Indexes for table `PublisherWebsiteMarkup`
--
ALTER TABLE `PublisherWebsiteMarkup`
 ADD PRIMARY KEY (`PublisherWebsiteID`), ADD UNIQUE KEY `PublisherWebsiteID` (`PublisherWebsiteID`);

--
-- Indexes for table `rbac_permission`
--
ALTER TABLE `rbac_permission`
 ADD PRIMARY KEY (`perm_id`);

--
-- Indexes for table `rbac_role`
--
ALTER TABLE `rbac_role`
 ADD PRIMARY KEY (`role_id`), ADD KEY `parent_role_id` (`parent_role_id`);

--
-- Indexes for table `rbac_role_permission`
--
ALTER TABLE `rbac_role_permission`
 ADD PRIMARY KEY (`role_id`,`perm_id`), ADD KEY `perm_id` (`perm_id`), ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `ReportSubscription`
--
ALTER TABLE `ReportSubscription`
 ADD PRIMARY KEY (`ReportSubscriptionID`);

--
-- Indexes for table `SellSidePartnerHourlyBids`
--
ALTER TABLE `SellSidePartnerHourlyBids`
 ADD PRIMARY KEY (`SellSidePartnerHourlyBidsID`), ADD UNIQUE KEY `SellSidePartnerToZoneBid_IDX` (`SellSidePartnerHourlyBidsID`,`SellSidePartnerID`,`PublisherAdZoneID`,`MDYH`) USING BTREE, ADD UNIQUE KEY `SellSidePartnerHourlyBids_IDX` (`SellSidePartnerID`,`PublisherAdZoneID`,`MDYH`);

--
-- Indexes for table `UserMarkupDemand`
--
ALTER TABLE `UserMarkupDemand`
 ADD PRIMARY KEY (`UserID`), ADD UNIQUE KEY `UserID` (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AdCampaign`
--
ALTER TABLE `AdCampaign`
MODIFY `AdCampaignID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `AdCampaignBanner`
--
ALTER TABLE `AdCampaignBanner`
MODIFY `AdCampaignBannerID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `AdCampaignBannerDomainExclusion`
--
ALTER TABLE `AdCampaignBannerDomainExclusion`
MODIFY `AdCampaignBannerDomainExclusionID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AdCampaignBannerDomainExclusionPreview`
--
ALTER TABLE `AdCampaignBannerDomainExclusionPreview`
MODIFY `AdCampaignBannerDomainExclusionPreviewID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AdCampaignBannerDomainExclusiveInclusion`
--
ALTER TABLE `AdCampaignBannerDomainExclusiveInclusion`
MODIFY `AdCampaignBannerDomainExclusiveInclusionID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AdCampaignBannerDomainExclusiveInclusionPreview`
--
ALTER TABLE `AdCampaignBannerDomainExclusiveInclusionPreview`
MODIFY `AdCampaignBannerDomainExclusiveInclusionPreviewID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AdCampaignBannerPreview`
--
ALTER TABLE `AdCampaignBannerPreview`
MODIFY `AdCampaignBannerPreviewID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `AdCampaignBannerRestrictions`
--
ALTER TABLE `AdCampaignBannerRestrictions`
MODIFY `AdCampaignBannerRestrictionsID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AdCampaignBannerRestrictionsPreview`
--
ALTER TABLE `AdCampaignBannerRestrictionsPreview`
MODIFY `AdCampaignBannerRestrictionsPreviewID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AdCampaignPreview`
--
ALTER TABLE `AdCampaignPreview`
MODIFY `AdCampaignPreviewID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `AdCampaignVideoRestrictions`
--
ALTER TABLE `AdCampaignVideoRestrictions`
MODIFY `AdCampaignVideoRestrictionsID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AdCampaignVideoRestrictionsPreview`
--
ALTER TABLE `AdCampaignVideoRestrictionsPreview`
MODIFY `AdCampaignVideoRestrictionsPreviewID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AdTemplates`
--
ALTER TABLE `AdTemplates`
MODIFY `AdTemplateID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `AdType`
--
ALTER TABLE `AdType`
MODIFY `AdTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `auth_Users`
--
ALTER TABLE `auth_Users`
MODIFY `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `BuySideDailyImpressionsByTLD`
--
ALTER TABLE `BuySideDailyImpressionsByTLD`
MODIFY `DailyImpressionsByTLDID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BuySideHourlyBidsCounter`
--
ALTER TABLE `BuySideHourlyBidsCounter`
MODIFY `BuySideHourlyBidsCounterID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BuySideHourlyImpressionsByTLD`
--
ALTER TABLE `BuySideHourlyImpressionsByTLD`
MODIFY `BuySideHourlyImpressionsByTLDID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BuySideHourlyImpressionsCounterCurrentSpend`
--
ALTER TABLE `BuySideHourlyImpressionsCounterCurrentSpend`
MODIFY `BuySideHourlyImpressionsCounterCurrentSpendID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ContractPublisherZoneHourlyImpressions`
--
ALTER TABLE `ContractPublisherZoneHourlyImpressions`
MODIFY `ContractPublisherZoneHourlyImpressionsID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `DemandCustomerInfo`
--
ALTER TABLE `DemandCustomerInfo`
MODIFY `DemandCustomerInfoID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `IndustryCategories`
--
ALTER TABLE `IndustryCategories`
MODIFY `IndustryID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `LinkedBannerToAdZone`
--
ALTER TABLE `LinkedBannerToAdZone`
MODIFY `LinkedBannerToAdZoneID` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `LinkedBannerToAdZonePreview`
--
ALTER TABLE `LinkedBannerToAdZonePreview`
MODIFY `LinkedBannerToAdZonePreviewID` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PublisherAdZone`
--
ALTER TABLE `PublisherAdZone`
MODIFY `PublisherAdZoneID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `PublisherAdZoneVideo`
--
ALTER TABLE `PublisherAdZoneVideo`
MODIFY `PublisherAdZoneVideoID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PublisherHourlyBids`
--
ALTER TABLE `PublisherHourlyBids`
MODIFY `PublisherHourlyBidsID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PublisherInfo`
--
ALTER TABLE `PublisherInfo`
MODIFY `PublisherInfoID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `PublisherWebsite`
--
ALTER TABLE `PublisherWebsite`
MODIFY `PublisherWebsiteID` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rbac_permission`
--
ALTER TABLE `rbac_permission`
MODIFY `perm_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rbac_role`
--
ALTER TABLE `rbac_role`
MODIFY `role_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ReportSubscription`
--
ALTER TABLE `ReportSubscription`
MODIFY `ReportSubscriptionID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SellSidePartnerHourlyBids`
--
ALTER TABLE `SellSidePartnerHourlyBids`
MODIFY `SellSidePartnerHourlyBidsID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_Users`
--
ALTER TABLE `auth_Users`
ADD CONSTRAINT `auth_Users_role_fk1` FOREIGN KEY (`user_role`) REFERENCES `rbac_role` (`role_id`) ON UPDATE CASCADE;

--
-- Constraints for table `IndustryCategories`
--
ALTER TABLE `IndustryCategories`
ADD CONSTRAINT `FK_ParentIndustry` FOREIGN KEY (`ParentIndustryID`) REFERENCES `IndustryCategories` (`IndustryID`) ON UPDATE CASCADE;

--
-- Constraints for table `rbac_role`
--
ALTER TABLE `rbac_role`
ADD CONSTRAINT `rbac_role_ibfk_1` FOREIGN KEY (`parent_role_id`) REFERENCES `rbac_role` (`role_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `rbac_role_permission`
--
ALTER TABLE `rbac_role_permission`
ADD CONSTRAINT `rbac_role_permission_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `rbac_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `rbac_role_permission_ibfk_2` FOREIGN KEY (`perm_id`) REFERENCES `rbac_permission` (`perm_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
