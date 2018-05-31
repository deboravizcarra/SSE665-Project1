-- Lesson 18: Using Views
-- what are views, how do they work, and when should they be used
-- how views can be used to simplify some of the SQL operations


-- Understanding Views
	-- Views are virtual tables.
	-- Unlike tables that contain data, views simply contain queries that dynamically retrieve data when used.
    -- A view does not contain any columns or data.
    -- Instead it contains a query - the same query used to join the tables properly.
-- Why Use Views
	-- To reuse SQL statements
    -- To simplify complex SQL operations
    -- To expose parts of a table instead of complete tables.
    -- To secure data.
    -- To change data formatting and representation.
-- View Rules and Restrictions
	-- Views must be uniquely named.
    -- There is no limit to the number of views that can be created.
    -- To create views, you must have security access.
    -- Views can be nested. A view may be built using a query that retrieves data from another view.
    -- Many DBMSs prohit the use of the ORDER BY clause in view queries.
    -- Some DBMSs require that every column returned be named.
    -- Views cannot be indexed, nor can they have triggers or default values associated with them.
    -- Some DBMSs treat views as read-only queries.
    -- Some DBMSs allow you to create views that do not allow rows to be inserted or updated 
    -- if that insertion or update will cause that row to no longer be part of the view.


-- Creating Views
	-- Views are created using the CREATE VIEW statement.
    -- To remove a view, the DROP statement is used. DROP VIEW viewname;
    -- To overwrite a view, it must first be dropped then recreated.
-- Using Views to Simplify Complex Joins

#create a view which joins three tables to return a list of all customers who have ordered any product
CREATE VIEW ProductCustomers AS
SELECT cust_name, cust_contact, prod_id
FROM Customers, Orders, OrderItems
WHERE Customers.cust_id = Orders.cust_id
  AND OrderItems.order_num = Orders.order_num;

#retrieve list of customers who ordered product RGAN01
SELECT cust_name, cust_contact
FROM ProductCustomers
WHERE prod_id = 'RGAN01';


-- Using Views to Reformat Retrieved Data

-- from Lesson 7
/*
SELECT Concat(vend_name, ' (', vend_country, ')')
	   AS vend_title
FROM Vendors ORDER BY vend_name;
*/

#same statement turned in to a view
CREATE VIEW VendorLocations AS
SELECT Concat(vend_name, ' (', vend_country, ')')
	   AS vend_title
FROM Vendors;

#to retrieve the data to create all mailing labels
SELECT *
FROM VendorLocations;

-- Using Views to Filter Unwanted Data

#filters out customers without an email address
CREATE VIEW CustomerEMailList AS
SELECT cust_id, cust_name, cust_email
FROM Customers
WHERE cust_email IS NOT NULL;

SELECT *
FROM CustomerEMailList;


-- Using Views with Calculated Fields

-- from lesson 7
/*
SELECT prod_id, 
	   quantity, 
       item_price,
       quantity*item_price AS expanded_price
FROM OrderItems 
WHERE order_num = 20008;
*/

#turned into a view
CREATE VIEW OrderItemsExpanded AS
SELECT order_num,
	   prod_id, 
	   quantity, 
       item_price,
       quantity*item_price AS expanded_price
FROM OrderItems;

#to retrieve the details for order 20008
SELECT *
FROM OrderItemsExpanded
WHERE order_num = 20008;
