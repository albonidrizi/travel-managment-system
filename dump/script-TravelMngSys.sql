-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema travel_in_northmacedonia
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `travel_in_northmacedonia` ;

-- -----------------------------------------------------
-- Schema travel_in_northmacedonia
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `travel_in_northmacedonia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `travel_in_northmacedonia` ;

-- -----------------------------------------------------
-- Table `travel_in_northmacedonia`.` itinerary`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travel_in_northmacedonia`.` itinerary` (
  `id itinerary` INT NOT NULL AUTO_INCREMENT,
  `nameThingsPlus` VARCHAR(45) NOT NULL,
  `price` INT NOT NULL,
  PRIMARY KEY (`id itinerary`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `travel_in_northmacedonia`.`cardsdetails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travel_in_northmacedonia`.`cardsdetails` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `numberCard` VARCHAR(45) NOT NULL,
  `dateValidation` DATE NOT NULL,
  `codeCard` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `travel_in_northmacedonia`.`contactus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travel_in_northmacedonia`.`contactus` (
  `idcontactUs` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `yourMessages` VARCHAR(405) NOT NULL,
  PRIMARY KEY (`idcontactUs`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `travel_in_northmacedonia`.`te_dhenat_e_klientit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travel_in_northmacedonia`.`te_dhenat_e_klientit` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `surname` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `travel_in_northmacedonia`.`udhtimi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travel_in_northmacedonia`.`udhtimi` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `TripName` VARCHAR(45) NOT NULL,
  `About` VARCHAR(115) NOT NULL,
  `travelTime` VARCHAR(45) NOT NULL,
  `price` DECIMAL(10,0) NOT NULL,
  ` itinerary_id itinerary` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_Udhtimi_ itinerary`
    FOREIGN KEY (` itinerary_id itinerary`)
    REFERENCES `travel_in_northmacedonia`.` itinerary` (`id itinerary`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `fk_Udhtimi_ itinerary_idx` ON `travel_in_northmacedonia`.`udhtimi` (` itinerary_id itinerary` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `travel_in_northmacedonia`.`proceedbooking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travel_in_northmacedonia`.`proceedbooking` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nameTravel` VARCHAR(45) NOT NULL,
  `price` INT NOT NULL,
  `numberOfPersones` INT NOT NULL,
  `totalPrice` INT NOT NULL,
  `udhtimi_id` INT NOT NULL,
  `te_dhenat_e_klientit_id` INT NOT NULL,
  PRIMARY KEY (`id`, `udhtimi_id`, `te_dhenat_e_klientit_id`),
  CONSTRAINT `fk_proceedbooking_te_dhenat_e_klientit1`
    FOREIGN KEY (`te_dhenat_e_klientit_id`)
    REFERENCES `travel_in_northmacedonia`.`te_dhenat_e_klientit` (`id`),
  CONSTRAINT `fk_proceedbooking_udhtimi1`
    FOREIGN KEY (`udhtimi_id`)
    REFERENCES `travel_in_northmacedonia`.`udhtimi` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `fk_proceedbooking_udhtimi1_idx` ON `travel_in_northmacedonia`.`proceedbooking` (`udhtimi_id` ASC) VISIBLE;

CREATE INDEX `fk_proceedbooking_te_dhenat_e_klientit1_idx` ON `travel_in_northmacedonia`.`proceedbooking` (`te_dhenat_e_klientit_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `travel_in_northmacedonia`.`rentacar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travel_in_northmacedonia`.`rentacar` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `markeCar` VARCHAR(45) NOT NULL,
  `series` VARCHAR(45) NOT NULL,
  `targe` VARCHAR(45) NOT NULL,
  `colore` VARCHAR(45) NOT NULL,
  `priceDay` DECIMAL(10,0) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `travel_in_northmacedonia`.`rentacar_klientit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `travel_in_northmacedonia`.`rentacar_klientit` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `rentacar_id` INT NOT NULL,
  `te_dhenat_e_klientit_id` INT NOT NULL,
  `numri_diteve` INT NOT NULL,
  `cmimi_total` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`, `rentacar_id`, `te_dhenat_e_klientit_id`),
  CONSTRAINT `fk_rentacar_has_te_dhenat_e_klientit_rentacar1`
    FOREIGN KEY (`rentacar_id`)
    REFERENCES `travel_in_northmacedonia`.`rentacar` (`id`),
  CONSTRAINT `fk_rentacar_has_te_dhenat_e_klientit_te_dhenat_e_klientit1`
    FOREIGN KEY (`te_dhenat_e_klientit_id`)
    REFERENCES `travel_in_northmacedonia`.`te_dhenat_e_klientit` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `fk_rentacar_has_te_dhenat_e_klientit_te_dhenat_e_klientit1_idx` ON `travel_in_northmacedonia`.`rentacar_klientit` (`te_dhenat_e_klientit_id` ASC) VISIBLE;

CREATE INDEX `fk_rentacar_has_te_dhenat_e_klientit_rentacar1_idx` ON `travel_in_northmacedonia`.`rentacar_klientit` (`rentacar_id` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
