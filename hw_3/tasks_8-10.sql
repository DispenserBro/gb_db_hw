# Задание 8
SELECT *
FROM staff
ORDER BY sallary DESC;

SELECT *
FROM staff
ORDER BY sallary;

# Задание 9
# Зачем тут вообще подзапрос?)
# Только больше ресурсов тратить)
# Результат по id сходится с первыми 5 записями первого запроса
SELECT *
FROM staff
ORDER BY sallary DESC
LIMIT 5;

# Задание 10
# Тут вообще один такой сотрудник
# При >= 100000 два, и они правильно группируются 

# Это в Stackoverflow нашел
SET SESSION sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

SELECT *
FROM staff
WHERE sallary >= 100000
GROUP BY speciality;


