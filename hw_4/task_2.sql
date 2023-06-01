SELECT
	mark AS automark,
	(
		SELECT
			COUNT(*)
		FROM
			auto
	) - COUNT(*) AS other_cnt
FROM
	auto
GROUP BY
	mark;