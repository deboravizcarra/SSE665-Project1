-- Lesson 12: Joining Tables
-- what are joins, why are they used,  and how to create SELECT statements using them


-- Understanding Joins
-- Understanding Relational Tables
	-- Scale: able to handel an increasing load with out failing
-- Why Use Joins?


-- Creating a Join

SELECT vend_name, prod_name, prod_price
FROM Vendors, Products
WHERE Vendors.vend_id = Products.vend_id;
-- importance of the WHERE clause
-- all joins must have WHERE clauses
#same as
SELECT vend_name, prod_name, prod_price
FROM Vendors INNER JOIN Products
  ON Vendors.vend_id = Products.vend_id;


-- Joining Multiple Tables

SELECT prod_name, vend_name, prod_price, quantity
FROM OrderItems, Products, Vendors
WHERE Products.vend_id = Vendors.vend_id
  AND OrderItems.prod_id = Products.prod_id
  AND order_num = 20007;

SELECT cust_name, cust_contact FROM Customers
WHERE cust_id IN (SELECT cust_id 
				  FROM Orders
				  WHERE order_num IN (SELECT order_num
									  FROM OrderItems
									  WHERE prod_id = 'RGAN01'));
#same as
SELECT cust_name, cust_contact
FROM Customers, Orders, OrderItems
WHERE Customers.cust_id = Orders.cust_id 
  AND OrderItems.order_num = Orders.order_num
  AND prod_id = 'RGAN01';
