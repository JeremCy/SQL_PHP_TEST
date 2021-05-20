
-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `abonement`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `abonement` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `abonement` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(150) NULL,
  `valeur reduction` FLOAT  NULL,
  PRIMARY KEY (`id`));

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `category` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`category_id`));

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `entrepot`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `entrepot` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `entrepot` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Name entrepot` VARCHAR(150) NULL,
  `adresse` VARCHAR(250) NULL,
  `cp` VARCHAR(32) NULL,
  PRIMARY KEY (`id`));

SHOW WARNINGS;
CREATE UNIQUE INDEX `id_UNIQUE` ON `entrepot` (`id` ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `etat`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `etat` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `etat` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(150) NULL,
  PRIMARY KEY (`id`));

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `objet`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `objet` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `objet` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `nom` VARCHAR(150) NULL,

  `prix` INT NOT NULL,
  `entrepot` INT NULL,
  `locataire` INT UNSIGNED NULL,
  `category_id` INT NULL,
  `etat` INT UNSIGNED NULL,
  `disable` TINYINT NULL,
  `create_time` DATE NULL,
  `update_time` DATE NULL,
  PRIMARY KEY (`id`));

SHOW WARNINGS;
CREATE INDEX `index3` ON `objet` () VISIBLE;

SHOW WARNINGS;
CREATE UNIQUE INDEX `id_UNIQUE` ON `objet` (`id` ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `contrat location`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `contrat location` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `contrat location` (
  `Uid` INT UNSIGNED NOT NULL,
  `id user` INT UNSIGNED NOT NULL,
  `id objet` INT UNSIGNED NOT NULL,
  `startAt` DATETIME NULL,
  `endAt` DATETIME NULL,
  `bill` INT NULL,
  PRIMARY KEY (`Uid`, `id user`, `id objet`));

SHOW WARNINGS;
CREATE UNIQUE INDEX `Uid_UNIQUE` ON `contrat location` (`Uid` ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `location`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `location` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `location` (
  `id` INT UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT,  
  `last loc time` DATE  NULL,
  `lattitude` INT NULL,
  `longitude` INT NULL,
  `id user` INT UNSIGNED NULL,
  `id objet` INT UNSIGNED NULL,
  PRIMARY KEY (`id`));

SHOW WARNINGS;


-- -----------------------------------------------------
-- Table `user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `user` (
  `ID` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(32) NOT NULL,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `disable` TINYINT NULL,
  PRIMARY KEY (`ID`));

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `reparteur`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `reparteur` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `reparteur` (
  `ID` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `Name`  VARCHAR(32) NULL,
  PRIMARY KEY (`ID`));

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `reparation object`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `reparation object` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `reparation object` (
  `ID` INT UNSIGNED  NOT NULL AUTO_INCREMENT ,
  `ID_objet` INT UNSIGNED  NULL,
  `id reparateut` INT UNSIGNED NULL,
  `Retrieve_time`  DATE NULL,
  PRIMARY KEY (`ID`));

SHOW WARNINGS;
