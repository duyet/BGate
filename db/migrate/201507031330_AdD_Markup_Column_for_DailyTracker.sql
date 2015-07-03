ALTER TABLE `AdBannerDailyTracker` 
ADD COLUMN `MarkupOutcome` FLOAT NULL DEFAULT 0 AFTER `Outcome`;

ALTER TABLE `AdzoneDailyTracker` 
ADD COLUMN `MarkupIncome` FLOAT NULL DEFAULT 0 AFTER `Income`;

