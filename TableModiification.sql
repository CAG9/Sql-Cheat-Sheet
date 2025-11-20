
INSERT INTO orders (user_id, total)
VALUES 
(1, 20.50),
(2, 150.00),
(3, 75.25);


INSERT INTO users (name, email)
VALUES ('John Doe', 'john@example.com');

UPDATE orders
SET total = 79.99
WHERE order_id = 1;


UPDATE orders
SET total = 120.00,
    user_id = 3
WHERE order_id = 2;

DELETE FROM orders
WHERE order_id = 1;



ALTER TABLE person8
ADD surname varchar(50);

ALTER TABLE person8
RENAME COLLUMN surname TO descriiption;

ALTER TABLE person8
MODIFY surname varchar(500);














