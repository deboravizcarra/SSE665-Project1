-- Lesson 9: Summarizing Data
-- what are the SQL aggregate functions and how to use them to summarize table data


-- Using Aggregate Functions 
-- (functions that operate on a set of rows to calculate and return a single value)
-- SQL Aggregate Functions:
-- AVG(), COUNT(), MAX(), MIN(), SUM()


-- the AVG() function
SELECT AVG(prod_price) AS avg_price
FROM Products;

SELECT AVG(prod_price) AS avg_price
FROM Products WHERE vend_id = 'DLL01'; #average of products of only one vendor

-- the COUNT() function
SELECT COUNT(*) AS num_cust
FROM Customers;

SELECT COUNT(cust_email) AS num_cust
FROM Customers;

-- the MAX() and MIN() functions
SELECT MAX(prod_price) AS max_price
FROM Products;

SELECT MIN(prod_price) AS min_price
FROM Products;

-- the SUM() function
SELECT SUM(quantity) AS items_ordered
FROM OrderItems WHERE order_num = 20005;

SELECT SUM(item_price*quantity) AS total_price
FROM OrderItems WHERE order_num = 20005;

-- Aggregates on distinct values
SELECT AVG(DISTINCT prod_price) AS avg_price
FROM Products WHERE vend_id = 'DLL01';

-- Combining Aggregate Functions
SELECT COUNT(*) AS num_items,
	   MIN(prod_price) AS price_min,
       MAX(prod_price) AS price_max,
       AVG(prod_price) AS price_avg
FROM Products;

