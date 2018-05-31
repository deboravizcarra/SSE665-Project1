-- Lesson 20: Managing Transaction Processing
-- what transactions are and how to use COMMIT and ROLLBACK statemnets to manage transaction processing


-- Understanding Transaction Processing
	-- Transaction processing is used to maintain database integrity by ensuring
    -- that branches of SQL operations execute completely or not at all.


-- Controlling Transactions
	-- The key to managing transactions involves breaking your SQL statements into logical chunks
	-- and explicitly stating when data should be rolled back and when it should not.

# for MariaDB and MySQL
/*
START TRANSACTION
*/

-- Using ROLLBACK
-- used to undo SQL statements
    
DELETE FROM Orders;
ROLLBACK;

-- Using COMMIT

#to force an explict commit
START TRANSACTION
#DELETE OrderItems WHERE order_num = 12345
#DELETE Orders WHERE order_num = 12345
#COMMIT TRANSACTION
