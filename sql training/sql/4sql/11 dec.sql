-- ============= CASE Statement ================
DELIMITER //
CREATE PROCEDURE CaseAvengerActivity(IN city_name VARCHAR(30) , OUT message VARCHAR(50))
BEGIN

DECLARE avenger_count INT;

SELECT COUNT(*) INTO avenger_count FROM Avengers WHERE city = city_name;

CASE
    WHEN avenger_count>2 THEN
        SET message = 'Avenger actitvity is High in the city';
    WHEN avenger_count BETWEEN 1 AND 2 THEN
        SET message = 'Avenger activity is moderate in the city';
    ELSE
        SET message = 'There is NO avenger in the city';
END CASE;
END //

DELIMITER ;
 
SET @message ='';
Call AvengerActivity('NYC',@message);
SELECT @message;