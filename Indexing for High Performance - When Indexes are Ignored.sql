-- There are situations where you have index but we still experience performance problems. Let's look at one of the common scenarios

EXPLAIN SELECT customer_id FROM customers
WHERE state = 'CA' OR points > 1000;

CREATE INDEX idx_points ON customers (points);

EXPLAIN
	SELECT customer_id FROM customers
    WHERE state = 'CA'
    UNION
    SELECT customer_id FROM customers
    WHERE points > 1000;
    
-- Another eg:
EXPLAIN SELECT customer_id FROM customers
WHERE points + 10 > 2010;
