SELECT
	mark AS automark,
	COUNT(*) AS cnt
FROM
	AUTO
WHERE
	mark IN ("BMW", "LADA")
GROUP BY
	mark;