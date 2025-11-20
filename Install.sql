mysql -u root -p --enter
SHOW DATABASES;
exit
CREATE DATABASE restaurantMiiguel

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(150),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE products (
    product_id INT AUTO_INCREMENT  PRIMARY KEY,
    product_name VARCHAR(200) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    in_stock BOOLEAN DEFAULT TRUE,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
-- CHECK('age'>=18) reviisia si esa persona es mayor de edad
-- DEFAULT(XXX)

INSERT INTO products (product_name, price)
VALUES ('Laptop', 999.99);

ALTER TABLE users
ADD age INT; --add one column 
--Add a column with default
ALTER TABLE users
ADD status VARCHAR(20) DEFAULT 'active';


INSERT INTO orders (user_id, total)
VALUES (1, 59.99);


DROP DATABASE



















