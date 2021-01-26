-- SQL statement to give 50 extra points
-- To customers born before 1990

USE sql_store

UPDATE customers
SET points = points + 50
WHERE birth_date < "1990-01-01";
