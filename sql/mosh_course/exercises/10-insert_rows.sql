-- Insert 3 rows into the products table

USE sql_store

INSERT INTO products (
    name,
    quantity_in_stock,
    unit_price
)
VALUES ('brownie', 49, 1.20),
        ('noodles', 56, 2.05),
        ('olives', 12, 2.77)
