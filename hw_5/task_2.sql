ALTER VIEW cheap_cars
AS
	SELECT name
	FROM cars
	WHERE cost < 30000;