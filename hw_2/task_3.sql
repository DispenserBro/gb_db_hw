CREATE TABLE test_courses.orders
(
	orderid INT PRIMARY KEY AUTO_INCREMENT,
	employeeid VARCHAR(4) NOT NULL, # Один символ про запас
	amount DECIMAL(7, 2), # Два разряда про запас, правда немного не так отображается
	orderstatus VARCHAR(10) # Лучше использовать ENUM, но про него не было в лекции
);

INSERT INTO test_courses.orders (employeeid, amount, orderstatus)
VALUES
("e03", 15.00, "OPEN"),
("e01", 25.50, "OPEN"),
("e05", 100.70, "CLOSED"),
("e02", 22.18, "OPEN"),
("e04", 9.50, "CANCELLED"),
("e04", 99.99, "OPEN");

SELECT * FROM test_courses.orders;

SELECT
	orderid, orderstatus,
	CASE
		WHEN orderstatus = "OPEN"
			THEN "Order is in open state."
		WHEN orderstatus = "CLOSED" OR orderstatus = "CANCELLED"
			THEN CONCAT("Order is ", LOWER(orderstatus), ".")
	END AS order_summary
FROM test_courses.orders;

# Так проще, но не то)
/*SELECT
	orderid, orderstatus,
	CONCAT("Order is in ", LOWER(orderstatus), " state.")
		AS order_summary
FROM test_courses.orders;*/