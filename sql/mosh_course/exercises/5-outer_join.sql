-- Query that displays the product_id, product name and quantity ordered
-- using the products table and the order_items table
-- Show all the records even if the product hasnt been ordered

USE sql_store

SELECT p.product_id, p.name AS product_name, oi.quantity AS quantity_ordered
FROM products p
LEFT JOIN order_items oi
ON p.product_id = oi.product_id;
