DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS secs_to_days(IN secs_in INT)
BEGIN
	DECLARE days INT;
	DECLARE hours INT;
	DECLARE minutes INT;
	DECLARE secs INT;

	SET days = FLOOR(secs_in / (24 * 3600));
	SET hours = FLOOR(secs_in % (24 * 3600) / 3600);
	SET minutes = FLOOR(secs_in % 3600 / 60);
	SET secs = secs_in - days * (24 * 3600) - hours * 3600 - minutes * 60;

	SELECT CONCAT_WS(" ", days, "days", hours, "hours", minutes, "minutes", secs, "seconds");
END $$
DELIMITER;

CALL secs_to_days(123456);