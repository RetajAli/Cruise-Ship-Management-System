DELIMITER $$
CREATE PROCEDURE find_customer(IN id INT)
BEGIN
 SELECT *
 FROM customer
 WHERE customerId = Id;
END $$
DELIMITER ;

call find_customer(1015)

----------

DELIMITER $$

CREATE PROCEDURE find_employee(IN id INT)
BEGIN
    SELECT *
    FROM Employee
    WHERE EmployeeId = id;
END $$

DELIMITER ;


call find_Employee(7595)



------------

DELIMITER $$

CREATE PROCEDURE get_cruise_by_destination
(IN pDestination VARCHAR(55))
BEGIN
    SELECT * 
    FROM CruiseShip 
    WHERE Destination = pDestination;
END $$

DELIMITER ;

CALL get_cruise_by_destination('France');
-------------

DELIMITER $$

CREATE PROCEDURE get_reservations_by_date
(IN pStartDate DATE, IN pEndDate DATE)
BEGIN
    SELECT * 
    FROM Reservation 
    WHERE StartDate >= pStartDate AND EndDate <= pEndDate;
END $$

DELIMITER ;

CALL get_reservations_by_date('2023-12-12', '2024-12-17');
-------------------

DELIMITER $$

CREATE PROCEDURE get_activities_by_cruise
(IN pCruiseShipId INT)
BEGIN
    SELECT * 
    FROM Activities 
    WHERE CruiseShipId = pCruiseShipId;
END $$

DELIMITER ;

CALL get_activities_by_cruise(1055);
-------------------




