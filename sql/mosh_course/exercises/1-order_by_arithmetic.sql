-- Query all records from order_items, where order_id is 2
-- and its ordered by total price in descending order.

SELECT * FROM sql_store.order_items
WHERE order_id = 2
ORDER BY quantity * unit_price DESC;
