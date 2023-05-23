SELECT
	*,
	CASE
		WHEN bucket < 100
			THEN "Маленький заказ"
		WHEN bucket BETWEEN 100 AND 300
			THEN "Средний заказ"
		WHEN bucket > 300
			THEN "Большой заказ"
	END AS order_size
FROM test_courses.sales
ORDER BY bucket ASC;