-- Lesson 11: Working with Subqueries
-- what are subqueries and how to use them


-- Understanding Subqueries

-- Filtering by Subquery
SELECT order_num FROM OrderItems
WHERE prod_id = 'RGAN01';

SELECT cust_id FROM Orders
WHERE order_num IN (20007,20008);
#same as
SELECT cust_id FROM Orders
WHERE order_num IN (SELECT order_num
					FROM OrderItems
					WHERE prod_id = 'RGAN01');

SELECT cust_name, cust_contact FROM Customers
WHERE cust_id IN ('1000000004','1000000005');
#same as
SELECT cust_name, cust_contact FROM Customers
WHERE cust_id IN (SELECT cust_id 
				  FROM Orders
				  WHERE order_num IN (SELECT order_num
									  FROM OrderItems
									  WHERE prod_id = 'RGAN01'));

-- Subqueries as Calculated Fields
SELECT cust_name,
	   cust_state,
       (SELECT COUNT(*)
		FROM Orders
		WHERE Orders.cust_id = Customers.cust_id) AS orders
FROM Customers
ORDER BY cust_name;



