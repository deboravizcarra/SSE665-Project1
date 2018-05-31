-- Lesson 8: Using Data Manipulation Functions
-- what are functions, what types of functions DBMSs support, and how to use these functions

-- Text Manipulation Functions
SELECT vend_name, UPPER(vend_name) AS vend_name_uppcase
FROM Vendors ORDER BY vend_name;

SELECT cust_name, cust_contact FROM Customers
WHERE cust_contact = 'Michael Green';

SELECT cust_name, cust_contact FROM Customers
WHERE SOUNDEX(cust_contact) = SOUNDEX('Michael Green');

-- Date and Time Manipulation Functions
SELECT order_num FROM Orders
WHERE YEAR(order_date) = 2012;

-- Numeric Manipulation Functions
-- commonly used numeric manipulation functions:
-- ABS(), COS(), EXP(), PI(), SIN(), SQRT(), TAN()
