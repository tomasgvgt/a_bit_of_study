-- Create a copy of the tables invoices.
-- Instead of client ID it must have the client name
-- Only show the records that have been payed.

USE sql_invoicing

CREATE TABLE new_table AS
SELECT 
    i.invoice_id,
    i.number,
    c.name AS client_name,
    i.invoice_total,
    i.payment_total,
    i.invoice_date,
    i.due_date,
    i.payment_date
FROM invoices i
JOIN clients c
USING (client_id)
WHERE i.payment_date IS NOT NULL;