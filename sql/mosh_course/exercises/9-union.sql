-- QUery that displays customer_id, first_name, points.
-- Create a column (type):  Bronze (points < 2000), Silver (2000 <= points < 3000), Gold (3000 < points)

USE sql_store
SELECT customer_id, first_name, points, 'Bronze' AS type
FROM customers
WHERE points < 2000

UNION

SELECT customer_id, first_name, points, 'Silver' AS type
FROM customers
WHERE 2000 <= points AND points < 3000

UNION

SELECT customer_id, first_name, points, 'Gold' AS type
FROM customers
WHERE 3000 < points
ORDER BY first_name;