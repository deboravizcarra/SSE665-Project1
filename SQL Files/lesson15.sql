-- Lesson 15: Inserting Data
-- how to insert data into tables using the SQL INSERT statement


-- Understanding Data Insertion
-- Inserting Complete Rows

INSERT INTO Customers
VALUES('1000000006', 'Toy Land', '123 Any Street', 'New York', 'NY', '11111', 'USA', NULL, NULL);

#safer way to insert
INSERT INTO Customers(cust_id, cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country, cust_contact, cust_email)
VALUES('1000000006', 'Toy Land', '123 Any Street', 'New York', 'NY', '11111', 'USA', NULL, NULL);

#still works even though its in a different order
INSERT INTO Customers(cust_id, cust_contact, cust_email, cust_name, cust_address, cust_city, cust_state, cust_zip)
VALUES('1000000006', NULL, NULL, 'Toy Land', '123 Any Street', 'New York', 'NY', '11111');

-- Inserting Partial Rows

INSERT INTO Customers(cust_id, cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country)
VALUES('1000000006', 'Toy Land', '123 Any Street', 'New York', 'NY', '11111', 'USA');
#cannot omit required values, only value that allow a NULL

-- Inserting Retrieved Data

INSERT INTO Customers(cust_id, cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country)
SELECT cust_id, cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country
FROM CustNew; #CustNew table should be populated first


-- Copying from One Table to Another

CREATE TABLE CustCopy AS
SELECT * FROM Customers;