-- INSERT INTO <database_name>.<table_name> (<column_1_name>, <column_2_name>, <column_3_name>) VALUES (<column_1_value>, <column_2_value>, <column_3_value>)
-- If a column is an auto-increment, it is not necessary to specific in the insert statement 
-- The database name in the statement is not necessary unless you have not already specified a database to use
-- You can use as many columns and values as necessary in an insert statement
INSERT INTO `example`.`people` (`firstName`, `lastName`, `email`) VALUES ('John', 'Doe', 'johndoe@email.com');
