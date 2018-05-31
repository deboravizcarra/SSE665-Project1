-- Lesson 13: Creating Advanced Joins
-- additional join types and how to use them
-- how to use table aliases and to use aggregate functions with joined tables


-- Using Table Aliases
#same as last example in lesson 12
SELECT cust_name, cust_contact
FROM Customers AS C, Orders AS O, OrderItems AS OI
WHERE C.cust_id = O.cust_id
  AND OI.order_num = O.order_num
  AND prod_id = 'RGAN01';


-- Using Different Join Types
-- Self Joins

SELECT cust_id, cust_name, cust_contact
FROM Customers
WHERE cust_name = (SELECT cust_name
				   FROM Customers
				   WHERE cust_contact = 'Jim Jones');
#same as but with a join
SELECT c1.cust_id, c1.cust_name, c1.cust_contact
FROM Customers AS c1, Customers AS c2
WHERE c1.cust_name = c2.cust_name
  AND c2.cust_contact = 'Jim Jones';

-- Natural Joins
SELECT C.*, O.order_num, O.order_date,
	   OI.prod_id, OI.quantity, OI.item_price
FROM Customers AS C, Orders AS O, OrderItems AS OI
WHERE C.cust_id = O.cust_id
  AND OI.order_num = O.order_num
  AND prod_id = 'RGAN01';

-- Outer Joins
SELECT Customers.cust_id, Orders.order_num
FROM Customers LEFT OUTER JOIN Orders
  ON Customers.cust_id = Orders.cust_id;
# to select all the rows from the table on the right, use RIGHT OUTER JOIN
# FULL OUTER JOIN not supported by MariaDB or MySQL


-- Using Joins with Aggregate Functions

SELECT Customers.cust_id, 
	   COUNT(Orders.order_num) AS num_ord
FROM Customers INNER JOIN Orders
  ON Customers.cust_id = Orders.cust_id
GROUP BY Customers.cust_id;

SELECT Customers.cust_id, 
	   COUNT(Orders.order_num) AS num_ord
FROM Customers LEFT OUTER JOIN Orders
  ON Customers.cust_id = Orders.cust_id
GROUP BY Customers.cust_id;
