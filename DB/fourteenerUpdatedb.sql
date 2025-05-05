-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema fourteener
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `fourteener` ;

-- -----------------------------------------------------
-- Schema fourteener
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `fourteener` DEFAULT CHARACTER SET utf8 ;
USE `fourteener` ;

-- -----------------------------------------------------
-- Table `fourteener`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fourteener` ;

CREATE TABLE IF NOT EXISTS `fourteener` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `elevation_in_feet` INT NOT NULL,
  `elevation_gain_in_feet` INT NULL,
  `distance_in_miles` DOUBLE NULL,
  `difficulty_ranking` VARCHAR(45) NULL,
  `estimated_duration_in_hours` DOUBLE NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS keells@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'keells'@'localhost' IDENTIFIED BY 'keells';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'keells'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `fourteener`
-- -----------------------------------------------------
START TRANSACTION;
USE `fourteener`;
INSERT INTO `fourteener` (`id`, `name`, `elevation_in_feet`, `elevation_gain_in_feet`, `distance_in_miles`, `difficulty_ranking`, `estimated_duration_in_hours`) VALUES (1, 'Mt. Elbert', 14438, 4458, 9.8, 'Class 1', 7.32);
INSERT INTO `fourteener` (`id`, `name`, `elevation_in_feet`, `elevation_gain_in_feet`, `distance_in_miles`, `difficulty_ranking`, `estimated_duration_in_hours`) VALUES (2, 'Quandry Peak', 14459, 3450, 6.75, 'Class 1', 6.5);
INSERT INTO `fourteener` (`id`, `name`, `elevation_in_feet`, `elevation_gain_in_feet`, `distance_in_miles`, `difficulty_ranking`, `estimated_duration_in_hours`) VALUES (3, 'Grays Peak', 14275, 3000, 7.5, 'Class 1', 6.08);
INSERT INTO `fourteener` (`id`, `name`, `elevation_in_feet`, `elevation_gain_in_feet`, `distance_in_miles`, `difficulty_ranking`, `estimated_duration_in_hours`) VALUES (4, 'Torreys Peak', 14272, 3000, 7.75, 'Class 1', 6.46);
INSERT INTO `fourteener` (`id`, `name`, `elevation_in_feet`, `elevation_gain_in_feet`, `distance_in_miles`, `difficulty_ranking`, `estimated_duration_in_hours`) VALUES (5, 'Mt. Sherman', 14043, 2100, 5.25, 'Class 1', 4.13);
INSERT INTO `fourteener` (`id`, `name`, `elevation_in_feet`, `elevation_gain_in_feet`, `distance_in_miles`, `difficulty_ranking`, `estimated_duration_in_hours`) VALUES (6, 'Culebra Peak', 14053, 2700, 5, 'Class 2', 10);
INSERT INTO `fourteener` (`id`, `name`, `elevation_in_feet`, `elevation_gain_in_feet`, `distance_in_miles`, `difficulty_ranking`, `estimated_duration_in_hours`) VALUES (7, 'Mt. Bierstadt', 14066, 2850, 7.25, 'Class 2', 6);
INSERT INTO `fourteener` (`id`, `name`, `elevation_in_feet`, `elevation_gain_in_feet`, `distance_in_miles`, `difficulty_ranking`, `estimated_duration_in_hours`) VALUES (8, 'Huron Peak', 14006, 3500, 7, 'Class 2', 7.21);
INSERT INTO `fourteener` (`id`, `name`, `elevation_in_feet`, `elevation_gain_in_feet`, `distance_in_miles`, `difficulty_ranking`, `estimated_duration_in_hours`) VALUES (9, 'Mt. Harvard', 14424, 4600, 14, 'Class 2', 8.5);
INSERT INTO `fourteener` (`id`, `name`, `elevation_in_feet`, `elevation_gain_in_feet`, `distance_in_miles`, `difficulty_ranking`, `estimated_duration_in_hours`) VALUES (10, 'Missouri Mountain', 14071, 4500, 10.5, 'Class 2', 7.43);
INSERT INTO `fourteener` (`id`, `name`, `elevation_in_feet`, `elevation_gain_in_feet`, `distance_in_miles`, `difficulty_ranking`, `estimated_duration_in_hours`) VALUES (11, 'Windom Peak', 14089, 6000, 18, 'Difficult Class 2', 22.29);
INSERT INTO `fourteener` (`id`, `name`, `elevation_in_feet`, `elevation_gain_in_feet`, `distance_in_miles`, `difficulty_ranking`, `estimated_duration_in_hours`) VALUES (12, 'Conundrum Peak', 14089, NULL, NULL, NULL, NULL);

COMMIT;

