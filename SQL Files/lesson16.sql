-- Lesson 16: Updating and Deleting Data
-- how to use the UPDATE and DELETE statements to enable further manipulation of table data


-- Updating Data
	-- Don't omit the WHERE clause
	-- Three parts: 
		-- table to be updated, 
        -- the column names and their new values, 
        -- the filter condition that determines which rows should be updated

UPDATE Customers
SET cust_email = 'kim@thetoystore.com'
WHERE cust_id = '1000000005';

#updating multiple columns
UPDATE Customers
SET cust_contact = 'Sam Roberts',
	cust_email = 'sam@toyland.com'
WHERE cust_id = '1000000006';

#to delete a column's value, set it to NULL (as long as the table allows NULL values)
UPDATE Customers
SET cust_email = NULL
WHERE cust_id = '1000000005';


-- Deleting Data
	-- can delete specific rows from a table
    -- can delete all rows from a table (if WHERE clause is omitted, all the rows are deleted)

#deletes a row from the Customers table
DELETE FROM Customers
WHERE cust_id = '1000000006';
