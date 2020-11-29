-- View all the databases on your MySQL Server instance
SHOW DATABASES;

-- Create schema/database with name 'example'
-- Can create schema in MySQL Workbench through right clicking in schema menu and selecting 'Create Schema'
CREATE SCHEMA `example` ;

-- Change database so that following queries would run on database named 'example'
-- Can change database in MySQL Workbench by double clicking schema name
USE example;