-- Lesson 7: Creating Calculated Fields
-- how to create calculated fields and how to use aliases to refer to them from within your application

-- concatenating fields
SELECT Concat(vend_name, ' (', vend_country, ')')
FROM Vendors ORDER BY vend_name;

-- using aliases
SELECT Concat(vend_name, ' (', vend_country, ')')
	   AS vend_title
FROM Vendors ORDER BY vend_name;

-- performing mathematical calculations
SELECT prod_id, quantity, item_price
FROM OrderItems WHERE order_num = 20008;

SELECT prod_id, 
	   quantity, 
       item_price,
       quantity*item_price AS expanded_price
FROM OrderItems WHERE order_num = 20008;

