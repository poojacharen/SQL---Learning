-- JSON Type (JavsScript Object Notation) - Lightweight format for storing and transferring data over the Internet
-- It is used heavily in web and mobile applications.
-- So most of the time our mobile apps sends the data to the backend using json

-- In JSON we use { } to define an oblect
-- {
--   "key": value      -- inside the braces we can have one or more key value pairs. Keys are always strings so we need surround them with "". 
                       -- Strings can be anything, values can be strings, numbers, boolean, arrays or other objects
-- }

USE sql_store;
UPDATE products
SET properties = '
{
	"dimensions": [1, 2, 3],
    "weight": 10,
    "manufacturer": { "name": "sony" }
}
'
WHERE product_id = 1

-- we can also write the above code like this.,
UPDATE products
SET properties = JSON_OBJECT(
	'weight', 10, 
    'dimensions', JSON_ARRAY(1, 2, 3), 
    'manufacturer', JSON_OBJECT('name', 'sony')
)
WHERE product_id = 1;


-- In a new query
SELECT product_id, JSON_EXTRACT(properties, '$.weight') AS weight
FROM products
WHERE product_id =1;

-- or
SELECT product_id, properties -> '$.weight'   -- -> this operator is called column pass operator, $ represents the current json file
FROM products
WHERE product_id = 1;


SELECT product_id, properties -> '$.dimensions' -- output [1, 2, 3]
FROM products
WHERE product_id = 1;

SELECT product_id, properties -> '$.dimensions[0]'  -- we get [1], same if we pass [1] - we get 2 and if we pass 2 - we het [3]
FROM products
WHERE product_id = 1;

SELECT product_id, properties -> '$.manufacturer'  -- {"name":"sony"}
FROM products
WHERE product_id = 1;

SELECT product_id, properties -> '$.manufacturer.name'  -- we get "sony" - because sony is a string we see double quotes 
FROM products
WHERE product_id = 1;
