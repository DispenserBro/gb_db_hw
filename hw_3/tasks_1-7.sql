# Задание 1
SELECT city, sname, snum, comm
FROM salespeople;

# Задание 2
SELECT rating, cname AS "name"
FROM customers
WHERE
	city = "San Jose";

# Задание 3
SELECT DISTINCT snum
FROM orders;

# Задание 4
SELECT *
FROM customers
WHERE
	cname LIKE "G%";

# Задание 5
SELECT *
FROM orders
WHERE
	amt > 1000;

# Задание 6
SELECT MIN(amt)
FROM orders;

# Задание 7
SELECT *
FROM customers
WHERE 
	rating > 100 
	AND 
	city != "Rome";