-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema lab
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab` DEFAULT CHARACTER SET utf8 ;
USE `lab` ;

-- -----------------------------------------------------
-- Table `lab`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab`.`cars` (
  `idcars` INT NOT NULL AUTO_INCREMENT,
  `VIN` VARCHAR(25) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` INT NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcars`))
ENGINE = InnoDB
AUTO_INCREMENT = 26
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `lab`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab`.`customers` (
  `idcustomers` INT NOT NULL AUTO_INCREMENT,
  `customer` INT NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `phone` VARCHAR(20) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `city` VARCHAR(25) NOT NULL,
  `state` VARCHAR(25) NOT NULL,
  `country` VARCHAR(25) NOT NULL,
  `zip` INT NOT NULL,
  PRIMARY KEY (`idcustomers`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `lab`.`salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab`.`salesperson` (
  `idsalesperson` INT NOT NULL,
  `staff_ID` INT NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `store` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idsalesperson`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `lab`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab`.`invoices` (
  `idinvoices` INT NOT NULL,
  `invoice_num` INT NOT NULL,
  `date` DATETIME NOT NULL,
  `cars_idcars` INT NOT NULL,
  `customers_idcustomers` INT NOT NULL,
  `salesperson_idsalesperson` INT NOT NULL,
  PRIMARY KEY (`idinvoices`),
  INDEX `fk_invoices_cars_idx` (`cars_idcars` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customers_idcustomers` ASC) VISIBLE,
  INDEX `fk_invoices_salesperson1_idx` (`salesperson_idsalesperson` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_cars`
    FOREIGN KEY (`cars_idcars`)
    REFERENCES `lab`.`cars` (`idcars`),
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_idcustomers`)
    REFERENCES `lab`.`customers` (`idcustomers`),
  CONSTRAINT `fk_invoices_salesperson1`
    FOREIGN KEY (`salesperson_idsalesperson`)
    REFERENCES `lab`.`salesperson` (`idsalesperson`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
