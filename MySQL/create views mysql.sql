CREATE VIEW employee_view AS
SELECT EmployeeId, FirstName, DepartmentId
FROM Employee

;
CREATE VIEW customer_view AS
SELECT CustomerId, FirstName, Trip
FROM Customer


;
CREATE VIEW Department_view AS
SELECT DepartmentId, DepartmentType
FROM Department

;

CREATE VIEW Bill_view AS
SELECT BillId, Amount, Name
FROM Bill

;

CREATE VIEW CruiseShipActivities AS
SELECT cs.CruiseShipId, cs.CruiseName, cs.Destination, a.ActivitiesId, a.ActivitiesType
FROM CruiseShip cs
JOIN Activities a ON cs.CruiseShipId = a.CruiseShipId;


;


CREATE VIEW ReservationFlightPrices AS
SELECT r.ReservationId, r.StartDate, r.EndDate, fp.FlightId, fp.FlightPriceList, fp.Trip, fp.RoomAvailability
FROM Reservation r
JOIN FlightPrice fp ON r.ReservationId = fp.ReservationId;

;
 
 
 
 CREATE VIEW CruiseShipRooms AS
SELECT cs.CruiseShipId, cs.CruiseName, cs.Destination, r.RoomId, r.RoomNumber, r.RoomType
FROM CruiseShip cs
JOIN Room r ON cs.CruiseShipId = r.CruiseShipId;




