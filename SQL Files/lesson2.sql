-- Lesson 2: Retrieving Data
-- using SELECT statement to retrieve one or more columns

-- retrieving individual columns
SELECT prod_name FROM Products;

-- retrieving multiple columns
SELECT prod_id, prod_name, prod_price FROM Products;

-- retrieving all columns
SELECT * FROM Products;

-- retrieving distinct rows
SELECT vend_id FROM Products; -- versus
SELECT DISTINCT vend_id FROM Products;

-- Limiting results
SELECT prod_name FROM Products LIMIT 5; #returns 5 rows

SELECT prod_name 
FROM Products 
LIMIT 5 OFFSET 5; #or LIMIT 5,5 (returns 5 rows starting from row 5)


