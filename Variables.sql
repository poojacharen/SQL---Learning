-- Variables

-- User or session variables - we define them using the SET statement and we prefix them using an @ sign 
SET @invoices_cpunt = 0 -- we use this variables when we call stored procedures that have output parameters


-- Local Variable - these are the variables that we define inside of a stored procedure or function
--                 so the local variable don't stay in memory for the entire user session. As soon as the stored procedures finish execution these
--                variables are freed up, quite often we use this type of variables to perform calculations in our stored procedures
-- So now lets create a new stored procedure called get_risk_factor


CREATE DEFINER=`root`@`localhost` PROCEDURE `get_risk_factor`()
BEGIN
	DECLARE risk_factor DECIMAL(9, 2) DEFAULT 0;
    DECLARE invoices_total DECIMAL(9, 2);
    DECLARE invoices_count INT;
    
    SELECT COUNT(*), SUM(invoice_total)
    INTO invoices_count, invoices_total
    FROM invoices;
    
    SET risk_factor = invoices_total / invoices_count * 5;
    
    SELECT risk_factor;
END


call invoicing.get_risk_factor();
