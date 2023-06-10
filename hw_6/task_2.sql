DELIMITER $$
CREATE FUNCTION even(start_num INT, end_num INT)
RETURNS TEXT
DETERMINISTIC
BEGIN
	DECLARE ptr INT;
	DECLARE res TEXT;
	
	SET ptr = IF(start_num % 2 = 1, start_num + 1, start_num);
	
	WHILE ptr <= end_num DO
		SET res = CONCAT_WS(", ", res, ptr);
		SET ptr = ptr + 2;
	END WHILE;
	
	RETURN res;
END $$
DELIMITER;

SELECT even(1, 10);