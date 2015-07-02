ALTER TABLE `PublisherAdZone` 
CHANGE COLUMN `TotalImpressionsFilled` `TotalImpressions` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Aggregated Statistics Field' ;
