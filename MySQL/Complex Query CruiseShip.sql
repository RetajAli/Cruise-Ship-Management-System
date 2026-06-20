SELECT 
r.RoomId, 
r.RoomNumber, 
r.RoomType
FROM Room r
WHERE r.RoomId NOT IN (
SELECT DISTINCT RoomId
FROM Customer
);

SELECT 
c.CustomerID, 
c.FirstName, 
c.LastName, 
SUM(b.Amount) AS TotalBill
FROM Customer c
JOIN Bill b ON c.CustomerID = b.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName;

SELECT *
FROM Employee e
WHERE Salary > (
SELECT AVG(Salary)
FROM Employee 
WHERE DepartmentId = e.DepartmentId
) 

SELECT *
FROM Customer
WHERE CustomerId NOT IN (
SELECT DISTINCT CustomerId
FROM Bill
)

SELECT
CustomerID,
FirstName,
(SELECT SUM(Amount)
FROM Bill
WHERE CustomerID = c.CustomerID) AS total_sales,
(SELECT AVG(Amount) 
FROM Bill) AS average_sales,
((SELECT SUM(Amount)
FROM Bill
WHERE CustomerID = c.CustomerID)  
(SELECT AVG(Amount) 
FROM Bill)) AS difference
FROM Customer c;

SELECT 
cs.CruiseName, 
COUNT(DISTINCT a.ActivitiesType) AS ActivityCount
FROM CruiseShip cs
JOIN Activities a ON cs.CruiseShipId = a.CruiseShipId
GROUP BY cs.CruiseName
HAVING COUNT(DISTINCT a.ActivitiesType) > 3;

SELECT 
Trip, 
MAX(FlightPriceList) AS MaxPrice
FROM FlightPrice
GROUP BY Trip;

SELECT 
Gender, 
COUNT(EmployeeId) AS TotalEmployees, 
SUM(Salary) AS TotalSalary, 
AVG(Salary) AS AverageSalary
FROM Employee
GROUP BY Gender;

SELECT 
d.DepartmentId, 
d.DepartmentType
FROM Department d
LEFT JOIN Employee e ON d.DepartmentId = e.DepartmentId
WHERE e.EmployeeId IS NULL;

SELECT 
c.CustomerID, 
c.FirstName, 
c.LastName
FROM Customer c
JOIN Room r ON c.RoomId = r.RoomId
JOIN CruiseShip cs ON r.CruiseShipId = cs.CruiseShipId
JOIN Activities a ON cs.CruiseShipId = a.CruiseShipId
WHERE a.ActivitiesType = 'AquaPark';



