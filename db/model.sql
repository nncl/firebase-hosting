-- MySQL Workbench Synchronization
-- Generated: 2017-08-30 20:43
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: logonrm

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `concessionaria` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE IF NOT EXISTS `concessionaria`.`carro` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `modelo` VARCHAR(45) NOT NULL,
  `ano` INT(11) NULL DEFAULT NULL,
  `fabricante_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_carro_fabricante_idx` (`fabricante_id` ASC),
  CONSTRAINT `fk_carro_fabricante`
    FOREIGN KEY (`fabricante_id`)
    REFERENCES `concessionaria`.`fabricante` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `concessionaria`.`fabricante` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
