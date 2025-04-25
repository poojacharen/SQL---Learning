-- Output Parameters
-- We know how to use parameteres on how to store values in the stored procedure but we can also use parameters to return values to the calling
-- program

-- Let's create a new procedure called get_unpaid_invoices_for_client()

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_unpaid_invoices_for_client`(
	client_id INT,
   OUT invoices_count INT,
   OUT invoices_total DECIMAL(9, 2)
)
BEGIN
	SELECT COUNT(*), SUM(invoice_total)
    INTO invoices_count, invoices_total
    FROM invoices i
    WHERE i.client_id = client_id
		AND payment_total = 0;
END


call invoicing.get_unpaid_invoices_for_client(3);  -- 	client_id INT


set @invoices_count = 0;
set @invoices_total = 0;
call invoicing.get_unpaid_invoices_for_client(3, @invoices_count, @invoices_total);
select @invoices_count, @invoices_total;  --- client_id INT,
                                          --- OUT invoices_count INT,
                                          --- OUT invoices_total DECIMAL(9, 2)
