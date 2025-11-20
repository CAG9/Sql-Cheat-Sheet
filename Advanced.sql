--Index
--An index in a database is a special data structure (similar to an index in a book) that makes searching, filtering, and joining data much faster.


CREATE INDEX idx_users_email
ON users(email);


--trigger
--A trigger is a piece of SQL code that runs automatically when certain events happen on a table:

--INSERT
-- UPDATE
-- DELETE

-- Triggers are used for automation, validation, logging, or syncing tables.


-- You have a table of users and want to automatically write a log every time a new user is created.
  
CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE users_log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    action VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP


CREATE TRIGGER log_new_user
AFTER INSERT ON users
FOR EACH ROW
BEGIN
    INSERT INTO users_log(user_id, action)
    VALUES (NEW.id, 'USER CREATED');
END;


CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
	IF OLD.email <> NEW.email THEN
		INSERT INTO email_history (user_id, email)
		VALUES (OLD.user_id, OLD.email);
	END IF;
END//



-- Crea unaa vista llamada "v_adult_users" con los nombres y edades de usuarios de la table "users"
-- que tienen una edad igual o mayor a 18 años.
CREATE VIEW v_adult_users AS
SELECT name, age
FROM users
WHERE age >= 18;

SELECT * FROM v_adult_users;
--A VIEW is a virtual table built from a SELECT query.
--It does not store data (usually) — it just shows data from other tables in a convenient or secure way.

--Think of it like a saved SELECT query.




--A stored procedure is a block of SQL code stored in the database that you can run whenever you want — like a function.



DELIMITER $$

CREATE PROCEDURE get_users()
BEGIN
    SELECT * FROM users;
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE add_order(
    IN p_user_id INT,
    IN p_total DECIMAL(10,2)
)
BEGIN
    INSERT INTO orders (user_id, total)
    VALUES (p_user_id, p_total);
END$$

DELIMITER ;

CALL add_order(5, 120.50);









