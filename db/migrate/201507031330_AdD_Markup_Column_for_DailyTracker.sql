ALTER TABLE `AdBannerDailyTracker` 
ADD COLUMN `NetOutcome` FLOAT NULL DEFAULT 0 AFTER `Outcome`;

ALTER TABLE `AdzoneDailyTracker` 
ADD COLUMN `NetIncome` FLOAT NULL DEFAULT 0 AFTER `Income`;

