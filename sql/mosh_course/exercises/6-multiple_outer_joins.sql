-- Query that displays:
-- ;Columns: Order_date, order_id, first_name, shipper (Show if it hasnt beeen shipped yed), status.

USE sql_store
SELECT o.order_date, o.order_id, c.first_name, s.name AS shipper, os.name
FROM orders o
LEFT JOIN customers c
ON o.customer_id = c.customer_id
LEFT JOIN shippers s
ON o.shipper_id = s.shipper_id
LEFT JOIN order_statuses os
ON o.status = os.order_status_id
ORDER BY o.order_id;
