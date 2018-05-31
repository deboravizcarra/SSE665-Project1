-- Lesson 6: Using Wildcard Filtering
-- how to use wildcards and how to perform wildcard searches using the LIKE operator

-- using the LIKE operator

-- the percent sign % wildcard
SELECT prod_id, prod_name FROM Products 
WHERE prod_name LIKE 'Fish%';

SELECT prod_id, prod_name FROM Products 
WHERE prod_name LIKE '%bean bag%';

SELECT prod_name FROM Products 
WHERE prod_name LIKE 'F%y';

-- the underscore _ wildcard
SELECT prod_id, prod_name FROM Products 
WHERE prod_name LIKE '__ inch teddy bear'; # two _
#versus
SELECT prod_id, prod_name FROM Products 
WHERE prod_name LIKE '% inch teddy bear';

/*
-- the brackets [] wildcard
-- is not supported by MariaDB/MySQL
SELECT cust_contact FROM Customers 
WHERE cust_contact LIKE '[JM]%'
ORDER BY cust_contact;
*/
