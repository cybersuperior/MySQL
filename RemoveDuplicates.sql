-- There are times when we may want to delete duplicate removes out of a table.
-- Let's use the instance of removing people with duplicate emails out of our database.

-- First, we can run a query to find all duplicate email records in our table

SELECT email, COUNT(email)
FROM `example`.`people`
GROUP BY email
HAVING count(email) > 1;

-- Once we have verified all the duplicates we would be deleting, we can run the delete statement.
-- The following delete consists of a select join to the people table, which would delete 
-- all duplicates that are less than the max id for a given email.  The thinking is that the
-- highest ID would be the most recently inserted record and therefore, most accurate.

DELETE people1 FROM `example`.`people` people1
INNER JOIN `example`.`people` people2
WHERE 
    people1.id < people2.id AND 
    people1.email = people2.email;