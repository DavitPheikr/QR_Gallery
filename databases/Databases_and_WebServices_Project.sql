-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema my
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema hw2 test
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema hw2 test
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `hw2 test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `hw2 test` ;

-- -----------------------------------------------------
-- Table `hw2 test`.`people`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hw2 test`.`people` (
  `person_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `phone` VARCHAR(15) NOT NULL,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `phone_UNIQUE` (`phone` ASC) VISIBLE,
  UNIQUE INDEX `person_id_UNIQUE` (`person_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hw2 test`.`employees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hw2 test`.`employees` (
  `person_id` INT NOT NULL,
  `employee_id` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`person_id`),
  CONSTRAINT `employees_ibfk_1`
    FOREIGN KEY (`person_id`)
    REFERENCES `hw2 test`.`people` (`person_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hw2 test`.`Administration`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hw2 test`.`Administration` (
  `person_id` INT NOT NULL,
  `admin_id` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`person_id`),
  CONSTRAINT `Administration_ibfk_1`
    FOREIGN KEY (`person_id`)
    REFERENCES `hw2 test`.`employees` (`person_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hw2 test`.`Support`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hw2 test`.`Support` (
  `person_id` INT NOT NULL,
  `employee_id` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`person_id`),
  CONSTRAINT `Support_ibfk_1`
    FOREIGN KEY (`person_id`)
    REFERENCES `hw2 test`.`employees` (`person_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hw2 test`.`Custommer_Support`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hw2 test`.`Custommer_Support` (
  `person_id` INT NOT NULL,
  `employee_id` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`person_id`),
  CONSTRAINT `Custommer_Support_ibfk_1`
    FOREIGN KEY (`person_id`)
    REFERENCES `hw2 test`.`Support` (`person_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hw2 test`.`IT_Support`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hw2 test`.`IT_Support` (
  `person_id` INT NOT NULL,
  `employee_id` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`person_id`),
  CONSTRAINT `IT_Support_ibfk_1`
    FOREIGN KEY (`person_id`)
    REFERENCES `hw2 test`.`Support` (`person_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hw2 test`.`QR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hw2 test`.`QR` (
  `id_QR` INT NOT NULL AUTO_INCREMENT,
  `location_id` INT NOT NULL,
  PRIMARY KEY (`id_QR`),
  UNIQUE INDEX `location_id` (`location_id` ASC) VISIBLE,
  CONSTRAINT `QR_ibfk_1`
    FOREIGN KEY (`location_id`)
    REFERENCES `hw2 test`.`Location` (`id_Location`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hw2 test`.`Location`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hw2 test`.`Location` (
  `id_Location` INT NOT NULL,
  `Location_name` VARCHAR(45) NOT NULL,
  `QR_id` INT NOT NULL,
  PRIMARY KEY (`id_Location`),
  UNIQUE INDEX `QR_id` (`QR_id` ASC) VISIBLE,
  CONSTRAINT `fk_qr_code`
    FOREIGN KEY (`QR_id`)
    REFERENCES `hw2 test`.`QR` (`id_QR`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hw2 test`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hw2 test`.`users` (
  `person_id` INT NOT NULL,
  `current_location_id` INT NOT NULL,
  `status_uploaded` INT(11) UNSIGNED ZEROFILL NOT NULL,
  PRIMARY KEY (`person_id`),
  INDEX `fr_location` (`current_location_id` ASC) VISIBLE,
  CONSTRAINT `fr_location`
    FOREIGN KEY (`current_location_id`)
    REFERENCES `hw2 test`.`Location` (`id_Location`),
  CONSTRAINT `users_ibfk_1`
    FOREIGN KEY (`person_id`)
    REFERENCES `hw2 test`.`people` (`person_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hw2 test`.`Photos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hw2 test`.`Photos` (
  `idPhotos` INT NOT NULL,
  `upload_date` DATETIME NOT NULL,
  `location_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`idPhotos`),
  INDEX `fk_location` (`location_id` ASC) VISIBLE,
  INDEX `fr_user_id` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_location`
    FOREIGN KEY (`location_id`)
    REFERENCES `hw2 test`.`Location` (`id_Location`),
  CONSTRAINT `fr_user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `hw2 test`.`users` (`person_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hw2 test`.`Scenary`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hw2 test`.`Scenary` (
  `photos_id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`photos_id`),
  CONSTRAINT `Scenary_ibfk_1`
    FOREIGN KEY (`photos_id`)
    REFERENCES `hw2 test`.`Photos` (`idPhotos`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hw2 test`.`Selfie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hw2 test`.`Selfie` (
  `photos_id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`photos_id`),
  CONSTRAINT `Selfie_ibfk_1`
    FOREIGN KEY (`photos_id`)
    REFERENCES `hw2 test`.`Photos` (`idPhotos`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
