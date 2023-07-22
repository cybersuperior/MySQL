-- There are times when you may need to add an additional column to a table after it 
-- has already been created.  To do this, we can use an alter table statement with the following syntax:
-- ALTER TABLE <database_name>.<table_name> ADD COLUMN <new_column_name> <new_column_data_type>;
-- So to add a new isDeleted column to the person table, the syntax would be:

ALTER TABLE `example`.`people` ADD COLUMN isDeleted BOOLEAN;

-- There also may be times when a column is no longer useful and we want to remove 
-- the column from our database.  To do this, we use an alter table statement the following syntax:
-- ALTER TABLE <database_name>.<table_name> DROP COLUMN <column_name_to_drop>;
-- So the drop the isDeleted column from the person table, the syntax would be:

ALTER TABLE `example`.`people` DROP COLUMN isDeleted;