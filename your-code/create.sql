-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema lab_sql_intro
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab_sql_intro
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab_sql_intro` DEFAULT CHARACTER SET utf8 ;
USE `lab_sql_intro` ;

-- -----------------------------------------------------
-- Table `lab_sql_intro`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_sql_intro`.`Cars` (
  `idCars` INT NOT NULL AUTO_INCREMENT,
  `VIN` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` YEAR(4) NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCars`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_sql_intro`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_sql_intro`.`Customers` (
  `idCustomers` INT NOT NULL AUTO_INCREMENT,
  `CustomerID` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(20) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `address` VARCHAR(200) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state_province` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `postal` INT NOT NULL,
  PRIMARY KEY (`idCustomers`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_sql_intro`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_sql_intro`.`Salesperson` (
  `idSalesperson` INT NOT NULL AUTO_INCREMENT,
  `staffid` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idSalesperson`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_sql_intro`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_sql_intro`.`Invoices` (
  `idInvoices` INT NOT NULL AUTO_INCREMENT,
  `invoice_number` VARCHAR(45) NOT NULL,
  `date` DATE NOT NULL,
  `Cars_idCars` INT NOT NULL,
  `Customers_idCustomers` INT NOT NULL,
  `Salesperson_idSalesperson` INT NOT NULL,
  PRIMARY KEY (`idInvoices`),
  INDEX `fk_Invoices_Cars_idx` (`Cars_idCars` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_idCustomers` ASC) VISIBLE,
  INDEX `fk_Invoices_Salesperson1_idx` (`Salesperson_idSalesperson` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Cars`
    FOREIGN KEY (`Cars_idCars`)
    REFERENCES `lab_sql_intro`.`Cars` (`idCars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_idCustomers`)
    REFERENCES `lab_sql_intro`.`Customers` (`idCustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salesperson1`
    FOREIGN KEY (`Salesperson_idSalesperson`)
    REFERENCES `lab_sql_intro`.`Salesperson` (`idSalesperson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
