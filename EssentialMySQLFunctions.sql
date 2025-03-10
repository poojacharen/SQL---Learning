-- The IF Function
-- Return the order date of this year as Active, for the past year as Archived

USE sql_store;
SELECT 
      order_id,
      order_date,
      IF(YEAR(order_date) = YEAR(NOW()), "Active", "Archived") AS category
FROM orders