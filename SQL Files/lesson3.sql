-- Lesson 3: Sorting Retrieved Data
-- using SELECT statement's ORDER BY clause to sort retrieved data

SELECT prod_name FROM Products ORDER BY prod_name;

-- sorting by multiple columns
SELECT prod_id, prod_price, prod_name 
FROM Products ORDER BY prod_price, prod_name;

-- sorting by column position
SELECT prod_id, prod_price, prod_name 
FROM Products ORDER BY 2, 3;

-- specifying sort direction
SELECT prod_id, prod_price, prod_name 
FROM Products ORDER BY prod_price DESC;

SELECT prod_id, prod_price, prod_name 
FROM Products ORDER BY prod_price DESC, prod_name; #sort by multiple columns

