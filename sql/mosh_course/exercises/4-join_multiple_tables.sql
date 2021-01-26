-- Join the payments, payment_menthods and clients tables
-- and produce a report that shows the payments with more detail
-- such as name of the client, and the payment method

USE sql_invoicing;

SELECT p.payment_id, p.date, c.name, p.amount, pm.name AS payment_method_name
FROM payments p
JOIN payment_methods pm
    ON pm.payment_method_id = p.payment_method
JOIN clients c
    ON p.client_id = c.client_id;
