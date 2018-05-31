-- Lesson 19: Working with Stored Procedures
-- what are stored procedures, why are they used, and how
-- basic syntax for creating and using them


-- Understanding Stored Procedures
	-- Stored procedures are simply collections of one or more SQL statements saved for future use
-- Why to Use Stored Procedures
	-- To simplify complex problems
	-- To ensure data consistency by not requiring that a series of steps be created over and over
		-- ie to prevent errors
	-- To simplify change management (security)
	-- The DBMS does less work to process the command
	-- Three primary benefits: simplicity, security, and performance
    -- Disadvantages:
		-- Stored procedure syntax varies dramatically from one DBMS to the next.
		-- Stored procedures tend to be more complex to write than basic SQL statements.

-- Executing Stored Procedures
	-- The SQL statement to execute a stored procedure is EXECUTE
/* Example
EXECUTE AddNewProduct('JTS01',
					  'Stuffed Eiffel Tower',
                      6.49,
                      'Plush stuffed toy with the text La Tour Eiffel in red white and blue');
*/
-- This stored procedure:
	-- validates the passed data,
	-- generates a unique ID to be used as the primary key
	-- inserts the new product into the Products table


-- Creating Stored Procedures

#a stored procedure that counts the number of customers in a mailing list who have email addresses
