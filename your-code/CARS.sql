-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Car
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Car
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Car` DEFAULT CHARACTER SET utf8 ;
USE `Car` ;

-- -----------------------------------------------------
-- Table `Car`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car`.`cars` (
  `idcars` INT NOT NULL AUTO_INCREMENT,
  `VIN` VARCHAR(45) NOT NULL,
  `Manufacturer` VARCHAR(45) NOT NULL,
  `Model` VARCHAR(45) NOT NULL,
  `Year` INT NOT NULL,
  `Color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcars`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Car`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car`.`Customers` (
  `idCustomers` INT NOT NULL AUTO_INCREMENT,
  `Customer_ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Phone` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `State_Province` VARCHAR(45) NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  `Postal` INT NOT NULL,
  PRIMARY KEY (`idCustomers`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Car`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car`.`Salespersons` (
  `idSalespersons` INT NOT NULL AUTO_INCREMENT,
  `Staff_ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idSalespersons`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Car`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car`.`Invoices` (
  `idtable4` INT NOT NULL AUTO_INCREMENT,
  `Invoice_Number` INT NOT NULL,
  `Date` DATE NOT NULL,
  `Car` INT NOT NULL,
  `Customer` INT NOT NULL,
  `Sales_Person` INT NOT NULL,
  `cars_idcars` INT NOT NULL,
  `Customers_idCustomers` INT NOT NULL,
  `Salespersons_idSalespersons` INT NOT NULL,
  PRIMARY KEY (`idtable4`),
  INDEX `fk_Invoices_cars_idx` (`cars_idcars` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_idCustomers` ASC) VISIBLE,
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_idSalespersons` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_cars`
    FOREIGN KEY (`cars_idcars`)
    REFERENCES `Car`.`cars` (`idcars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_idCustomers`)
    REFERENCES `Car`.`Customers` (`idCustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_idSalespersons`)
    REFERENCES `Car`.`Salespersons` (`idSalespersons`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
