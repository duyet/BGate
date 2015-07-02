ALTER TABLE `PublisherAdZone` 
CHANGE COLUMN `TotalAmount` `TotalAmount` DECIMAL(20,20) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT 'Aggregated Statistics Field' ;
