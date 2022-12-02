-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema lab_1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab_1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab_1` DEFAULT CHARACTER SET utf8mb3 ;
USE `lab_1` ;

-- -----------------------------------------------------
-- Table `lab_1`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_1`.`cliente` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `DNI` CHAR(9) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `telefono` INT NOT NULL,
  `correo` VARCHAR(60) NULL DEFAULT NULL,
  `direccion` VARCHAR(100) NOT NULL,
  `ciudad` VARCHAR(45) NOT NULL,
  `provincia` VARCHAR(45) NOT NULL,
  `pais` VARCHAR(45) NOT NULL,
  `codigo_postal` INT NOT NULL,
  PRIMARY KEY (`id_cliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `lab_1`.`coche`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_1`.`coche` (
  `id_coche` INT NOT NULL AUTO_INCREMENT,
  `VIN` CHAR(8) NOT NULL,
  `fabricante` VARCHAR(45) NOT NULL,
  `modelo` VARCHAR(45) NOT NULL,
  `año` YEAR NOT NULL,
  `color` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_coche`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `lab_1`.`vendedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_1`.`vendedor` (
  `id_vendedor` INT NOT NULL AUTO_INCREMENT,
  `id_personal` VARCHAR(20) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `numero_tienda` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_vendedor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `lab_1`.`factura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_1`.`factura` (
  `id_factura` INT NOT NULL AUTO_INCREMENT,
  `num_factura` VARCHAR(45) NOT NULL,
  `fecha` DATE NOT NULL,
  `coche_id_coche` INT NOT NULL,
  `vendedor_id_vendedor` INT NOT NULL,
  `cliente_id_cliente` INT NOT NULL,
  PRIMARY KEY (`id_factura`),
  INDEX `fk_factura_coche_idx` (`coche_id_coche` ASC) VISIBLE,
  INDEX `fk_factura_vendedor1_idx` (`vendedor_id_vendedor` ASC) VISIBLE,
  INDEX `fk_factura_cliente1_idx` (`cliente_id_cliente` ASC) VISIBLE,
  CONSTRAINT `fk_factura_cliente1`
    FOREIGN KEY (`cliente_id_cliente`)
    REFERENCES `lab_1`.`cliente` (`id_cliente`),
  CONSTRAINT `fk_factura_coche`
    FOREIGN KEY (`coche_id_coche`)
    REFERENCES `lab_1`.`coche` (`id_coche`),
  CONSTRAINT `fk_factura_vendedor1`
    FOREIGN KEY (`vendedor_id_vendedor`)
    REFERENCES `lab_1`.`vendedor` (`id_vendedor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
