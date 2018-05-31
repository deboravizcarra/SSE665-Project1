-- Lesson 5: Advanced Data Filtering
-- how to combine WHERE clauses to create powerful and sophisticated search conditions
-- use the NOT and IN operators

-- combining WHERE clauses

-- using the AND operator
SELECT prod_id, prod_price, prod_name FROM Products 
WHERE vend_id = 'DLL01' AND prod_price <= 4;

-- using the OR operator
SELECT prod_name, prod_price FROM Products 
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01';

-- understanding order of evaluation
SELECT prod_name, prod_price FROM Products 
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01'
	  AND prod_price >= 10; # AND is processed first

SELECT prod_name, prod_price FROM Products 
WHERE (vend_id = 'DLL01' OR vend_id = 'BRS01')
	  AND prod_price >= 10; 

-- using the IN operator
SELECT prod_name, prod_price FROM Products 
WHERE vend_id IN ('DLL01', 'BRS01')
ORDER BY prod_name;
#same as
SELECT prod_name, prod_price FROM Products 
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01'
ORDER BY prod_name; 

-- using the NOT operator
SELECT prod_name FROM Products 
WHERE NOT vend_id = 'DLL01'
ORDER BY prod_name; 
#same as
SELECT prod_name FROM Products 
WHERE vend_id <> 'DLL01'
ORDER BY prod_name;