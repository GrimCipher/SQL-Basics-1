
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(100),
    product_price DECIMAL(10, 2),
    quantity INTEGER
);

-- Insert data
INSERT INTO orders (person_id, product_name, product_price, quantity) VALUES
    (1, 'Item A', 10.99, 2),
    (2, 'Item B', 5.99, 3),
    (1, 'Item C', 15.99, 1),
    (3, 'Item D', 8.49, 4),
    (4, 'Item E', 20.00, 1);

-- Select all records
SELECT * FROM orders;

-- Calculate total number of products ordered
SELECT SUM(quantity) AS total_products_ordered FROM orders;

-- Calculate total order price for all orders
SELECT SUM(product_price * quantity) AS total_order_price FROM orders;

-- Calculate total order price by a single person_id
SELECT person_id, SUM(product_price * quantity) AS total_order_price FROM orders GROUP BY person_id;
