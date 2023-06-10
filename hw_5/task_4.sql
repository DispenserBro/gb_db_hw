SELECT an_name, an_cost
FROM orders
JOIN analysis
ON ord_an = an_id
WHERE DATE(ord_datetime) BETWEEN "2020-02-05" AND "2020-02-12";