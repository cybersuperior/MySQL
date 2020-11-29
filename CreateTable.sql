-- Create table statement for creating a data table in MySQL
-- Data types signify the types of data being stored in each column in the table
-- A primary key is a unique identifier on each table record
-- NULL means that the table column can be left empty
CREATE TABLE `people` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `firstName` VARCHAR(255) NOT NULL,
  `lastName` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));


-- The SELECT statement is used to pull specified data from the database
-- In this statement the * means to pull every available column from the dataset
SELECT * FROM people;