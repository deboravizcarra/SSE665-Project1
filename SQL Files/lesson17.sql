-- Lesson 17: Creaating and Manipulating Tables
-- basics of table creation, alteration, and deletion


-- Creating Tables
-- Basic Table Creation
	-- To create a table using CREATE TABLE, specify the following information:
		-- The name of the new table written after CREATE TABLE
        -- The name and the definition of the table columns sepaarated by commas.
	-- Working with NULL Values
		-- Every table column is either a NULL column or a NOT NULL column
        -- That state is specified in the table definition at creation time
	-- Specifying Default Values
		-- SQL enables you to specify default values to be used if no value is specified when a row is inserted.
        -- Example:
			/*
			CREATE TABLE OrderItems
			(
				order_num  int          NOT NULL ,
				order_item int          NOT NULL ,
				prod_id    char(10)     NOT NULL ,
				quantity   int          NOT NULL 	DEFAULT 1,
				item_price decimal(8,2) NOT NULL 
			);
			*/

-- Updating Tables
	-- To update table definitions, the ALTER TABLE statement is used.
#adding columns to an existing table
ALTER TABLE Vendors
ADD vend_phone CHAR(20);

#dropping a column
ALTER TABLE Vendors
DROP COLUMN vend_phone;


-- Deleting Tables
#removes the entire table
DROP TABLE CustCopy;

-- Renaming Tables
	-- MariaDB and MySQL can use the RENAME statement
