-- The WITH OPTION CHECK Clause - This view will prevent, uodate or delete statements from excluding rows from the view.

-- USE sql_invoicing;     
-- UPDATE invoices_balance
-- SET payment_total = invoice_total
-- WHERE invoice_id = 2
-- With above aproach the invoices_balance wit id 2 is deleted 
-- So we need recreate this view by executing the statement and type WITH OPTION CHECK 
-- We get an error, check option failed. So by default when we update data through a view, the modified rows will no longer will be included in the view.