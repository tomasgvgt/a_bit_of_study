-- Query the top tree customers

SELECT * FROM sql_store.customers
ORDER BY points DESC
LIMIT 3;
