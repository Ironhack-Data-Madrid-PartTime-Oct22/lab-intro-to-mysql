-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema LAB-MYSQL
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema LAB-MYSQL
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LAB-MYSQL` DEFAULT CHARACTER SET utf8 ;
USE `LAB-MYSQL` ;

-- -----------------------------------------------------
-- Table `LAB-MYSQL`.`CARS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LAB-MYSQL`.`CARS` (
  `idCARS` INT NOT NULL AUTO_INCREMENT,
  `VIN` VARCHAR(45) NOT NULL,
  `Manufacturer` VARCHAR(45) NOT NULL,
  `Model` VARCHAR(45) NOT NULL,
  `Year` DATETIME NOT NULL,
  `Color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCARS`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LAB-MYSQL`.`CUSTOMERS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LAB-MYSQL`.`CUSTOMERS` (
  `idCUSTOMERS` INT NOT NULL AUTO_INCREMENT,
  `Customer_ID` VARCHAR(45) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Phone` VARCHAR(13) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `State_Province` VARCHAR(45) NOT NULL,
  `Postal` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCUSTOMERS`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LAB-MYSQL`.`SALESPERSONS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LAB-MYSQL`.`SALESPERSONS` (
  `idSalespersons` INT NOT NULL AUTO_INCREMENT,
  `STAFF_ID` VARCHAR(45) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idSalespersons`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LAB-MYSQL`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LAB-MYSQL`.`Invoices` (
  `idInvoices` INT NOT NULL,
  `Invoice Number` VARCHAR(45) NOT NULL,
  `Date` DATETIME NOT NULL,
  `CARS_idCARS` INT NOT NULL,
  `CUSTOMERS_idCUSTOMERS` INT NOT NULL,
  `Salespersons_idSalespersons` INT NOT NULL,
  PRIMARY KEY (`idInvoices`),
  INDEX `fk_Invoices_CARS_idx` (`CARS_idCARS` ASC) VISIBLE,
  INDEX `fk_Invoices_CUSTOMERS1_idx` (`CUSTOMERS_idCUSTOMERS` ASC) VISIBLE,
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_idSalespersons` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_CARS`
    FOREIGN KEY (`CARS_idCARS`)
    REFERENCES `LAB-MYSQL`.`CARS` (`idCARS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_CUSTOMERS1`
    FOREIGN KEY (`CUSTOMERS_idCUSTOMERS`)
    REFERENCES `LAB-MYSQL`.`CUSTOMERS` (`idCUSTOMERS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_idSalespersons`)
    REFERENCES `LAB-MYSQL`.`SALESPERSONS` (`idSalespersons`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
