CREATE DATABASE  IF NOT EXISTS `bgate_demo` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bgate_demo`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: sv5.lvduit.com    Database: bgate_demo
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AdBannerDailyTracker`
--

DROP TABLE IF EXISTS `AdBannerDailyTracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdBannerDailyTracker` (
  `AdBannerDailyTrackerID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AdCampaignBannerID` int(11) DEFAULT NULL,
  `ClickCount` bigint(20) unsigned DEFAULT NULL,
  `ImpCount` bigint(20) unsigned DEFAULT NULL,
  `Outcome` float DEFAULT NULL,
  `NetOutcome` float DEFAULT '0',
  `DateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `DateUpdated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`AdBannerDailyTrackerID`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdBannerDailyTracker`
--

LOCK TABLES `AdBannerDailyTracker` WRITE;
/*!40000 ALTER TABLE `AdBannerDailyTracker` DISABLE KEYS */;
INSERT INTO `AdBannerDailyTracker` VALUES (1,9,6,0,0,0,'2015-04-23 19:31:16',NULL),(2,9,6,0,0,0,'2015-06-23 19:31:46',NULL),(3,9,6,0,0,0,'2015-06-23 19:35:38',NULL),(4,4,0,0,0,0,'2015-06-23 19:35:38',NULL),(5,9,6,0,0,0,'2015-06-23 19:36:45',NULL),(6,4,2,0,0,0,'2015-06-23 19:36:45',NULL),(7,9,6,0,0,0,'2015-06-23 19:44:33',NULL),(8,4,2,0,0,0,'2015-06-23 19:44:33',NULL),(9,16,0,0,0,0,'2015-06-26 08:26:15',NULL),(10,19,0,0,0,0,'2015-06-26 08:26:15',NULL),(11,8,1,0,0,0,'2015-06-26 08:26:15',NULL),(12,16,0,0,0,0,'2015-06-26 08:28:50',NULL),(13,19,0,0,0,0,'2015-06-26 08:28:50',NULL),(14,8,1,0,0,0,'2015-06-26 08:28:50',NULL),(15,16,0,0,0,0,'2015-06-26 08:31:14',NULL),(16,19,0,0,0,0,'2015-06-26 08:31:14',NULL),(17,8,1,0,0,0,'2015-06-26 08:31:14',NULL),(18,16,0,0,0,0,'2015-06-26 08:32:35',NULL),(19,19,0,0,0,0,'2015-06-26 08:32:35',NULL),(20,13,0,0,0,0,'2015-06-26 08:32:35',NULL),(21,15,0,0,0,0,'2015-06-26 08:32:35',NULL),(22,8,1,0,0,0,'2015-06-26 08:32:35',NULL),(23,16,0,0,0,0,'2015-06-26 08:33:33',NULL),(24,19,0,0,0,0,'2015-06-26 08:33:33',NULL),(25,13,0,0,0,0,'2015-06-26 08:33:33',NULL),(26,15,1,0,0,0,'2015-06-26 08:33:33',NULL),(27,8,1,0,0,0,'2015-06-26 08:33:33',NULL),(28,8,1,0,0,0,'2015-06-28 09:00:12',NULL),(29,8,0,0,0,0,'2015-06-29 09:00:11',NULL),(30,19,2,0,0,0,'2015-06-29 09:00:11',NULL),(31,16,9,0,0,0,'2015-06-28 17:00:00',NULL),(32,13,1,0,0,0,'2015-06-28 17:00:00',NULL),(33,15,0,0,0,0,'2015-06-28 17:00:00',NULL),(34,17,1,0,0,0,'2015-06-28 17:00:00',NULL),(35,19,6,85,0.48,0,'2015-06-29 17:00:00',NULL),(36,16,1,3,0.05,0,'2015-06-29 17:00:00',NULL),(37,13,2,40,2.2,0,'2015-06-29 17:00:00',NULL),(38,15,1,41,5,0,'2015-06-29 17:00:00',NULL),(39,18,1,1,0.05,0,'2015-06-29 17:00:00',NULL),(73,21,0,5,0.075,0.0675,'2015-07-02 17:00:00','2015-07-03 18:14:51'),(74,23,0,6,0.09,0.081,'2015-07-02 17:00:00','2015-07-03 18:14:51'),(75,23,5,42,0.63,0.567,'2015-07-03 17:00:00','2015-07-04 06:25:10'),(76,21,5,53,0.795,0.7155,'2015-07-03 17:00:00','2015-07-04 06:25:10');
/*!40000 ALTER TABLE `AdBannerDailyTracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdCampaign`
--

DROP TABLE IF EXISTS `AdCampaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdCampaign` (
  `AdCampaignID` int(11) NOT NULL AUTO_INCREMENT,
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
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AdCampaignID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdCampaign`
--

LOCK TABLES `AdCampaign` WRITE;
/*!40000 ALTER TABLE `AdCampaign` DISABLE KEYS */;
INSERT INTO `AdCampaign` VALUES (4,21,'My Media Campaign for XBrand','2014-09-03 00:00:00','2017-05-19 00:00:00','XBrand',10101100,0,1000000,0,100,1,'2014-09-03 15:57:27','2014-09-03 15:57:27');
/*!40000 ALTER TABLE `AdCampaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdCampaignBanner`
--

DROP TABLE IF EXISTS `AdCampaignBanner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdCampaignBanner` (
  `AdCampaignBannerID` int(11) NOT NULL AUTO_INCREMENT,
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
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `AdUrl` mediumtext,
  `Label` varchar(45) DEFAULT NULL,
  `AltText` varchar(45) DEFAULT NULL,
  `BidType` int(11) DEFAULT NULL,
  `TargetDaily` int(11) DEFAULT NULL,
  `TargetMax` int(11) DEFAULT NULL,
  `DailyBudget` float DEFAULT NULL,
  `MaximumBudget` float DEFAULT NULL,
  `IABAudienceCategory` char(8) DEFAULT NULL,
  `GEOCountry` varchar(255) DEFAULT NULL,
  `TimeZone` varchar(255) DEFAULT NULL,
  `FrequencyCap` tinyint(1) DEFAULT '0',
  `FreCapShowTime` int(11) DEFAULT NULL,
  `FreCapTimeFromHr` int(11) DEFAULT NULL,
  `FreCapTimeToHr` int(11) DEFAULT NULL,
  `FreCapCampaignApply` tinyint(1) DEFAULT NULL,
  `FreCapZoneApply` tinyint(1) DEFAULT NULL,
  `AdTagType` varchar(255) DEFAULT NULL,
  `InAnIframe` tinyint(1) DEFAULT NULL,
  `MultiNestedIframe` tinyint(1) DEFAULT NULL,
  `AdPostLeft` int(11) DEFAULT NULL,
  `AdPostTop` int(11) DEFAULT NULL,
  `ResolutionMinW` int(11) DEFAULT NULL,
  `ResolutionMaxW` int(11) DEFAULT NULL,
  `ResolutionMinH` int(11) DEFAULT NULL,
  `ResolutionMaxH` int(11) DEFAULT NULL,
  `HttpLang` varchar(255) DEFAULT NULL,
  `BrowerAgentGrep` mediumtext,
  `CookieGrep` mediumtext,
  `PmpEnable` tinyint(1) DEFAULT NULL,
  `Secure` int(11) DEFAULT NULL,
  `FoldPosition` int(11) DEFAULT NULL,
  PRIMARY KEY (`AdCampaignBannerID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdCampaignBanner`
--

LOCK TABLES `AdCampaignBanner` WRITE;
/*!40000 ALTER TABLE `AdCampaignBanner` DISABLE KEYS */;
INSERT INTO `AdCampaignBanner` VALUES (1,4,1,'banner',21,'Top Leaderboard Creative','2014-09-02 17:00:00','2015-11-03 17:00:00',0,'728x90',90,728,5,0.25,'<script language=\"Javascript\">\r\nvar zflag_nid=\"2674\"; var zflag_cid=\"1\"; var zflag_sid=\"1\"; var zflag_width=\"728\"; var zflag_height=\"90\"; var zflag_sz=\"14\";\r\n</script>\r\n<script language=\"Javascript\" src=\"http://xp2.zedo.com/jsc/xp2/fo.js\"></script>','js','nginad.com',0,0,0,1,'2014-09-03 15:57:27','2014-09-03 15:57:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `AdCampaignBanner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdCampaignBannerDomainExclusion`
--

DROP TABLE IF EXISTS `AdCampaignBannerDomainExclusion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdCampaignBannerDomainExclusion` (
  `AdCampaignBannerDomainExclusionID` int(11) NOT NULL AUTO_INCREMENT,
  `AdCampaignBannerID` int(11) NOT NULL,
  `ExclusionType` enum('url','referrer') NOT NULL,
  `DomainName` char(255) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AdCampaignBannerDomainExclusionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdCampaignBannerDomainExclusion`
--

LOCK TABLES `AdCampaignBannerDomainExclusion` WRITE;
/*!40000 ALTER TABLE `AdCampaignBannerDomainExclusion` DISABLE KEYS */;
/*!40000 ALTER TABLE `AdCampaignBannerDomainExclusion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdCampaignBannerDomainExclusionPreview`
--

DROP TABLE IF EXISTS `AdCampaignBannerDomainExclusionPreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdCampaignBannerDomainExclusionPreview` (
  `AdCampaignBannerDomainExclusionPreviewID` int(11) NOT NULL AUTO_INCREMENT,
  `AdCampaignBannerPreviewID` int(11) NOT NULL,
  `ExclusionType` enum('url','referrer') NOT NULL,
  `DomainName` char(255) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AdCampaignBannerDomainExclusionPreviewID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdCampaignBannerDomainExclusionPreview`
--

LOCK TABLES `AdCampaignBannerDomainExclusionPreview` WRITE;
/*!40000 ALTER TABLE `AdCampaignBannerDomainExclusionPreview` DISABLE KEYS */;
/*!40000 ALTER TABLE `AdCampaignBannerDomainExclusionPreview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdCampaignBannerDomainExclusiveInclusion`
--

DROP TABLE IF EXISTS `AdCampaignBannerDomainExclusiveInclusion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdCampaignBannerDomainExclusiveInclusion` (
  `AdCampaignBannerDomainExclusiveInclusionID` int(11) NOT NULL AUTO_INCREMENT,
  `AdCampaignBannerID` int(11) NOT NULL,
  `InclusionType` enum('url','referrer') NOT NULL,
  `DomainName` char(255) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AdCampaignBannerDomainExclusiveInclusionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdCampaignBannerDomainExclusiveInclusion`
--

LOCK TABLES `AdCampaignBannerDomainExclusiveInclusion` WRITE;
/*!40000 ALTER TABLE `AdCampaignBannerDomainExclusiveInclusion` DISABLE KEYS */;
/*!40000 ALTER TABLE `AdCampaignBannerDomainExclusiveInclusion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdCampaignBannerDomainExclusiveInclusionPreview`
--

DROP TABLE IF EXISTS `AdCampaignBannerDomainExclusiveInclusionPreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdCampaignBannerDomainExclusiveInclusionPreview` (
  `AdCampaignBannerDomainExclusiveInclusionPreviewID` int(11) NOT NULL AUTO_INCREMENT,
  `AdCampaignBannerPreviewID` int(11) NOT NULL,
  `InclusionType` enum('url','referrer') NOT NULL,
  `DomainName` char(255) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AdCampaignBannerDomainExclusiveInclusionPreviewID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdCampaignBannerDomainExclusiveInclusionPreview`
--

LOCK TABLES `AdCampaignBannerDomainExclusiveInclusionPreview` WRITE;
/*!40000 ALTER TABLE `AdCampaignBannerDomainExclusiveInclusionPreview` DISABLE KEYS */;
/*!40000 ALTER TABLE `AdCampaignBannerDomainExclusiveInclusionPreview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdCampaignBannerPreview`
--

DROP TABLE IF EXISTS `AdCampaignBannerPreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdCampaignBannerPreview` (
  `AdCampaignBannerPreviewID` int(11) NOT NULL AUTO_INCREMENT,
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
  `WentLiveDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `AdUrl` mediumtext,
  `Label` varchar(45) DEFAULT NULL,
  `AltText` varchar(45) DEFAULT NULL,
  `BidType` int(11) DEFAULT NULL,
  `TargetDaily` int(11) DEFAULT NULL,
  `TargetMax` int(11) DEFAULT NULL,
  `DailyBudget` float DEFAULT NULL,
  `MaximumBudget` float DEFAULT NULL,
  `IABAudienceCategory` char(8) DEFAULT NULL,
  `GEOCountry` varchar(255) DEFAULT NULL,
  `TimeZone` varchar(255) DEFAULT NULL,
  `FrequencyCap` tinyint(1) DEFAULT '0',
  `FreCapShowTime` int(11) DEFAULT NULL,
  `FreCapTimeFromHr` int(11) DEFAULT NULL,
  `FreCapTimeToHr` int(11) DEFAULT NULL,
  `FreCapCampaignApply` tinyint(1) DEFAULT NULL,
  `FreCapZoneApply` tinyint(1) DEFAULT NULL,
  `AdTagType` varchar(255) DEFAULT NULL,
  `InAnIframe` tinyint(1) DEFAULT NULL,
  `MultiNestedIframe` tinyint(1) DEFAULT NULL,
  `AdPostLeft` int(11) DEFAULT NULL,
  `AdPostTop` int(11) DEFAULT NULL,
  `ResolutionMinW` int(11) DEFAULT NULL,
  `ResolutionMaxW` int(11) DEFAULT NULL,
  `ResolutionMinH` int(11) DEFAULT NULL,
  `ResolutionMaxH` int(11) DEFAULT NULL,
  `HttpLang` varchar(255) DEFAULT NULL,
  `BrowerAgentGrep` mediumtext,
  `CookieGrep` mediumtext,
  `PmpEnable` tinyint(1) DEFAULT NULL,
  `Secure` int(11) DEFAULT NULL,
  `FoldPosition` int(11) DEFAULT NULL,
  `Approval` tinyint(4) DEFAULT '3',
  `ClickCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`AdCampaignBannerPreviewID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdCampaignBannerPreview`
--

LOCK TABLES `AdCampaignBannerPreview` WRITE;
/*!40000 ALTER TABLE `AdCampaignBannerPreview` DISABLE KEYS */;
INSERT INTO `AdCampaignBannerPreview` VALUES (1,1,0,1,'banner',21,'Top Leaderboard Creative','2014-09-02 17:00:00','2015-11-03 17:00:00',0,'728x90',90,728,5,0.25,'<script language=\"Javascript\">\r\nvar zflag_nid=\"2674\"; var zflag_cid=\"1\"; var zflag_sid=\"1\"; var zflag_width=\"728\"; var zflag_height=\"90\"; var zflag_sz=\"14\";\r\n</script>\r\n<script language=\"Javascript\" src=\"http://xp2.zedo.com/jsc/xp2/fo.js\"></script>','js','nginad.com',0,0,0,0,'2014-09-03 15:44:59','2015-06-19 06:58:42',1,'2014-09-03 15:57:27','http://sv5.lvduit.com/static/images/bannerpreview/2_20150619104317196Lovely-Eiffel-Tower-View-4.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0),(2,2,0,1,'banner',24,'asgvas-----------------','2015-06-02 04:00:00','2015-07-02 04:00:00',0,'88x31',31,88,5,0.25,'','js','asaf.asa',0,0,0,0,'2015-06-02 16:46:55','2015-06-25 03:12:37',0,'2015-06-02 05:46:55','http://sv5.lvduit.com/static/images/bannerpreview/2_20150619104317196Lovely-Eiffel-Tower-View-4.jpg','asf','asf',1,0,0,0,0,'IAB1','','',NULL,0,0,0,NULL,NULL,'iframe',0,0,NULL,0,0,0,0,0,'','',NULL,0,0,1,3,0),(3,2,0,1,'banner',24,'test banner 1','2015-06-02 04:00:00','2015-07-02 04:00:00',0,'336x280',280,336,5,0.25,'','js','asf.sag',0,0,0,0,'2015-06-02 17:59:37','2015-06-19 06:58:42',0,'2015-06-02 06:59:37','http://sv5.lvduit.com/static/images/bannerpreview/2_20150619104317196Lovely-Eiffel-Tower-View-4.jpg','tes','effriend',1,212,666,12,111,'IAB1','','',NULL,0,0,0,NULL,NULL,'iframe',0,0,NULL,0,0,0,0,0,'','',NULL,0,0,1,3,0),(4,4,0,1,'banner',25,'rongreubanner','2015-06-01 17:00:00','2015-07-01 17:00:00',0,'300x250',250,300,5,0.4,'','js','http://facebook.com',0,0,0,1,'2015-06-02 18:09:33','2015-06-24 06:30:20',0,'2015-06-24 06:30:20','http://sv5.lvduit.com/static/images/bannerpreview/2_20150619104317196Lovely-Eiffel-Tower-View-4.jpg','test','test',1,100,1000,50,500,'IAB19','VNM','7',1,0,0,24,NULL,1,'iframe',0,0,0,0,0,0,0,0,'','','',0,0,1,3,0),(5,4,0,1,'banner',25,'rongreubanner 02','2015-06-02 04:00:00','2015-07-02 04:00:00',0,'-',300,50,5,0.25,'','js','bda.vn',0,0,0,1,'2015-06-02 18:16:24','2015-06-30 09:15:36',0,'2015-06-02 07:16:24','http://sv5.lvduit.com/static/images/bannerpreview/2_20150619104317196Lovely-Eiffel-Tower-View-4.jpg','test 2','test 2',1,100,1000,50,500,'IAB19','','7',NULL,0,0,0,NULL,NULL,'iframe',0,0,NULL,0,0,0,0,0,'','',NULL,0,0,1,3,0),(6,5,0,1,'banner',25,'rongreubanner 03','2015-06-02 04:00:00','2015-03-02 05:00:00',0,'300x250',250,300,5,0.25,'','js','bda.vn',0,0,0,1,'2015-06-02 18:57:17','2015-06-19 06:58:42',0,'2015-06-02 07:57:17','http://sv5.lvduit.com/static/images/bannerpreview/2_20150619104317196Lovely-Eiffel-Tower-View-4.jpg','test 3','test 3',1,100,1000,50,500,'IAB1','YEM','7',NULL,0,0,0,NULL,NULL,'iframe',0,0,NULL,0,0,0,0,0,'','',NULL,0,0,1,3,0),(7,4,0,1,'banner',25,'test 4','2015-06-02 04:00:00','2015-07-02 04:00:00',0,'300x250',250,300,5,0.25,'','js','bda.vn',0,0,0,1,'2015-06-02 19:17:43','2015-06-30 09:15:36',0,'2015-06-02 08:17:43','http://sv5.lvduit.com/static/images/bannerpreview/2_20150619104317196Lovely-Eiffel-Tower-View-4.jpg','test 4','test 4',1,100,1000,0,0,'IAB1','USA','',1,0,0,30,NULL,NULL,'iframe',0,0,NULL,0,0,0,0,0,'','',NULL,0,0,1,3,0),(8,6,0,1,'banner',28,'vietnam','2015-06-03 04:00:00','2015-07-03 04:00:00',0,'468x60',60,468,5,0.25,'','js','bda.vn',0,0,0,1,'2015-06-03 19:42:18','2015-06-30 07:54:25',0,'2015-06-03 08:42:18','http://sv5.lvduit.com/static/images/bannerpreview/2_20150619104317196Lovely-Eiffel-Tower-View-4.jpg','a','a',1,20,30,0,0,'IAB1','VNM','7',1,0,5,16,NULL,NULL,'iframe',0,0,NULL,0,0,0,0,0,'','',NULL,0,0,1,3,0),(9,7,0,1,'banner',29,'kjljkjk','2015-06-25 17:00:00','2015-08-23 17:00:00',0,'120x600',600,120,5,0.25,'','js','http://lvduit.com',0,0,0,1,'2015-06-10 10:49:12','2015-06-30 07:57:39',0,'2015-06-24 07:00:51','http://sv5.lvduit.com/static/images/bannerpreview/7_20150620090302127uoq4.png','ldfjgldk','kjsdfhskjdfhjsdhf',1,123,123456,1545,213546,'IAB1','VNM','-11',1,0,0,24,1,NULL,'iframe',0,0,0,0,0,0,0,0,'','','',0,0,1,3,0),(10,3,0,1,'banner',25,'just-test-lvduit','2015-06-16 17:00:00','2015-08-30 17:00:00',0,'120x90',90,120,5,0.25,'','js','http://lvduit.com',0,0,0,1,'2015-06-17 05:12:12','2015-06-24 07:46:26',0,'2015-06-24 07:46:26','http://sv5.lvduit.com/static/images/bannerpreview/2_20150619104317196Lovely-Eiffel-Tower-View-4.jpg','131321','321313131',1,0,0,0,0,'IAB1','','',NULL,0,0,24,NULL,NULL,'iframe',0,0,0,0,0,0,0,0,'','','',0,0,1,3,0),(11,4,0,1,'banner',1,'sdfsdf','2015-06-16 17:00:00','2015-07-16 17:00:00',0,'125x125',125,125,5,0.25,'','js','http://lvduit.com',0,0,0,1,'2015-06-17 05:16:24','2015-06-19 06:58:42',0,'2015-06-17 05:16:24','http://sv5.lvduit.com/static/images/bannerpreview/2_20150619104317196Lovely-Eiffel-Tower-View-4.jpg','dfgdg','75878',1,44541,4141414,411,444,'IAB1','VNM','7',NULL,0,0,24,NULL,NULL,'iframe',0,0,0,0,0,0,0,0,'','','',0,0,1,3,0),(12,7,0,1,'banner',25,'lvduit-test-rtb-server-1','2015-06-16 17:00:00','2015-07-16 17:00:00',0,'300x250',250,300,5,0.25,'','js','http://lvduit.com',0,0,0,1,'2015-06-17 05:26:27','2015-06-19 06:58:42',0,'2015-06-17 05:26:27','http://sv5.lvduit.com/static/images/bannerpreview/2_20150619104317196Lovely-Eiffel-Tower-View-4.jpg','dfgdfgdfgdfgdfg','dfgdfgdfgdfgdfgdfg',2,234234,2342342,234,231,'IAB1','WLF','0',NULL,0,0,24,NULL,NULL,'iframe',0,0,0,0,0,0,0,0,'','','',0,0,1,3,0),(13,3,0,1,'banner',24,'bass','2015-06-18 17:00:00','2015-07-18 17:00:00',0,'728x90',90,728,5,20,'','js','http://lvduit.com',0,1,0.2,1,'2015-06-19 02:58:44','2015-07-01 03:02:17',0,'2015-07-01 03:02:17','http://sv5.lvduit.com/static/images/bannerpreview/3_20150625123816276.jpg','saf','asfasf',1,4,5,0,0,'IAB1','','7',1,555,0,24,NULL,NULL,'iframe',0,0,0,0,0,0,0,0,'','','',0,0,1,3,0),(14,2,0,1,'banner',24,'sad','2015-06-18 17:00:00','2015-07-18 17:00:00',0,'728x90',90,728,5,0.25,'','js','http://asd.as',38,51,0.00025,1,'2015-06-19 03:43:17','2015-07-03 10:35:09',0,'2015-06-19 03:43:17','http://sv5.lvduit.com/static/images/bannerpreview/2_20150619104317196Lovely-Eiffel-Tower-View-4.jpg','sad','asd',1,22,12,11,21,'IAB1','ZWE','-12',NULL,0,0,24,NULL,NULL,'iframe',0,0,0,0,0,0,0,0,'','','',0,0,1,3,1),(15,3,0,1,'banner',24,'test banner side bar','2015-06-22 17:00:00','2015-07-22 17:00:00',0,'120x600',600,120,5,5,'','js','http://test.com',0,0,0,1,'2015-06-23 07:45:22','2015-06-30 07:57:39',0,'2015-06-29 09:06:16','http://sv5.lvduit.com/static/images/bannerpreview/3_20150623144522364.gif','','',2,0,0,0,0,'IAB1','','',NULL,0,0,24,NULL,NULL,'iframe',0,0,0,0,0,0,0,0,'','','',0,0,1,3,0),(16,8,0,1,'banner',25,'banner2','2015-06-23 17:00:00','2015-07-23 17:00:00',0,'300x250',250,300,5,5,'','js','http://facebook.com',0,0,0,1,'2015-06-24 06:42:20','2015-06-30 07:54:25',0,'2015-06-24 15:27:53','http://sv5.lvduit.com/static/images/bannerpreview/8_20150624134220321.jpg','test','test',1,0,0,0,0,'IAB19','VNM','',NULL,0,0,24,NULL,NULL,'iframe',0,0,0,0,0,0,0,0,'','','',0,0,1,3,0),(17,4,0,1,'banner',25,'bid 2','2015-06-23 17:00:00','2015-07-23 17:00:00',0,'300x250',250,300,5,5.1,'','js','http://facebook.com/lvduit',23,6,0,1,'2015-06-24 06:45:47','2015-06-29 07:40:38',0,'2015-06-29 07:40:38','http://data.whicdn.com/images/146954447/superthumb.jpg','','',1,0,0,0,0,'IAB16','','',NULL,0,0,24,NULL,NULL,'iframe',0,0,0,0,0,0,0,0,'','','',0,0,1,3,0),(18,2,0,1,'banner',24,'test 468 60','2015-06-23 17:00:00','2015-07-23 17:00:00',0,'468x60',60,468,5,5,'','js','http://test.csa',1,40,0.05,1,'2015-06-24 11:31:13','2015-07-03 10:35:09',0,'2015-06-24 11:36:55','http://sv5.lvduit.com/static/images/bannerpreview/2_20150624183113521.gif','','',1,0,0,0,0,'IAB1','','',NULL,300,0,24,NULL,NULL,'iframe',0,0,0,0,0,0,0,0,'','','',0,0,1,3,0),(19,2,0,1,'banner',24,'another 468 60','2015-06-23 17:00:00','2015-07-23 17:00:00',0,'468x60',60,468,5,8,'','js','http://afsf.asf',31,40,0.16,1,'2015-06-24 11:49:00','2015-07-03 10:35:09',0,'2015-06-25 02:35:08','http://sv5.lvduit.com/static/images/bannerpreview/2_20150625093508149.jpg','vcv','cvcv',1,0,0,0,0,'IAB1','','',NULL,300,0,24,NULL,NULL,'iframe',0,0,0,0,0,0,0,0,'','','',0,0,1,3,0),(20,9,0,1,'banner',35,'xxBanner','2015-06-23 17:00:00','2015-07-23 17:00:00',0,'468x60',60,468,5,4,'','js','http://facebook.com/lvduit',0,32,0,1,'2015-06-24 12:04:41','2015-07-03 10:35:09',0,'2015-06-24 12:04:41','http://sv5.lvduit.com/static/images/bannerpreview/9_20150624190441544.gif','','',1,0,0,0,0,'IAB1','','',NULL,300,0,24,NULL,NULL,'iframe',0,0,0,0,0,0,0,0,'','','',0,0,1,3,0),(21,9,0,1,'banner',35,'300x250','2015-06-29 17:00:00','2015-07-29 17:00:00',0,'300x250',250,300,5,15,'','js','http://lvduit.com',151,1391,0.27,1,'2015-06-30 15:48:28','2015-07-03 18:05:02',0,'2015-06-30 15:52:27','http://sv5.lvduit.com/static/images/bannerpreview/9_20150630224828700.gif','','',1,0,0,0,0,'IAB1','','',1,300,0,24,NULL,NULL,'iframe',0,0,0,0,0,0,0,0,'','','',0,0,1,3,9),(22,9,0,1,'banner',35,'Test 250','2015-07-02 17:00:00','2015-08-01 17:00:00',0,'250x250',250,250,5,10,'','js','http://blog.lvduit.com',0,27,0,1,'2015-07-03 10:04:43','2015-07-03 18:05:02',0,'2015-07-03 10:05:07','http://sv5.lvduit.com/static/images/bannerpreview/9_20150703170443461.jpg','','',1,0,0,0,0,'IAB1','','',NULL,99,0,24,NULL,NULL,'iframe',0,0,0,0,0,0,0,0,'','','',0,0,1,3,0),(23,9,0,1,'banner',35,'Tttt','2015-07-02 17:00:00','2015-08-01 17:00:00',0,'250x250',250,250,5,15,'','js','http://lvduit.com',25,27,0,1,'2015-07-03 10:08:00','2015-07-03 18:05:02',0,'2015-07-03 10:08:00','http://sv5.lvduit.com/static/images/bannerpreview/9_20150703170800463.jpg','','',1,0,0,0,0,'IAB1','','',NULL,99,0,24,NULL,NULL,'iframe',0,0,0,0,0,0,0,0,'','','',0,0,1,NULL,0),(24,2,0,1,'banner',24,'asgvas asdasd','2015-07-02 17:00:00','2015-08-01 17:00:00',0,'120x600',600,120,5,0.25,'','js','http://asfa.sa',23,23,0,1,'2015-07-03 10:15:26','2015-07-03 10:35:09',0,'2015-07-03 10:15:26','http://sv5.lvduit.com/static/images/bannerpreview/2_20150703171526469.jpeg','tes','wfqw',1,0,0,20,50,'IAB1','','',NULL,99,0,24,NULL,NULL,'iframe',0,0,0,0,0,0,0,0,'','','',0,0,1,3,0);
/*!40000 ALTER TABLE `AdCampaignBannerPreview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdCampaignBannerRestrictions`
--

DROP TABLE IF EXISTS `AdCampaignBannerRestrictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdCampaignBannerRestrictions` (
  `AdCampaignBannerRestrictionsID` int(11) NOT NULL AUTO_INCREMENT,
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
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AdCampaignBannerRestrictionsID`),
  UNIQUE KEY `RTBBannerID` (`AdCampaignBannerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdCampaignBannerRestrictions`
--

LOCK TABLES `AdCampaignBannerRestrictions` WRITE;
/*!40000 ALTER TABLE `AdCampaignBannerRestrictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `AdCampaignBannerRestrictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdCampaignBannerRestrictionsPreview`
--

DROP TABLE IF EXISTS `AdCampaignBannerRestrictionsPreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdCampaignBannerRestrictionsPreview` (
  `AdCampaignBannerRestrictionsPreviewID` int(11) NOT NULL AUTO_INCREMENT,
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
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AdCampaignBannerRestrictionsPreviewID`),
  UNIQUE KEY `RTBBannerPreviewID` (`AdCampaignBannerPreviewID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdCampaignBannerRestrictionsPreview`
--

LOCK TABLES `AdCampaignBannerRestrictionsPreview` WRITE;
/*!40000 ALTER TABLE `AdCampaignBannerRestrictionsPreview` DISABLE KEYS */;
/*!40000 ALTER TABLE `AdCampaignBannerRestrictionsPreview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdCampaignPreview`
--

DROP TABLE IF EXISTS `AdCampaignPreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdCampaignPreview` (
  `AdCampaignPreviewID` int(11) NOT NULL AUTO_INCREMENT,
  `AdCampaignID` int(11) DEFAULT NULL,
  `UserID` int(11) NOT NULL,
  `Name` char(100) NOT NULL,
  `CampaignMarkup` float DEFAULT '0',
  `StartDate` datetime NOT NULL,
  `EndDate` datetime NOT NULL,
  `Customer` char(100) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `ImpressionsCounter` int(11) NOT NULL,
  `MaxImpressions` int(11) NOT NULL,
  `CurrentSpend` float NOT NULL,
  `MonthlySpend` float NOT NULL,
  `MaxSpend` float NOT NULL,
  `CPMTarget` tinyint(1) DEFAULT NULL,
  `CPMTargetValue` int(11) DEFAULT NULL,
  `CPCTarget` tinyint(1) DEFAULT NULL,
  `CPCTargetValue` int(11) DEFAULT NULL,
  `Active` tinyint(1) NOT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT '0',
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ChangeWentLive` tinyint(1) NOT NULL DEFAULT '0',
  `WentLiveDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Approval` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`AdCampaignPreviewID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdCampaignPreview`
--

LOCK TABLES `AdCampaignPreview` WRITE;
/*!40000 ALTER TABLE `AdCampaignPreview` DISABLE KEYS */;
INSERT INTO `AdCampaignPreview` VALUES (1,NULL,21,'My Media Campaign for XBrand',0,'2014-09-03 00:00:00','2017-05-19 00:00:00','XBrand',10101100,0,1000000,0,0,100,NULL,NULL,NULL,NULL,0,0,'2014-09-03 15:42:03','2014-09-03 15:42:03',1,'2014-09-03 15:57:27',0),(2,NULL,24,'Test Campaign 1',0,'2015-06-02 00:00:00','2015-07-22 00:00:00','as',1,93,25,0.21025,0,1210,0,500,1,1000,1,0,'2015-06-02 15:56:44','2015-07-03 10:35:09',0,'2015-07-02 03:41:48',2),(3,NULL,24,'test ca 2',0.03,'2015-06-02 00:00:00','2015-07-01 00:00:00','',1,0,1000000,0.2,0,111,1,500,1,1000,1,0,'2015-06-02 16:51:54','2015-07-02 04:51:25',0,'2015-07-02 04:51:25',NULL),(4,NULL,25,'rongreu01',0,'2015-02-06 00:00:00','2015-06-06 00:00:00','',1,0,1000,0,0,50000,1,500,0,1000,1,0,'2015-06-02 18:06:21','2015-07-02 03:27:34',0,'2015-07-02 03:27:34',1),(5,NULL,25,'rongreu camp2',0,'2015-02-06 00:00:00','2015-06-06 00:00:00','',1,0,1000,0,0,10000,1,500,0,1000,1,1,'2015-06-02 18:53:42','2015-07-02 16:27:31',0,'2015-06-24 06:23:16',2),(6,NULL,28,'Bien pro',0.05,'2015-06-02 00:00:00','2016-06-02 00:00:00','Hehe',1,0,3000,0,0,300,1,500,0,1000,1,0,'2015-06-02 19:04:37','2015-07-02 16:27:31',0,'2015-07-02 04:51:18',2),(7,NULL,29,'132131354',0.1,'2015-06-10 00:00:00','2015-07-10 00:00:00','lkjljlj',154665,0,2147483647,0,0,123000,1,500,0,1000,1,0,'2015-06-10 10:47:03','2015-07-02 04:51:10',0,'2015-07-02 04:51:10',1),(8,NULL,25,'Camp2',0,'2015-06-24 00:00:00','2015-07-24 00:00:00','',0,0,10000,0,0,50000,1,500,0,1000,1,0,'2015-06-24 06:40:53','2015-06-30 15:57:31',0,'2015-06-30 15:57:31',2),(9,NULL,35,'Quáº£ng bÃ¡ DxProjject',0.1,'2015-06-24 00:00:00','2015-07-24 00:00:00','',0,176,559999,0.27,0,5200,1,500,1,1000,1,0,'2015-06-24 11:53:38','2015-07-03 18:05:02',0,'2015-07-02 16:19:22',2);
/*!40000 ALTER TABLE `AdCampaignPreview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdCampaignType`
--

DROP TABLE IF EXISTS `AdCampaignType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdCampaignType` (
  `AdCampaignTypeID` int(11) unsigned NOT NULL,
  `Description` varchar(255) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AdCampaignTypeID`),
  UNIQUE KEY `AdCampaignType_UNIQUE` (`AdCampaignTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdCampaignType`
--

LOCK TABLES `AdCampaignType` WRITE;
/*!40000 ALTER TABLE `AdCampaignType` DISABLE KEYS */;
INSERT INTO `AdCampaignType` VALUES (1,'Any Remnant','2014-09-03 15:44:24','2014-09-03 15:44:24'),(2,'In House Remnant','2014-09-03 15:44:24','2014-09-03 15:44:24'),(3,'RTB Remnant','2014-09-03 15:44:24','2014-09-03 15:44:24'),(4,'Contract','2014-09-03 15:44:24','2014-09-03 15:44:24');
/*!40000 ALTER TABLE `AdCampaignType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdCampaignVideoRestrictions`
--

DROP TABLE IF EXISTS `AdCampaignVideoRestrictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdCampaignVideoRestrictions` (
  `AdCampaignVideoRestrictionsID` int(11) NOT NULL AUTO_INCREMENT,
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
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AdCampaignVideoRestrictionsID`),
  UNIQUE KEY `RTBVideoID` (`AdCampaignBannerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdCampaignVideoRestrictions`
--

LOCK TABLES `AdCampaignVideoRestrictions` WRITE;
/*!40000 ALTER TABLE `AdCampaignVideoRestrictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `AdCampaignVideoRestrictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdCampaignVideoRestrictionsPreview`
--

DROP TABLE IF EXISTS `AdCampaignVideoRestrictionsPreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdCampaignVideoRestrictionsPreview` (
  `AdCampaignVideoRestrictionsPreviewID` int(11) NOT NULL AUTO_INCREMENT,
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
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AdCampaignVideoRestrictionsPreviewID`),
  UNIQUE KEY `RTBVideoPreviewID` (`AdCampaignBannerPreviewID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdCampaignVideoRestrictionsPreview`
--

LOCK TABLES `AdCampaignVideoRestrictionsPreview` WRITE;
/*!40000 ALTER TABLE `AdCampaignVideoRestrictionsPreview` DISABLE KEYS */;
/*!40000 ALTER TABLE `AdCampaignVideoRestrictionsPreview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdCampainMarkup`
--

DROP TABLE IF EXISTS `AdCampainMarkup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdCampainMarkup` (
  `AdCampaignID` int(11) NOT NULL,
  `MarkupRate` float NOT NULL,
  PRIMARY KEY (`AdCampaignID`),
  UNIQUE KEY `AdCampaignID` (`AdCampaignID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdCampainMarkup`
--

LOCK TABLES `AdCampainMarkup` WRITE;
/*!40000 ALTER TABLE `AdCampainMarkup` DISABLE KEYS */;
INSERT INTO `AdCampainMarkup` VALUES (4,0.4);
/*!40000 ALTER TABLE `AdCampainMarkup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdTemplates`
--

DROP TABLE IF EXISTS `AdTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdTemplates` (
  `AdTemplateID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TemplateName` varchar(50) NOT NULL,
  `IsMobileFlag` smallint(6) NOT NULL DEFAULT '0',
  `Width` int(11) NOT NULL,
  `Height` int(11) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AdTemplateID`),
  UNIQUE KEY `TemplateName_UNIQUE` (`TemplateName`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdTemplates`
--

LOCK TABLES `AdTemplates` WRITE;
/*!40000 ALTER TABLE `AdTemplates` DISABLE KEYS */;
INSERT INTO `AdTemplates` VALUES (1,'IAB Full Banner',0,468,60,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(2,'IAB Skyscraper',0,120,600,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(3,'IAB Leaderboard',0,728,90,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(4,'IAB Button 1',0,120,90,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(5,'IAB Button 2',0,120,60,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(6,'IAB Half Banner',0,234,60,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(7,'IAB Micro Bar',0,88,31,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(8,'IAB Square Button',0,125,125,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(9,'IAB VerticleBanner',0,120,240,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(10,'IAB Rectangle',0,180,150,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(11,'IAB Medium Rectangle',0,300,250,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(12,'IAB Large Rectangle',0,336,280,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(13,'IAB Vertical Rectangle',0,240,400,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(14,'IAB Square Pop-up',0,250,250,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(15,'IAB Wide Skyscraper',0,160,600,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(16,'IAB Pop-Under',0,720,300,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(17,'3:1 Rectangle',0,300,100,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(18,'Mobile Phone Banner',1,320,50,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(19,'Mobile Phone Thin Banner',1,300,50,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(20,'Mobile Phone Medium Rectangle',1,300,250,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(21,'Mobile Phone Full Screen',1,320,480,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(22,'Mobile Phone Thin Full Screen',1,300,480,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(23,'Mobile Tablet Leaderboard',2,728,90,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(24,'Mobile Tablet Medium Rectangle',2,300,250,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(25,'Mobile Tablet Banner',2,300,50,'2014-01-28 16:20:00','2014-01-28 16:31:33'),(26,'Mobile Tablet Full Screen',2,728,1024,'2014-01-28 16:20:00','2014-01-28 16:31:33');
/*!40000 ALTER TABLE `AdTemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdType`
--

DROP TABLE IF EXISTS `AdType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdType` (
  `AdTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AdTypeName` varchar(50) NOT NULL,
  `AdTypeDescription` text,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AdTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdType`
--

LOCK TABLES `AdType` WRITE;
/*!40000 ALTER TABLE `AdType` DISABLE KEYS */;
INSERT INTO `AdType` VALUES (1,'Text','Text','2014-01-28 16:20:00','2014-01-28 16:20:40'),(2,'Static','Static Graphics','2014-01-28 16:20:00','2014-01-28 16:20:40'),(3,'Dynamic','Dynamic Graphics','2014-01-28 16:20:00','2014-01-28 16:20:40'),(4,'Flash','Flash Based','2014-01-28 16:20:00','2014-01-28 16:20:40');
/*!40000 ALTER TABLE `AdType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdzoneDailyTracker`
--

DROP TABLE IF EXISTS `AdzoneDailyTracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdzoneDailyTracker` (
  `AdzoneDailyTrackerID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PublisherAdZoneID` bigint(20) NOT NULL,
  `ClickCount` bigint(20) unsigned DEFAULT NULL,
  `ImpCount` bigint(20) unsigned DEFAULT NULL,
  `Income` float DEFAULT '0',
  `NetIncome` float DEFAULT '0',
  `DateCreated` timestamp NULL DEFAULT NULL,
  `DateUpdated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`AdzoneDailyTrackerID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdzoneDailyTracker`
--

LOCK TABLES `AdzoneDailyTracker` WRITE;
/*!40000 ALTER TABLE `AdzoneDailyTracker` DISABLE KEYS */;
INSERT INTO `AdzoneDailyTracker` VALUES (1,12,7,21,0,0,NULL,NULL),(2,11,1,7,0,0,NULL,NULL),(3,13,0,36,0,0,NULL,NULL),(4,18,0,36,0,0,NULL,NULL),(5,1,1,0,0,0,NULL,NULL),(6,18,0,36,0,0,NULL,NULL),(7,13,0,36,0,0,NULL,NULL),(8,1,1,0,0,0,NULL,NULL),(9,18,0,36,0,0,NULL,NULL),(10,13,0,37,0,0,NULL,NULL),(11,1,1,0,0,0,NULL,NULL),(12,18,0,36,0,0,NULL,NULL),(13,13,0,42,0,0,NULL,NULL),(14,15,0,5,0,0,NULL,NULL),(15,17,0,5,0,0,NULL,NULL),(16,1,1,0,0,0,NULL,NULL),(17,18,0,36,0,0,NULL,NULL),(18,13,0,42,0,0,NULL,NULL),(19,15,0,5,0,0,NULL,NULL),(20,17,1,5,0,0,NULL,NULL),(21,1,1,0,0,0,NULL,NULL),(22,1,1,1,0,0,NULL,NULL),(23,1,0,7,0,0,NULL,NULL),(24,11,2,54,8.08,0,NULL,NULL),(25,14,7,42,20.25,0,NULL,NULL),(26,12,3,9,15,0,NULL,NULL),(27,9,1,28,2,0,NULL,NULL),(28,11,10,167,7.73,0,NULL,NULL),(29,14,1,3,0.05,0,NULL,NULL),(30,14,0,36,0,0,NULL,NULL),(48,14,1,14,0.015,0,'2015-07-01 17:00:00','2015-07-02 09:07:07'),(49,14,0,11,0.1485,0.13365,'2015-07-02 17:00:00','2015-07-03 18:14:51'),(50,14,10,95,1.2825,1.15425,'2015-07-03 17:00:00','2015-07-04 06:25:10');
/*!40000 ALTER TABLE `AdzoneDailyTracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BidHourlyCounter`
--

DROP TABLE IF EXISTS `BidHourlyCounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BidHourlyCounter` (
  `BidHourlyCounterID` bigint(20) unsigned NOT NULL,
  `PublisherAdZoneID` bigint(20) unsigned NOT NULL,
  `AdCampaignBannerID` int(11) unsigned NOT NULL,
  `WinCount` int(10) unsigned DEFAULT '0',
  `LoseCount` int(10) unsigned DEFAULT '0',
  `ErrorCount` int(10) unsigned DEFAULT '0',
  `DateCreated` timestamp NULL DEFAULT NULL,
  `DateUpdated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`BidHourlyCounterID`),
  KEY `FOREIGNKEY` (`PublisherAdZoneID`,`AdCampaignBannerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BidHourlyCounter`
--

LOCK TABLES `BidHourlyCounter` WRITE;
/*!40000 ALTER TABLE `BidHourlyCounter` DISABLE KEYS */;
/*!40000 ALTER TABLE `BidHourlyCounter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `BidTotalsRollup`
--

DROP TABLE IF EXISTS `BidTotalsRollup`;
/*!50001 DROP VIEW IF EXISTS `BidTotalsRollup`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `BidTotalsRollup` AS SELECT 
 1 AS `AdCampaignBannerID`,
 1 AS `TotalBids`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `BuySideDailyImpressionsByTLD`
--

DROP TABLE IF EXISTS `BuySideDailyImpressionsByTLD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BuySideDailyImpressionsByTLD` (
  `DailyImpressionsByTLDID` int(11) NOT NULL AUTO_INCREMENT,
  `AdCampaignBannerID` int(11) NOT NULL,
  `MDY` char(10) NOT NULL,
  `PublisherTLD` char(100) NOT NULL,
  `Impressions` int(11) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`DailyImpressionsByTLDID`),
  UNIQUE KEY `RTBBannerID_IDX` (`AdCampaignBannerID`,`MDY`,`PublisherTLD`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BuySideDailyImpressionsByTLD`
--

LOCK TABLES `BuySideDailyImpressionsByTLD` WRITE;
/*!40000 ALTER TABLE `BuySideDailyImpressionsByTLD` DISABLE KEYS */;
/*!40000 ALTER TABLE `BuySideDailyImpressionsByTLD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BuySideHourlyBidsCounter`
--

DROP TABLE IF EXISTS `BuySideHourlyBidsCounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BuySideHourlyBidsCounter` (
  `BuySideHourlyBidsCounterID` int(11) NOT NULL AUTO_INCREMENT,
  `BuySidePartnerID` char(100) NOT NULL,
  `AdCampaignBannerID` int(11) NOT NULL,
  `MDYH` char(15) NOT NULL,
  `BidsCounter` int(11) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`BuySideHourlyBidsCounterID`),
  UNIQUE KEY `BuySideHourlyBid_IDX` (`BuySidePartnerID`,`AdCampaignBannerID`,`MDYH`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BuySideHourlyBidsCounter`
--

LOCK TABLES `BuySideHourlyBidsCounter` WRITE;
/*!40000 ALTER TABLE `BuySideHourlyBidsCounter` DISABLE KEYS */;
/*!40000 ALTER TABLE `BuySideHourlyBidsCounter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BuySideHourlyImpressionsByTLD`
--

DROP TABLE IF EXISTS `BuySideHourlyImpressionsByTLD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BuySideHourlyImpressionsByTLD` (
  `BuySideHourlyImpressionsByTLDID` int(11) NOT NULL AUTO_INCREMENT,
  `AdCampaignBannerID` int(11) NOT NULL,
  `MDYH` char(15) NOT NULL,
  `PublisherTLD` char(100) NOT NULL,
  `Impressions` int(11) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`BuySideHourlyImpressionsByTLDID`),
  UNIQUE KEY `AnyBannerID_IDX` (`AdCampaignBannerID`,`MDYH`,`PublisherTLD`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BuySideHourlyImpressionsByTLD`
--

LOCK TABLES `BuySideHourlyImpressionsByTLD` WRITE;
/*!40000 ALTER TABLE `BuySideHourlyImpressionsByTLD` DISABLE KEYS */;
/*!40000 ALTER TABLE `BuySideHourlyImpressionsByTLD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BuySideHourlyImpressionsCounterCurrentSpend`
--

DROP TABLE IF EXISTS `BuySideHourlyImpressionsCounterCurrentSpend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BuySideHourlyImpressionsCounterCurrentSpend` (
  `BuySideHourlyImpressionsCounterCurrentSpendID` int(11) NOT NULL AUTO_INCREMENT,
  `BuySidePartnerID` char(100) NOT NULL,
  `AdCampaignBannerID` int(11) NOT NULL,
  `MDYH` char(15) NOT NULL,
  `ImpressionsCounter` int(11) NOT NULL,
  `CurrentSpendGross` float NOT NULL,
  `CurrentSpendNet` float NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`BuySideHourlyImpressionsCounterCurrentSpendID`),
  UNIQUE KEY `BuySideHourlyIC_IDX` (`BuySidePartnerID`,`AdCampaignBannerID`,`MDYH`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BuySideHourlyImpressionsCounterCurrentSpend`
--

LOCK TABLES `BuySideHourlyImpressionsCounterCurrentSpend` WRITE;
/*!40000 ALTER TABLE `BuySideHourlyImpressionsCounterCurrentSpend` DISABLE KEYS */;
/*!40000 ALTER TABLE `BuySideHourlyImpressionsCounterCurrentSpend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ContractPublisherZoneHourlyImpressions`
--

DROP TABLE IF EXISTS `ContractPublisherZoneHourlyImpressions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ContractPublisherZoneHourlyImpressions` (
  `ContractPublisherZoneHourlyImpressionsID` int(11) NOT NULL AUTO_INCREMENT,
  `AdCampaignBannerID` int(11) NOT NULL,
  `PublisherAdZoneID` int(11) NOT NULL,
  `MDYH` char(15) NOT NULL,
  `Impressions` bigint(20) NOT NULL,
  `SpendTotalGross` float NOT NULL,
  `SpendTotalNet` float NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ContractPublisherZoneHourlyImpressionsID`),
  UNIQUE KEY `ContractPublisherZoneHourlyImpression_IDX` (`ContractPublisherZoneHourlyImpressionsID`,`AdCampaignBannerID`,`PublisherAdZoneID`,`MDYH`) USING BTREE,
  UNIQUE KEY `ContractPublisherZoneHourlyImpressions_IDX` (`AdCampaignBannerID`,`PublisherAdZoneID`,`MDYH`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ContractPublisherZoneHourlyImpressions`
--

LOCK TABLES `ContractPublisherZoneHourlyImpressions` WRITE;
/*!40000 ALTER TABLE `ContractPublisherZoneHourlyImpressions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ContractPublisherZoneHourlyImpressions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DemandCustomerInfo`
--

DROP TABLE IF EXISTS `DemandCustomerInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DemandCustomerInfo` (
  `DemandCustomerInfoID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Website` varchar(255) DEFAULT NULL,
  `Company` varchar(255) NOT NULL,
  `PartnerType` int(11) NOT NULL DEFAULT '1',
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ContactNo` varchar(255) DEFAULT NULL,
  `Debuty` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Address` mediumtext,
  `Tax` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Balance` double DEFAULT '0',
  `MonthlyCurrentSpen` double DEFAULT '0',
  PRIMARY KEY (`DemandCustomerInfoID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DemandCustomerInfo`
--

LOCK TABLES `DemandCustomerInfo` WRITE;
/*!40000 ALTER TABLE `DemandCustomerInfo` DISABLE KEYS */;
INSERT INTO `DemandCustomerInfo` VALUES (19,'Trung Bao Le','nmadtu@gmail.com',NULL,'as',1,'2015-06-02 15:55:42','2015-06-02 05:48:06','1241','asfas','asf','ASc sdfg nsg','1251261616','+84988278675',100,0),(20,'Rong Reu','ptsonla@gmail.com',NULL,'bda',1,'2015-06-02 18:04:41','2015-06-30 08:08:39','bda','bda','bda','','bda','123',0,0),(21,'Seo','seo@bda.vn',NULL,'Bda',1,'2015-06-02 19:01:14','2015-06-02 08:01:14','12474848','Hdhd','Ceo',NULL,'123','123',0,0),(22,'lvduit','lvduit08-adv@gmail.com',NULL,'lvduit',1,'2015-06-10 10:46:09','2015-07-02 16:14:49','lvduit','lvduit','lvduit',NULL,'11354654','16546541654',500,0),(23,'VanDuyetLe','badv@duyetdev.me',NULL,'NA',1,'2015-06-24 11:52:17','2015-06-30 16:02:56','','','',NULL,'','',500,0);
/*!40000 ALTER TABLE `DemandCustomerInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `DemandImpressionsAndSpendHourly`
--

DROP TABLE IF EXISTS `DemandImpressionsAndSpendHourly`;
/*!50001 DROP VIEW IF EXISTS `DemandImpressionsAndSpendHourly`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `DemandImpressionsAndSpendHourly` AS SELECT 
 1 AS `MDYH`,
 1 AS `AdCampaignBannerID`,
 1 AS `DemandCustomerName`,
 1 AS `DemandCustomerInfoID`,
 1 AS `BannerName`,
 1 AS `PublisherTLDs`,
 1 AS `Impressions`,
 1 AS `Cost`,
 1 AS `GrossCost`,
 1 AS `CPM`,
 1 AS `GrossCPM`,
 1 AS `DateCreated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `DemandImpressionsAndSpendHourlyPre`
--

DROP TABLE IF EXISTS `DemandImpressionsAndSpendHourlyPre`;
/*!50001 DROP VIEW IF EXISTS `DemandImpressionsAndSpendHourlyPre`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `DemandImpressionsAndSpendHourlyPre` AS SELECT 
 1 AS `MDYH`,
 1 AS `AdCampaignBannerID`,
 1 AS `DemandCustomerName`,
 1 AS `DemandCustomerInfoID`,
 1 AS `BannerName`,
 1 AS `Impressions`,
 1 AS `Cost`,
 1 AS `GrossCost`,
 1 AS `CPM`,
 1 AS `GrossCPM`,
 1 AS `DateCreated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ImpressionAndSpendTotalsRollup`
--

DROP TABLE IF EXISTS `ImpressionAndSpendTotalsRollup`;
/*!50001 DROP VIEW IF EXISTS `ImpressionAndSpendTotalsRollup`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ImpressionAndSpendTotalsRollup` AS SELECT 
 1 AS `AdCampaignBannerID`,
 1 AS `TotalSpendGross`,
 1 AS `TotalSpendNet`,
 1 AS `TotalImpressions`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `IndustryCategories`
--

DROP TABLE IF EXISTS `IndustryCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IndustryCategories` (
  `IndustryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IndustryName` varchar(50) NOT NULL,
  `IndustryDescription` text,
  `IndustryStatus` smallint(6) NOT NULL DEFAULT '1',
  `ParentIndustryID` int(10) unsigned DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IndustryID`),
  KEY `FK_ParentIndustry_idx` (`ParentIndustryID`),
  KEY `IndustryName` (`IndustryName`),
  CONSTRAINT `FK_ParentIndustry` FOREIGN KEY (`ParentIndustryID`) REFERENCES `IndustryCategories` (`IndustryID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IndustryCategories`
--

LOCK TABLES `IndustryCategories` WRITE;
/*!40000 ALTER TABLE `IndustryCategories` DISABLE KEYS */;
INSERT INTO `IndustryCategories` VALUES (1,'Not Applicable',NULL,1,NULL,'2013-01-29 10:10:00','2014-01-29 10:14:25'),(2,'Automotive',NULL,1,NULL,'2013-01-29 10:10:00','2014-01-29 10:14:25'),(3,'Business and Finance',NULL,1,NULL,'2013-01-29 10:10:00','2014-01-29 10:14:25'),(8,'Education',NULL,1,NULL,'2013-01-29 10:10:00','2014-01-29 10:14:25'),(9,'Employment and Career',NULL,1,NULL,'2013-01-29 10:10:00','2014-01-29 10:14:25'),(10,'Entertainment and Leisure',NULL,1,NULL,'2013-01-29 10:10:00','2014-01-29 10:14:25'),(12,'Gaming',NULL,1,NULL,'2013-01-29 10:10:00','2014-01-29 10:14:25'),(14,'Health and Fitness',NULL,1,NULL,'2013-01-29 10:10:00','2014-01-29 10:14:25'),(16,'Home and Garden',NULL,1,NULL,'2013-01-29 10:10:00','2014-01-29 10:14:25'),(18,'Men\'s Interest',NULL,1,NULL,'2013-01-29 10:10:00','2014-01-29 10:14:25'),(21,'Music',NULL,1,NULL,'2013-01-29 10:10:00','2014-01-29 10:14:25'),(23,'News',NULL,1,NULL,'2013-01-29 10:10:00','2014-01-29 10:14:25'),(24,'Parenting and Family',NULL,1,NULL,'2013-01-29 10:10:00','2014-01-29 10:14:25'),(27,'Real Estate',NULL,1,NULL,'2013-01-29 10:10:00','2014-01-29 10:14:25'),(28,'Reference',NULL,1,NULL,'2013-01-29 10:10:00','2014-01-29 10:14:25'),(29,'Food and Dining',NULL,1,NULL,'2013-01-29 10:10:00','2014-01-29 10:14:25'),(31,'Shopping',NULL,1,NULL,'2013-01-29 10:10:00','2014-01-29 10:14:25'),(32,'Social Networking',NULL,1,NULL,'2013-01-29 10:10:00','2014-01-29 10:14:25'),(33,'Sports',NULL,1,NULL,'2013-01-29 10:10:00','2014-01-29 10:14:25'),(34,'Technology',NULL,1,NULL,'2013-01-29 10:10:00','2014-01-29 10:14:25'),(36,'Travel',NULL,1,NULL,'2013-01-29 10:10:00','2014-01-29 10:14:25'),(38,'Women\'s Interest',NULL,1,NULL,'2013-01-29 10:10:00','2014-01-29 10:14:25');
/*!40000 ALTER TABLE `IndustryCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InternalTransaction`
--

DROP TABLE IF EXISTS `InternalTransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InternalTransaction` (
  `InternalTransactionID` int(11) NOT NULL AUTO_INCREMENT,
  `PolymorphicID` int(11) NOT NULL,
  `PolymorphicType` varchar(25) NOT NULL,
  `TransactionType` varchar(25) NOT NULL,
  `UserID` int(11) NOT NULL,
  `GrossMoney` float NOT NULL,
  `NetMoney` float NOT NULL,
  `Markup` float NOT NULL,
  `DateCreated` timestamp NULL DEFAULT NULL,
  `DateUpdated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`InternalTransactionID`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InternalTransaction`
--

LOCK TABLES `InternalTransaction` WRITE;
/*!40000 ALTER TABLE `InternalTransaction` DISABLE KEYS */;
INSERT INTO `InternalTransaction` VALUES (145,2,'campaign','income',24,0,0,0,'2015-07-03 17:00:00','2015-07-04 06:48:26'),(146,8,'campaign','income',25,0,0,0,'2015-07-03 17:00:00','2015-07-04 06:48:26'),(147,6,'campaign','income',28,0,0,0,'2015-07-03 17:00:00','2015-07-04 06:48:26'),(148,9,'campaign','income',35,1.59,1.431,0.159,'2015-07-03 17:00:00','2015-07-04 06:48:26'),(149,12,'website','outcome',7,1.446,1.2879,0.1581,'2015-07-03 17:00:00','2015-07-04 06:28:32'),(150,11,'website','outcome',9,0,0,0,'2015-07-03 17:00:00','2015-07-04 06:28:32'),(151,13,'website','outcome',11,0,0,0,'2015-07-03 17:00:00','2015-07-04 06:28:32'),(152,14,'website','outcome',12,0,0,0,'2015-07-03 17:00:00','2015-07-04 06:28:32'),(153,12,'website','outcome',27,1.446,1.2879,0.1581,'2015-07-03 17:00:00','2015-07-04 06:48:26'),(154,11,'website','outcome',31,0,0,0,'2015-07-03 17:00:00','2015-07-04 06:48:26'),(155,13,'website','outcome',33,0,0,0,'2015-07-03 17:00:00','2015-07-04 06:48:26'),(156,14,'website','outcome',34,0,0,0,'2015-07-03 17:00:00','2015-07-04 06:48:26');
/*!40000 ALTER TABLE `InternalTransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LinkedBannerToAdZone`
--

DROP TABLE IF EXISTS `LinkedBannerToAdZone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LinkedBannerToAdZone` (
  `LinkedBannerToAdZoneID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `AdCampaignBannerID` int(11) unsigned NOT NULL,
  `PublisherAdZoneID` int(11) unsigned NOT NULL,
  `Weight` int(11) NOT NULL DEFAULT '5',
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`LinkedBannerToAdZoneID`),
  UNIQUE KEY `LinkedBannerToAdZone_UNIQUE` (`LinkedBannerToAdZoneID`),
  KEY `FK_Publisher_Zone_ID` (`AdCampaignBannerID`),
  KEY `FK_AdCampaign_Banner_ID` (`PublisherAdZoneID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LinkedBannerToAdZone`
--

LOCK TABLES `LinkedBannerToAdZone` WRITE;
/*!40000 ALTER TABLE `LinkedBannerToAdZone` DISABLE KEYS */;
/*!40000 ALTER TABLE `LinkedBannerToAdZone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LinkedBannerToAdZonePreview`
--

DROP TABLE IF EXISTS `LinkedBannerToAdZonePreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LinkedBannerToAdZonePreview` (
  `LinkedBannerToAdZonePreviewID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `AdCampaignBannerPreviewID` int(11) unsigned NOT NULL,
  `PublisherAdZoneID` int(11) unsigned NOT NULL,
  `Weight` int(11) NOT NULL DEFAULT '5',
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`LinkedBannerToAdZonePreviewID`),
  UNIQUE KEY `LinkedBannerToAdZone_UNIQUE` (`LinkedBannerToAdZonePreviewID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LinkedBannerToAdZonePreview`
--

LOCK TABLES `LinkedBannerToAdZonePreview` WRITE;
/*!40000 ALTER TABLE `LinkedBannerToAdZonePreview` DISABLE KEYS */;
/*!40000 ALTER TABLE `LinkedBannerToAdZonePreview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Maintenance`
--

DROP TABLE IF EXISTS `Maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Maintenance` (
  `TagName` char(100) NOT NULL,
  `LastUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`TagName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Maintenance`
--

LOCK TABLES `Maintenance` WRITE;
/*!40000 ALTER TABLE `Maintenance` DISABLE KEYS */;
INSERT INTO `Maintenance` VALUES ('daily','2014-09-06 09:05:03'),('ten_minute','2014-09-07 03:20:04');
/*!40000 ALTER TABLE `Maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PublisherAdIndustry`
--

DROP TABLE IF EXISTS `PublisherAdIndustry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PublisherAdIndustry` (
  `PublisherAdIndustryID` bigint(20) unsigned NOT NULL,
  `IndustryID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`PublisherAdIndustryID`,`IndustryID`),
  KEY `FK_Types_idx` (`IndustryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PublisherAdIndustry`
--

LOCK TABLES `PublisherAdIndustry` WRITE;
/*!40000 ALTER TABLE `PublisherAdIndustry` DISABLE KEYS */;
/*!40000 ALTER TABLE `PublisherAdIndustry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PublisherAdZone`
--

DROP TABLE IF EXISTS `PublisherAdZone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PublisherAdZone` (
  `PublisherAdZoneID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `TotalImpressions` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Aggregated Statistics Field',
  `TotalAmount` decimal(20,20) unsigned NOT NULL DEFAULT '0.00000000000000000000' COMMENT 'Aggregated Statistics Field',
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PublisherAdZoneID`),
  UNIQUE KEY `UQ_WebAdName` (`PublisherWebsiteID`,`AdName`),
  KEY `FK_OwnerUser_idx` (`AdOwnerID`),
  KEY `FK_WebAdTemplates_idx` (`AdTemplateID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PublisherAdZone`
--

LOCK TABLES `PublisherAdZone` WRITE;
/*!40000 ALTER TABLE `PublisherAdZone` DISABLE KEYS */;
INSERT INTO `PublisherAdZone` VALUES (6,4,1,'banner',3,'Leaderboard Top Banner','This leaderboard ad tag will be shown at the top of all the pages on the website.','<script language=\"Javascript\">\r\nvar zflag_nid=\"2674\"; var zflag_cid=\"1\"; var zflag_sid=\"1\"; var zflag_width=\"728\"; var zflag_height=\"90\"; var zflag_sz=\"14\";\r\n</script>\r\n<script language=\"Javascript\" src=\"http://xp2.zedo.com/jsc/xp2/fo.js\"></script>',1,0,3,0,728,90,0.10,0,0,0.00000000000000000000,'2014-09-03 15:40:17','2014-09-03 15:40:56'),(10,5,1,'banner',0,'test','sdfdsf','',1,1,17,0,300,100,0.00,0,0,0.00000000000000000000,'2015-06-15 17:59:37','2015-06-15 17:59:37'),(13,11,1,'banner',9,'test banner 1','res','none',1,1,1,0,468,60,0.01,53,0,0.00000000000000000000,'2015-06-24 03:55:28','2015-07-03 10:35:09'),(14,12,1,'banner',7,'Zone1','Ad Zone 1 for hire','',1,1,11,0,300,250,0.30,0,130,0.99999999999999999999,'2015-06-24 06:18:52','2015-07-03 18:05:02'),(15,11,1,'banner',9,'big site','asdasd','test',1,1,3,0,728,90,0.20,61,0,0.00000000000000000000,'2015-06-24 06:30:08','2015-07-03 10:35:09'),(16,13,1,'banner',11,'duyet blogger','N/A','No Ad',1,1,20,0,300,250,0.50,0,0,0.00000000000000000000,'2015-06-24 07:05:12','2015-06-24 07:45:15'),(17,11,1,'banner',9,'test asd','asd','asasd',1,1,2,0,120,600,0.20,46,0,0.00000000000000000000,'2015-06-24 07:52:07','2015-07-03 10:35:09'),(18,14,1,'banner',12,'footer','footer','',1,1,24,0,300,250,0.01,874,0,0.00000000000000000000,'2015-06-24 10:54:28','2015-07-03 18:05:02'),(19,14,1,'banner',12,'Sidebar','Main side','',1,1,20,0,300,250,0.00,845,0,0.00000000000000000000,'2015-07-02 15:35:11','2015-07-04 04:05:31'),(20,14,1,'banner',12,'adzone 3','adzone 3','[[[[No Ad]]]',1,1,14,0,250,250,0.00,52,0,0.00000000000000000000,'2015-07-03 08:40:48','2015-07-03 18:05:02');
/*!40000 ALTER TABLE `PublisherAdZone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PublisherAdZoneType`
--

DROP TABLE IF EXISTS `PublisherAdZoneType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PublisherAdZoneType` (
  `PublisherAdZoneTypeID` int(11) unsigned NOT NULL,
  `Description` varchar(255) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PublisherAdZoneTypeID`),
  UNIQUE KEY `PublisherAdZoneType_UNIQUE` (`PublisherAdZoneTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PublisherAdZoneType`
--

LOCK TABLES `PublisherAdZoneType` WRITE;
/*!40000 ALTER TABLE `PublisherAdZoneType` DISABLE KEYS */;
INSERT INTO `PublisherAdZoneType` VALUES (1,'Any Remnant','2014-08-17 05:16:21','2014-08-17 05:16:21'),(2,'In House Remnant','2014-08-17 05:16:21','2014-08-17 05:16:21'),(3,'RTB Remnant','2014-08-17 05:16:21','2014-08-17 05:16:21'),(4,'Contract','2014-08-17 05:16:21','2014-08-17 05:16:21');
/*!40000 ALTER TABLE `PublisherAdZoneType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PublisherAdZoneVideo`
--

DROP TABLE IF EXISTS `PublisherAdZoneVideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PublisherAdZoneVideo` (
  `PublisherAdZoneVideoID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PublisherAdZoneVideoID`),
  UNIQUE KEY `UQ_PublisherAdZone` (`PublisherAdZoneID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PublisherAdZoneVideo`
--

LOCK TABLES `PublisherAdZoneVideo` WRITE;
/*!40000 ALTER TABLE `PublisherAdZoneVideo` DISABLE KEYS */;
/*!40000 ALTER TABLE `PublisherAdZoneVideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PublisherHourlyBids`
--

DROP TABLE IF EXISTS `PublisherHourlyBids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PublisherHourlyBids` (
  `PublisherHourlyBidsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PublisherAdZoneID` int(10) unsigned NOT NULL,
  `MDYH` char(15) NOT NULL,
  `AuctionCounter` bigint(20) NOT NULL,
  `BidsWonCounter` bigint(20) NOT NULL,
  `BidsLostCounter` bigint(20) NOT NULL,
  `BidsErrorCounter` bigint(20) NOT NULL,
  `SpendTotalGross` float NOT NULL,
  `SpendTotalNet` float NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PublisherHourlyBidsID`),
  UNIQUE KEY `PublisherHourlyBids_IDX` (`PublisherAdZoneID`,`MDYH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PublisherHourlyBids`
--

LOCK TABLES `PublisherHourlyBids` WRITE;
/*!40000 ALTER TABLE `PublisherHourlyBids` DISABLE KEYS */;
/*!40000 ALTER TABLE `PublisherHourlyBids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `PublisherImpressionsAndSpendHourly`
--

DROP TABLE IF EXISTS `PublisherImpressionsAndSpendHourly`;
/*!50001 DROP VIEW IF EXISTS `PublisherImpressionsAndSpendHourly`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `PublisherImpressionsAndSpendHourly` AS SELECT 
 1 AS `MDYH`,
 1 AS `PublisherAdZoneID`,
 1 AS `PublisherName`,
 1 AS `PublisherInfoID`,
 1 AS `AdName`,
 1 AS `Requests`,
 1 AS `Impressions`,
 1 AS `eCPM`,
 1 AS `GrossECPM`,
 1 AS `FillRate`,
 1 AS `Revenue`,
 1 AS `GrossRevenue`,
 1 AS `DateCreated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `PublisherImpressionsAndSpendHourlyTotals`
--

DROP TABLE IF EXISTS `PublisherImpressionsAndSpendHourlyTotals`;
/*!50001 DROP VIEW IF EXISTS `PublisherImpressionsAndSpendHourlyTotals`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `PublisherImpressionsAndSpendHourlyTotals` AS SELECT 
 1 AS `PublisherAdZoneID`,
 1 AS `PublisherName`,
 1 AS `PublisherInfoID`,
 1 AS `TotalRequests`,
 1 AS `TotalImpressions`,
 1 AS `TotalRevenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `PublisherImpressionsNetworkLoss`
--

DROP TABLE IF EXISTS `PublisherImpressionsNetworkLoss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PublisherImpressionsNetworkLoss` (
  `PublisherInfoID` int(11) NOT NULL,
  `CorrectionRate` float NOT NULL,
  PRIMARY KEY (`PublisherInfoID`),
  UNIQUE KEY `PublisherInfoID` (`PublisherInfoID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PublisherImpressionsNetworkLoss`
--

LOCK TABLES `PublisherImpressionsNetworkLoss` WRITE;
/*!40000 ALTER TABLE `PublisherImpressionsNetworkLoss` DISABLE KEYS */;
/*!40000 ALTER TABLE `PublisherImpressionsNetworkLoss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PublisherInfo`
--

DROP TABLE IF EXISTS `PublisherInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PublisherInfo` (
  `PublisherInfoID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Domain` varchar(255) NOT NULL,
  `IABCategory` char(8) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Addr` varchar(255) DEFAULT NULL,
  `DomainDescribe` mediumtext,
  `Balance` double DEFAULT '0',
  `MonthlyIncome` double DEFAULT '0',
  `TotalIncome` double DEFAULT '0',
  PRIMARY KEY (`PublisherInfoID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PublisherInfo`
--

LOCK TABLES `PublisherInfo` WRITE;
/*!40000 ALTER TABLE `PublisherInfo` DISABLE KEYS */;
INSERT INTO `PublisherInfo` VALUES (4,'lvduitlvduit','duyet2000@gmail.com','lvduit.com','IAB1','2015-05-13 01:20:18','2015-05-13 06:20:18',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0),(5,'asasas','lvduit08@gmail.com','lvduit.com','IAB1','2015-05-13 01:22:09','2015-05-13 06:22:09',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0),(6,'Halee Ray','pyzewega@yahoo.com','domain.com','IAB20','2015-06-02 18:28:09','2015-06-02 07:28:09','Carissa','Dudley','Aut blanditiis non magna odit Nam ea laborum dignissimos et ex neque id labore perferendis ad magnam vero error','Voluptatem Quidem sunt odit et et','Voluptate id ut occaecat voluptatem Ea ratione voluptate nihil non rerum mollitia sed quam','Voluptas quia placeat, vel reprehenderit dolor molestias laudantium, accusamus aliquid voluptatem officia.',0,0,0),(7,'Rong Reu','sonpt@bda.vn','bda.vn','IAB19','2015-06-02 18:36:40','2015-07-03 18:05:02','Rong','Reu','','HCMC','Tan Thuan Street','gggg',1.9099999999999953,0,0),(8,'rongreuab','rongreu00@bda.com','','','2015-06-17 02:46:56','2015-06-17 02:46:56','a','b','cc','ggaga','ggg gaga',NULL,0,0,0),(9,'trungle','trungle.cs@gmail.com','http://asdas.com','IAB1','2015-06-22 14:45:13','2015-07-02 07:15:14','trung','le','VNM','abc','sa','táº£',10,0,0),(10,'trungtest','testnew@localhost.com','http://sad.csa','IAB1','2015-06-24 02:32:23','2015-06-24 02:32:23','','','','','','',NULL,0,0),(11,'lvduitttt','lvduit008@gmail.com','http://hgj.jj','IAB19','2015-06-24 07:04:19','2015-06-24 07:04:19','','','','','','',NULL,0,0),(12,'bpub','bpub@duyetdev.me','http://bpub.lvduit.com','IAB19','2015-06-24 10:52:20','2015-06-24 10:52:20','','','','','','',NULL,0,0),(13,'lmk','luatminhkhue88@gmail.com','http://luatminhkhue.vn','IAB11','2015-06-25 04:09:28','2015-06-25 04:09:28','Minh Khue','Law','VNM','Hanoi','19 VNT Tower','MinhKhue Law Firm was founded in 2012  by LeMinhTruong. It works in law consult, law services, ipos..',NULL,0,0),(14,'IZDJeanett','evasivekook21xv52@outlook.com','DZ','IAB9','2015-07-03 17:08:20','2015-07-03 17:08:20','Jeanett','Maness','CHE','Fahrwangen','Quadra 20','',NULL,0,0);
/*!40000 ALTER TABLE `PublisherInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PublisherMarkup`
--

DROP TABLE IF EXISTS `PublisherMarkup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PublisherMarkup` (
  `PublisherInfoID` int(11) NOT NULL,
  `MarkupRate` float NOT NULL,
  PRIMARY KEY (`PublisherInfoID`),
  UNIQUE KEY `PublisherInfoID` (`PublisherInfoID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PublisherMarkup`
--

LOCK TABLES `PublisherMarkup` WRITE;
/*!40000 ALTER TABLE `PublisherMarkup` DISABLE KEYS */;
/*!40000 ALTER TABLE `PublisherMarkup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PublisherWebsite`
--

DROP TABLE IF EXISTS `PublisherWebsite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PublisherWebsite` (
  `PublisherWebsiteID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `WebDomain` varchar(255) NOT NULL,
  `DomainMarkup` float DEFAULT NULL,
  `DomainOwnerID` int(10) unsigned NOT NULL,
  `AutoApprove` smallint(6) NOT NULL DEFAULT '1',
  `ApprovalFlag` smallint(6) NOT NULL DEFAULT '0',
  `IABCategory` char(8) DEFAULT NULL,
  `IABSubCategory` char(8) DEFAULT NULL,
  `Description` text,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PublisherWebsiteID`),
  UNIQUE KEY `WebDomain_UNIQUE` (`WebDomain`,`DomainOwnerID`),
  KEY `FK_Owner_User_ID` (`DomainOwnerID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PublisherWebsite`
--

LOCK TABLES `PublisherWebsite` WRITE;
/*!40000 ALTER TABLE `PublisherWebsite` DISABLE KEYS */;
INSERT INTO `PublisherWebsite` VALUES (4,'http://blowmedianow.com',5,3,1,2,'IAB19',NULL,'Blow Media Website','2014-09-03 15:38:06','2015-06-15 17:57:59'),(5,'http://bda.vn',5202,0,1,1,'IAB19',NULL,'2323','2015-06-02 18:34:17','2015-06-10 04:23:02'),(6,'http://bda.vn/bgate-details/',213,0,1,1,'IAB19',NULL,'232323','2015-06-02 18:35:00','2015-06-10 03:53:05'),(11,'http://abc.com',0.1,9,1,3,'IAB1',NULL,'sdsdg','2015-06-24 03:54:53','2015-07-02 04:52:20'),(12,'http://bda.vn/page-with-left-sidebar/',0.1,7,1,3,'IAB19',NULL,'Ad place','2015-06-24 06:18:11','2015-07-02 04:52:08'),(13,'http://lvduit.com',NULL,11,1,1,'IAB1',NULL,'lvduit','2015-06-24 07:04:44','2015-06-24 07:04:44'),(14,'http://blog.lvduit.com',0,12,1,1,'IAB1',NULL,'some','2015-06-24 10:53:52','2015-06-24 11:00:35'),(15,'http://luatminhkhue.vn',NULL,13,1,2,'IAB11',NULL,'MinhKhueLaw','2015-06-25 04:10:35','2015-07-02 04:52:29');
/*!40000 ALTER TABLE `PublisherWebsite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PublisherWebsiteImpressionsNetworkLoss`
--

DROP TABLE IF EXISTS `PublisherWebsiteImpressionsNetworkLoss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PublisherWebsiteImpressionsNetworkLoss` (
  `PublisherWebsiteID` int(11) NOT NULL,
  `CorrectionRate` float NOT NULL,
  PRIMARY KEY (`PublisherWebsiteID`),
  UNIQUE KEY `PublisherWebsiteID` (`PublisherWebsiteID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PublisherWebsiteImpressionsNetworkLoss`
--

LOCK TABLES `PublisherWebsiteImpressionsNetworkLoss` WRITE;
/*!40000 ALTER TABLE `PublisherWebsiteImpressionsNetworkLoss` DISABLE KEYS */;
/*!40000 ALTER TABLE `PublisherWebsiteImpressionsNetworkLoss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PublisherWebsiteMarkup`
--

DROP TABLE IF EXISTS `PublisherWebsiteMarkup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PublisherWebsiteMarkup` (
  `PublisherWebsiteID` int(11) NOT NULL,
  `MarkupRate` float NOT NULL,
  PRIMARY KEY (`PublisherWebsiteID`),
  UNIQUE KEY `PublisherWebsiteID` (`PublisherWebsiteID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PublisherWebsiteMarkup`
--

LOCK TABLES `PublisherWebsiteMarkup` WRITE;
/*!40000 ALTER TABLE `PublisherWebsiteMarkup` DISABLE KEYS */;
/*!40000 ALTER TABLE `PublisherWebsiteMarkup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RawClick`
--

DROP TABLE IF EXISTS `RawClick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RawClick` (
  `RawClickID` bigint(20) unsigned NOT NULL,
  `PublisherAdZoneID` bigint(20) DEFAULT NULL,
  `AdCampaignBannerID` int(11) DEFAULT NULL,
  `UserIP` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Price` double NOT NULL,
  `DateCreated` timestamp NULL DEFAULT NULL,
  `DateUpdated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`RawClickID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RawClick`
--

LOCK TABLES `RawClick` WRITE;
/*!40000 ALTER TABLE `RawClick` DISABLE KEYS */;
/*!40000 ALTER TABLE `RawClick` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RawImp`
--

DROP TABLE IF EXISTS `RawImp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RawImp` (
  `RawImpID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `PublisherAdZoneID` bigint(20) DEFAULT NULL,
  `AdCampaignBannerID` int(11) DEFAULT NULL,
  `UserIP` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Price` double NOT NULL,
  `DateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `DateUpdated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`RawImpID`)
) ENGINE=InnoDB AUTO_INCREMENT=3653 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RawImp`
--

LOCK TABLES `RawImp` WRITE;
/*!40000 ALTER TABLE `RawImp` DISABLE KEYS */;
INSERT INTO `RawImp` VALUES (1,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(2,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(3,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(4,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(5,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(6,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(7,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(8,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(9,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(10,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(11,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(12,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(13,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(14,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(15,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(16,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(17,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(18,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(19,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(20,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(21,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(22,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(23,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(24,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(25,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(26,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(27,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(28,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(29,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(30,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(31,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(32,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(33,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(34,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(35,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(36,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(37,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(38,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(39,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(40,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(41,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(42,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(43,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(44,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(45,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(46,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(47,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(48,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(49,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(50,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(51,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(52,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(53,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(54,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(55,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(56,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(57,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(58,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(59,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(60,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(61,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(62,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(63,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(64,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(65,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(66,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(67,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(68,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(69,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(70,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(71,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(72,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(73,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(74,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(75,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(76,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(77,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(78,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(79,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(80,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(81,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(82,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(83,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(84,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(85,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(86,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(87,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(88,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(89,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(90,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(91,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(92,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(93,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(94,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(95,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(96,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(97,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(98,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(99,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(100,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(101,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(102,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(103,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(104,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(105,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(106,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(107,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(108,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(109,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(110,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(111,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(112,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(113,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(114,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(115,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(116,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(117,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(118,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(119,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(120,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(121,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(122,1,1,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(123,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(124,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(125,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(126,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(127,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(128,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(129,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(130,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(131,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(132,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(133,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(134,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(135,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(136,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(137,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(138,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(139,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(140,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(141,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(142,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(143,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(144,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(145,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(146,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(147,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(148,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(149,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(150,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(151,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(152,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(153,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(154,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(155,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(156,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(157,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(158,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(159,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(160,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(161,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(162,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(163,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(164,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(165,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(166,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(167,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(168,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(169,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(170,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(171,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(172,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(173,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(174,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(175,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(176,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(177,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(178,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(179,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(180,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(181,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(182,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(183,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(184,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(185,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(186,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(187,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(188,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(189,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(190,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(191,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(192,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(193,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(194,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(195,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(196,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(197,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(198,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(199,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(200,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(201,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(202,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(203,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(204,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(205,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(206,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(207,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(208,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(209,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(210,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(211,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(212,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(213,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(214,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(215,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(216,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(217,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(218,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(219,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(220,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(221,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(222,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(223,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(224,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(225,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(226,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(227,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(228,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(229,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(230,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(231,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(232,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(233,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(234,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(235,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(236,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(237,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(238,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(239,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(240,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(241,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(242,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(243,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(244,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(245,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(246,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(247,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(248,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(249,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(250,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(251,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(252,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(253,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(254,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(255,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(256,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(257,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(258,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(259,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(260,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(261,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(262,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(263,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(264,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(265,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(266,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(267,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(268,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(269,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(270,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(271,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(272,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(273,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(274,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(275,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(276,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(277,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(278,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(279,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(280,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(281,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(282,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(283,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(284,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(285,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(286,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(287,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(288,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(289,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(290,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(291,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(292,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(293,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(294,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(295,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(296,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(297,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(298,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(299,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(300,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(301,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(302,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(303,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(304,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(305,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(306,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(307,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(308,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(309,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(310,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(311,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(312,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(313,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(314,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(315,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(316,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(317,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(318,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(319,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(320,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(321,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(322,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(323,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(324,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(325,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(326,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(327,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(328,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(329,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(330,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(331,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(332,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(333,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(334,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(335,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(336,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(337,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(338,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(339,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(340,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(341,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(342,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(343,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(344,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(345,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(346,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(347,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(348,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(349,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(350,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(351,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(352,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(353,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(354,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(355,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(356,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(357,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(358,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(359,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(360,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(361,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(362,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(363,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(364,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(365,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(366,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(367,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(368,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(369,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(370,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(371,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(372,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(373,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(374,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(375,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(376,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(377,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(378,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(379,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(380,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(381,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(382,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(383,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(384,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(385,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(386,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(387,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(388,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(389,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(390,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(391,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(392,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(393,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(394,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(395,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(396,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(397,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(398,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(399,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(400,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(401,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(402,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(403,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(404,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(405,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(406,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(407,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(408,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(409,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(410,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(411,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(412,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(413,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(414,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(415,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(416,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(417,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(418,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(419,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(420,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(421,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(422,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(423,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(424,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(425,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(426,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(427,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(428,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(429,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(430,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(431,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(432,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(433,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(434,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(435,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(436,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(437,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(438,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(439,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(440,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(441,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(442,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(443,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(444,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(445,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(446,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(447,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(448,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(449,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(450,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(451,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(452,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(453,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(454,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(455,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(456,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(457,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(458,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(459,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(460,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(461,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(462,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(463,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(464,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(465,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(466,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(467,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(468,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(469,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(470,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(471,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(472,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(473,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(474,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(475,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(476,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(477,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(478,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(479,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(480,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(481,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(482,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(483,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(484,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(485,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(486,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(487,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(488,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(489,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(490,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(491,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(492,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(493,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(494,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(495,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(496,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(497,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(498,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(499,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(500,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(501,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(502,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(503,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(504,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(505,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(506,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(507,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(508,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(509,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(510,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(511,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(512,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(513,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(514,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(515,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(516,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(517,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(518,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(519,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(520,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(521,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(522,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(523,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(524,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(525,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(526,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(527,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(528,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(529,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(530,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(531,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(532,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(533,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(534,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(535,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(536,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(537,1,8,'::ffff:115.79.41.52','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,NULL,NULL),(538,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 07:51:32',NULL),(539,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 07:52:21',NULL),(540,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 07:52:21',NULL),(541,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 07:52:44',NULL),(542,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 07:53:19',NULL),(543,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 07:53:19',NULL),(544,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 07:54:01',NULL),(545,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 07:54:01',NULL),(546,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 07:54:01',NULL),(547,1,8,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 07:55:22',NULL),(548,1,8,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 07:55:22',NULL),(549,1,8,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 07:55:22',NULL),(550,1,8,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 07:55:22',NULL),(551,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:06:53',NULL),(552,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:06:53',NULL),(553,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:06:53',NULL),(554,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:06:53',NULL),(555,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:06:53',NULL),(556,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:00',NULL),(557,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:00',NULL),(558,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:00',NULL),(559,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:00',NULL),(560,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:00',NULL),(561,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:00',NULL),(562,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:13',NULL),(563,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:13',NULL),(564,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:13',NULL),(565,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:13',NULL),(566,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:13',NULL),(567,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:13',NULL),(568,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:13',NULL),(569,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:26',NULL),(570,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:26',NULL),(571,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:26',NULL),(572,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:26',NULL),(573,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:26',NULL),(574,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:26',NULL),(575,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:26',NULL),(576,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:26',NULL),(577,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:47',NULL),(578,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:47',NULL),(579,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:47',NULL),(580,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:47',NULL),(581,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:47',NULL),(582,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:47',NULL),(583,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:47',NULL),(584,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:47',NULL),(585,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:47',NULL),(586,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:56',NULL),(587,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:56',NULL),(588,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:56',NULL),(589,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:56',NULL),(590,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:56',NULL),(591,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:56',NULL),(592,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:56',NULL),(593,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:56',NULL),(594,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:56',NULL),(595,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:07:56',NULL),(596,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:06',NULL),(597,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:06',NULL),(598,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:06',NULL),(599,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:06',NULL),(600,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:06',NULL),(601,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:06',NULL),(602,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:06',NULL),(603,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:06',NULL),(604,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:06',NULL),(605,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:06',NULL),(606,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:07',NULL),(607,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:30',NULL),(608,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:30',NULL),(609,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:30',NULL),(610,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:30',NULL),(611,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:30',NULL),(612,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:30',NULL),(613,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:30',NULL),(614,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:30',NULL),(615,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:30',NULL),(616,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:30',NULL),(617,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:30',NULL),(618,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:31',NULL),(619,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:41',NULL),(620,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:41',NULL),(621,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:41',NULL),(622,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:41',NULL),(623,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:41',NULL),(624,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:41',NULL),(625,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:41',NULL),(626,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:41',NULL),(627,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:41',NULL),(628,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:41',NULL),(629,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:41',NULL),(630,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:42',NULL),(631,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:42',NULL),(632,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:44',NULL),(633,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:44',NULL),(634,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:44',NULL),(635,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:44',NULL),(636,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:44',NULL),(637,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:44',NULL),(638,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:44',NULL),(639,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:44',NULL),(640,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:44',NULL),(641,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:44',NULL),(642,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:44',NULL),(643,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:44',NULL),(644,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:44',NULL),(645,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:08:44',NULL),(646,1,8,'::ffff:118.70.12.238','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:09:24',NULL),(647,1,8,'::ffff:118.70.12.238','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:09:24',NULL),(648,1,8,'::ffff:118.70.12.238','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:09:24',NULL),(649,1,8,'::ffff:118.70.12.238','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:09:24',NULL),(650,1,8,'::ffff:118.70.12.238','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:09:24',NULL),(651,1,8,'::ffff:118.70.12.238','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:09:24',NULL),(652,1,8,'::ffff:118.70.12.238','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:09:24',NULL),(653,1,8,'::ffff:118.70.12.238','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:09:24',NULL),(654,1,8,'::ffff:118.70.12.238','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:09:24',NULL),(655,1,8,'::ffff:118.70.12.238','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:09:24',NULL),(656,1,8,'::ffff:118.70.12.238','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:09:24',NULL),(657,1,8,'::ffff:118.70.12.238','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:09:25',NULL),(658,1,8,'::ffff:118.70.12.238','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:09:25',NULL),(659,1,8,'::ffff:118.70.12.238','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:09:25',NULL),(660,1,8,'::ffff:118.70.12.238','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:09:25',NULL),(661,1,8,'::ffff:113.170.9.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:10:23',NULL),(662,1,8,'::ffff:113.170.9.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:10:23',NULL),(663,1,8,'::ffff:113.170.9.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:10:23',NULL),(664,1,8,'::ffff:113.170.9.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:10:23',NULL),(665,1,8,'::ffff:113.170.9.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:10:23',NULL),(666,1,8,'::ffff:113.170.9.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:10:23',NULL),(667,1,8,'::ffff:113.170.9.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:10:23',NULL),(668,1,8,'::ffff:113.170.9.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:10:23',NULL),(669,1,8,'::ffff:113.170.9.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:10:23',NULL),(670,1,8,'::ffff:113.170.9.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:10:23',NULL),(671,1,8,'::ffff:113.170.9.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:10:23',NULL),(672,1,8,'::ffff:113.170.9.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:10:23',NULL),(673,1,8,'::ffff:113.170.9.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:10:23',NULL),(674,1,8,'::ffff:113.170.9.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:10:23',NULL),(675,1,8,'::ffff:113.170.9.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:10:23',NULL),(676,1,8,'::ffff:113.170.9.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 08:10:23',NULL),(677,1,8,'::ffff:113.161.227.54','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:29:16',NULL),(678,1,8,'::ffff:113.161.227.54','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:29:16',NULL),(679,1,8,'::ffff:113.161.227.54','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:29:16',NULL),(680,1,8,'::ffff:113.161.227.54','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:29:16',NULL),(681,1,8,'::ffff:113.161.227.54','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:29:16',NULL),(682,1,8,'::ffff:113.161.227.54','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:29:16',NULL),(683,1,8,'::ffff:113.161.227.54','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:29:16',NULL),(684,1,8,'::ffff:113.161.227.54','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:29:16',NULL),(685,1,8,'::ffff:113.161.227.54','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:29:16',NULL),(686,1,8,'::ffff:113.161.227.54','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:29:16',NULL),(687,1,8,'::ffff:113.161.227.54','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:29:16',NULL),(688,1,8,'::ffff:113.161.227.54','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:29:16',NULL),(689,1,8,'::ffff:113.161.227.54','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:29:16',NULL),(690,1,8,'::ffff:113.161.227.54','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:29:16',NULL),(691,1,8,'::ffff:113.161.227.54','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:29:16',NULL),(692,1,8,'::ffff:113.161.227.54','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:29:16',NULL),(693,1,8,'::ffff:113.161.227.54','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 08:29:16',NULL),(694,1,8,'::ffff:115.75.1.179','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:06:45',NULL),(695,1,8,'::ffff:115.75.1.179','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:06:45',NULL),(696,1,8,'::ffff:115.75.1.179','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:06:45',NULL),(697,1,8,'::ffff:115.75.1.179','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:06:45',NULL),(698,1,8,'::ffff:115.75.1.179','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:06:45',NULL),(699,1,8,'::ffff:115.75.1.179','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:06:45',NULL),(700,1,8,'::ffff:115.75.1.179','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:06:45',NULL),(701,1,8,'::ffff:115.75.1.179','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:06:45',NULL),(702,1,8,'::ffff:115.75.1.179','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:06:45',NULL),(703,1,8,'::ffff:115.75.1.179','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:06:45',NULL),(704,1,8,'::ffff:115.75.1.179','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:06:45',NULL),(705,1,8,'::ffff:115.75.1.179','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:06:45',NULL),(706,1,8,'::ffff:115.75.1.179','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:06:45',NULL),(707,1,8,'::ffff:115.75.1.179','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:06:45',NULL),(708,1,8,'::ffff:115.75.1.179','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:06:45',NULL),(709,1,8,'::ffff:115.75.1.179','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:06:45',NULL),(710,1,8,'::ffff:115.75.1.179','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:06:45',NULL),(711,1,8,'::ffff:115.75.1.179','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:06:45',NULL),(712,1,8,'::ffff:192.168.32.131','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:28:44',NULL),(713,1,8,'::ffff:192.168.32.131','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:28:44',NULL),(714,1,8,'::ffff:192.168.32.131','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:28:44',NULL),(715,1,8,'::ffff:192.168.32.131','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:28:44',NULL),(716,1,8,'::ffff:192.168.32.131','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:28:44',NULL),(717,1,8,'::ffff:192.168.32.131','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:28:44',NULL),(718,1,8,'::ffff:192.168.32.131','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:28:44',NULL),(719,1,8,'::ffff:192.168.32.131','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:28:44',NULL),(720,1,8,'::ffff:192.168.32.131','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:28:44',NULL),(721,1,8,'::ffff:192.168.32.131','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:28:44',NULL),(722,1,8,'::ffff:192.168.32.131','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:28:44',NULL),(723,1,8,'::ffff:192.168.32.131','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:28:44',NULL),(724,1,8,'::ffff:192.168.32.131','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:28:44',NULL),(725,1,8,'::ffff:192.168.32.131','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:28:44',NULL),(726,1,8,'::ffff:192.168.32.131','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:28:44',NULL),(727,1,8,'::ffff:192.168.32.131','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:28:44',NULL),(728,1,8,'::ffff:192.168.32.131','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:28:44',NULL),(729,1,8,'::ffff:192.168.32.131','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:28:44',NULL),(730,1,8,'::ffff:192.168.32.131','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:28:44',NULL),(731,1,8,'::ffff:117.0.255.209','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 09:30:30',NULL),(732,1,8,'::ffff:117.0.255.209','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 09:30:30',NULL),(733,1,8,'::ffff:117.0.255.209','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 09:30:30',NULL),(734,1,8,'::ffff:117.0.255.209','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 09:30:30',NULL),(735,1,8,'::ffff:117.0.255.209','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 09:30:30',NULL),(736,1,8,'::ffff:117.0.255.209','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 09:30:30',NULL),(737,1,8,'::ffff:117.0.255.209','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 09:30:30',NULL),(738,1,8,'::ffff:117.0.255.209','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 09:30:30',NULL),(739,1,8,'::ffff:117.0.255.209','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 09:30:30',NULL),(740,1,8,'::ffff:117.0.255.209','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 09:30:30',NULL),(741,1,8,'::ffff:117.0.255.209','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 09:30:30',NULL),(742,1,8,'::ffff:117.0.255.209','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 09:30:30',NULL),(743,1,8,'::ffff:117.0.255.209','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 09:30:30',NULL),(744,1,8,'::ffff:117.0.255.209','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 09:30:30',NULL),(745,1,8,'::ffff:117.0.255.209','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 09:30:30',NULL),(746,1,8,'::ffff:117.0.255.209','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 09:30:30',NULL),(747,1,8,'::ffff:117.0.255.209','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 09:30:30',NULL),(748,1,8,'::ffff:117.0.255.209','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 09:30:30',NULL),(749,1,8,'::ffff:117.0.255.209','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 09:30:30',NULL),(750,1,8,'::ffff:117.0.255.209','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 09:30:30',NULL),(751,1,8,'::ffff:171.249.33.248','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:43:13',NULL),(752,1,8,'::ffff:171.249.33.248','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:43:13',NULL),(753,1,8,'::ffff:171.249.33.248','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:43:13',NULL),(754,1,8,'::ffff:171.249.33.248','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:43:13',NULL),(755,1,8,'::ffff:171.249.33.248','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:43:13',NULL),(756,1,8,'::ffff:171.249.33.248','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:43:13',NULL),(757,1,8,'::ffff:171.249.33.248','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:43:13',NULL),(758,1,8,'::ffff:171.249.33.248','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:43:13',NULL),(759,1,8,'::ffff:171.249.33.248','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:43:13',NULL),(760,1,8,'::ffff:171.249.33.248','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:43:13',NULL),(761,1,8,'::ffff:171.249.33.248','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:43:13',NULL),(762,1,8,'::ffff:171.249.33.248','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:43:13',NULL),(763,1,8,'::ffff:171.249.33.248','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:43:13',NULL),(764,1,8,'::ffff:171.249.33.248','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:43:13',NULL),(765,1,8,'::ffff:171.249.33.248','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:43:13',NULL),(766,1,8,'::ffff:171.249.33.248','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:43:13',NULL),(767,1,8,'::ffff:171.249.33.248','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:43:13',NULL),(768,1,8,'::ffff:171.249.33.248','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:43:13',NULL),(769,1,8,'::ffff:171.249.33.248','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:43:13',NULL),(770,1,8,'::ffff:171.249.33.248','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:43:13',NULL),(771,1,8,'::ffff:171.249.33.248','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:43:13',NULL),(772,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:51:54',NULL),(773,1,8,'::ffff:113.190.238.162','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:52:29',NULL),(774,1,8,'::ffff:113.190.238.162','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 09:52:29',NULL),(775,1,8,'::ffff:65.49.68.193','[\"en-US\",\"en\",{\"q\":\"0.8,ja\"}]',0,'2015-06-22 10:26:13',NULL),(776,1,8,'::ffff:65.49.68.193','[\"en-US\",\"en\",{\"q\":\"0.8,ja\"}]',0,'2015-06-22 10:26:13',NULL),(777,1,8,'::ffff:65.49.68.193','[\"en-US\",\"en\",{\"q\":\"0.8,ja\"}]',0,'2015-06-22 10:26:13',NULL),(778,1,8,'::ffff:101.99.55.13','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 10:29:12',NULL),(779,1,8,'::ffff:101.99.55.13','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 10:29:12',NULL),(780,1,8,'::ffff:101.99.55.13','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 10:29:12',NULL),(781,1,8,'::ffff:101.99.55.13','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 10:29:12',NULL),(782,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 10:31:30',NULL),(783,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 10:31:30',NULL),(784,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 10:31:31',NULL),(785,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 10:31:31',NULL),(786,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 10:31:31',NULL),(787,1,8,'::ffff:58.187.242.45','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 10:46:32',NULL),(788,1,8,'::ffff:58.187.242.45','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 10:46:32',NULL),(789,1,8,'::ffff:58.187.242.45','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 10:46:32',NULL),(790,1,8,'::ffff:58.187.242.45','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 10:46:32',NULL),(791,1,8,'::ffff:58.187.242.45','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 10:46:32',NULL),(792,1,8,'::ffff:58.187.242.45','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 10:46:32',NULL),(793,1,8,'::ffff:14.161.45.91','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 10:47:55',NULL),(794,1,8,'::ffff:14.161.45.91','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 10:47:55',NULL),(795,1,8,'::ffff:14.161.45.91','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 10:47:55',NULL),(796,1,8,'::ffff:14.161.45.91','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 10:47:55',NULL),(797,1,8,'::ffff:14.161.45.91','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 10:47:55',NULL),(798,1,8,'::ffff:14.161.45.91','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 10:47:55',NULL),(799,1,8,'::ffff:14.161.45.91','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 10:47:55',NULL),(800,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 10:59:42',NULL),(801,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 10:59:42',NULL),(802,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 10:59:42',NULL),(803,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 10:59:42',NULL),(804,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 10:59:42',NULL),(805,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 10:59:42',NULL),(806,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 10:59:42',NULL),(807,1,8,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 10:59:42',NULL),(808,1,8,'::ffff:1.55.19.237','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 11:11:55',NULL),(809,1,8,'::ffff:1.55.19.237','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 11:11:55',NULL),(810,1,8,'::ffff:1.55.19.237','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 11:11:55',NULL),(811,1,8,'::ffff:1.55.19.237','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 11:11:55',NULL),(812,1,8,'::ffff:1.55.19.237','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 11:11:55',NULL),(813,1,8,'::ffff:1.55.19.237','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 11:11:55',NULL),(814,1,8,'::ffff:1.55.19.237','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 11:11:55',NULL),(815,1,8,'::ffff:1.55.19.237','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 11:11:55',NULL),(816,1,8,'::ffff:1.55.19.237','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 11:11:55',NULL),(817,1,8,'::ffff:14.161.66.202','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 11:23:47',NULL),(818,1,8,'::ffff:14.161.66.202','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 11:23:47',NULL),(819,1,8,'::ffff:14.161.66.202','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 11:23:47',NULL),(820,1,8,'::ffff:14.161.66.202','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 11:23:47',NULL),(821,1,8,'::ffff:14.161.66.202','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 11:23:47',NULL),(822,1,8,'::ffff:14.161.66.202','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 11:23:47',NULL),(823,1,8,'::ffff:14.161.66.202','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 11:23:47',NULL),(824,1,8,'::ffff:14.161.66.202','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 11:23:47',NULL),(825,1,8,'::ffff:14.161.66.202','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 11:23:47',NULL),(826,1,8,'::ffff:14.161.66.202','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 11:23:47',NULL),(827,1,8,'::ffff:1.52.57.114','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:28:48',NULL),(828,1,8,'::ffff:1.52.57.114','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:28:48',NULL),(829,1,8,'::ffff:1.52.57.114','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:28:48',NULL),(830,1,8,'::ffff:1.52.57.114','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:28:48',NULL),(831,1,8,'::ffff:1.52.57.114','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:28:48',NULL),(832,1,8,'::ffff:1.52.57.114','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:28:48',NULL),(833,1,8,'::ffff:1.52.57.114','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:28:48',NULL),(834,1,8,'::ffff:1.52.57.114','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:28:48',NULL),(835,1,8,'::ffff:1.52.57.114','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:28:48',NULL),(836,1,8,'::ffff:1.52.57.114','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:28:48',NULL),(837,1,8,'::ffff:1.52.57.114','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:28:48',NULL),(838,1,8,'::ffff:115.79.50.16','[\"vi\",{}]',0,'2015-06-22 11:30:39',NULL),(839,1,8,'::ffff:115.79.50.16','[\"vi\",{}]',0,'2015-06-22 11:30:39',NULL),(840,1,8,'::ffff:115.79.50.16','[\"vi\",{}]',0,'2015-06-22 11:30:39',NULL),(841,1,8,'::ffff:115.79.50.16','[\"vi\",{}]',0,'2015-06-22 11:30:39',NULL),(842,1,8,'::ffff:115.79.50.16','[\"vi\",{}]',0,'2015-06-22 11:30:39',NULL),(843,1,8,'::ffff:115.79.50.16','[\"vi\",{}]',0,'2015-06-22 11:30:39',NULL),(844,1,8,'::ffff:115.79.50.16','[\"vi\",{}]',0,'2015-06-22 11:30:39',NULL),(845,1,8,'::ffff:115.79.50.16','[\"vi\",{}]',0,'2015-06-22 11:30:39',NULL),(846,1,8,'::ffff:115.79.50.16','[\"vi\",{}]',0,'2015-06-22 11:30:39',NULL),(847,1,8,'::ffff:115.79.50.16','[\"vi\",{}]',0,'2015-06-22 11:30:39',NULL),(848,1,8,'::ffff:115.79.50.16','[\"vi\",{}]',0,'2015-06-22 11:30:39',NULL),(849,1,8,'::ffff:115.79.50.16','[\"vi\",{}]',0,'2015-06-22 11:30:39',NULL),(850,1,8,'::ffff:171.234.248.71','[\"vi\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:56:55',NULL),(851,1,8,'::ffff:171.234.248.71','[\"vi\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:56:55',NULL),(852,1,8,'::ffff:171.234.248.71','[\"vi\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:56:55',NULL),(853,1,8,'::ffff:171.234.248.71','[\"vi\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:56:55',NULL),(854,1,8,'::ffff:171.234.248.71','[\"vi\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:56:55',NULL),(855,1,8,'::ffff:171.234.248.71','[\"vi\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:56:55',NULL),(856,1,8,'::ffff:171.234.248.71','[\"vi\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:56:55',NULL),(857,1,8,'::ffff:171.234.248.71','[\"vi\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:56:55',NULL),(858,1,8,'::ffff:171.234.248.71','[\"vi\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:56:55',NULL),(859,1,8,'::ffff:171.234.248.71','[\"vi\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:56:55',NULL),(860,1,8,'::ffff:171.234.248.71','[\"vi\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:56:55',NULL),(861,1,8,'::ffff:171.234.248.71','[\"vi\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:56:55',NULL),(862,1,8,'::ffff:171.234.248.71','[\"vi\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 11:56:55',NULL),(863,1,8,'::ffff:222.253.3.34','[\"vi-VN\",\"vi\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-22 14:14:25',NULL),(864,1,8,'::ffff:222.253.3.34','[\"vi-VN\",\"vi\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-22 14:14:25',NULL),(865,1,8,'::ffff:222.253.3.34','[\"vi-VN\",\"vi\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-22 14:14:25',NULL),(866,1,8,'::ffff:222.253.3.34','[\"vi-VN\",\"vi\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-22 14:14:25',NULL),(867,1,8,'::ffff:222.253.3.34','[\"vi-VN\",\"vi\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-22 14:14:25',NULL),(868,1,8,'::ffff:222.253.3.34','[\"vi-VN\",\"vi\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-22 14:14:25',NULL),(869,1,8,'::ffff:222.253.3.34','[\"vi-VN\",\"vi\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-22 14:14:25',NULL),(870,1,8,'::ffff:222.253.3.34','[\"vi-VN\",\"vi\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-22 14:14:25',NULL),(871,1,8,'::ffff:222.253.3.34','[\"vi-VN\",\"vi\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-22 14:14:25',NULL),(872,1,8,'::ffff:222.253.3.34','[\"vi-VN\",\"vi\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-22 14:14:25',NULL),(873,1,8,'::ffff:222.253.3.34','[\"vi-VN\",\"vi\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-22 14:14:25',NULL),(874,1,8,'::ffff:222.253.3.34','[\"vi-VN\",\"vi\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-22 14:14:25',NULL),(875,1,8,'::ffff:222.253.3.34','[\"vi-VN\",\"vi\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-22 14:14:25',NULL),(876,1,8,'::ffff:222.253.3.34','[\"vi-VN\",\"vi\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-22 14:14:25',NULL),(877,1,8,'::ffff:222.253.3.34','[\"vi-VN\",\"vi\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-22 14:14:25',NULL),(878,1,8,'::ffff:116.106.153.135','[\"en-us\",{}]',0,'2015-06-22 14:22:19',NULL),(879,1,8,'::ffff:116.106.153.135','[\"en-us\",{}]',0,'2015-06-22 14:22:19',NULL),(880,1,8,'::ffff:116.106.153.135','[\"en-us\",{}]',0,'2015-06-22 14:22:19',NULL),(881,1,8,'::ffff:116.106.153.135','[\"en-us\",{}]',0,'2015-06-22 14:22:19',NULL),(882,1,8,'::ffff:116.106.153.135','[\"en-us\",{}]',0,'2015-06-22 14:22:19',NULL),(883,1,8,'::ffff:116.106.153.135','[\"en-us\",{}]',0,'2015-06-22 14:22:19',NULL),(884,1,8,'::ffff:116.106.153.135','[\"en-us\",{}]',0,'2015-06-22 14:22:19',NULL),(885,1,8,'::ffff:116.106.153.135','[\"en-us\",{}]',0,'2015-06-22 14:22:19',NULL),(886,1,8,'::ffff:116.106.153.135','[\"en-us\",{}]',0,'2015-06-22 14:22:19',NULL),(887,1,8,'::ffff:116.106.153.135','[\"en-us\",{}]',0,'2015-06-22 14:22:19',NULL),(888,1,8,'::ffff:116.106.153.135','[\"en-us\",{}]',0,'2015-06-22 14:22:19',NULL),(889,1,8,'::ffff:116.106.153.135','[\"en-us\",{}]',0,'2015-06-22 14:22:19',NULL),(890,1,8,'::ffff:116.106.153.135','[\"en-us\",{}]',0,'2015-06-22 14:22:19',NULL),(891,1,8,'::ffff:116.106.153.135','[\"en-us\",{}]',0,'2015-06-22 14:22:19',NULL),(892,1,8,'::ffff:116.106.153.135','[\"en-us\",{}]',0,'2015-06-22 14:22:19',NULL),(893,1,8,'::ffff:116.106.153.135','[\"en-us\",{}]',0,'2015-06-22 14:22:19',NULL),(894,1,8,'::ffff:117.3.193.157','[\"vi\",\"en-US\",{\"q\":\"0.7,en\"}]',0,'2015-06-22 14:59:34',NULL),(895,1,8,'::ffff:117.3.193.157','[\"vi\",\"en-US\",{\"q\":\"0.7,en\"}]',0,'2015-06-22 14:59:34',NULL),(896,1,8,'::ffff:117.3.193.157','[\"vi\",\"en-US\",{\"q\":\"0.7,en\"}]',0,'2015-06-22 14:59:34',NULL),(897,1,8,'::ffff:117.3.193.157','[\"vi\",\"en-US\",{\"q\":\"0.7,en\"}]',0,'2015-06-22 14:59:34',NULL),(898,1,8,'::ffff:117.3.193.157','[\"vi\",\"en-US\",{\"q\":\"0.7,en\"}]',0,'2015-06-22 14:59:34',NULL),(899,1,8,'::ffff:117.3.193.157','[\"vi\",\"en-US\",{\"q\":\"0.7,en\"}]',0,'2015-06-22 14:59:34',NULL),(900,1,8,'::ffff:117.3.193.157','[\"vi\",\"en-US\",{\"q\":\"0.7,en\"}]',0,'2015-06-22 14:59:34',NULL),(901,1,8,'::ffff:117.3.193.157','[\"vi\",\"en-US\",{\"q\":\"0.7,en\"}]',0,'2015-06-22 14:59:34',NULL),(902,1,8,'::ffff:117.3.193.157','[\"vi\",\"en-US\",{\"q\":\"0.7,en\"}]',0,'2015-06-22 14:59:34',NULL),(903,1,8,'::ffff:117.3.193.157','[\"vi\",\"en-US\",{\"q\":\"0.7,en\"}]',0,'2015-06-22 14:59:34',NULL),(904,1,8,'::ffff:117.3.193.157','[\"vi\",\"en-US\",{\"q\":\"0.7,en\"}]',0,'2015-06-22 14:59:34',NULL),(905,1,8,'::ffff:117.3.193.157','[\"vi\",\"en-US\",{\"q\":\"0.7,en\"}]',0,'2015-06-22 14:59:34',NULL),(906,1,8,'::ffff:117.3.193.157','[\"vi\",\"en-US\",{\"q\":\"0.7,en\"}]',0,'2015-06-22 14:59:34',NULL),(907,1,8,'::ffff:117.3.193.157','[\"vi\",\"en-US\",{\"q\":\"0.7,en\"}]',0,'2015-06-22 14:59:34',NULL),(908,1,8,'::ffff:117.3.193.157','[\"vi\",\"en-US\",{\"q\":\"0.7,en\"}]',0,'2015-06-22 14:59:34',NULL),(909,1,8,'::ffff:117.3.193.157','[\"vi\",\"en-US\",{\"q\":\"0.7,en\"}]',0,'2015-06-22 14:59:34',NULL),(910,1,8,'::ffff:117.3.193.157','[\"vi\",\"en-US\",{\"q\":\"0.7,en\"}]',0,'2015-06-22 14:59:34',NULL),(911,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:03',NULL),(912,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:03',NULL),(913,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:03',NULL),(914,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:03',NULL),(915,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:03',NULL),(916,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:03',NULL),(917,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:03',NULL),(918,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:03',NULL),(919,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:03',NULL),(920,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:03',NULL),(921,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:03',NULL),(922,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:03',NULL),(923,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:03',NULL),(924,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:03',NULL),(925,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:03',NULL),(926,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:03',NULL),(927,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:03',NULL),(928,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:03',NULL),(929,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:58',NULL),(930,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:58',NULL),(931,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:58',NULL),(932,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:58',NULL),(933,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:58',NULL),(934,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:58',NULL),(935,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:58',NULL),(936,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:58',NULL),(937,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:58',NULL),(938,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:58',NULL),(939,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:59',NULL),(940,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:59',NULL),(941,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:59',NULL),(942,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:59',NULL),(943,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:59',NULL),(944,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:59',NULL),(945,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:59',NULL),(946,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:59',NULL),(947,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:11:59',NULL),(948,1,8,'::ffff:203.205.53.224','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:15:11',NULL),(949,1,8,'::ffff:203.205.53.224','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:15:11',NULL),(950,1,8,'::ffff:203.205.53.224','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:15:11',NULL),(951,1,8,'::ffff:203.205.53.224','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:15:11',NULL),(952,1,8,'::ffff:203.205.53.224','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:15:11',NULL),(953,1,8,'::ffff:203.205.53.224','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:15:11',NULL),(954,1,8,'::ffff:203.205.53.224','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:15:11',NULL),(955,1,8,'::ffff:203.205.53.224','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:15:11',NULL),(956,1,8,'::ffff:203.205.53.224','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:15:11',NULL),(957,1,8,'::ffff:203.205.53.224','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:15:11',NULL),(958,1,8,'::ffff:203.205.53.224','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:15:11',NULL),(959,1,8,'::ffff:203.205.53.224','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:15:11',NULL),(960,1,8,'::ffff:203.205.53.224','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:15:11',NULL),(961,1,8,'::ffff:203.205.53.224','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:15:11',NULL),(962,1,8,'::ffff:203.205.53.224','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:15:11',NULL),(963,1,8,'::ffff:203.205.53.224','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:15:11',NULL),(964,1,8,'::ffff:203.205.53.224','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:15:11',NULL),(965,1,8,'::ffff:203.205.53.224','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:15:11',NULL),(966,1,8,'::ffff:203.205.53.224','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:15:11',NULL),(967,1,8,'::ffff:203.205.53.224','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:15:11',NULL),(968,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:21:01',NULL),(969,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:21:01',NULL),(970,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:21:01',NULL),(971,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:21:01',NULL),(972,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:21:02',NULL),(973,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:21:02',NULL),(974,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:21:02',NULL),(975,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:21:02',NULL),(976,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:21:02',NULL),(977,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:21:02',NULL),(978,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:21:02',NULL),(979,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:21:02',NULL),(980,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:21:02',NULL),(981,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:21:02',NULL),(982,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:21:02',NULL),(983,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:21:02',NULL),(984,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:21:02',NULL),(985,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:21:02',NULL),(986,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:21:02',NULL),(987,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:21:02',NULL),(988,1,8,'::ffff:58.186.48.111','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-22 15:21:02',NULL),(989,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:24:56',NULL),(990,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:24:56',NULL),(991,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:24:56',NULL),(992,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:24:56',NULL),(993,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:24:56',NULL),(994,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:24:56',NULL),(995,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:24:56',NULL),(996,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:24:56',NULL),(997,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:24:56',NULL),(998,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:24:56',NULL),(999,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:24:56',NULL),(1000,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:24:57',NULL),(1001,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:24:57',NULL),(1002,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:24:57',NULL),(1003,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:24:57',NULL),(1004,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:24:57',NULL),(1005,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:24:57',NULL),(1006,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:24:57',NULL),(1007,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:24:57',NULL),(1008,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:24:57',NULL),(1009,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:24:57',NULL),(1010,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:24:57',NULL),(1011,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:25:36',NULL),(1012,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:25:36',NULL),(1013,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:25:36',NULL),(1014,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:25:36',NULL),(1015,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:25:36',NULL),(1016,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:25:36',NULL),(1017,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:25:36',NULL),(1018,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:25:36',NULL),(1019,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:25:36',NULL),(1020,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:25:36',NULL),(1021,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:25:36',NULL),(1022,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:25:36',NULL),(1023,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:25:36',NULL),(1024,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:25:36',NULL),(1025,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:25:36',NULL),(1026,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:25:36',NULL),(1027,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:25:36',NULL),(1028,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:25:36',NULL),(1029,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:25:36',NULL),(1030,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:25:36',NULL),(1031,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:25:36',NULL),(1032,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:25:36',NULL),(1033,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:25:36',NULL),(1034,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1035,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1036,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1037,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1038,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1039,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1040,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1041,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1042,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1043,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1044,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1045,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1046,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1047,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1048,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1049,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1050,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1051,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1052,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1053,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1054,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1055,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1056,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1057,1,8,'::ffff:14.169.27.123','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-22 15:27:45',NULL),(1058,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:25',NULL),(1059,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:25',NULL),(1060,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:25',NULL),(1061,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:25',NULL),(1062,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:25',NULL),(1063,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:25',NULL),(1064,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:25',NULL),(1065,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:26',NULL),(1066,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:26',NULL),(1067,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:26',NULL),(1068,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:26',NULL),(1069,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:26',NULL),(1070,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:26',NULL),(1071,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:26',NULL),(1072,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:26',NULL),(1073,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:26',NULL),(1074,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:26',NULL),(1075,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:26',NULL),(1076,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:26',NULL),(1077,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:26',NULL),(1078,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:26',NULL),(1079,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:26',NULL),(1080,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:26',NULL),(1081,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:26',NULL),(1082,1,8,'::ffff:14.163.231.11','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 15:51:26',NULL),(1083,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:55',NULL),(1084,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:55',NULL),(1085,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:55',NULL),(1086,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:55',NULL),(1087,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:55',NULL),(1088,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:55',NULL),(1089,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:55',NULL),(1090,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:55',NULL),(1091,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:55',NULL),(1092,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:55',NULL),(1093,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:55',NULL),(1094,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:55',NULL),(1095,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:55',NULL),(1096,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:55',NULL),(1097,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:55',NULL),(1098,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:55',NULL),(1099,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:55',NULL),(1100,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:55',NULL),(1101,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:55',NULL),(1102,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:55',NULL),(1103,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:56',NULL),(1104,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:56',NULL),(1105,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:56',NULL),(1106,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:56',NULL),(1107,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:56',NULL),(1108,1,8,'::ffff:113.163.225.195','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:25:56',NULL),(1109,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1110,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1111,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1112,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1113,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1114,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1115,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1116,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1117,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1118,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1119,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1120,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1121,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1122,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1123,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1124,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1125,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1126,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1127,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1128,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1129,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1130,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1131,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1132,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1133,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1134,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1135,1,8,'::ffff:42.114.182.2','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:40:38',NULL),(1136,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1137,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1138,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1139,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1140,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1141,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1142,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1143,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1144,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1145,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1146,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1147,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1148,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1149,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1150,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1151,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1152,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1153,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1154,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1155,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1156,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1157,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1158,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1159,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1160,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1161,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1162,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1163,1,8,'::ffff:171.255.42.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 16:55:02',NULL),(1164,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:33',NULL),(1165,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:33',NULL),(1166,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:33',NULL),(1167,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:33',NULL),(1168,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:33',NULL),(1169,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:33',NULL),(1170,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:33',NULL),(1171,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:33',NULL),(1172,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:33',NULL),(1173,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:33',NULL),(1174,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:33',NULL),(1175,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:34',NULL),(1176,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:34',NULL),(1177,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:34',NULL),(1178,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:34',NULL),(1179,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:34',NULL),(1180,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:34',NULL),(1181,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:34',NULL),(1182,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:34',NULL),(1183,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:34',NULL),(1184,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:34',NULL),(1185,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:34',NULL),(1186,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:34',NULL),(1187,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:34',NULL),(1188,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:34',NULL),(1189,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:34',NULL),(1190,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:34',NULL),(1191,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:34',NULL),(1192,1,8,'::ffff:115.77.234.176','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:21:34',NULL),(1193,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1194,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1195,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1196,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1197,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1198,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1199,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1200,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1201,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1202,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1203,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1204,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1205,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1206,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1207,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1208,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1209,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1210,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1211,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1212,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1213,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1214,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1215,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1216,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1217,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1218,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1219,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1220,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1221,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1222,1,8,'::ffff:100.64.70.236','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 18:42:33',NULL),(1223,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:17',NULL),(1224,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:17',NULL),(1225,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:17',NULL),(1226,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:17',NULL),(1227,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:17',NULL),(1228,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:17',NULL),(1229,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:17',NULL),(1230,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:17',NULL),(1231,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:17',NULL),(1232,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:17',NULL),(1233,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:17',NULL),(1234,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:17',NULL),(1235,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:17',NULL),(1236,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:17',NULL),(1237,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:17',NULL),(1238,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:17',NULL),(1239,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:17',NULL),(1240,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:17',NULL),(1241,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:17',NULL),(1242,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:17',NULL),(1243,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:17',NULL),(1244,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:18',NULL),(1245,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:18',NULL),(1246,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:18',NULL),(1247,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:18',NULL),(1248,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:18',NULL),(1249,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:18',NULL),(1250,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:18',NULL),(1251,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:18',NULL),(1252,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:18',NULL),(1253,1,8,'::ffff:171.224.10.135','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:47:18',NULL),(1254,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:41',NULL),(1255,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:41',NULL),(1256,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:41',NULL),(1257,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:41',NULL),(1258,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:41',NULL),(1259,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:41',NULL),(1260,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:41',NULL),(1261,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:41',NULL),(1262,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:41',NULL),(1263,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:41',NULL),(1264,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:41',NULL),(1265,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:41',NULL),(1266,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:41',NULL),(1267,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:41',NULL),(1268,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:41',NULL),(1269,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:41',NULL),(1270,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:41',NULL),(1271,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:41',NULL),(1272,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:41',NULL),(1273,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:41',NULL),(1274,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:41',NULL),(1275,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:41',NULL),(1276,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:41',NULL),(1277,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:42',NULL),(1278,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:42',NULL),(1279,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:42',NULL),(1280,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:42',NULL),(1281,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:42',NULL),(1282,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:42',NULL),(1283,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:42',NULL),(1284,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:42',NULL),(1285,1,8,'::ffff:116.106.11.177','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-22 18:53:42',NULL),(1286,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1287,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1288,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1289,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1290,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1291,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1292,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1293,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1294,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1295,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1296,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1297,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1298,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1299,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1300,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1301,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1302,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1303,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1304,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1305,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1306,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1307,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1308,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1309,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1310,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1311,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1312,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1313,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1314,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1315,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1316,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1317,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1318,1,8,'::ffff:82.24.24.117','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-22 21:48:47',NULL),(1319,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1320,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1321,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1322,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1323,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1324,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1325,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1326,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1327,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1328,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1329,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1330,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1331,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1332,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1333,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1334,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1335,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1336,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1337,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1338,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1339,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1340,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1341,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1342,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1343,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1344,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1345,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1346,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1347,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1348,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1349,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1350,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1351,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1352,1,8,'::ffff:122.19.65.202','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 00:07:44',NULL),(1353,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1354,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1355,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1356,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1357,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1358,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1359,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1360,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1361,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1362,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1363,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1364,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1365,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1366,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1367,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1368,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1369,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1370,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1371,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1372,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1373,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1374,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1375,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1376,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1377,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1378,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1379,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1380,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1381,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1382,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1383,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1384,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1385,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1386,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1387,1,8,'::ffff:117.7.238.238','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:36:50',NULL),(1388,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1389,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1390,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1391,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1392,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1393,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1394,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1395,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1396,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1397,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1398,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1399,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1400,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1401,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1402,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1403,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1404,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1405,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1406,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1407,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1408,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1409,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1410,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1411,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1412,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1413,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1414,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1415,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1416,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1417,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:55',NULL),(1418,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:56',NULL),(1419,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:56',NULL),(1420,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:56',NULL),(1421,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:56',NULL),(1422,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:56',NULL),(1423,1,8,'::ffff:116.102.148.118','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 01:46:56',NULL),(1424,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1425,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1426,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1427,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1428,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1429,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1430,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1431,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1432,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1433,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1434,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1435,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1436,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1437,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1438,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1439,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1440,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1441,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1442,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1443,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1444,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1445,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1446,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1447,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1448,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1449,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1450,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1451,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1452,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1453,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1454,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1455,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1456,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1457,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1458,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1459,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1460,1,8,'::ffff:180.93.142.83','[\"vi\",\"fr\",{\"q\":\"0.8,en-US\"}]',0,'2015-06-23 01:48:47',NULL),(1461,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:21',NULL),(1462,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:21',NULL),(1463,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:21',NULL),(1464,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:21',NULL),(1465,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:21',NULL),(1466,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:21',NULL),(1467,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:21',NULL),(1468,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:21',NULL),(1469,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:21',NULL),(1470,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:21',NULL),(1471,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:21',NULL),(1472,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:21',NULL),(1473,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:21',NULL),(1474,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:21',NULL),(1475,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:21',NULL),(1476,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:21',NULL),(1477,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:21',NULL),(1478,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:21',NULL),(1479,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:21',NULL),(1480,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:21',NULL),(1481,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:21',NULL),(1482,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:22',NULL),(1483,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:22',NULL),(1484,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:22',NULL),(1485,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:22',NULL),(1486,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:22',NULL),(1487,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:22',NULL),(1488,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:22',NULL),(1489,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:22',NULL),(1490,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:22',NULL),(1491,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:22',NULL),(1492,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:22',NULL),(1493,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:22',NULL),(1494,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:22',NULL),(1495,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:22',NULL),(1496,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:22',NULL),(1497,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:22',NULL),(1498,1,8,'::ffff:222.252.25.57','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 01:53:22',NULL),(1499,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1500,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1501,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1502,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1503,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1504,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1505,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1506,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1507,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1508,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1509,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1510,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1511,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1512,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1513,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1514,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1515,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1516,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1517,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1518,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1519,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1520,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1521,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1522,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1523,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1524,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1525,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1526,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1527,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1528,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1529,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1530,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1531,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1532,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1533,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1534,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1535,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1536,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1537,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:06:08',NULL),(1538,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1539,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1540,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1541,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1542,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1543,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1544,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1545,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1546,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1547,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1548,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1549,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1550,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1551,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1552,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1553,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1554,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1555,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1556,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1557,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1558,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1559,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1560,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1561,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1562,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1563,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1564,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1565,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1566,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1567,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1568,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1569,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1570,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1571,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1572,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1573,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1574,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1575,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1576,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1577,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:10:58',NULL),(1578,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1579,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1580,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1581,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1582,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1583,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1584,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1585,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1586,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1587,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1588,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1589,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1590,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1591,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1592,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1593,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1594,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1595,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1596,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1597,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1598,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1599,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1600,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1601,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1602,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1603,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1604,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1605,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1606,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1607,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1608,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1609,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1610,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1611,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1612,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1613,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1614,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1615,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1616,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1617,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1618,1,8,'::ffff:115.79.56.189','[\"vi\",\"en-US\",{\"q\":\"0.8,en\"}]',0,'2015-06-23 02:12:23',NULL),(1619,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1620,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1621,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1622,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1623,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1624,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1625,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1626,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1627,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1628,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1629,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1630,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1631,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1632,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1633,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1634,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1635,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1636,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1637,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1638,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1639,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1640,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1641,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1642,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1643,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1644,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1645,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1646,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1647,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1648,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1649,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1650,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1651,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1652,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1653,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1654,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1655,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1656,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1657,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1658,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1659,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1660,1,8,'::ffff:113.160.226.67','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:31:22',NULL),(1661,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:47',NULL),(1662,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:47',NULL),(1663,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:47',NULL),(1664,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:47',NULL),(1665,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:47',NULL),(1666,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:47',NULL),(1667,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:47',NULL),(1668,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:47',NULL),(1669,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:47',NULL),(1670,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:47',NULL),(1671,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:47',NULL),(1672,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:48',NULL),(1673,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:48',NULL),(1674,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:48',NULL),(1675,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:48',NULL),(1676,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:48',NULL),(1677,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:48',NULL),(1678,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:48',NULL),(1679,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:48',NULL),(1680,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:48',NULL),(1681,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:48',NULL),(1682,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:48',NULL),(1683,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:48',NULL),(1684,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:48',NULL),(1685,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:48',NULL),(1686,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:48',NULL),(1687,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:48',NULL),(1688,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:48',NULL),(1689,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:48',NULL),(1690,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:48',NULL),(1691,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:49',NULL),(1692,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:49',NULL),(1693,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:49',NULL),(1694,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:49',NULL),(1695,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:49',NULL),(1696,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:49',NULL),(1697,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:49',NULL),(1698,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:49',NULL),(1699,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:49',NULL),(1700,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:49',NULL),(1701,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:49',NULL),(1702,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:49',NULL),(1703,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:41:49',NULL),(1704,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:25',NULL),(1705,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:25',NULL),(1706,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:25',NULL),(1707,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:25',NULL),(1708,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:25',NULL),(1709,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:25',NULL),(1710,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:25',NULL),(1711,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:25',NULL),(1712,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:25',NULL),(1713,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:25',NULL),(1714,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:26',NULL),(1715,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:26',NULL),(1716,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:26',NULL),(1717,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:26',NULL),(1718,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:26',NULL),(1719,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:26',NULL),(1720,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:26',NULL),(1721,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:26',NULL),(1722,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:26',NULL),(1723,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:26',NULL),(1724,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:26',NULL),(1725,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:26',NULL),(1726,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:26',NULL),(1727,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:26',NULL),(1728,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:26',NULL),(1729,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:26',NULL),(1730,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:26',NULL),(1731,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:26',NULL),(1732,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:26',NULL),(1733,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:26',NULL),(1734,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:27',NULL),(1735,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:27',NULL),(1736,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:27',NULL),(1737,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:27',NULL),(1738,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:27',NULL),(1739,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:27',NULL),(1740,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:27',NULL),(1741,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:27',NULL),(1742,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:27',NULL),(1743,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:27',NULL),(1744,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:27',NULL),(1745,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:27',NULL),(1746,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:27',NULL),(1747,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 02:42:27',NULL),(1748,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:39',NULL),(1749,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:39',NULL),(1750,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:39',NULL),(1751,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:39',NULL),(1752,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:39',NULL),(1753,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:39',NULL),(1754,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:39',NULL),(1755,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:39',NULL),(1756,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:39',NULL),(1757,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:39',NULL),(1758,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:39',NULL),(1759,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:39',NULL),(1760,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:39',NULL),(1761,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:39',NULL),(1762,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:39',NULL),(1763,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:39',NULL),(1764,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:39',NULL),(1765,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:39',NULL),(1766,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:39',NULL),(1767,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:39',NULL),(1768,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1769,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1770,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1771,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1772,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1773,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1774,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1775,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1776,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1777,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1778,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1779,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1780,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1781,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1782,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1783,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1784,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1785,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1786,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1787,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1788,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1789,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1790,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1791,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1792,1,8,'::ffff:118.69.63.244','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:46:40',NULL),(1793,1,8,'::ffff:113.161.207.141','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:51:01',NULL),(1794,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:54:42',NULL),(1795,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:54:42',NULL),(1796,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:55:29',NULL),(1797,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:55:29',NULL),(1798,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:55:29',NULL),(1799,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:56:11',NULL),(1800,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:56:11',NULL),(1801,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:56:11',NULL),(1802,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 02:56:11',NULL),(1803,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:57:21',NULL),(1804,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:57:21',NULL),(1805,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:57:21',NULL),(1806,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:57:21',NULL),(1807,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 02:57:21',NULL),(1808,11,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:59:36',NULL),(1809,11,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:59:36',NULL),(1810,11,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:59:36',NULL),(1811,11,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:59:36',NULL),(1812,11,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:59:36',NULL),(1813,11,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 02:59:36',NULL),(1814,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:03:02',NULL),(1815,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:03:02',NULL),(1816,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:03:02',NULL),(1817,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:03:02',NULL),(1818,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:03:02',NULL),(1819,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:03:02',NULL),(1820,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:03:02',NULL),(1821,1,8,'::ffff:115.79.87.220','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:03:34',NULL),(1822,1,8,'::ffff:115.79.87.220','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:03:34',NULL),(1823,1,8,'::ffff:115.79.87.220','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:03:34',NULL),(1824,1,8,'::ffff:115.79.87.220','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:03:34',NULL),(1825,1,8,'::ffff:115.79.87.220','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:03:34',NULL),(1826,1,8,'::ffff:115.79.87.220','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:03:34',NULL),(1827,1,8,'::ffff:115.79.87.220','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:03:34',NULL),(1828,1,8,'::ffff:115.79.87.220','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:03:34',NULL),(1829,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:09:43',NULL),(1830,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:09:43',NULL),(1831,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:09:43',NULL),(1832,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:09:43',NULL),(1833,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:09:43',NULL),(1834,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:09:43',NULL),(1835,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:09:43',NULL),(1836,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:09:43',NULL),(1837,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:09:43',NULL),(1838,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:10:08',NULL),(1839,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:10:08',NULL),(1840,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:10:08',NULL),(1841,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:10:08',NULL),(1842,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:10:08',NULL),(1843,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:10:08',NULL),(1844,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:10:08',NULL),(1845,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:10:08',NULL),(1846,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:10:08',NULL),(1847,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:10:08',NULL),(1848,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:10:20',NULL),(1849,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:10:20',NULL),(1850,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:10:20',NULL),(1851,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:10:20',NULL),(1852,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:10:20',NULL),(1853,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:10:20',NULL),(1854,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:10:20',NULL),(1855,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:10:20',NULL),(1856,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:10:20',NULL),(1857,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:10:20',NULL),(1858,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:10:20',NULL),(1859,1,8,'::ffff:118.70.146.171','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:10:47',NULL),(1860,1,8,'::ffff:118.70.146.171','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:10:47',NULL),(1861,1,8,'::ffff:118.70.146.171','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:10:47',NULL),(1862,1,8,'::ffff:118.70.146.171','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:10:47',NULL),(1863,1,8,'::ffff:118.70.146.171','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:10:47',NULL),(1864,1,8,'::ffff:118.70.146.171','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:10:47',NULL),(1865,1,8,'::ffff:118.70.146.171','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:10:47',NULL),(1866,1,8,'::ffff:118.70.146.171','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:10:47',NULL),(1867,1,8,'::ffff:118.70.146.171','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:10:47',NULL),(1868,1,8,'::ffff:118.70.146.171','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:10:47',NULL),(1869,1,8,'::ffff:118.70.146.171','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:10:47',NULL),(1870,1,8,'::ffff:118.70.146.171','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:10:47',NULL),(1871,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:00',NULL),(1872,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:00',NULL),(1873,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:00',NULL),(1874,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:00',NULL),(1875,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:00',NULL),(1876,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:00',NULL),(1877,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:00',NULL),(1878,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:00',NULL),(1879,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:00',NULL),(1880,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:00',NULL),(1881,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:00',NULL),(1882,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:00',NULL),(1883,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:00',NULL),(1884,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:13',NULL),(1885,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:13',NULL),(1886,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:13',NULL),(1887,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:13',NULL),(1888,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:13',NULL),(1889,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:13',NULL),(1890,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:13',NULL),(1891,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:13',NULL),(1892,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:13',NULL),(1893,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:13',NULL),(1894,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:13',NULL),(1895,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:13',NULL),(1896,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:13',NULL),(1897,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:13',NULL),(1898,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:18',NULL),(1899,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:18',NULL),(1900,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:18',NULL),(1901,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:18',NULL),(1902,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:18',NULL),(1903,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:18',NULL),(1904,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:18',NULL),(1905,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:18',NULL),(1906,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:18',NULL),(1907,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:18',NULL),(1908,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:18',NULL),(1909,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:18',NULL),(1910,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:18',NULL),(1911,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:18',NULL),(1912,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:18',NULL),(1913,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:38',NULL),(1914,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:38',NULL),(1915,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:38',NULL),(1916,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:38',NULL),(1917,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:38',NULL),(1918,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:38',NULL),(1919,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:38',NULL),(1920,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:38',NULL),(1921,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:38',NULL),(1922,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:38',NULL),(1923,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:38',NULL),(1924,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:38',NULL),(1925,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:38',NULL),(1926,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:38',NULL),(1927,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:38',NULL),(1928,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 03:11:38',NULL),(1929,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:13:54',NULL),(1930,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:13:54',NULL),(1931,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:13:54',NULL),(1932,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:13:54',NULL),(1933,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:13:54',NULL),(1934,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:13:54',NULL),(1935,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:13:54',NULL),(1936,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:13:54',NULL),(1937,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:13:54',NULL),(1938,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:13:54',NULL),(1939,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:13:54',NULL),(1940,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:13:54',NULL),(1941,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:13:54',NULL),(1942,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:13:54',NULL),(1943,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:13:54',NULL),(1944,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:13:54',NULL),(1945,1,8,'::ffff:113.161.72.234','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:13:54',NULL),(1946,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:16:28',NULL),(1947,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:16:28',NULL),(1948,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:16:28',NULL),(1949,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:16:28',NULL),(1950,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:16:28',NULL),(1951,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:16:28',NULL),(1952,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:16:28',NULL),(1953,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:16:28',NULL),(1954,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:16:28',NULL),(1955,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:16:28',NULL),(1956,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:16:28',NULL),(1957,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:16:28',NULL),(1958,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:16:28',NULL),(1959,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:16:28',NULL),(1960,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:16:28',NULL),(1961,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:16:28',NULL),(1962,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:16:28',NULL),(1963,1,8,'::ffff:115.77.61.140','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 03:16:28',NULL),(1964,1,8,'::ffff:117.7.147.14','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:21:57',NULL),(1965,1,8,'::ffff:117.7.147.14','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:21:57',NULL),(1966,1,8,'::ffff:117.7.147.14','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:21:57',NULL),(1967,1,8,'::ffff:117.7.147.14','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:21:57',NULL),(1968,1,8,'::ffff:117.7.147.14','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:21:57',NULL),(1969,1,8,'::ffff:117.7.147.14','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:21:57',NULL),(1970,1,8,'::ffff:117.7.147.14','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:21:57',NULL),(1971,1,8,'::ffff:117.7.147.14','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:21:57',NULL),(1972,1,8,'::ffff:117.7.147.14','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:21:57',NULL),(1973,1,8,'::ffff:117.7.147.14','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:21:57',NULL),(1974,1,8,'::ffff:117.7.147.14','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:21:57',NULL),(1975,1,8,'::ffff:117.7.147.14','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:21:57',NULL),(1976,1,8,'::ffff:117.7.147.14','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:21:57',NULL),(1977,1,8,'::ffff:117.7.147.14','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:21:57',NULL),(1978,1,8,'::ffff:117.7.147.14','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:21:57',NULL),(1979,1,8,'::ffff:117.7.147.14','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:21:57',NULL),(1980,1,8,'::ffff:117.7.147.14','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:21:57',NULL),(1981,1,8,'::ffff:117.7.147.14','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:21:57',NULL),(1982,1,8,'::ffff:117.7.147.14','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:21:57',NULL),(1983,12,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:22:58',NULL),(1984,12,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:22:58',NULL),(1985,12,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:22:58',NULL),(1986,12,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:22:58',NULL),(1987,12,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:22:58',NULL),(1988,12,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:22:58',NULL),(1989,12,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:22:58',NULL),(1990,12,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:22:58',NULL),(1991,12,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:22:58',NULL),(1992,12,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:22:58',NULL),(1993,12,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:22:58',NULL),(1994,12,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:22:58',NULL),(1995,12,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:22:58',NULL),(1996,12,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:22:58',NULL),(1997,12,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:22:58',NULL),(1998,12,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:22:58',NULL),(1999,12,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:22:58',NULL),(2000,12,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:22:58',NULL),(2001,12,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:22:58',NULL),(2002,12,1,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:22:58',NULL),(2003,1,8,'::ffff:14.169.84.2','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:28:58',NULL),(2004,1,8,'::ffff:14.169.84.2','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:33:36',NULL),(2005,1,8,'::ffff:14.169.84.2','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:35:40',NULL),(2006,1,8,'::ffff:14.169.84.2','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:35:40',NULL),(2007,1,8,'::ffff:113.162.218.79','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:36:56',NULL),(2008,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:46:24',NULL),(2009,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:46:40',NULL),(2010,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:46:53',NULL),(2011,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:46:53',NULL),(2012,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:47:02',NULL),(2013,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:47:02',NULL),(2014,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:47:02',NULL),(2015,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:47:15',NULL),(2016,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:47:15',NULL),(2017,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:47:15',NULL),(2018,1,8,'::ffff:123.24.12.172','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 03:47:15',NULL),(2019,1,8,'::ffff:117.3.193.157','[\"vi\",\"en-US\",{\"q\":\"0.7,en\"}]',0,'2015-06-23 03:47:26',NULL),(2020,1,8,'::ffff:117.3.193.157','[\"vi\",\"en-US\",{\"q\":\"0.7,en\"}]',0,'2015-06-23 03:47:26',NULL),(2021,1,8,'::ffff:117.3.193.157','[\"vi\",\"en-US\",{\"q\":\"0.7,en\"}]',0,'2015-06-23 03:47:26',NULL),(2022,1,8,'::ffff:117.3.193.157','[\"vi\",\"en-US\",{\"q\":\"0.7,en\"}]',0,'2015-06-23 03:47:26',NULL),(2023,1,8,'::ffff:117.3.193.157','[\"vi\",\"en-US\",{\"q\":\"0.7,en\"}]',0,'2015-06-23 03:47:26',NULL),(2024,0,8,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:53:47',NULL),(2025,0,8,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:55:13',NULL),(2026,0,8,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:55:13',NULL),(2027,0,8,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:55:29',NULL),(2028,0,8,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:55:29',NULL),(2029,0,8,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:55:29',NULL),(2030,0,8,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:55:59',NULL),(2031,0,8,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:55:59',NULL),(2032,0,8,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:55:59',NULL),(2033,0,8,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 03:55:59',NULL),(2034,1,8,'::ffff:217.118.91.119','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 04:16:03',NULL),(2035,1,8,'::ffff:113.171.248.58','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 04:21:49',NULL),(2036,1,8,'::ffff:113.171.248.58','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 04:21:49',NULL),(2037,1,8,'::ffff:113.171.248.58','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 04:23:13',NULL),(2038,1,8,'::ffff:113.171.248.58','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 04:23:13',NULL),(2039,1,8,'::ffff:113.171.248.58','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 04:23:13',NULL),(2040,1,8,'::ffff:171.233.29.88','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 04:46:59',NULL),(2041,1,8,'::ffff:171.233.29.88','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 04:46:59',NULL),(2042,1,8,'::ffff:171.233.29.88','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 04:46:59',NULL),(2043,1,8,'::ffff:171.233.29.88','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 04:46:59',NULL),(2044,1,8,'::ffff:116.101.21.121','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 04:48:34',NULL),(2045,1,8,'::ffff:116.101.21.121','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 04:48:34',NULL),(2046,1,8,'::ffff:116.101.21.121','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 04:48:34',NULL),(2047,1,8,'::ffff:116.101.21.121','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 04:48:34',NULL),(2048,1,8,'::ffff:116.101.21.121','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 04:48:34',NULL),(2049,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 05:19:55',NULL),(2050,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 05:20:26',NULL),(2051,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 05:20:26',NULL),(2052,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 05:20:57',NULL),(2053,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 05:20:57',NULL),(2054,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 05:20:57',NULL),(2055,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 05:29:10',NULL),(2056,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 05:29:10',NULL),(2057,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 05:29:10',NULL),(2058,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 05:29:10',NULL),(2059,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 05:29:52',NULL),(2060,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 05:46:59',NULL),(2061,1,8,'::ffff:113.160.54.50','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 06:04:36',NULL),(2062,1,8,'::ffff:113.160.54.50','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 06:04:37',NULL),(2063,1,8,'::ffff:113.160.54.50','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 06:04:37',NULL),(2064,1,8,'::ffff:123.22.75.90','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 06:34:28',NULL),(2065,1,8,'::ffff:123.22.75.90','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 06:35:58',NULL),(2066,1,8,'::ffff:123.22.75.90','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 06:35:58',NULL),(2067,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 06:39:52',NULL),(2068,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 06:39:52',NULL),(2069,1,8,'::ffff:58.186.96.86','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 06:39:52',NULL),(2070,1,8,'::ffff:115.79.45.24','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 06:40:45',NULL),(2071,1,8,'::ffff:115.79.45.24','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 06:40:45',NULL),(2072,1,8,'::ffff:115.79.45.24','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 06:40:45',NULL),(2073,1,8,'::ffff:115.79.45.24','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 06:40:45',NULL),(2074,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:11:45',NULL),(2075,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:11:45',NULL),(2076,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:11:45',NULL),(2077,11,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:15:41',NULL),(2078,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:15:41',NULL),(2079,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:15:41',NULL),(2080,1,8,'::ffff:118.70.233.65','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 07:16:45',NULL),(2081,1,8,'::ffff:118.70.233.65','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 07:16:45',NULL),(2082,1,8,'::ffff:118.70.233.65','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 07:16:45',NULL),(2083,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:16',NULL),(2084,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:16',NULL),(2085,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:16',NULL),(2086,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:16',NULL),(2087,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:16',NULL),(2088,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:16',NULL),(2089,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:16',NULL),(2090,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:16',NULL),(2091,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:16',NULL),(2092,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:25',NULL),(2093,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:25',NULL),(2094,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:25',NULL),(2095,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:25',NULL),(2096,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:25',NULL),(2097,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:25',NULL),(2098,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:25',NULL),(2099,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:25',NULL),(2100,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:25',NULL),(2101,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:25',NULL),(2102,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:25',NULL),(2103,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:25',NULL),(2104,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:25',NULL),(2105,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:32',NULL),(2106,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:32',NULL),(2107,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:32',NULL),(2108,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:32',NULL),(2109,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:32',NULL),(2110,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:32',NULL),(2111,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:32',NULL),(2112,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:32',NULL),(2113,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:35',NULL),(2114,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:35',NULL),(2115,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:35',NULL),(2116,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:35',NULL),(2117,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:35',NULL),(2118,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:35',NULL),(2119,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:35',NULL),(2120,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:35',NULL),(2121,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:35',NULL),(2122,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:36',NULL),(2123,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:36',NULL),(2124,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:36',NULL),(2125,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:36',NULL),(2126,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:36',NULL),(2127,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:36',NULL),(2128,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:36',NULL),(2129,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:36',NULL),(2130,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:36',NULL),(2131,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:36',NULL),(2132,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:44',NULL),(2133,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:44',NULL),(2134,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:44',NULL),(2135,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:44',NULL),(2136,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:44',NULL),(2137,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:44',NULL),(2138,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:44',NULL),(2139,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:44',NULL),(2140,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:44',NULL),(2141,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:44',NULL),(2142,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:44',NULL),(2143,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2144,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2145,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2146,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2147,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2148,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2149,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2150,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2151,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2152,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2153,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2154,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2155,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2156,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2157,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2158,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2159,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2160,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2161,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2162,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2163,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2164,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2165,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2166,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2167,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:52',NULL),(2168,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:56',NULL),(2169,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:56',NULL),(2170,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:56',NULL),(2171,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:56',NULL),(2172,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:56',NULL),(2173,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:56',NULL),(2174,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:56',NULL),(2175,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:56',NULL),(2176,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:56',NULL),(2177,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:56',NULL),(2178,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:57',NULL),(2179,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:57',NULL),(2180,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:57',NULL),(2181,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:17:57',NULL),(2182,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2183,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2184,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2185,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2186,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2187,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2188,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2189,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2190,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2191,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2192,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2193,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2194,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2195,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2196,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2197,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2198,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2199,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2200,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2201,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2202,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2203,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2204,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2205,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2206,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2207,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2208,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2209,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2210,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2211,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2212,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:18:00',NULL),(2213,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:23:36',NULL),(2214,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:23:36',NULL),(2215,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:23:36',NULL),(2216,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:23:41',NULL),(2217,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:23:41',NULL),(2218,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:23:41',NULL),(2219,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:23:41',NULL),(2220,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:23:41',NULL),(2221,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:23:41',NULL),(2222,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:23:41',NULL),(2223,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:23:51',NULL),(2224,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:23:51',NULL),(2225,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:23:51',NULL),(2226,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:23:51',NULL),(2227,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:23:51',NULL),(2228,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:23:51',NULL),(2229,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:23:51',NULL),(2230,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:23:51',NULL),(2231,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:23:51',NULL),(2232,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:23:51',NULL),(2233,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:23:51',NULL),(2234,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:39:50',NULL),(2235,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:39:50',NULL),(2236,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:39:50',NULL),(2237,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:45:45',NULL),(2238,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:45:45',NULL),(2239,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:45:45',NULL),(2240,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:46:31',NULL),(2241,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:46:31',NULL),(2242,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:46:31',NULL),(2243,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:46:31',NULL),(2244,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:46:31',NULL),(2245,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:46:31',NULL),(2246,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:46:31',NULL),(2247,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:37',NULL),(2248,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:37',NULL),(2249,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:37',NULL),(2250,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:37',NULL),(2251,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:37',NULL),(2252,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:37',NULL),(2253,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:37',NULL),(2254,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:37',NULL),(2255,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:37',NULL),(2256,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:37',NULL),(2257,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:37',NULL),(2258,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:45',NULL),(2259,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:45',NULL),(2260,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:45',NULL),(2261,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:45',NULL),(2262,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:45',NULL),(2263,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:45',NULL),(2264,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:45',NULL),(2265,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:45',NULL),(2266,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:45',NULL),(2267,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:45',NULL),(2268,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:45',NULL),(2269,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:45',NULL),(2270,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:45',NULL),(2271,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:45',NULL),(2272,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:45',NULL),(2273,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:51',NULL),(2274,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:51',NULL),(2275,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:51',NULL),(2276,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:51',NULL),(2277,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:51',NULL),(2278,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:51',NULL),(2279,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:51',NULL),(2280,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:51',NULL),(2281,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:51',NULL),(2282,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:51',NULL),(2283,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:51',NULL),(2284,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:51',NULL),(2285,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:51',NULL),(2286,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:51',NULL),(2287,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:51',NULL),(2288,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:51',NULL),(2289,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:51',NULL),(2290,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:51',NULL),(2291,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:47:51',NULL),(2292,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:49:18',NULL),(2293,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:49:18',NULL),(2294,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:49:18',NULL),(2295,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:49:18',NULL),(2296,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:49:18',NULL),(2297,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:49:18',NULL),(2298,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:49:18',NULL),(2299,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:49:18',NULL),(2300,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:49:18',NULL),(2301,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:49:18',NULL),(2302,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:49:18',NULL),(2303,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:49:18',NULL),(2304,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:49:18',NULL),(2305,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:49:18',NULL),(2306,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:49:18',NULL),(2307,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:49:18',NULL),(2308,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:49:18',NULL),(2309,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:49:18',NULL),(2310,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:49:18',NULL),(2311,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:49:18',NULL),(2312,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:49:18',NULL),(2313,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:49:18',NULL),(2314,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:49:18',NULL),(2315,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2316,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2317,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2318,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2319,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2320,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2321,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2322,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2323,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2324,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2325,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2326,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2327,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2328,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2329,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2330,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2331,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2332,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2333,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2334,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2335,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2336,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2337,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2338,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2339,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2340,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2341,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:03',NULL),(2342,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2343,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2344,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2345,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2346,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2347,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2348,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2349,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2350,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2351,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2352,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2353,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2354,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2355,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2356,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2357,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2358,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2359,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2360,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2361,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2362,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2363,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2364,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2365,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2366,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2367,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2368,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2369,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2370,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2371,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2372,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:32',NULL),(2373,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:56',NULL),(2374,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:56',NULL),(2375,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:50:56',NULL),(2376,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:52:36',NULL),(2377,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:52:36',NULL),(2378,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:52:36',NULL),(2379,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:52:36',NULL),(2380,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:52:36',NULL),(2381,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:52:36',NULL),(2382,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:52:36',NULL),(2383,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:54:58',NULL),(2384,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:54:58',NULL),(2385,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:54:58',NULL),(2386,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:54:58',NULL),(2387,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:54:58',NULL),(2388,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:54:58',NULL),(2389,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:54:58',NULL),(2390,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:54:58',NULL),(2391,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:54:58',NULL),(2392,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:54:58',NULL),(2393,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:54:58',NULL),(2394,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:01',NULL),(2395,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:01',NULL),(2396,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:01',NULL),(2397,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:01',NULL),(2398,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:01',NULL),(2399,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:01',NULL),(2400,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:01',NULL),(2401,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:01',NULL),(2402,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:01',NULL),(2403,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:01',NULL),(2404,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:01',NULL),(2405,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:01',NULL),(2406,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:01',NULL),(2407,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:01',NULL),(2408,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:01',NULL),(2409,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:16',NULL),(2410,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:16',NULL),(2411,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:16',NULL),(2412,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:16',NULL),(2413,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:16',NULL),(2414,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:16',NULL),(2415,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:16',NULL),(2416,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:16',NULL),(2417,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:16',NULL),(2418,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:17',NULL),(2419,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:17',NULL),(2420,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:17',NULL),(2421,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:17',NULL),(2422,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:17',NULL),(2423,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:17',NULL),(2424,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:17',NULL),(2425,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:17',NULL),(2426,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:17',NULL),(2427,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:17',NULL),(2428,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:24',NULL),(2429,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:24',NULL),(2430,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:24',NULL),(2431,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:24',NULL),(2432,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:24',NULL),(2433,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:24',NULL),(2434,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:24',NULL),(2435,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:24',NULL),(2436,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:24',NULL),(2437,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:24',NULL),(2438,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:25',NULL),(2439,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:25',NULL),(2440,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:25',NULL),(2441,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:25',NULL),(2442,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:25',NULL),(2443,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:25',NULL),(2444,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:25',NULL),(2445,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:25',NULL),(2446,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:25',NULL),(2447,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:25',NULL),(2448,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:25',NULL),(2449,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:25',NULL),(2450,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:25',NULL),(2451,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:40',NULL),(2452,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:40',NULL),(2453,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:40',NULL),(2454,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:40',NULL),(2455,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:40',NULL),(2456,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:40',NULL),(2457,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:40',NULL),(2458,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:40',NULL),(2459,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:40',NULL),(2460,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:40',NULL),(2461,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:40',NULL),(2462,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:40',NULL),(2463,0,1,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:40',NULL),(2464,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:40',NULL),(2465,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:40',NULL),(2466,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:40',NULL),(2467,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:40',NULL),(2468,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:40',NULL),(2469,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:40',NULL),(2470,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:40',NULL),(2471,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:40',NULL),(2472,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:41',NULL),(2473,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:41',NULL),(2474,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:41',NULL),(2475,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:41',NULL),(2476,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:41',NULL),(2477,0,9,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 07:55:41',NULL),(2478,1,8,'::ffff:113.190.242.223','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:00:19',NULL),(2479,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:11:24',NULL),(2480,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:11:24',NULL),(2481,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:11:26',NULL),(2482,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:11:26',NULL),(2483,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:11:26',NULL),(2484,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:11:26',NULL),(2485,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:11:26',NULL),(2486,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:11:26',NULL),(2487,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:11:26',NULL),(2488,1,8,'::ffff:171.249.223.198','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:11:54',NULL),(2489,1,8,'::ffff:171.249.223.198','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:11:54',NULL),(2490,1,8,'::ffff:171.249.223.198','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:11:54',NULL),(2491,1,8,'::ffff:171.249.223.198','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:11:54',NULL),(2492,1,8,'::ffff:171.249.223.198','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:11:54',NULL),(2493,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:16:02',NULL),(2494,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:16:02',NULL),(2495,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:16:02',NULL),(2496,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:16:02',NULL),(2497,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:16:02',NULL),(2498,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:16:02',NULL),(2499,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:16:02',NULL),(2500,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:16:02',NULL),(2501,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:16:02',NULL),(2502,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:16:02',NULL),(2503,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:16:02',NULL),(2504,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:16:02',NULL),(2505,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:16:02',NULL),(2506,1,8,'::ffff:183.80.162.184','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:26:53',NULL),(2507,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:34:34',NULL),(2508,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:34:34',NULL),(2509,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:37:55',NULL),(2510,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:37:55',NULL),(2511,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:37:55',NULL),(2512,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:38:21',NULL),(2513,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:38:21',NULL),(2514,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:38:21',NULL),(2515,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:38:21',NULL),(2516,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:38:54',NULL),(2517,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:38:54',NULL),(2518,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:38:54',NULL),(2519,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:38:54',NULL),(2520,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:38:54',NULL),(2521,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:39:20',NULL),(2522,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:39:20',NULL),(2523,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:39:20',NULL),(2524,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:39:20',NULL),(2525,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:39:20',NULL),(2526,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:39:20',NULL),(2527,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:39:48',NULL),(2528,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:39:48',NULL),(2529,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:39:48',NULL),(2530,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:39:48',NULL),(2531,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:39:48',NULL),(2532,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:39:48',NULL),(2533,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:39:48',NULL),(2534,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:40:45',NULL),(2535,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:40:45',NULL),(2536,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:40:45',NULL),(2537,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:40:45',NULL),(2538,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:40:45',NULL),(2539,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:40:45',NULL),(2540,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:40:45',NULL),(2541,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:40:45',NULL),(2542,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:40:56',NULL),(2543,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:40:56',NULL),(2544,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:40:56',NULL),(2545,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:40:56',NULL),(2546,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:40:56',NULL),(2547,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:40:56',NULL),(2548,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:40:56',NULL),(2549,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:40:56',NULL),(2550,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:40:56',NULL),(2551,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:02',NULL),(2552,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:02',NULL),(2553,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:02',NULL),(2554,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:02',NULL),(2555,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:02',NULL),(2556,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:02',NULL),(2557,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:02',NULL),(2558,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:02',NULL),(2559,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:02',NULL),(2560,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:02',NULL),(2561,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:05',NULL),(2562,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:05',NULL),(2563,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:05',NULL),(2564,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:05',NULL),(2565,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:05',NULL),(2566,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:05',NULL),(2567,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:05',NULL),(2568,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:05',NULL),(2569,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:05',NULL),(2570,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:05',NULL),(2571,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:05',NULL),(2572,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:09',NULL),(2573,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:09',NULL),(2574,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:09',NULL),(2575,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:09',NULL),(2576,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:09',NULL),(2577,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:09',NULL),(2578,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:09',NULL),(2579,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:09',NULL),(2580,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:09',NULL),(2581,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:09',NULL),(2582,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:09',NULL),(2583,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:09',NULL),(2584,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2585,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2586,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2587,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2588,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2589,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2590,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2591,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2592,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2593,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2594,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2595,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2596,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2597,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2598,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2599,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2600,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2601,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2602,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2603,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2604,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2605,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2606,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2607,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2608,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2609,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2610,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:41:48',NULL),(2611,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:58',NULL),(2612,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:58',NULL),(2613,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:58',NULL),(2614,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:58',NULL),(2615,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:58',NULL),(2616,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:58',NULL),(2617,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:58',NULL),(2618,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:58',NULL),(2619,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:58',NULL),(2620,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:58',NULL),(2621,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:59',NULL),(2622,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:59',NULL),(2623,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:59',NULL),(2624,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:59',NULL),(2625,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:41:59',NULL),(2626,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:04',NULL),(2627,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:04',NULL),(2628,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:04',NULL),(2629,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:04',NULL),(2630,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:04',NULL),(2631,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:04',NULL),(2632,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:04',NULL),(2633,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:04',NULL),(2634,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:04',NULL),(2635,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:04',NULL),(2636,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:04',NULL),(2637,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:04',NULL),(2638,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:04',NULL),(2639,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:04',NULL),(2640,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:04',NULL),(2641,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:04',NULL),(2642,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:17',NULL),(2643,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:17',NULL),(2644,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:17',NULL),(2645,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:17',NULL),(2646,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:17',NULL),(2647,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:17',NULL),(2648,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:17',NULL),(2649,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:17',NULL),(2650,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:17',NULL),(2651,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:17',NULL),(2652,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:17',NULL),(2653,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:17',NULL),(2654,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:17',NULL),(2655,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:17',NULL),(2656,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:17',NULL),(2657,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:17',NULL),(2658,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:17',NULL),(2659,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2660,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2661,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2662,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2663,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2664,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2665,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2666,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2667,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2668,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2669,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2670,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2671,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2672,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2673,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2674,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2675,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2676,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2677,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2678,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2679,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2680,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2681,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2682,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2683,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2684,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2685,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2686,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2687,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2688,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:19',NULL),(2689,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:20',NULL),(2690,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:20',NULL),(2691,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:20',NULL),(2692,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:20',NULL),(2693,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:20',NULL),(2694,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:20',NULL),(2695,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:42:20',NULL),(2696,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:39',NULL),(2697,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:39',NULL),(2698,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:39',NULL),(2699,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:39',NULL),(2700,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:39',NULL),(2701,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:39',NULL),(2702,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:39',NULL),(2703,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:39',NULL),(2704,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:39',NULL),(2705,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:39',NULL),(2706,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:40',NULL),(2707,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:40',NULL),(2708,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:40',NULL),(2709,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:40',NULL),(2710,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:40',NULL),(2711,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:40',NULL),(2712,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:40',NULL),(2713,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:40',NULL),(2714,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:40',NULL),(2715,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:42:40',NULL),(2716,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:44:00',NULL),(2717,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:44:00',NULL),(2718,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:44:00',NULL),(2719,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:44:00',NULL),(2720,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:44:00',NULL),(2721,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:44:00',NULL),(2722,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:44:00',NULL),(2723,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:44:00',NULL),(2724,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:44:00',NULL),(2725,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:44:00',NULL),(2726,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:44:00',NULL),(2727,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:44:00',NULL),(2728,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:44:00',NULL),(2729,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:44:00',NULL),(2730,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:44:00',NULL),(2731,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:44:00',NULL),(2732,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:44:00',NULL),(2733,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:44:00',NULL),(2734,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:44:00',NULL),(2735,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:44:00',NULL),(2736,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:44:01',NULL),(2737,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2738,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2739,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2740,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2741,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2742,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2743,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2744,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2745,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2746,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2747,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2748,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2749,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2750,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2751,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2752,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2753,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2754,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2755,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2756,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2757,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2758,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2759,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2760,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2761,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2762,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2763,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2764,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2765,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2766,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2767,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2768,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2769,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2770,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2771,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2772,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2773,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2774,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2775,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2776,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2777,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2778,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2779,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2780,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2781,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:45:44',NULL),(2782,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2783,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2784,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2785,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2786,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2787,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2788,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2789,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2790,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2791,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2792,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2793,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2794,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2795,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2796,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2797,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2798,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2799,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2800,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2801,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2802,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2803,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2804,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2805,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:09',NULL),(2806,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:17',NULL),(2807,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:17',NULL),(2808,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:17',NULL),(2809,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:17',NULL),(2810,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:17',NULL),(2811,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:17',NULL),(2812,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:17',NULL),(2813,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:17',NULL),(2814,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:17',NULL),(2815,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:17',NULL),(2816,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:17',NULL),(2817,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:17',NULL),(2818,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:17',NULL),(2819,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:17',NULL),(2820,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:17',NULL),(2821,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:17',NULL),(2822,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:17',NULL),(2823,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:17',NULL),(2824,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:17',NULL),(2825,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:17',NULL),(2826,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2827,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2828,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2829,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2830,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2831,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2832,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2833,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2834,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2835,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2836,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2837,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2838,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2839,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2840,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2841,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2842,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2843,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2844,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2845,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2846,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2847,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2848,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2849,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2850,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2851,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2852,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2853,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2854,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2855,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2856,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:18',NULL),(2857,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:54',NULL),(2858,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:54',NULL),(2859,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:54',NULL),(2860,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:54',NULL),(2861,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:54',NULL),(2862,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:54',NULL),(2863,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:54',NULL),(2864,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:54',NULL),(2865,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:54',NULL),(2866,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:54',NULL),(2867,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:54',NULL),(2868,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:55',NULL),(2869,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:55',NULL),(2870,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:55',NULL),(2871,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:55',NULL),(2872,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:55',NULL),(2873,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:55',NULL),(2874,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:55',NULL),(2875,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:55',NULL),(2876,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:55',NULL),(2877,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:55',NULL),(2878,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:55',NULL),(2879,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:55',NULL),(2880,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:55',NULL),(2881,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:55',NULL),(2882,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:55',NULL),(2883,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:55',NULL),(2884,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2885,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2886,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2887,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2888,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2889,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2890,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2891,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2892,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2893,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2894,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2895,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2896,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2897,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2898,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2899,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2900,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2901,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2902,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2903,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2904,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2905,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2906,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2907,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2908,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2909,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2910,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2911,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2912,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2913,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2914,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2915,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2916,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2917,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2918,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2919,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2920,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2921,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2922,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2923,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2924,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2925,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2926,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2927,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2928,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2929,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2930,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2931,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2932,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2933,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2934,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2935,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2936,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2937,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2938,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2939,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2940,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:46:59',NULL),(2941,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2942,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2943,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2944,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2945,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2946,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2947,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2948,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2949,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2950,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2951,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2952,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2953,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2954,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2955,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2956,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2957,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2958,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2959,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2960,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2961,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2962,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2963,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2964,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2965,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2966,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2967,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2968,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2969,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2970,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:49:34',NULL),(2971,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:02',NULL),(2972,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:02',NULL),(2973,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:02',NULL),(2974,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:02',NULL),(2975,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:02',NULL),(2976,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:02',NULL),(2977,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:02',NULL),(2978,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:02',NULL),(2979,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:02',NULL),(2980,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:02',NULL),(2981,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:02',NULL),(2982,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:02',NULL),(2983,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:02',NULL),(2984,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:02',NULL),(2985,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:02',NULL),(2986,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:02',NULL),(2987,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:02',NULL),(2988,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:02',NULL),(2989,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:02',NULL),(2990,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:02',NULL),(2991,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:02',NULL),(2992,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:03',NULL),(2993,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:03',NULL),(2994,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:03',NULL),(2995,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:03',NULL),(2996,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:03',NULL),(2997,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:03',NULL),(2998,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:03',NULL),(2999,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:03',NULL),(3000,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:03',NULL),(3001,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:50:03',NULL),(3002,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3003,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3004,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3005,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3006,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3007,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3008,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3009,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3010,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3011,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3012,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3013,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3014,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3015,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3016,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3017,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3018,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3019,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3020,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3021,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3022,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3023,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3024,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3025,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3026,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3027,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3028,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3029,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3030,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3031,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3032,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3033,1,8,'::ffff:117.0.60.188','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 08:50:59',NULL),(3034,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:17',NULL),(3035,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:17',NULL),(3036,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:17',NULL),(3037,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:17',NULL),(3038,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:17',NULL),(3039,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:17',NULL),(3040,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:17',NULL),(3041,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:17',NULL),(3042,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:17',NULL),(3043,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:17',NULL),(3044,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:17',NULL),(3045,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3046,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3047,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3048,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3049,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3050,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3051,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3052,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3053,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3054,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3055,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3056,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3057,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3058,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3059,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3060,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3061,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3062,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3063,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3064,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3065,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3066,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3067,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3068,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3069,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3070,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3071,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3072,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3073,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3074,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3075,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3076,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3077,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3078,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3079,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3080,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3081,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3082,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3083,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3084,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3085,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3086,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3087,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3088,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3089,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3090,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3091,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3092,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3093,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:18',NULL),(3094,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:19',NULL),(3095,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:19',NULL),(3096,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:19',NULL),(3097,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:19',NULL),(3098,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:19',NULL),(3099,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:19',NULL),(3100,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 08:54:19',NULL),(3101,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:51',NULL),(3102,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:51',NULL),(3103,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:51',NULL),(3104,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:51',NULL),(3105,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:51',NULL),(3106,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:51',NULL),(3107,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:51',NULL),(3108,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:51',NULL),(3109,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:51',NULL),(3110,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:51',NULL),(3111,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:51',NULL),(3112,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:51',NULL),(3113,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:51',NULL),(3114,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:51',NULL),(3115,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:51',NULL),(3116,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:51',NULL),(3117,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:51',NULL),(3118,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:51',NULL),(3119,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:51',NULL),(3120,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:51',NULL),(3121,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:52',NULL),(3122,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:52',NULL),(3123,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:52',NULL),(3124,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:52',NULL),(3125,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:52',NULL),(3126,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:52',NULL),(3127,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:52',NULL),(3128,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:52',NULL),(3129,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:52',NULL),(3130,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:52',NULL),(3131,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:52',NULL),(3132,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:52',NULL),(3133,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:52',NULL),(3134,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:52',NULL),(3135,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:54:52',NULL),(3136,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:24',NULL),(3137,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:24',NULL),(3138,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:24',NULL),(3139,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:24',NULL),(3140,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:24',NULL),(3141,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:24',NULL),(3142,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:24',NULL),(3143,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:24',NULL),(3144,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:24',NULL),(3145,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:24',NULL),(3146,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:24',NULL),(3147,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:24',NULL),(3148,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:24',NULL),(3149,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:24',NULL),(3150,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:24',NULL),(3151,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:24',NULL),(3152,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:24',NULL),(3153,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:24',NULL),(3154,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:24',NULL),(3155,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:24',NULL),(3156,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:24',NULL),(3157,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:25',NULL),(3158,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:25',NULL),(3159,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:25',NULL),(3160,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:25',NULL),(3161,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:25',NULL),(3162,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:25',NULL),(3163,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:25',NULL),(3164,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:25',NULL),(3165,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:25',NULL),(3166,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:25',NULL),(3167,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:25',NULL),(3168,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:25',NULL),(3169,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:25',NULL),(3170,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:25',NULL),(3171,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 08:56:25',NULL),(3172,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3173,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3174,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3175,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3176,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3177,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3178,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3179,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3180,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3181,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3182,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3183,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3184,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3185,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3186,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3187,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3188,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3189,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3190,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3191,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3192,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3193,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3194,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3195,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3196,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3197,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3198,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3199,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3200,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3201,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3202,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3203,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3204,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3205,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3206,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3207,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3208,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:05:34',NULL),(3209,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3210,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3211,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3212,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3213,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3214,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3215,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3216,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3217,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3218,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3219,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3220,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3221,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3222,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3223,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3224,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3225,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3226,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3227,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3228,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3229,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3230,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3231,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3232,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3233,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3234,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3235,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3236,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3237,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3238,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3239,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3240,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3241,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3242,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3243,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3244,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3245,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3246,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:06:39',NULL),(3247,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3248,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3249,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3250,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3251,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3252,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3253,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3254,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3255,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3256,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3257,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3258,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3259,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3260,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3261,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3262,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3263,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3264,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3265,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3266,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3267,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3268,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3269,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3270,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3271,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3272,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3273,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3274,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3275,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3276,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3277,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3278,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3279,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3280,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3281,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3282,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3283,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3284,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3285,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3286,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3287,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3288,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3289,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3290,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3291,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3292,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3293,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3294,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3295,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3296,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3297,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:27',NULL),(3298,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3299,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3300,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3301,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3302,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3303,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3304,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3305,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3306,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3307,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3308,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3309,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3310,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3311,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3312,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3313,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3314,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3315,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3316,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3317,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3318,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3319,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3320,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3321,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3322,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3323,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3324,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3325,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:07:28',NULL),(3326,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:44',NULL),(3327,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:44',NULL),(3328,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:44',NULL),(3329,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:44',NULL),(3330,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:44',NULL),(3331,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:44',NULL),(3332,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:44',NULL),(3333,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:44',NULL),(3334,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:44',NULL),(3335,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:44',NULL),(3336,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:44',NULL),(3337,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:44',NULL),(3338,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:44',NULL),(3339,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:44',NULL),(3340,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:44',NULL),(3341,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:44',NULL),(3342,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:44',NULL),(3343,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:44',NULL),(3344,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:44',NULL),(3345,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:44',NULL),(3346,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:44',NULL),(3347,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:45',NULL),(3348,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:45',NULL),(3349,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:45',NULL),(3350,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:45',NULL),(3351,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:45',NULL),(3352,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:45',NULL),(3353,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:45',NULL),(3354,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:45',NULL),(3355,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:45',NULL),(3356,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:45',NULL),(3357,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:45',NULL),(3358,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:45',NULL),(3359,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:45',NULL),(3360,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:45',NULL),(3361,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:45',NULL),(3362,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:45',NULL),(3363,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:45',NULL),(3364,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:45',NULL),(3365,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:45',NULL),(3366,1,8,'::ffff:1.54.61.87','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:08:45',NULL),(3367,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 09:10:52',NULL),(3368,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 09:10:52',NULL),(3369,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 09:10:52',NULL),(3370,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:13:35',NULL),(3371,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:13:35',NULL),(3372,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:13:35',NULL),(3373,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:13:56',NULL),(3374,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:13:56',NULL),(3375,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:13:56',NULL),(3376,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 09:14:26',NULL),(3377,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 09:14:26',NULL),(3378,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 09:14:26',NULL),(3379,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 09:14:26',NULL),(3380,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 09:14:26',NULL),(3381,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 09:14:26',NULL),(3382,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 09:14:26',NULL),(3383,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:32',NULL),(3384,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:32',NULL),(3385,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:32',NULL),(3386,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:32',NULL),(3387,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:32',NULL),(3388,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:32',NULL),(3389,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:32',NULL),(3390,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:32',NULL),(3391,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:32',NULL),(3392,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:32',NULL),(3393,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:32',NULL),(3394,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:35',NULL),(3395,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:35',NULL),(3396,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:35',NULL),(3397,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:35',NULL),(3398,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:35',NULL),(3399,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:35',NULL),(3400,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:35',NULL),(3401,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:35',NULL),(3402,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:35',NULL),(3403,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:35',NULL),(3404,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:35',NULL),(3405,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:35',NULL),(3406,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:35',NULL),(3407,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:35',NULL),(3408,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:35',NULL),(3409,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:38',NULL),(3410,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:38',NULL),(3411,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:38',NULL),(3412,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:38',NULL),(3413,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:38',NULL),(3414,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:38',NULL),(3415,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:38',NULL),(3416,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:38',NULL),(3417,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:38',NULL),(3418,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:38',NULL),(3419,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:38',NULL),(3420,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:38',NULL),(3421,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:38',NULL),(3422,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:38',NULL),(3423,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:38',NULL),(3424,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:38',NULL),(3425,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:38',NULL),(3426,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:38',NULL),(3427,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:38',NULL),(3428,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:39',NULL),(3429,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:39',NULL),(3430,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:39',NULL),(3431,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:39',NULL),(3432,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:39',NULL),(3433,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:39',NULL),(3434,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:39',NULL),(3435,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:39',NULL),(3436,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:39',NULL),(3437,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:39',NULL),(3438,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:39',NULL),(3439,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:40',NULL),(3440,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:40',NULL),(3441,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:40',NULL),(3442,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:40',NULL),(3443,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:40',NULL),(3444,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:40',NULL),(3445,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:40',NULL),(3446,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:40',NULL),(3447,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:40',NULL),(3448,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:40',NULL),(3449,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:40',NULL),(3450,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:40',NULL),(3451,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3452,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3453,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3454,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3455,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3456,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3457,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3458,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3459,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3460,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3461,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3462,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3463,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3464,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3465,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3466,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3467,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3468,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3469,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3470,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3471,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3472,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3473,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3474,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3475,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3476,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3477,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:43',NULL),(3478,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:48',NULL),(3479,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:48',NULL),(3480,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:48',NULL),(3481,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:48',NULL),(3482,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:48',NULL),(3483,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:48',NULL),(3484,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:48',NULL),(3485,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:48',NULL),(3486,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:48',NULL),(3487,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:48',NULL),(3488,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:48',NULL),(3489,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:48',NULL),(3490,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:48',NULL),(3491,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:48',NULL),(3492,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:48',NULL),(3493,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:48',NULL),(3494,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:48',NULL),(3495,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:48',NULL),(3496,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:48',NULL),(3497,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:48',NULL),(3498,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:48',NULL),(3499,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:49',NULL),(3500,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:49',NULL),(3501,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:49',NULL),(3502,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:49',NULL),(3503,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:49',NULL),(3504,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:49',NULL),(3505,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:49',NULL),(3506,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:49',NULL),(3507,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:49',NULL),(3508,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:14:49',NULL),(3509,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:04',NULL),(3510,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:05',NULL),(3511,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:07',NULL),(3512,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:07',NULL),(3513,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:09',NULL),(3514,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:09',NULL),(3515,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:10',NULL),(3516,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:11',NULL),(3517,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:18',NULL),(3518,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:18',NULL),(3519,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:19',NULL),(3520,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:19',NULL),(3521,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:20',NULL),(3522,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:20',NULL),(3523,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:21',NULL),(3524,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:21',NULL),(3525,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:29',NULL),(3526,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:29',NULL),(3527,0,15,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:18:38',NULL),(3528,0,13,'::ffff:192.168.32.185','[\"en-US\",\"en\",{\"q\":\"0.8\"}]',0,'2015-06-23 09:18:38',NULL),(3529,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:47',NULL),(3530,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:47',NULL),(3531,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:48',NULL),(3532,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:48',NULL),(3533,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:49',NULL),(3534,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:49',NULL),(3535,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:53',NULL),(3536,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:53',NULL),(3537,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:54',NULL),(3538,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:54',NULL),(3539,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:55',NULL),(3540,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:55',NULL),(3541,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:56',NULL),(3542,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:18:56',NULL),(3543,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:19:06',NULL),(3544,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:19:07',NULL),(3545,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:19:13',NULL),(3546,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:19:13',NULL),(3547,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:20:38',NULL),(3548,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:20:39',NULL),(3549,1,8,'::ffff:113.163.57.211','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:22:11',NULL),(3550,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:23:25',NULL),(3551,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:23:25',NULL),(3552,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:23:29',NULL),(3553,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:23:29',NULL),(3554,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:23:30',NULL),(3555,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:23:30',NULL),(3556,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:23:37',NULL),(3557,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:12',NULL),(3558,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:13',NULL),(3559,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:13',NULL),(3560,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:13',NULL),(3561,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:14',NULL),(3562,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:14',NULL),(3563,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:14',NULL),(3564,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:15',NULL),(3565,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:15',NULL),(3566,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:16',NULL),(3567,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:16',NULL),(3568,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:16',NULL),(3569,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:16',NULL),(3570,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:17',NULL),(3571,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:17',NULL),(3572,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:18',NULL),(3573,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:18',NULL),(3574,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:19',NULL),(3575,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:19',NULL),(3576,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:20',NULL),(3577,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:20',NULL),(3578,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:21',NULL),(3579,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:21',NULL),(3580,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:21',NULL),(3581,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:21',NULL),(3582,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:22',NULL),(3583,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:22',NULL),(3584,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:22',NULL),(3585,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:23',NULL),(3586,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:23',NULL),(3587,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:24',NULL),(3588,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:24',NULL),(3589,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:24',NULL),(3590,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:25',NULL),(3591,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:25',NULL),(3592,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:25',NULL),(3593,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:26',NULL),(3594,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:26',NULL),(3595,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:27',NULL),(3596,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:27',NULL),(3597,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:27',NULL),(3598,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:28',NULL),(3599,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 09:24:28',NULL),(3600,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 09:30:47',NULL),(3601,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 09:30:47',NULL),(3602,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 09:30:53',NULL),(3603,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 09:30:53',NULL),(3604,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 09:31:07',NULL),(3605,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 09:31:07',NULL),(3606,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 09:36:16',NULL),(3607,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 09:36:16',NULL),(3608,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 09:36:22',NULL),(3609,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 09:36:22',NULL),(3610,0,13,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 09:37:23',NULL),(3611,0,15,'::ffff:192.168.32.160','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 09:37:23',NULL),(3612,1,8,'::ffff:117.3.128.69','[\"en-US\",\"en\",{\"q\":\"0.8,vi\"}]',0,'2015-06-23 09:49:40',NULL),(3613,1,8,'::ffff:42.113.165.156','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:00:44',NULL),(3614,0,13,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:06:19',NULL),(3615,0,15,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:06:19',NULL),(3616,0,13,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:06:21',NULL),(3617,0,15,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:06:21',NULL),(3618,0,13,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:06:23',NULL),(3619,0,15,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:06:23',NULL),(3620,1,8,'::ffff:27.3.167.88','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:06:38',NULL),(3621,0,15,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:07:49',NULL),(3622,0,13,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:07:49',NULL),(3623,0,15,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:07:54',NULL),(3624,0,13,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:07:55',NULL),(3625,0,15,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:07:55',NULL),(3626,0,13,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:07:58',NULL),(3627,0,15,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:07:58',NULL),(3628,0,13,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:08:01',NULL),(3629,0,15,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:08:01',NULL),(3630,0,13,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:08:11',NULL),(3631,0,15,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:08:11',NULL),(3632,1,8,'::ffff:116.102.149.232','[\"en-US\",\"en\",{\"q\":\"0.5\"}]',0,'2015-06-23 10:18:37',NULL),(3633,0,13,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:26:50',NULL),(3634,0,15,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:26:50',NULL),(3635,0,13,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:28:00',NULL),(3636,0,15,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:28:02',NULL),(3637,1,8,'::ffff:113.20.116.77','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:33:13',NULL),(3638,0,13,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:57:08',NULL),(3639,0,15,'::ffff:192.168.32.160','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:57:08',NULL),(3640,0,13,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:57:11',NULL),(3641,0,15,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 10:57:11',NULL),(3642,0,13,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 11:00:08',NULL),(3643,0,13,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 11:00:43',NULL),(3644,0,13,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 11:00:51',NULL),(3645,0,13,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 11:01:10',NULL),(3646,0,13,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 11:01:26',NULL),(3647,0,13,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 11:05:24',NULL),(3648,0,13,'::ffff:14.165.102.4','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 11:26:52',NULL),(3649,0,13,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 11:27:45',NULL),(3650,0,13,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 11:35:34',NULL),(3651,0,13,'::ffff:192.168.32.217','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 11:36:40',NULL),(3652,0,13,'::ffff:123.18.23.156','[\"vi-VN\",\"vi\",{\"q\":\"0.8,fr-FR\"}]',0,'2015-06-23 11:47:30',NULL);
/*!40000 ALTER TABLE `RawImp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReportSubscription`
--

DROP TABLE IF EXISTS `ReportSubscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReportSubscription` (
  `ReportSubscriptionID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `Status` tinyint(1) DEFAULT '0',
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ReportSubscriptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ReportSubscription`
--

LOCK TABLES `ReportSubscription` WRITE;
/*!40000 ALTER TABLE `ReportSubscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReportSubscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SellSidePartnerHourlyBids`
--

DROP TABLE IF EXISTS `SellSidePartnerHourlyBids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SellSidePartnerHourlyBids` (
  `SellSidePartnerHourlyBidsID` int(11) NOT NULL AUTO_INCREMENT,
  `SellSidePartnerID` int(11) NOT NULL,
  `PublisherAdZoneID` int(11) NOT NULL,
  `MDYH` char(15) NOT NULL,
  `BidsWonCounter` bigint(20) NOT NULL,
  `BidsLostCounter` bigint(20) NOT NULL,
  `BidsErrorCounter` bigint(20) NOT NULL,
  `SpendTotalGross` float NOT NULL,
  `SpendTotalNet` float NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`SellSidePartnerHourlyBidsID`),
  UNIQUE KEY `SellSidePartnerToZoneBid_IDX` (`SellSidePartnerHourlyBidsID`,`SellSidePartnerID`,`PublisherAdZoneID`,`MDYH`) USING BTREE,
  UNIQUE KEY `SellSidePartnerHourlyBids_IDX` (`SellSidePartnerID`,`PublisherAdZoneID`,`MDYH`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SellSidePartnerHourlyBids`
--

LOCK TABLES `SellSidePartnerHourlyBids` WRITE;
/*!40000 ALTER TABLE `SellSidePartnerHourlyBids` DISABLE KEYS */;
/*!40000 ALTER TABLE `SellSidePartnerHourlyBids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TransactionDetail`
--

DROP TABLE IF EXISTS `TransactionDetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TransactionDetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TransactionLogID` int(11) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `Type` int(11) NOT NULL DEFAULT '0',
  `Amount` decimal(11,3) DEFAULT '0.000',
  `Description` text,
  `DateCreated` timestamp NULL DEFAULT NULL,
  `DateUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TransactionDetail`
--

LOCK TABLES `TransactionDetail` WRITE;
/*!40000 ALTER TABLE `TransactionDetail` DISABLE KEYS */;
INSERT INTO `TransactionDetail` VALUES (1,2,24,0,500.000,'Transfer money online ($500) to trunglecs\'s account on BGATE',NULL,'0000-00-00 00:00:00'),(2,3,25,0,10000.000,'Transfer money online ($10000) to rongreu\'s account on BGATE',NULL,'0000-00-00 00:00:00'),(3,5,24,0,500.000,'Transfer money online ($500) to trunglecs\'s account on BGATE',NULL,'0000-00-00 00:00:00'),(4,6,24,0,40.000,'Transfer money online ($40) to trunglecs\'s account on BGATE',NULL,'0000-00-00 00:00:00'),(5,7,24,0,50.000,'Transfer money online ($50) to trunglecs\'s account on BGATE','2015-06-29 07:59:52','0000-00-00 00:00:00'),(6,8,24,0,10.000,'Transfer money online ($10) to trunglecs\'s account on BGATE','2015-06-29 08:13:25','0000-00-00 00:00:00'),(7,0,9,1,10.000,'','2015-07-02 07:15:59','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `TransactionDetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TransactionLog`
--

DROP TABLE IF EXISTS `TransactionLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TransactionLog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Identify` int(11) DEFAULT NULL,
  `RequestURL` mediumtext COMMENT 'URL request',
  `RequestIP` char(20) DEFAULT NULL,
  `RequestTime` datetime DEFAULT NULL,
  `ResponseURL` mediumtext COMMENT 'URL response',
  `ResponseIP` char(20) DEFAULT NULL,
  `ResponseTime` datetime DEFAULT NULL,
  `MerchTxnRef` varchar(50) DEFAULT NULL,
  `IP` char(20) DEFAULT NULL,
  `Type` int(11) DEFAULT '0' COMMENT '0 paypal, 1 onepay',
  `Status` int(11) DEFAULT '0' COMMENT '0 request, 1 response',
  `HashValidated` varchar(250) DEFAULT NULL,
  `ResponseCode` int(11) DEFAULT NULL,
  `ResponseDescription` text,
  `Result` text,
  `DateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TransactionLog`
--

LOCK TABLES `TransactionLog` WRITE;
/*!40000 ALTER TABLE `TransactionLog` DISABLE KEYS */;
INSERT INTO `TransactionLog` VALUES (1,24,'https://www.sandbox.paypal.com/webscr&cmd=_express-checkout&token=EC-14V92137EM283770Y','14.169.27.123','2015-06-22 20:49:51',NULL,NULL,NULL,'EC-14V92137EM283770Y','14.169.27.123',0,0,NULL,NULL,NULL,NULL,'2015-06-22 13:49:51'),(2,24,'https://www.sandbox.paypal.com/webscr&cmd=_express-checkout&token=EC-6RP210228E626834S','42.116.6.44','2015-06-23 10:55:11','http://sv5.lvduit.com:80/payment/returnpaypal?token=EC-6RP210228E626834S&PayerID=QJGWVC7CQDJTW','42.116.6.44','2015-06-23 03:55:39','EC-6RP210228E626834S','42.116.6.44',0,1,'Success',0,'','Transaction was paid successful','2015-06-23 03:55:11'),(3,25,'https://www.sandbox.paypal.com/webscr&cmd=_express-checkout&token=EC-6VX23833X8917445C','118.70.12.238','2015-06-24 13:25:21','http://sv5.lvduit.com:80/payment/returnpaypal?token=EC-6VX23833X8917445C&PayerID=N76ELSAEGURNY','118.70.12.238','2015-06-24 06:25:38','EC-6VX23833X8917445C','118.70.12.238',0,1,'Success',0,'','Transaction was paid successful','2015-06-24 06:25:21'),(4,25,'https://mtf.onepay.vn/vpcpay/vpcpay.op?AgainLink=http%3A%2F%2Fsv5.lvduit.com%2Fpayment%2Ftransferonepayvisa&Title=BGATE+Payment&vpc_AccessCode=6BEB2546&vpc_Amount=267894000&vpc_Command=pay&vpc_Locale=en&vpc_MerchTxnRef=1e9772916783ec2040391aed84e1b050&vpc_Merchant=TESTONEPAY&vpc_OrderInfo=BGATE-25-20150624172843-123&vpc_ReturnURL=http%3A%2F%2Fsv5.lvduit.com%2Fpayment%2Ffeedonepayvisa&vpc_TicketNo=27.67.47.167&vpc_Version=2&vpc_SecureHash=69FB96B36BD77E7B3660665113A126454B09B49AB2FE6D481EFFEACABC5A1A6E','27.67.47.167','2015-06-24 17:28:43','http://sv5.lvduit.com/payment/feedonepayvisa?AgainLink=http://sv5.lvduit.com/payment/transferonepayvisa&Title=BGATE%20Payment&vpc_AccessCode=6BEB2546&vpc_Amount=267894000&vpc_Command=pay&vpc_Locale=en&vpc_MerchTxnRef=1e9772916783ec2040391aed84e1b050&vpc_Merchant=TESTONEPAY&vpc_Message=Cancel&vpc_OrderInfo=BGATE-25-20150624172843-123&vpc_TicketNo=27.67.47.167&vpc_TxnResponseCode=99&vpc_Version=2&vpc_SecureHash=12C22672D82920C898F5DE7A4FD6083E2686D49DC68DDEA1E339101FAEEC63A5','27.67.47.167','2015-06-24 17:29:48','1e9772916783ec2040391aed84e1b050','27.67.47.167',1,1,'CORRECT',99,'User Cancel','Transaction was not paid successful','2015-06-24 10:28:43'),(5,24,'https://www.sandbox.paypal.com/webscr&cmd=_express-checkout&token=EC-35445627RW222454G','42.116.6.44','2015-06-29 10:27:53','http://sv5.lvduit.com:80/payment/returnpaypal?token=EC-35445627RW222454G&PayerID=QJGWVC7CQDJTW','42.116.6.44','2015-06-29 03:28:17','EC-35445627RW222454G','42.116.6.44',0,1,'Success',0,'','Transaction was paid successful','2015-06-29 03:27:53'),(6,24,'https://www.sandbox.paypal.com/webscr&cmd=_express-checkout&token=EC-2JD851710A193121H','42.116.6.44','2015-06-29 14:40:51','http://sv5.lvduit.com:80/payment/returnpaypal?token=EC-2JD851710A193121H&PayerID=QJGWVC7CQDJTW','42.116.6.44','2015-06-29 07:41:12','EC-2JD851710A193121H','42.116.6.44',0,1,'Success',0,'','Transaction was paid successful','2015-06-29 07:40:51'),(7,24,'https://www.sandbox.paypal.com/webscr&cmd=_express-checkout&token=EC-8D078117NP899063B','42.116.6.44','2015-06-29 14:59:30','http://sv5.lvduit.com:80/payment/returnpaypal?token=EC-8D078117NP899063B&PayerID=QJGWVC7CQDJTW','42.116.6.44','2015-06-29 14:59:52','EC-8D078117NP899063B','42.116.6.44',0,1,'Success',0,'','Transaction was paid successful','2015-06-29 07:59:30'),(8,24,'https://mtf.onepay.vn/vpcpay/vpcpay.op?AgainLink=http%3A%2F%2Fsv5.lvduit.com%2Fpayment%2Ftransferonepayvisa&Title=BGATE+Payment&vpc_AccessCode=6BEB2546&vpc_Amount=21780000&vpc_Command=pay&vpc_Locale=en&vpc_MerchTxnRef=154c9a060d5444c68b3c5534b4e23f84&vpc_Merchant=TESTONEPAY&vpc_OrderInfo=BGATE-24-20150629150444-10&vpc_ReturnURL=http%3A%2F%2Fsv5.lvduit.com%2Fpayment%2Ffeedonepayvisa&vpc_TicketNo=42.116.6.44&vpc_Version=2&vpc_SecureHash=76AD72459D3B27E8297F0A4E9D0A0FDEA08A1BEA672D6A5C6287378345D8E800','42.116.6.44','2015-06-29 15:04:44','http://sv5.lvduit.com/payment/feedonepayvisa?vpc_AuthorizeId=409106&vpc_AVS_StateProv=North&vpc_RiskOverallResult=ACC&vpc_CardLevelIndicator=88&vpc_AVSRequestCode=Z&vpc_BatchNo=20150629&vpc_Card=VC&vpc_Version=2&vpc_AcqAVSRespCode=Unsupported&vpc_TransactionIdentifier=1234567890123456789&vpc_AVSResultCode=Unsupported&vpc_Merchant=TESTONEPAY&vpc_CommercialCard=U&vpc_Amount=21780000&vpc_AVS_Country=VNM&vpc_SecureHash=7E6B391F724530257A818246D31A736035D0D5FC09229E464AF099AA489E828A&vpc_MarketSpecificData=8&vpc_MerchTxnRef=154c9a060d5444c68b3c5534b4e23f84&vpc_CSCResultCode=Unsupported&AgainLink=http%3A%2F%2Fsv5.lvduit.com%2Fpayment%2Ftransferonepayvisa&vpc_Command=pay&vpc_OrderInfo=BGATE-24-20150629150444-10&vpc_3DSenrolled=N&vpc_AcqResponseCode=00&vpc_CardNum=xxxxxxxxxxxx0001&vpc_VerType=3DS&vpc_TransactionNo=19376&vpc_VerSecurityLevel=06&vpc_ReceiptNo=518018409106&Title=BGATE+Payment&vpc_Message=Approved&vpc_3DSXID=zZMFf9Ljteva3IVjq2VLklwipjA%3D&vpc_AVS_City=Hanoi&vpc_3DSECI=06&vpc_AcqCSCRespCode=Unsupported&vpc_Locale=en_VN&vpc_VerStatus=E&vpc_ReturnACI=8&vpc_TxnResponseCode=0&vpc_AVS_Street01=Tran+Quang+Khai&vpc_CommercialCardIndicator=3&vpc_AVS_PostCode=1234','42.116.6.44','2015-06-29 15:13:26','154c9a060d5444c68b3c5534b4e23f84','42.116.6.44',1,1,'CORRECT',0,'Transaction Successful',NULL,'2015-06-29 08:04:44'),(9,24,'https://mtf.onepay.vn/vpcpay/vpcpay.op?AgainLink=http%3A%2F%2Fsv5.lvduit.com%2Fpayment%2Ftransferonepayvisa&Title=BGATE+Payment&vpc_AccessCode=6BEB2546&vpc_Amount=10890000&vpc_Command=pay&vpc_Locale=en&vpc_MerchTxnRef=758fff4e9d07b55c0ee1c43848a616c3&vpc_Merchant=TESTONEPAY&vpc_OrderInfo=BGATE-24-20150630154915-5&vpc_ReturnURL=http%3A%2F%2Fsv5.lvduit.com%2Fpayment%2Ffeedonepayvisa&vpc_TicketNo=42.116.6.44&vpc_Version=2&vpc_SecureHash=192A94ABD851ED004C3148A546E4917670D03AF140808BD56D8BD70ACC625681','42.116.6.44','2015-06-30 15:49:15',NULL,NULL,NULL,'758fff4e9d07b55c0ee1c43848a616c3','42.116.6.44',1,0,NULL,NULL,NULL,NULL,'2015-06-30 08:49:15'),(10,24,'https://mtf.onepay.vn/vpcpay/vpcpay.op?AgainLink=http%3A%2F%2Fsv5.lvduit.com%2Fpayment%2Ftransferonepayvisa&Title=BGATE+Payment&vpc_AccessCode=6BEB2546&vpc_Amount=10890000&vpc_Command=pay&vpc_Locale=en&vpc_MerchTxnRef=17b726f487a7cb2191493a2cff51b837&vpc_Merchant=TESTONEPAY&vpc_OrderInfo=BGATE-24-20150630155004-5&vpc_ReturnURL=http%3A%2F%2Fsv5.lvduit.com%2Fpayment%2Ffeedonepayvisa&vpc_TicketNo=42.116.6.44&vpc_Version=2&vpc_SecureHash=C0F1773A587C644292D292E1F8B202F0ADA6EFFE72C57B0A9C8F3F213C6990D5','42.116.6.44','2015-06-30 15:50:04',NULL,NULL,NULL,'17b726f487a7cb2191493a2cff51b837','42.116.6.44',1,0,NULL,NULL,NULL,NULL,'2015-06-30 08:50:04'),(11,24,'https://www.sandbox.paypal.com/webscr&cmd=_express-checkout&token=EC-11M01535XP381582K','42.116.6.44','2015-06-30 16:15:59',NULL,NULL,NULL,'EC-11M01535XP381582K','42.116.6.44',0,0,NULL,NULL,NULL,NULL,'2015-06-30 09:15:59'),(12,24,'https://mtf.onepay.vn/vpcpay/vpcpay.op?AgainLink=http%3A%2F%2Fsv5.lvduit.com%2Fpayment%2Ftransferonepayvisa&Title=BGATE+Payment&vpc_AccessCode=6BEB2546&vpc_Amount=10890000&vpc_Command=pay&vpc_Locale=en&vpc_MerchTxnRef=4b108c58dab08e94535220718b383088&vpc_Merchant=TESTONEPAY&vpc_OrderInfo=BGATE-24-20150630161612-5&vpc_ReturnURL=http%3A%2F%2Fsv5.lvduit.com%2Fpayment%2Ffeedonepayvisa&vpc_TicketNo=42.116.6.44&vpc_Version=2&vpc_SecureHash=1162D1D7564A0378B7B02882216EDC300ADEC9AEE8FA77805178128A3BEDDD7B','42.116.6.44','2015-06-30 16:16:12',NULL,NULL,NULL,'4b108c58dab08e94535220718b383088','42.116.6.44',1,0,NULL,NULL,NULL,NULL,'2015-06-30 09:16:12'),(13,24,'https://www.sandbox.paypal.com/webscr&cmd=_express-checkout&token=EC-9LG41649JW832744E','42.116.6.44','2015-06-30 16:16:30',NULL,NULL,NULL,'EC-9LG41649JW832744E','42.116.6.44',0,0,NULL,NULL,NULL,NULL,'2015-06-30 09:16:30'),(14,35,'https://www.sandbox.paypal.com/webscr&cmd=_express-checkout&token=EC-61H6988163186280G','115.79.41.52','2015-06-30 22:49:35',NULL,NULL,NULL,'EC-61H6988163186280G','115.79.41.52',0,0,NULL,NULL,'A customer had cancel a transaction','Transaction was not paid successful','2015-06-30 15:49:35'),(15,24,'https://mtf.onepay.vn/vpcpay/vpcpay.op?AgainLink=http%3A%2F%2Fsv5.lvduit.com%2Fpayment%2Ftransferonepayvisa&Title=BGATE+Payment&vpc_AccessCode=6BEB2546&vpc_Amount=4354000000&vpc_Command=pay&vpc_Locale=en&vpc_MerchTxnRef=5273ef2c7867f0e42f62db3341a2b14d&vpc_Merchant=TESTONEPAY&vpc_OrderInfo=BGATE-24-20150703173516-2000&vpc_ReturnURL=http%3A%2F%2Fsv5.lvduit.com%2Fpayment%2Ffeedonepayvisa&vpc_TicketNo=42.116.6.44&vpc_Version=2&vpc_SecureHash=9BCAE6DDE3A52555D1F45047ACE818FC7ADAFBFC8965F668D131FA9342EF1E3F','42.116.6.44','2015-07-03 17:35:17',NULL,NULL,NULL,'5273ef2c7867f0e42f62db3341a2b14d','42.116.6.44',1,0,NULL,NULL,NULL,NULL,'2015-07-03 10:35:17');
/*!40000 ALTER TABLE `TransactionLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserMarkupDemand`
--

DROP TABLE IF EXISTS `UserMarkupDemand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserMarkupDemand` (
  `UserID` int(11) NOT NULL,
  `MarkupRate` float NOT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `UserID` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserMarkupDemand`
--

LOCK TABLES `UserMarkupDemand` WRITE;
/*!40000 ALTER TABLE `UserMarkupDemand` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserMarkupDemand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPayout`
--

DROP TABLE IF EXISTS `UserPayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPayout` (
  `UserPayoutID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) DEFAULT NULL,
  `Amount` double DEFAULT '0',
  `Status` tinyint(4) DEFAULT '0',
  `DateCreated` datetime DEFAULT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  PRIMARY KEY (`UserPayoutID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPayout`
--

LOCK TABLES `UserPayout` WRITE;
/*!40000 ALTER TABLE `UserPayout` DISABLE KEYS */;
INSERT INTO `UserPayout` VALUES (1,9,10,1,'2015-07-02 14:15:14','2015-07-02 14:15:59');
/*!40000 ALTER TABLE `UserPayout` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `updateBalance` AFTER INSERT ON `UserPayout`
 FOR EACH ROW BEGIN
    DECLARE current_balance DOUBLE;
    DECLARE row_count INT(11);
    SELECT Balance INTO current_balance FROM PublisherInfo where PublisherInfoID = NEW.UserID;

    UPDATE PublisherInfo SET Balance = current_balance - NEW.Amount where PublisherInfoID = NEW.UserID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `auth_Users`
--

DROP TABLE IF EXISTS `auth_Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_Users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `user_role` int(11) unsigned NOT NULL DEFAULT '0',
  `locale` char(10) NOT NULL DEFAULT 'en_US',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_login_UNIQUE` (`user_login`),
  UNIQUE KEY `user_email_UNIQUE` (`user_email`) USING BTREE,
  KEY `user_name` (`user_fullname`),
  KEY `user_status` (`user_enabled`),
  KEY `auth_Users_role_fk1` (`user_role`),
  CONSTRAINT `auth_Users_role_fk1` FOREIGN KEY (`user_role`) REFERENCES `rbac_role` (`role_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_Users`
--

LOCK TABLES `auth_Users` WRITE;
/*!40000 ALTER TABLE `auth_Users` DISABLE KEYS */;
INSERT INTO `auth_Users` VALUES (1,'admin','admin@localhost','86a65acd94b33daa87c1c6a2d1408593',NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,'2013-11-06 02:24:00','2013-11-06 02:25:07','2013-11-06 02:25:07',NULL,1,'en_US'),(22,'lvduit','duyet2000@gmail.com','e630c54b2ef08f20bafb50ca4c8cd507',NULL,NULL,NULL,NULL,1,1,1,4,NULL,'2015-05-13 01:20:19','2015-05-13 06:20:19','0000-00-00 00:00:00',NULL,3,'en_US'),(23,'lvduitt','lvduit08@gmail.com','e630c54b2ef08f20bafb50ca4c8cd507',NULL,NULL,NULL,NULL,0,0,1,5,NULL,'2015-05-13 01:22:09','2015-05-13 06:22:09','0000-00-00 00:00:00',NULL,3,'en_US'),(24,'trunglecs','nmadtu@gmail.com','c929fedbfce1bdc014ed835a0cdf35f4',NULL,NULL,'Trung Le',NULL,1,1,1,NULL,19,'2015-06-02 15:55:42','2015-06-30 03:32:53','0000-00-00 00:00:00',NULL,3,'en_US'),(25,'rongreu','ptsonla@gmail.com','8017d0408f41b75489701e3fb1c3e773',NULL,NULL,'',NULL,1,1,1,NULL,20,'2015-06-02 18:04:41','2015-06-24 10:26:59','0000-00-00 00:00:00',NULL,3,'vi_VN'),(26,'thaovn','pyzewega@yahoo.com','8017d0408f41b75489701e3fb1c3e773',NULL,NULL,NULL,NULL,1,1,1,6,NULL,'2015-06-02 18:28:09','2015-06-02 07:28:09','0000-00-00 00:00:00',NULL,3,'en_US'),(27,'rongreupub','sonpt@bda.vn','8017d0408f41b75489701e3fb1c3e773',NULL,NULL,'Rong Reu',NULL,1,1,1,7,NULL,'2015-06-02 18:36:40','2015-06-24 10:19:49','0000-00-00 00:00:00',NULL,3,'vi_VN'),(28,'Seo','seo@bda.vn','fcf1a61dc99d54cff308e18901eebc04',NULL,NULL,NULL,NULL,1,1,1,NULL,21,'2015-06-02 19:01:14','2015-06-02 08:01:14','0000-00-00 00:00:00',NULL,3,'en_US'),(29,'lvduitadv','lvduit08-adv@gmail.com','13af6f207afb78d428e41ba0279a1720',NULL,NULL,NULL,NULL,1,1,1,NULL,22,'2015-06-10 10:46:09','2015-06-10 10:46:09','0000-00-00 00:00:00',NULL,3,'en_US'),(30,'rongreuab','rongreu00@bda.com','8017d0408f41b75489701e3fb1c3e773',NULL,NULL,NULL,NULL,1,1,1,8,NULL,'2015-06-17 02:46:56','2015-06-17 02:46:56','0000-00-00 00:00:00',NULL,3,'en_US'),(31,'trungle','trungle.cs@gmail.com','13af6f207afb78d428e41ba0279a1720',NULL,NULL,'trungle',NULL,1,1,1,9,NULL,'2015-06-22 14:45:13','2015-06-24 02:36:32','0000-00-00 00:00:00',NULL,3,'en_US'),(32,'trungtest','testnew@localhost.com','13af6f207afb78d428e41ba0279a1720',NULL,NULL,NULL,NULL,1,1,1,10,NULL,'2015-06-24 02:32:23','2015-06-24 02:32:23','0000-00-00 00:00:00',NULL,3,'en_US'),(33,'lvduitttt','lvduit008@gmail.com','e630c54b2ef08f20bafb50ca4c8cd507',NULL,NULL,NULL,NULL,1,1,1,11,NULL,'2015-06-24 07:04:20','2015-06-24 07:04:20','0000-00-00 00:00:00',NULL,3,'en_US'),(34,'bpub','bpub@duyetdev.me','8017d0408f41b75489701e3fb1c3e773',NULL,NULL,NULL,NULL,1,1,1,12,NULL,'2015-06-24 10:52:20','2015-06-24 10:52:20','0000-00-00 00:00:00',NULL,3,'en_US'),(35,'badv','badv@duyetdev.me','8017d0408f41b75489701e3fb1c3e773',NULL,NULL,NULL,NULL,1,1,1,NULL,23,'2015-06-24 11:52:17','2015-06-24 11:52:17','0000-00-00 00:00:00',NULL,3,'en_US'),(36,'lmk','luatminhkhue88@gmail.com','f9809873a962910ebfbf48d0e45d8a4d',NULL,NULL,NULL,NULL,1,1,1,13,NULL,'2015-06-25 04:09:28','2015-06-25 04:09:28','0000-00-00 00:00:00',NULL,3,'en_US');
/*!40000 ALTER TABLE `auth_Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `auth_userslogin`
--

DROP TABLE IF EXISTS `auth_userslogin`;
/*!50001 DROP VIEW IF EXISTS `auth_userslogin`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `auth_userslogin` AS SELECT 
 1 AS `user_id`,
 1 AS `user_login`,
 1 AS `user_email`,
 1 AS `user_password`,
 1 AS `user_password_salt`,
 1 AS `user_2factor_secret`,
 1 AS `user_fullname`,
 1 AS `user_description`,
 1 AS `user_enabled`,
 1 AS `user_verified`,
 1 AS `user_agreement_accepted`,
 1 AS `DemandCustomerInfoID`,
 1 AS `PublisherInfoID`,
 1 AS `create_date`,
 1 AS `update_date`,
 1 AS `user_permission_cache`,
 1 AS `user_role`,
 1 AS `user_role_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `auth_usersview`
--

DROP TABLE IF EXISTS `auth_usersview`;
/*!50001 DROP VIEW IF EXISTS `auth_usersview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `auth_usersview` AS SELECT 
 1 AS `user_id`,
 1 AS `user_login`,
 1 AS `user_email`,
 1 AS `user_password`,
 1 AS `user_password_salt`,
 1 AS `user_2factor_secret`,
 1 AS `user_fullname`,
 1 AS `user_description`,
 1 AS `user_enabled`,
 1 AS `user_verified`,
 1 AS `DemandCustomerInfoID`,
 1 AS `PublisherInfoID`,
 1 AS `create_date`,
 1 AS `update_date`,
 1 AS `user_permission_cache`,
 1 AS `user_role`,
 1 AS `user_role_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `buySideHourlyBidsAvarage`
--

DROP TABLE IF EXISTS `buySideHourlyBidsAvarage`;
/*!50001 DROP VIEW IF EXISTS `buySideHourlyBidsAvarage`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `buySideHourlyBidsAvarage` AS SELECT 
 1 AS `avg_bids`,
 1 AS `total_bids`,
 1 AS `banner_name`,
 1 AS `Name`,
 1 AS `user_login`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `buySideHourlyBidsAvarageAdmin`
--

DROP TABLE IF EXISTS `buySideHourlyBidsAvarageAdmin`;
/*!50001 DROP VIEW IF EXISTS `buySideHourlyBidsAvarageAdmin`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `buySideHourlyBidsAvarageAdmin` AS SELECT 
 1 AS `BuySidePartnerID`,
 1 AS `avg_bids`,
 1 AS `total_bids`,
 1 AS `banner_name`,
 1 AS `Name`,
 1 AS `user_login`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `buySideHourlyBidsPerTime`
--

DROP TABLE IF EXISTS `buySideHourlyBidsPerTime`;
/*!50001 DROP VIEW IF EXISTS `buySideHourlyBidsPerTime`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `buySideHourlyBidsPerTime` AS SELECT 
 1 AS `BuySidePartnerID`,
 1 AS `MDYH`,
 1 AS `BidsCounter`,
 1 AS `DateCreated`,
 1 AS `DateUpdated`,
 1 AS `Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `impressionsCurrentSpendPerTime`
--

DROP TABLE IF EXISTS `impressionsCurrentSpendPerTime`;
/*!50001 DROP VIEW IF EXISTS `impressionsCurrentSpendPerTime`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `impressionsCurrentSpendPerTime` AS SELECT 
 1 AS `BuySidePartnerID`,
 1 AS `MDYH`,
 1 AS `ImpressionsCounter`,
 1 AS `CurrentSpendGross`,
 1 AS `CurrentSpendNet`,
 1 AS `AverageBidCurrentSpendNet`,
 1 AS `AverageBidCurrentSpendGross`,
 1 AS `DateCreated`,
 1 AS `DateUpdated`,
 1 AS `Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `rbac_permission`
--

DROP TABLE IF EXISTS `rbac_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rbac_permission` (
  `perm_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `perm_name` varchar(32) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`perm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_permission`
--

LOCK TABLES `rbac_permission` WRITE;
/*!40000 ALTER TABLE `rbac_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `rbac_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbac_role`
--

DROP TABLE IF EXISTS `rbac_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rbac_role` (
  `role_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_role_id` int(11) unsigned DEFAULT NULL,
  `role_name` varchar(32) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`role_id`),
  KEY `parent_role_id` (`parent_role_id`),
  CONSTRAINT `rbac_role_ibfk_1` FOREIGN KEY (`parent_role_id`) REFERENCES `rbac_role` (`role_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_role`
--

LOCK TABLES `rbac_role` WRITE;
/*!40000 ALTER TABLE `rbac_role` DISABLE KEYS */;
INSERT INTO `rbac_role` VALUES (1,NULL,'superadmin','2013-11-30 07:48:08','2013-11-30 07:48:08'),(2,1,'admin','2013-11-30 07:48:08','2013-11-30 07:48:08'),(3,2,'member','2013-11-30 07:48:08','2013-11-30 07:48:08'),(4,3,'guest','2013-11-30 07:48:08','2013-11-30 07:48:08'),(5,4,'anonymous','2013-11-30 07:48:08','2013-11-30 07:48:08');
/*!40000 ALTER TABLE `rbac_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbac_role_permission`
--

DROP TABLE IF EXISTS `rbac_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rbac_role_permission` (
  `role_id` int(11) unsigned NOT NULL,
  `perm_id` int(11) unsigned NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`role_id`,`perm_id`),
  KEY `perm_id` (`perm_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `rbac_role_permission_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `rbac_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rbac_role_permission_ibfk_2` FOREIGN KEY (`perm_id`) REFERENCES `rbac_permission` (`perm_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_role_permission`
--

LOCK TABLES `rbac_role_permission` WRITE;
/*!40000 ALTER TABLE `rbac_role_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `rbac_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `sellSidePartnerHourlyBidsPerTime`
--

DROP TABLE IF EXISTS `sellSidePartnerHourlyBidsPerTime`;
/*!50001 DROP VIEW IF EXISTS `sellSidePartnerHourlyBidsPerTime`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `sellSidePartnerHourlyBidsPerTime` AS SELECT 
 1 AS `SellSidePartnerID`,
 1 AS `MDYH`,
 1 AS `BidsWonCounter`,
 1 AS `BidsLostCounter`,
 1 AS `BidsErrorCounter`,
 1 AS `SpendTotalNet`,
 1 AS `AverageBidNet`,
 1 AS `AverageBidGross`,
 1 AS `DateCreated`,
 1 AS `DateUpdated`,
 1 AS `AdName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `userImpressionsSpend`
--

DROP TABLE IF EXISTS `userImpressionsSpend`;
/*!50001 DROP VIEW IF EXISTS `userImpressionsSpend`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `userImpressionsSpend` AS SELECT 
 1 AS `TotalSpendGross`,
 1 AS `TotalSpendNet`,
 1 AS `Name`,
 1 AS `user_login`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `userImpressionsSpendAdmin`
--

DROP TABLE IF EXISTS `userImpressionsSpendAdmin`;
/*!50001 DROP VIEW IF EXISTS `userImpressionsSpendAdmin`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `userImpressionsSpendAdmin` AS SELECT 
 1 AS `BuySidePartnerID`,
 1 AS `TotalSpendGross`,
 1 AS `TotalSpendNet`,
 1 AS `Name`,
 1 AS `user_login`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'bgate_demo'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `AdzoneDailyTracker_daily` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8 */ ;;
/*!50003 SET character_set_results = utf8 */ ;;
/*!50003 SET collation_connection  = utf8_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = '' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`%`*/ /*!50106 EVENT `AdzoneDailyTracker_daily` ON SCHEDULE EVERY 1 DAY STARTS '2015-06-10 01:00:00' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
call AdzoneDailyTracker();
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `BannerTracker_daily` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8 */ ;;
/*!50003 SET character_set_results = utf8 */ ;;
/*!50003 SET collation_connection  = utf8_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = '' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`%`*/ /*!50106 EVENT `BannerTracker_daily` ON SCHEDULE EVERY 1 DAY STARTS '2015-06-11 01:00:00' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
call BannerClickImpCounter();
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'bgate_demo'
--
/*!50003 DROP FUNCTION IF EXISTS `MD5_SPLIT_SALT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `MD5_SPLIT_SALT`(`password` VARCHAR(255), `salt` char(10)) RETURNS varchar(32) CHARSET latin1
    DETERMINISTIC
BEGIN



DECLARE length INT;
DECLARE firsthalf INT;
DECLARE secondhalf INT;
DECLARE result VARCHAR(32);

SET length = LENGTH(`password`);
SET firsthalf = FLOOR(length/2);
SET secondhalf = length - firsthalf; 
SET result =
			MD5(
				CONCAT(
					SUBSTRING(`password`, 1, firsthalf) ,
					CASE WHEN (`salt` IS NULL) THEN '' ELSE `salt` END, 
					SUBSTRING(`password`,secondhalf)
				)
			);



RETURN result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AdzoneDailyTracker` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `AdzoneDailyTracker`()
BEGIN
	
	DECLARE zones_id INT DEFAULT 0;
	DECLARE Sum_click INT DEFAULT 0;
    DECLARE Sum_imp INT DEFAULT 0;
    
    DECLARE Sum_income FLOAT DEFAULT 0;
    DECLARE Sum_income_click FLOAT DEFAULT 0;
    DECLARE Sum_income_imp FLOAT DEFAULT 0;

    DECLARE done INT DEFAULT FALSE;

	DECLARE zones_list CURSOR FOR SELECT PublisherAdZoneID FROM PublisherAdZone;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN zones_list;
    read_loop: LOOP

	    FETCH zones_list INTO zones_id;
	      
	    SELECT COUNT(*),SUM(Price) INTO Sum_click,Sum_income_click FROM RawClick WHERE DATEDIFF(DateCreated,now()) = 0 and PublisherAdZoneID = zones_id;

	    SELECT COUNT(*),SUM(Price) INTO Sum_imp,Sum_income_imp FROM RawImp WHERE DATEDIFF(DateCreated,now()) = 0 and PublisherAdZoneID = zones_id;
	    
	    IF Sum_income_click IS NULL THEN
	      Set Sum_income_click = 0;
	    END IF;

	    IF Sum_income_imp IS NULL THEN
	      Set Sum_income_imp = 0;
	    END IF;

	    set Sum_income = Sum_income_click + Sum_income_imp;

	    IF done THEN
	      LEAVE read_loop;
	    END IF;
	    
	    INSERT INTO AdzoneDailyTracker (PublisherAdZoneID, ClickCount, ImpCount, Income, DateCreated) VALUES (zones_id,Sum_click,Sum_imp,Sum_income,now());

	    
    END LOOP;

    CLOSE zones_list;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BannerClickImpCounter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `BannerClickImpCounter`()
    NO SQL
BEGIN

    DECLARE banner_id INT(11);
    DECLARE click_count INT(11) DEFAULT 0;
    DECLARE imp_count INT(11) DEFAULT 0;
    DECLARE click_outcome FLOAT DEFAULT 0;
    DECLARE imp_outcome FLOAT DEFAULT 0;
    DECLARE total_outcome FLOAT DEFAULT 0;
    DECLARE done INT DEFAULT FALSE;
    DECLARE banners_list CURSOR FOR SELECT AdCampaignBannerPreviewID FROM AdCampaignBannerPreview;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    OPEN banners_list;
    read_loop: LOOP

        FETCH banners_list INTO banner_id;

        SELECT COUNT(*), SUM(Price) INTO click_count, click_outcome FROM RawClick WHERE DATEDIFF(DateCreated,NOW()) = -1 AND AdCampaignBannerID= banner_id;


        SELECT COUNT(*), SUM(Price) INTO imp_count, imp_outcome FROM RawImp WHERE DATEDIFF(DateCreated,NOW()) = -1 AND AdCampaignBannerID= banner_id;

        IF click_outcome IS NULL THEN
          Set click_outcome = 0;
        END IF;
        
        IF imp_outcome IS NULL THEN
          Set imp_outcome = 0;
        END IF;

        set total_outcome = click_outcome + imp_outcome;

        IF done THEN
          LEAVE read_loop;
        END IF;

        INSERT INTO AdBannerDailyTracker(AdCampaignBannerID, ClickCount, ImpCount, Outcome, DateCreated) VALUES(banner_id, click_count, imp_count, total_outcome, NOW());   

    END LOOP;

    CLOSE banners_list;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `BidTotalsRollup`
--

/*!50001 DROP VIEW IF EXISTS `BidTotalsRollup`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `BidTotalsRollup` AS select `BuySideHourlyBidsCounter`.`AdCampaignBannerID` AS `AdCampaignBannerID`,sum(`BuySideHourlyBidsCounter`.`BidsCounter`) AS `TotalBids` from `BuySideHourlyBidsCounter` group by `BuySideHourlyBidsCounter`.`AdCampaignBannerID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DemandImpressionsAndSpendHourly`
--

/*!50001 DROP VIEW IF EXISTS `DemandImpressionsAndSpendHourly`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `DemandImpressionsAndSpendHourly` AS select `diashp`.`MDYH` AS `MDYH`,`diashp`.`AdCampaignBannerID` AS `AdCampaignBannerID`,`diashp`.`DemandCustomerName` AS `DemandCustomerName`,`diashp`.`DemandCustomerInfoID` AS `DemandCustomerInfoID`,`diashp`.`BannerName` AS `BannerName`,group_concat(distinct `bshibt`.`PublisherTLD` separator ', ') AS `PublisherTLDs`,`diashp`.`Impressions` AS `Impressions`,`diashp`.`Cost` AS `Cost`,`diashp`.`GrossCost` AS `GrossCost`,`diashp`.`CPM` AS `CPM`,`diashp`.`GrossCPM` AS `GrossCPM`,`diashp`.`DateCreated` AS `DateCreated` from (`DemandImpressionsAndSpendHourlyPre` `diashp` left join `BuySideHourlyImpressionsByTLD` `bshibt` on(((`diashp`.`AdCampaignBannerID` = `bshibt`.`AdCampaignBannerID`) and (`diashp`.`MDYH` = `bshibt`.`MDYH`)))) group by `diashp`.`AdCampaignBannerID`,`diashp`.`MDYH` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DemandImpressionsAndSpendHourlyPre`
--

/*!50001 DROP VIEW IF EXISTS `DemandImpressionsAndSpendHourlyPre`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `DemandImpressionsAndSpendHourlyPre` AS select `bshiccs`.`MDYH` AS `MDYH`,`bshiccs`.`AdCampaignBannerID` AS `AdCampaignBannerID`,`dci`.`Name` AS `DemandCustomerName`,`dci`.`DemandCustomerInfoID` AS `DemandCustomerInfoID`,`acb`.`Name` AS `BannerName`,sum(`bshiccs`.`ImpressionsCounter`) AS `Impressions`,round(sum(`bshiccs`.`CurrentSpendNet`),7) AS `Cost`,round(sum(`bshiccs`.`CurrentSpendGross`),7) AS `GrossCost`,round(((sum(`bshiccs`.`CurrentSpendNet`) / sum(`bshiccs`.`ImpressionsCounter`)) * 1000),7) AS `CPM`,round(((sum(`bshiccs`.`CurrentSpendGross`) / sum(`bshiccs`.`ImpressionsCounter`)) * 1000),7) AS `GrossCPM`,`bshiccs`.`DateCreated` AS `DateCreated` from (((`BuySideHourlyImpressionsCounterCurrentSpend` `bshiccs` join `AdCampaignBanner` `acb` on((`bshiccs`.`AdCampaignBannerID` = `acb`.`AdCampaignBannerID`))) join `auth_Users` `au` on((`au`.`user_id` = `acb`.`UserID`))) join `DemandCustomerInfo` `dci` on((`au`.`DemandCustomerInfoID` = `dci`.`DemandCustomerInfoID`))) group by `bshiccs`.`AdCampaignBannerID`,`bshiccs`.`MDYH` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ImpressionAndSpendTotalsRollup`
--

/*!50001 DROP VIEW IF EXISTS `ImpressionAndSpendTotalsRollup`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ImpressionAndSpendTotalsRollup` AS select `BuySideHourlyImpressionsCounterCurrentSpend`.`AdCampaignBannerID` AS `AdCampaignBannerID`,sum(`BuySideHourlyImpressionsCounterCurrentSpend`.`CurrentSpendGross`) AS `TotalSpendGross`,sum(`BuySideHourlyImpressionsCounterCurrentSpend`.`CurrentSpendNet`) AS `TotalSpendNet`,sum(`BuySideHourlyImpressionsCounterCurrentSpend`.`ImpressionsCounter`) AS `TotalImpressions` from `BuySideHourlyImpressionsCounterCurrentSpend` group by `BuySideHourlyImpressionsCounterCurrentSpend`.`AdCampaignBannerID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PublisherImpressionsAndSpendHourly`
--

/*!50001 DROP VIEW IF EXISTS `PublisherImpressionsAndSpendHourly`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `PublisherImpressionsAndSpendHourly` AS select `phb`.`MDYH` AS `MDYH`,`phb`.`PublisherAdZoneID` AS `PublisherAdZoneID`,`pi`.`Name` AS `PublisherName`,`pad`.`AdOwnerID` AS `PublisherInfoID`,`pad`.`AdName` AS `AdName`,`phb`.`AuctionCounter` AS `Requests`,`phb`.`BidsWonCounter` AS `Impressions`,round(((`phb`.`SpendTotalNet` / `phb`.`BidsWonCounter`) * 1000),7) AS `eCPM`,round(((`phb`.`SpendTotalGross` / `phb`.`BidsWonCounter`) * 1000),7) AS `GrossECPM`,concat(round(((`phb`.`BidsWonCounter` / `phb`.`AuctionCounter`) * 100),2),'%') AS `FillRate`,round(`phb`.`SpendTotalNet`,7) AS `Revenue`,round(`phb`.`SpendTotalGross`,7) AS `GrossRevenue`,`phb`.`DateCreated` AS `DateCreated` from ((`PublisherHourlyBids` `phb` join `PublisherAdZone` `pad` on((`phb`.`PublisherAdZoneID` = `pad`.`PublisherAdZoneID`))) join `PublisherInfo` `pi` on((`pad`.`AdOwnerID` = `pi`.`PublisherInfoID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PublisherImpressionsAndSpendHourlyTotals`
--

/*!50001 DROP VIEW IF EXISTS `PublisherImpressionsAndSpendHourlyTotals`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `PublisherImpressionsAndSpendHourlyTotals` AS select `PublisherImpressionsAndSpendHourly`.`PublisherAdZoneID` AS `PublisherAdZoneID`,`PublisherImpressionsAndSpendHourly`.`PublisherName` AS `PublisherName`,`PublisherImpressionsAndSpendHourly`.`PublisherInfoID` AS `PublisherInfoID`,sum(`PublisherImpressionsAndSpendHourly`.`Requests`) AS `TotalRequests`,sum(`PublisherImpressionsAndSpendHourly`.`Impressions`) AS `TotalImpressions`,sum(`PublisherImpressionsAndSpendHourly`.`Revenue`) AS `TotalRevenue` from `PublisherImpressionsAndSpendHourly` group by `PublisherImpressionsAndSpendHourly`.`PublisherAdZoneID` order by `PublisherImpressionsAndSpendHourly`.`PublisherAdZoneID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `auth_userslogin`
--

/*!50001 DROP VIEW IF EXISTS `auth_userslogin`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `auth_userslogin` AS select `auth_Users`.`user_id` AS `user_id`,`auth_Users`.`user_login` AS `user_login`,`auth_Users`.`user_email` AS `user_email`,`auth_Users`.`user_password` AS `user_password`,`auth_Users`.`user_password_salt` AS `user_password_salt`,`auth_Users`.`user_2factor_secret` AS `user_2factor_secret`,`auth_Users`.`user_fullname` AS `user_fullname`,`auth_Users`.`user_description` AS `user_description`,`auth_Users`.`user_enabled` AS `user_enabled`,`auth_Users`.`user_verified` AS `user_verified`,`auth_Users`.`user_agreement_accepted` AS `user_agreement_accepted`,`auth_Users`.`DemandCustomerInfoID` AS `DemandCustomerInfoID`,`auth_Users`.`PublisherInfoID` AS `PublisherInfoID`,`auth_Users`.`create_date` AS `create_date`,`auth_Users`.`update_date` AS `update_date`,`auth_Users`.`user_permission_cache` AS `user_permission_cache`,`auth_Users`.`user_role` AS `user_role`,`rbac_role`.`role_name` AS `user_role_name` from (`auth_Users` join `rbac_role` on((`auth_Users`.`user_role` = `rbac_role`.`role_id`))) where ((`auth_Users`.`user_enabled` > 0) and (`auth_Users`.`user_verified` > 0) and (`auth_Users`.`user_agreement_accepted` > 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `auth_usersview`
--

/*!50001 DROP VIEW IF EXISTS `auth_usersview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `auth_usersview` AS select `auth_Users`.`user_id` AS `user_id`,`auth_Users`.`user_login` AS `user_login`,`auth_Users`.`user_email` AS `user_email`,`auth_Users`.`user_password` AS `user_password`,`auth_Users`.`user_password_salt` AS `user_password_salt`,`auth_Users`.`user_2factor_secret` AS `user_2factor_secret`,`auth_Users`.`user_fullname` AS `user_fullname`,`auth_Users`.`user_description` AS `user_description`,`auth_Users`.`user_enabled` AS `user_enabled`,`auth_Users`.`user_verified` AS `user_verified`,`auth_Users`.`DemandCustomerInfoID` AS `DemandCustomerInfoID`,`auth_Users`.`PublisherInfoID` AS `PublisherInfoID`,`auth_Users`.`create_date` AS `create_date`,`auth_Users`.`update_date` AS `update_date`,`auth_Users`.`user_permission_cache` AS `user_permission_cache`,`auth_Users`.`user_role` AS `user_role`,`rbac_role`.`role_name` AS `user_role_name` from (`auth_Users` join `rbac_role` on((`auth_Users`.`user_role` = `rbac_role`.`role_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `buySideHourlyBidsAvarage`
--

/*!50001 DROP VIEW IF EXISTS `buySideHourlyBidsAvarage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `buySideHourlyBidsAvarage` AS select avg(`BuySideHourlyBidsCounter`.`BidsCounter`) AS `avg_bids`,sum(`BuySideHourlyBidsCounter`.`BidsCounter`) AS `total_bids`,`AdCampaignBanner`.`Name` AS `banner_name`,`AdCampaign`.`Name` AS `Name`,`auth_Users`.`user_login` AS `user_login` from (((`BuySideHourlyBidsCounter` join `AdCampaignBanner` on((`BuySideHourlyBidsCounter`.`AdCampaignBannerID` = `AdCampaignBanner`.`AdCampaignBannerID`))) join `AdCampaign` on((`AdCampaignBanner`.`AdCampaignID` = `AdCampaign`.`AdCampaignID`))) join `auth_Users` on((`auth_Users`.`user_id` = `AdCampaignBanner`.`UserID`))) group by `BuySideHourlyBidsCounter`.`AdCampaignBannerID` order by `BuySideHourlyBidsCounter`.`AdCampaignBannerID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `buySideHourlyBidsAvarageAdmin`
--

/*!50001 DROP VIEW IF EXISTS `buySideHourlyBidsAvarageAdmin`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `buySideHourlyBidsAvarageAdmin` AS select `BuySideHourlyBidsCounter`.`BuySidePartnerID` AS `BuySidePartnerID`,avg(`BuySideHourlyBidsCounter`.`BidsCounter`) AS `avg_bids`,sum(`BuySideHourlyBidsCounter`.`BidsCounter`) AS `total_bids`,`AdCampaignBanner`.`Name` AS `banner_name`,`AdCampaign`.`Name` AS `Name`,`auth_Users`.`user_login` AS `user_login` from (((`BuySideHourlyBidsCounter` join `AdCampaignBanner` on((`BuySideHourlyBidsCounter`.`AdCampaignBannerID` = `AdCampaignBanner`.`AdCampaignBannerID`))) join `AdCampaign` on((`AdCampaignBanner`.`AdCampaignID` = `AdCampaign`.`AdCampaignID`))) join `auth_Users` on((`auth_Users`.`user_id` = `AdCampaignBanner`.`UserID`))) group by `BuySideHourlyBidsCounter`.`AdCampaignBannerID`,`BuySideHourlyBidsCounter`.`BuySidePartnerID` order by `BuySideHourlyBidsCounter`.`AdCampaignBannerID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `buySideHourlyBidsPerTime`
--

/*!50001 DROP VIEW IF EXISTS `buySideHourlyBidsPerTime`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `buySideHourlyBidsPerTime` AS select `BuySideHourlyBidsCounter`.`BuySidePartnerID` AS `BuySidePartnerID`,`BuySideHourlyBidsCounter`.`MDYH` AS `MDYH`,`BuySideHourlyBidsCounter`.`BidsCounter` AS `BidsCounter`,`BuySideHourlyBidsCounter`.`DateCreated` AS `DateCreated`,`BuySideHourlyBidsCounter`.`DateUpdated` AS `DateUpdated`,`AdCampaign`.`Name` AS `Name` from ((`BuySideHourlyBidsCounter` join `AdCampaignBanner` on((`BuySideHourlyBidsCounter`.`AdCampaignBannerID` = `AdCampaignBanner`.`AdCampaignBannerID`))) join `AdCampaign` on((`AdCampaignBanner`.`AdCampaignID` = `AdCampaign`.`AdCampaignID`))) order by `BuySideHourlyBidsCounter`.`AdCampaignBannerID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `impressionsCurrentSpendPerTime`
--

/*!50001 DROP VIEW IF EXISTS `impressionsCurrentSpendPerTime`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `impressionsCurrentSpendPerTime` AS select `BuySideHourlyImpressionsCounterCurrentSpend`.`BuySidePartnerID` AS `BuySidePartnerID`,`BuySideHourlyImpressionsCounterCurrentSpend`.`MDYH` AS `MDYH`,`BuySideHourlyImpressionsCounterCurrentSpend`.`ImpressionsCounter` AS `ImpressionsCounter`,`BuySideHourlyImpressionsCounterCurrentSpend`.`CurrentSpendGross` AS `CurrentSpendGross`,`BuySideHourlyImpressionsCounterCurrentSpend`.`CurrentSpendNet` AS `CurrentSpendNet`,round((`BuySideHourlyImpressionsCounterCurrentSpend`.`CurrentSpendNet` / `BuySideHourlyImpressionsCounterCurrentSpend`.`ImpressionsCounter`),7) AS `AverageBidCurrentSpendNet`,round((`BuySideHourlyImpressionsCounterCurrentSpend`.`CurrentSpendGross` / `BuySideHourlyImpressionsCounterCurrentSpend`.`ImpressionsCounter`),7) AS `AverageBidCurrentSpendGross`,`BuySideHourlyImpressionsCounterCurrentSpend`.`DateCreated` AS `DateCreated`,`BuySideHourlyImpressionsCounterCurrentSpend`.`DateUpdated` AS `DateUpdated`,`AdCampaign`.`Name` AS `Name` from ((`BuySideHourlyImpressionsCounterCurrentSpend` join `AdCampaignBanner` on((`BuySideHourlyImpressionsCounterCurrentSpend`.`AdCampaignBannerID` = `AdCampaignBanner`.`AdCampaignBannerID`))) join `AdCampaign` on((`AdCampaignBanner`.`AdCampaignID` = `AdCampaign`.`AdCampaignID`))) order by `BuySideHourlyImpressionsCounterCurrentSpend`.`BuySidePartnerID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sellSidePartnerHourlyBidsPerTime`
--

/*!50001 DROP VIEW IF EXISTS `sellSidePartnerHourlyBidsPerTime`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sellSidePartnerHourlyBidsPerTime` AS select `SellSidePartnerHourlyBids`.`SellSidePartnerID` AS `SellSidePartnerID`,`SellSidePartnerHourlyBids`.`MDYH` AS `MDYH`,`SellSidePartnerHourlyBids`.`BidsWonCounter` AS `BidsWonCounter`,`SellSidePartnerHourlyBids`.`BidsLostCounter` AS `BidsLostCounter`,`SellSidePartnerHourlyBids`.`BidsErrorCounter` AS `BidsErrorCounter`,`SellSidePartnerHourlyBids`.`SpendTotalNet` AS `SpendTotalNet`,round((`SellSidePartnerHourlyBids`.`SpendTotalNet` / `SellSidePartnerHourlyBids`.`BidsWonCounter`),7) AS `AverageBidNet`,round((`SellSidePartnerHourlyBids`.`SpendTotalGross` / `SellSidePartnerHourlyBids`.`BidsWonCounter`),7) AS `AverageBidGross`,`SellSidePartnerHourlyBids`.`DateCreated` AS `DateCreated`,`SellSidePartnerHourlyBids`.`DateUpdated` AS `DateUpdated`,`PublisherAdZone`.`AdName` AS `AdName` from (`SellSidePartnerHourlyBids` join `PublisherAdZone` on((`SellSidePartnerHourlyBids`.`PublisherAdZoneID` = `PublisherAdZone`.`PublisherAdZoneID`))) order by `SellSidePartnerHourlyBids`.`SellSidePartnerID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `userImpressionsSpend`
--

/*!50001 DROP VIEW IF EXISTS `userImpressionsSpend`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `userImpressionsSpend` AS select round(sum(`BuySideHourlyImpressionsCounterCurrentSpend`.`CurrentSpendGross`),7) AS `TotalSpendGross`,round(sum(`BuySideHourlyImpressionsCounterCurrentSpend`.`CurrentSpendNet`),7) AS `TotalSpendNet`,`AdCampaign`.`Name` AS `Name`,`auth_Users`.`user_login` AS `user_login` from (((`BuySideHourlyImpressionsCounterCurrentSpend` join `AdCampaignBanner` on((`BuySideHourlyImpressionsCounterCurrentSpend`.`AdCampaignBannerID` = `AdCampaignBanner`.`AdCampaignBannerID`))) join `AdCampaign` on((`AdCampaignBanner`.`AdCampaignID` = `AdCampaign`.`AdCampaignID`))) join `auth_Users` on((`auth_Users`.`user_id` = `AdCampaignBanner`.`UserID`))) group by `BuySideHourlyImpressionsCounterCurrentSpend`.`AdCampaignBannerID` order by `auth_Users`.`user_login` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `userImpressionsSpendAdmin`
--

/*!50001 DROP VIEW IF EXISTS `userImpressionsSpendAdmin`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `userImpressionsSpendAdmin` AS select `BuySideHourlyImpressionsCounterCurrentSpend`.`BuySidePartnerID` AS `BuySidePartnerID`,round(sum(`BuySideHourlyImpressionsCounterCurrentSpend`.`CurrentSpendGross`),7) AS `TotalSpendGross`,round(sum(`BuySideHourlyImpressionsCounterCurrentSpend`.`CurrentSpendNet`),7) AS `TotalSpendNet`,`AdCampaign`.`Name` AS `Name`,`auth_Users`.`user_login` AS `user_login` from (((`BuySideHourlyImpressionsCounterCurrentSpend` join `AdCampaignBanner` on((`BuySideHourlyImpressionsCounterCurrentSpend`.`AdCampaignBannerID` = `AdCampaignBanner`.`AdCampaignBannerID`))) join `AdCampaign` on((`AdCampaignBanner`.`AdCampaignID` = `AdCampaign`.`AdCampaignID`))) join `auth_Users` on((`auth_Users`.`user_id` = `AdCampaignBanner`.`UserID`))) group by `BuySideHourlyImpressionsCounterCurrentSpend`.`BuySidePartnerID`,`BuySideHourlyImpressionsCounterCurrentSpend`.`AdCampaignBannerID` order by `auth_Users`.`user_login` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-04 13:49:23
