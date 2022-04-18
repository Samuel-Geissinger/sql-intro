-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(80),
    product_price NUMERIC,
    quantity INTEGER
);

-- Add 5 orders to the orders table.
-- Make orders for at least two different people.
-- person_id should be different for different people.
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES 
    (2, 'Hot dog', 3.99, 2),
    (3, 'Corn dog', 6.99, 2),
    (1, 'Hamburger', 3.00, 1),
    (2, 'Hot dog', 1.75, 1),
    (4, 'Churro', 1.80, 1);


-- Select all the records from the orders table.
SELECT * FROM orders;

-- Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;

-- Calculate the total order price.
SELECT SUM(product_price) FROM orders;

-- Calculate the total order price by a single person_id.
SELECT SUM(product_price) FROM orders
WHERE person_id = 2;

