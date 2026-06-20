DELIMITER $$

CREATE FUNCTION get_room_type(pRoomId INT)
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
    DECLARE room_type VARCHAR(10);
    SELECT RoomType INTO room_type
    FROM Room
    WHERE RoomId = pRoomId;
    RETURN room_type;
END $$

DELIMITER ;

SELECT get_room_type(3);
-------------
DELIMITER $$

CREATE FUNCTION get_bill_amount(pBillId INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE bill_amount DECIMAL(10, 2);
    SELECT Amount INTO bill_amount
    FROM Bill
    WHERE BillId = pBillId;
    RETURN bill_amount;
END $$

DELIMITER ;

SELECT get_bill_amount(127);
-----------------


DELIMITER $$

CREATE FUNCTION get_cruise_name(pCruiseShipId INT)
RETURNS VARCHAR(77)
DETERMINISTIC
BEGIN
    DECLARE cruise_name VARCHAR(77);
    SELECT CruiseName INTO cruise_name
    FROM CruiseShip
    WHERE CruiseShipId = pCruiseShipId;
    RETURN cruise_name;
END $$

DELIMITER ;

SELECT get_cruise_name(1055);



