-- Lesson 4: Filtering Data
-- use SELECT statement's WHERE clause to specify search conditions

SELECT prod_name, prod_price 
FROM Products WHERE prod_price = 3.49;

-- checking against a single value
SELECT prod_name, prod_price 
FROM Products WHERE prod_price < 10; # <= 10 returns same thing in this case

-- checking for nonmatches
SELECT vend_id, prod_name
FROM Products WHERE vend_id <> 'DLL01'; # or != 'DLL01'

-- checking for a range of values
SELECT prod_name, prod_price 
FROM Products WHERE prod_price BETWEEN 5 and 10;

-- checking for no value
SELECT prod_name, prod_price 
FROM Products WHERE prod_price IS NULL; #doesn't return anything

SELECT cust_name
FROM Customers WHERE cust_email IS NULL;

