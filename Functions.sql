-- Functions - There are very similar to stored procedures but the main difference is that a function can only return a single value, so
--            unlike stored procedures, they cannot return results sets with multiple rows and columns 
-- So in situations where you want to return a single value, we can create a Function
-- Good eg is the calculation of the risk_factor we did earlier in variables where it returned a single value as a result

-- Here, now we are going to create a function for calculating the risk factor for client
-- Now we are going to create a function, so we go to the left panel and under the invoicing we have Functions and we right click and create function

-- Syntax is same as the stored procedure  but we don't have RETURNS INTEGER in stored procedure 

CREATE FUNCTION `new_function` ()
RETURNS INTEGER -- this specifies the type of value that this function returns. So we can have int or integer or any other data type. So right after the RETURN statement we need to set the attribute of function
                -- 1. DETERMINISTIC this means if we give this function the same set of values it always returns the same value. This is useful in situations where you're not going to return a value based on the data in your database 
                -- 2. READS SQL DATA this means that you're going to have a select statement in your function to read some data. 
                -- 3. MODIFIES SQL DATA this means that you're going to have an insert, update or delete statement in your function
BEGIN

RETURN 1;
END


-- We create a function

CREATE DEFINER=`root`@`localhost` FUNCTION `get_risk_factor_for_client`(
	client_id INT
) RETURNS int
    READS SQL DATA
BEGIN
	DECLARE risk_factor DECIMAL(9, 2) DEFAULT 0;
    DECLARE invoices_total DECIMAL(9, 2);
    DECLARE invoices_count INT;
    
    SELECT COUNT(*), SUM(invoice_total)
    INTO invoices_count, invoices_total
    FROM invoices i
    WHERE i.client_id = client_id;
    
    SET risk_factor = invoices_total / invoices_count * 5;
    
	RETURN IFNULL(risk_factor, 0); 
END


-- In the new query file we type this and get the output
SELECT
	client_id,
    name,
    get_risk_factor_for_client(client_id) AS risk_factor
FROM clients


-- We can also use the DROP function 
DROP FUNCTION IF EXISTS get_risk_factor_for_client;
