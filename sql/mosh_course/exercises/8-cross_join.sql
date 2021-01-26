-- Do a cross join between shippers and products tables.

USE sql_store

SELECT s.name AS shipper, p.name AS product
FROM shippers s
CROSS JOIN products p ;