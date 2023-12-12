-- MAX can identity: the most recent, the greatest, the highest, etc. in a given 
-- group.  If we wanted to find the greatest amount ANY user has spent on a 
-- transaction, we can the following query:

SELECT MAX(amount)
FROM user_transactions

-- In the previous example, we did not specify a group, giving us the max across the 
-- entire table.  In most cases, you will want to specify a grouping. Here's another
-- example where a MAX PER GROUPING is identified.  If we wanted to find the greatest
-- amount EACH user has spent per transaction, we can run the following query:

SELECT MAX(amount), user_id 
FROM user_transactions
GROUP BY user_id 

-- MIN can identify: the least recent, the lowest, the least, etc. in a given group. It
-- is the exact absolute of MAX.  As one final example, we can use MIN to find the least 
-- EACH user has spent on a transaction. 

SELECT MIN(amount), user_id 
FROM user_transactions
GROUP BY user_id 

-- REMINDER: MAX/MIN can be used across several data types including string/dates/numbers.