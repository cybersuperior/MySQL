-- HARD DELETE (Deleting a row completely)

-- Similar to UPDATE statements, if you are running a DELETE statement directly 
-- against a database and not in code, it is best practice to always run a SELECT statement
-- with the same WHERE clause to verify the returned rows match the rows you expect to hard delete

SELECT *
FROM `example`.`people`
WHERE id = 1;

-- Once you verify that the WHERE clause filters the records to the row(s) you want to delete
-- you are good to run the DELETE statement.  Keep in mind as soon as this statement is run
-- the rows are hard deleted and you CANNOT get them back
-- The syntax is as follows:
-- DELETE FROM <database_name>.<table_name> 
-- WHERE <column_you_are_filter_on> = <value_you_want_to_filter_by>
-- So if we wanted to delete the person with id of 1, the syntax would be as follows:

DELETE FROM `example`.`people`
WHERE id = 1;

-- SOFT DELETE (Marking a row as deleted but not fully removing the remove)

-- There are many cases when you may want to soft delete a row instead of hard deleting.  
-- Specifically if you still want the history of a deleted row OR another scenario would be
-- allowing the record to be "un-deleted" in the future

-- In order to SOFT DELETE, we will add an additional column to our table to track the deleted state

ALTER TABLE `example`.`people` ADD COLUMN isDeleted BOOLEAN DEFAULT FALSE;

-- Instead of running the hard delete statement, we can run the soft delete as an UPDATE statement.
-- This would now signify that our row is deleted without fully removing the record from history.

UPDATE `example`.`people`
SET isDeleted = TRUE
WHERE id = 2;

-- Now, when our application wants to pull a list of people, we just add a WHERE clause to 
-- only pull users where isDeleted is false

SELECT *
FROM `example`.`people`
WHERE isDeleted = FALSE;