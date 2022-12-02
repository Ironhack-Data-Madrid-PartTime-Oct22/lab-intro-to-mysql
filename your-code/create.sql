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
-- Table `mydb`.`CARS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CARS` (
  `idCARS` INT NOT NULL AUTO_INCREMENT,
  `VIN` VARCHAR(45) NOT NULL,
  `Manufacturer` VARCHAR(45) NOT NULL,
  `Model` VARCHAR(45) NOT NULL,
  `Year` YEAR NOT NULL,
  `Color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCARS`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CUSTOMER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CUSTOMER` (
  `idCUSTOMER` INT NOT NULL AUTO_INCREMENT,
  `Customer ID` INT NOT NULL,
  `Phone` INT NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(200) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `State/Province` VARCHAR(45) NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  `Postal` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCUSTOMER`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`COSTUMER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`COSTUMER` (
  `idCOSTUMER` INT NOT NULL AUTO_INCREMENT,
  `Costumer Id` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Phone` INT NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(200) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `State/Province` VARCHAR(45) NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  `Postal` INT NOT NULL,
  PRIMARY KEY (`idCOSTUMER`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SALESPERSONS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`SALESPERSONS` (
  `idSALESPERSONS` INT NOT NULL AUTO_INCREMENT,
  `Staff ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idSALESPERSONS`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`INVOICE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`INVOICE` (
  `idINVOICE` INT NOT NULL,
  `Invoice Number` INT NOT NULL,
  `Date` DATE NOT NULL,
  `COSTUMER_idCOSTUMER` INT NOT NULL,
  `SALESPERSONS_idSALESPERSONS` INT NOT NULL,
  `CARS_idCARS` INT NOT NULL,
  PRIMARY KEY (`idINVOICE`),
  INDEX `fk_INVOICE_COSTUMER_idx` (`COSTUMER_idCOSTUMER` ASC) VISIBLE,
  INDEX `fk_INVOICE_SALESPERSONS1_idx` (`SALESPERSONS_idSALESPERSONS` ASC) VISIBLE,
  INDEX `fk_INVOICE_CARS1_idx` (`CARS_idCARS` ASC) VISIBLE,
  CONSTRAINT `fk_INVOICE_COSTUMER`
    FOREIGN KEY (`COSTUMER_idCOSTUMER`)
    REFERENCES `mydb`.`COSTUMER` (`idCOSTUMER`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_INVOICE_SALESPERSONS1`
    FOREIGN KEY (`SALESPERSONS_idSALESPERSONS`)
    REFERENCES `mydb`.`SALESPERSONS` (`idSALESPERSONS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_INVOICE_CARS1`
    FOREIGN KEY (`CARS_idCARS`)
    REFERENCES `mydb`.`CARS` (`idCARS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
