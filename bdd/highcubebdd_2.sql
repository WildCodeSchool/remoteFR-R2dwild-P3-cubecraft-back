-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema sql11403695
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sql11403695
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sql11403695` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `sql11403695` ;

-- -----------------------------------------------------
-- Table `sql11403695`.`photo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sql11403695`.`photo` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB
AUTO_INCREMENT = 767
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sql11403695`.`concept`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sql11403695`.`concept` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Title` VARCHAR(100) NULL DEFAULT NULL,
  `Text` LONGTEXT NULL DEFAULT NULL,
  `Photo_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  INDEX `Photo_id_idx` (`Photo_id` ASC) VISIBLE,
  CONSTRAINT `AA`
    FOREIGN KEY (`Photo_id`)
    REFERENCES `sql11403695`.`photo` (`Id`))
ENGINE = InnoDB
AUTO_INCREMENT = 209
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sql11403695`.`divers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sql11403695`.`divers` (
  `Id` INT NOT NULL,
  `Titre` VARCHAR(100) NULL DEFAULT NULL,
  `Text` LONGTEXT NULL DEFAULT NULL,
  `Photo_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  INDEX `A_idx` (`Photo_id` ASC) VISIBLE,
  CONSTRAINT `A`
    FOREIGN KEY (`Photo_id`)
    REFERENCES `sql11403695`.`photo` (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sql11403695`.`news`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sql11403695`.`news` (
  `Id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Title` VARCHAR(100) NULL DEFAULT NULL,
  `Text` LONGTEXT NULL DEFAULT NULL,
  `Link` VARCHAR(100) NULL DEFAULT NULL,
  `Photo_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  INDEX `Photo_id_idx` (`Photo_id` ASC) VISIBLE,
  CONSTRAINT `AC`
    FOREIGN KEY (`Photo_id`)
    REFERENCES `sql11403695`.`photo` (`Id`))
ENGINE = InnoDB
AUTO_INCREMENT = 106
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sql11403695`.`products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sql11403695`.`products` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `CategoryName` VARCHAR(100) NULL DEFAULT NULL,
  `Description` VARCHAR(500) NULL DEFAULT '',
  `Price` INT NULL DEFAULT NULL,
  `Individual` TINYINT NULL DEFAULT NULL,
  `Photo_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  INDEX `Photo_id_idx` (`Photo_id` ASC) VISIBLE,
  CONSTRAINT `AD`
    FOREIGN KEY (`Photo_id`)
    REFERENCES `sql11403695`.`photo` (`Id`))
ENGINE = InnoDB
AUTO_INCREMENT = 139
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sql11403695`.`profile`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sql11403695`.`profile` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(100) NULL DEFAULT NULL,
  `LastName` VARCHAR(100) NULL DEFAULT NULL,
  `JobName` VARCHAR(100) NULL DEFAULT NULL,
  `Description` VARCHAR(100) NULL DEFAULT NULL,
  `Photo_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  INDEX `Photo_id_idx` (`Photo_id` ASC) VISIBLE,
  CONSTRAINT `AE`
    FOREIGN KEY (`Photo_id`)
    REFERENCES `sql11403695`.`photo` (`Id`))
ENGINE = InnoDB
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sql11403695`.`slider`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sql11403695`.`slider` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Word` VARCHAR(100) NULL DEFAULT '',
  `Photo_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  INDEX `AF_idx` (`Photo_id` ASC) VISIBLE,
  CONSTRAINT `AF`
    FOREIGN KEY (`Photo_id`)
    REFERENCES `sql11403695`.`photo` (`Id`))
ENGINE = InnoDB
AUTO_INCREMENT = 478
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
