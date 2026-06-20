SELECT
MAX(Amount) AS highest,
MIN(Amount) AS lowest,
AVG(Amount) AS average, 
SUM(Amount) AS total,
COUNT (Amount) AS number_of_bills,
COUNT (date) AS count_of_payments,
COUNT(*) AS total_records
FROM bill

----------------

SELECT
MAX(Amount) AS highest,
MIN(Amount) AS lowest,
AVG(Amount) AS average, 
SUM(Amount) AStotal,
COUNT(*) AS total_records
FROM bill
WHERE date> '2023-12-01'

---------------

SELECT *
FROM customer
WHERE RoomId between 75 and 100

-----------------
SELECT *
FROM Customer
WHERE Trip IN ('Hawaii', 'Mexico', 'Vietnam')

------------------

SELECT *
FROM Room
WHERE RoomType in ('Single', 'Triple')

------------------

SELECT
C.CruiseShipId,
C.CruiseName,
A.ActivitiesType
FROM CruiseShip C
RIGHT OUTER JOIN Activities A
ON C.CruiseShipId = A.CruiseShipId
ORDER BY C.CruiseShipId

--------------------


SELECT*
FROM Customer
WHERE NOT (CustomerBirthday = '1988-11-15' or CustomerID > 1017)

--------------------------


SELECT
Name,
SUM(Amount) AS total
FROM Bill
JOIN Customer using (CustomerId)
WHERE date >= '2023-12-19'
GROUP BY Name
ORDER BY total DESC 

--------------------


SELECT Date, RoomAvailability, FlightPriceList
FROM FlightPrice
ORDER BY Date DESC, RoomAvailability DESC, FlightPriceList DESC

---------------------

  SELECT*
   FROM FlightPrice
   WHERE Trip != 'Canada'

