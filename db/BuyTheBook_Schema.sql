/**
On your local machine, replace 'epicbookdb' with 'epicbookdb_db'
**/
-- Add these to the very top of your BuyTheBook_Schema.sql file
/*DROP TABLE IF EXISTS Authors;
DROP TABLE IF EXISTS Books;
DROP TABLE IF EXISTS Cart;
*/

-- Use JAWS_DB Database
USE epicbookdb;

-- Create Table Author on DB
-- CREATE TABLE `epicbookdb`.`Author` (
--   `id` INT NOT NULL AUTO_INCREMENT,
--   `firstName` VARCHAR(45) NOT NULL,
--   `lastName` VARCHAR(45) NOT NULL,
--   PRIMARY KEY (`id`));

-- Create Table Author on DB
CREATE TABLE IF NOT EXISTS `epicbookdb`.`Author` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `firstName` VARCHAR(45) NOT NULL,
  `lastName` VARCHAR(45) NOT NULL,
  `createdAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`));

-- Create Table Book after Author because of FK constraint to Author Tbl
CREATE TABLE IF NOT EXISTS`epicbookdb`.`Book` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `genre` VARCHAR(255) NOT NULL,
  `pubYear` INT NOT NULL,
  `price` DECIMAL(13,2) NOT NULL,
  `inventory` INT NOT NULL,
  `bookDescription` TEXT NOT NULL,
  `createdAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `AuthorId` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `AuthorId_idx` (`AuthorId` ASC),
  CONSTRAINT `AuthorId`
    FOREIGN KEY (`AuthorId`)
    REFERENCES `epicbookdb`.`Author` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- Create Table Cart
CREATE TABLE IF NOT EXISTS`epicbookdb`.`Cart` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `quantity` INT NOT NULL,
  `price` DECIMAL(13,2) NOT NULL,
  `createdAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`));
