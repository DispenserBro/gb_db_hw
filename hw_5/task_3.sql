CREATE VIEW skoda_audi
AS
	SELECT *
	FROM cars
	WHERE name IN ("Audi", "Skoda");