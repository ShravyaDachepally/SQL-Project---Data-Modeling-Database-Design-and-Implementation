-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Security`
-- ----------------------------------------------------- 
CREATE TABLE IF NOT EXISTS `mydb`.`Security` (
  `security_id` INT NOT NULL,
  `security_ticker` VARCHAR(20) NULL,
  `security_name` VARCHAR(50) NULL,
  `security_type` VARCHAR(45) NULL,
  `security_exchange` VARCHAR(10) NULL,
  PRIMARY KEY (`security_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Trading`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Trading` (
  `trading_id` INT NOT NULL,
  `trading_date` DATE NULL,
  `trading_closing_price` DECIMAL(10,4) NULL,
  `trading_volume` INT NULL,
  `trading_opening_price` DECIMAL(10,4) NULL,
  `trading_high_price` DECIMAL(10,4) NULL,
  `trading_low_price` DECIMAL(10,4) NULL,
  `Security_security_id` INT NOT NULL,
  PRIMARY KEY (`trading_id`, `Security_security_id`),
  INDEX `fk_Trading_Security_idx` (`Security_security_id` ASC) VISIBLE,
  CONSTRAINT `fk_Trading_Security`
    FOREIGN KEY (`Security_security_id`)
    REFERENCES `mydb`.`Security` (`security_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO Security VALUES(11,'TSLA', 'TESLA','STOCK', 'NASDAQ');
INSERT INTO Security VALUES(22,'AAPL', 'APPLE','STOCK', 'NASDAQ');
INSERT INTO Security VALUES(3,'AMZN', 'AMAZON','STOCK', 'NASDAQ');
INSERT INTO Security VALUES(4,'MSFT', 'MICROSOFT','STOCK', 'NASDAQ');
INSERT INTO Security VALUES(5,'META', 'META','STOCK', 'NASDAQ');
INSERT INTO Security VALUES(6,'CVX', 'CHEVRON','STOCK', 'NYSE');
INSERT INTO Security VALUES(10,'WMT', 'WALMART','STOCK', 'NYSE');
INSERT INTO Security VALUES(7,'COST', 'COSTCO','STOCK', 'NASDAQ');
INSERT INTO Security VALUES(8,'MCK', 'MCKESSON','STOCK', 'NYSE');
INSERT INTO Security VALUES(9,'TM', 'TOYOTA','STOCK', 'NYSE');

#DELETE FROM Trading WHERE Security_security_id = 1;
#DELETE FROM Security WHERE security_id = 1;

#LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Tesla.csv' INTO TABLE trading
#FIELDS TERMINATED BY ','
#LINES TERMINATED BY '\r\n'
#IGNORE 1 ROWS    
    
#LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\AAPL.csv' INTO TABLE trading
#FIELDS TERMINATED BY ','
#LINES TERMINATED BY '\r\n'
#IGNORE 1 ROWS

#LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\AMZN.csv' INTO TABLE trading
#FIELDS TERMINATED BY ','
#LINES TERMINATED BY '\r\n'
#IGNORE 1 ROWS

#LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\MSFT.csv' INTO TABLE trading
#FIELDS TERMINATED BY ','
#LINES TERMINATED BY '\r\n'
#IGNORE 1 ROWS

#LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\META.csv' INTO TABLE trading
#FIELDS TERMINATED BY ','
#LINES TERMINATED BY '\r\n'
#IGNORE 1 ROWS

#LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\CVX.csv' INTO TABLE trading
#FIELDS TERMINATED BY ','
#LINES TERMINATED BY '\r\n'
#IGNORE 1 ROWS

#LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\WMT.csv' INTO TABLE trading
#FIELDS TERMINATED BY ','
#LINES TERMINATED BY '\r\n'
#IGNORE 1 ROWS

#LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\COST.csv' INTO TABLE trading
#FIELDS TERMINATED BY ','
#LINES TERMINATED BY '\r\n'
#IGNORE 1 ROWS

#LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\MCK.csv' INTO TABLE trading
#FIELDS TERMINATED BY ','
#LINES TERMINATED BY '\r\n'
#IGNORE 1 ROWS

#LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\TM.csv' INTO TABLE trading
#FIELDS TERMINATED BY ','
#LINES TERMINATED BY '\r\n'
#IGNORE 1 ROWS




