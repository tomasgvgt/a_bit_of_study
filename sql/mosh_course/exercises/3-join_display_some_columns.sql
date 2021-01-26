-- Join the order_items and products table on product_id = product_id
-- and display the order_id, name, product_id, quantity and unit_price
-- Order by product_id

SELECT order_id, oi.product_id, name, quantity, oi.unit_price
FROM sql_store.order_items oi -- Aliasing order_items table as oi
JOIN sql_store.products p -- Aliasing products as p
ON oi.product_id = p.product_id
ORDER BY oi.product_id;
