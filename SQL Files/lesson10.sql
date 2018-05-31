-- Lesson 10: Grouping Data
-- how to group data so that you can summarize subsets of table contants
-- two new SELECT statement clauses: the GROUP BY clause and the HAVING clause


-- Understsanding Data Grouping
SELECT COUNT(*) AS num_prods
FROM Products WHERE vend_id = 'DLL01';

-- Creating Groups
SELECT vend_id, COUNT(*) AS num_prods
FROM Products GROUP BY vend_id;

-- Filtering Groups
SELECT cust_id, COUNT(*) AS orders 
FROM Orders 
GROUP BY cust_id 
HAVING COUNT(*) >= 2;

SELECT vend_id, COUNT(*) AS num_prods
FROM Products WHERE prod_price >= 4 
GROUP BY vend_id 
HAVING COUNT(*) >= 2;

SELECT vend_id, COUNT(*) AS num_prods
FROM Products
GROUP BY vend_id 
HAVING COUNT(*) >= 2;

-- Grouping and Sorting
SELECT order_num, COUNT(*) AS items 
FROM OrderItems
GROUP BY order_num 
HAVING COUNT(*) >= 3;

SELECT order_num, COUNT(*) AS items 
FROM OrderItems
GROUP BY order_num 
HAVING COUNT(*) >= 3
ORDER BY items, order_num;

-- SELECT Clause Ordering:
-- SELECT (required)
-- FROM (only if selecting data from a table
-- WHERE (not required)
-- GROUP BY (only if calculating aggregates by group)
-- HAVING (not required)
-- ORDER BY (not required)

