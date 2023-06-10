CREATE VIEW cheap_cars
AS 
	SELECT name FROM cars
	WHERE cost < 25000;