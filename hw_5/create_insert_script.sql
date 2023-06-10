CREATE TABLE IF NOT EXISTS cars (
	id INT PRIMARY KEY AUTO_INCREMENT, 
	name VARCHAR(45) NOT NULL,
	cost INT NOT NULL
);

INSERT INTO cars(name, cost) VALUES
("Audi", 52642),
("Mercedes", 57127),
("Skoda", 9000),
("Volvo", 29000),
("Bentley", 350000),
("Citroen", 21000),
("Hummer", 41400),
("Volkswagen", 21600);

SELECT * FROM cars;