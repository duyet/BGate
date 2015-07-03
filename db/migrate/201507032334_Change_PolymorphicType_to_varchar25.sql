ALTER TABLE `InternalTransaction` 
CHANGE COLUMN `PolymorphicType` `PolymorphicType` VARCHAR(25) NOT NULL ,
CHANGE COLUMN `TransactionType` `TransactionType` VARCHAR(25) NOT NULL ;
