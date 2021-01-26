-- SQL statement to update the orders table
-- Update the comments column for customers who have more than 3000 points.
-- Regard them as "Gold customers"

USE sql_store
UPDATE orders
SET comments = "Gold Customer"
WHERE customer_id IN
    (SELECT customer_id
    FROM customers
    WHERE points > 3000)