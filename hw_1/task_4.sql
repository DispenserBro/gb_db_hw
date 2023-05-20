SELECT * FROM test_courses.phone WHERE product_name LIKE '%Iphone%';

# Это, конечно, полное извращение над регулярками)
SELECT * FROM test_courses.phone WHERE product_name RLIKE '.*[:digit:]+.*';

SELECT * FROM test_courses.phone WHERE product_name LIKE '%8%';