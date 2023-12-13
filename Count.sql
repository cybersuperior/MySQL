/*
  In this query, we use COUNT(*) to count the number of transactions for each user.
  The GROUP BY clause is used to group the results by the 'user_id' column.
  Without GROUP BY, the COUNT would provide the total count of all transactions in the table.
*/

SELECT user_id, COUNT(*) AS transaction_count
FROM user_transactions
GROUP BY user_id;

/*
  In this query, we use HAVING to filter the results based on the aggregated COUNT.
  The HAVING clause works with aggregate functions (like COUNT) to filter groups.
  Here, it filters users and includes only those with more than 1 transaction.
  This allows us to focus on users that meet a specific condition after grouping.
*/

SELECT user_id, COUNT(*) AS transaction_count
FROM user_transactions
GROUP BY user_id
HAVING transaction_count > 5;