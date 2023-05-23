CREATE TABLE test_courses.sales
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	order_date DATE NOT NULL,
	bucket INT NOT NULL
);

INSERT INTO test_courses.sales (order_date, bucket) 
VALUES
("2021-01-01", 152),
("2021-01-02", 131),
("2021-01-03", 94),
("2021-01-04", 101),
("2021-01-05", 301);