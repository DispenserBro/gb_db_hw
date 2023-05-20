CREATE TABLE IF NOT EXISTS test_courses.phone
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	product_name VARCHAR(50) NOT NULL,
	manufacturer VARCHAR(50) NOT NULL,
	product_count INT NOT NULL,
	price INT NOT NULL
);

# Надо два запроса на вставку, чтобы правильно автоинкремент сработал
INSERT test_courses.phone(product_name, manufacturer, product_count, price)
VALUES ('Iphone X', 'Apple', 3, 76000);

INSERT test_courses.phone(product_name, manufacturer, product_count, price)
VALUES
('Iphone 8', 'Apple', 2, 51000),
('Galaxy S9', 'Samsung', 2, 56000),
('Galaxy S8', 'Samsung', 1, 41000),
('P20 Pro', 'Huawei', 5, 36000);

SELECT * FROM test_courses.phone;