-- Creating a Stored Procedure
-- Exercise : Create a SP called get_invoices_with_balance, to return all the invoices with a balance > 0
-- I took the FROM statement from Views

DELIMITER $$
CREATE PROCEDURE get_invoices_with_balance()
BEGIN
SELECT *
FROM invoices_balances
WHERE balance > 0;
END$$

DELIMITER ;