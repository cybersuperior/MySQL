-- If you are running an UPDATE statement directly against a database and not in code,
-- it is best practice to always run a SELECT statement with the same WHERE clause
-- to verify the returned rows match the rows you expect to update

SELECT *
FROM `example`.`people`
WHERE id = 1;

-- Once you verify that the WHERE clause filters the records to the row(s) you want to update
-- you are good to run the UPDATE statement.  The syntax is as follows:
-- UPDATE <database_name>.<table_name> 
-- SET <column_name> = <new_value> 
-- WHERE <column_you_are_filter_on> = <value_you_want_to_filter_by>
-- So if we wanted to update the firstName of the person with id of 1 to 'Tom', the syntax would be as follows:

UPDATE `example`.`people`
SET firstName = 'Tom'
WHERE id = 1;

-- It is also possible to update multiple columns at once, if we wanted to update
-- both the first and last name of the user with an id of 1, the syntax would be a follows:

UPDATE `example`.`people`
SET firstName = 'Jane', lastName = 'Doe'
WHERE id = 1;

-- Lastly, it is possible to update multiple rows at once 
-- ALWAYS BE CAUTIOUS updating multiple rows at once and be ESPECIALLY cautious ever running
-- an UPDATE without a WHERE clause

SELECT *
FROM `example`.`people`
WHERE id = 1 OR id = 2;

UPDATE `example`.`people`
SET firstName = 'John'
WHERE id = 1 OR id = 2;
