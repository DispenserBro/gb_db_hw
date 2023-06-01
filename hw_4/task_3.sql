# Так проще и правильнее
SELECT
	test_a.id,
	test_a.data
FROM
	test_a
    NATURAL	LEFT JOIN test_b
WHERE
	test_b.id IS NULL;

# Но можно и так
SELECT
	test_a.id,
	test_a.data
FROM
	test_a
	LEFT JOIN test_b ON test_a.id = test_b.id
WHERE
	test_b.id IS NULL;