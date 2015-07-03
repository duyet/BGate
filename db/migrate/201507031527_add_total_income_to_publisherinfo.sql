ALTER TABLE `PublisherInfo` 
ADD COLUMN `TotalIncome` DOUBLE NULL DEFAULT 0 AFTER `MonthlyIncome`;
