--1. Определить продавцов, которые обслуживают регион 'Western' (таблица Region). 

SELECT DISTINCT e.FirstName, r.RegionDescription
FROM Region AS r 
JOIN Territories AS t ON r.RegionID = t.RegionID
JOIN EmployeeTerritories AS et ON et.TerritoryID = t.TerritoryID
JOIN Employees AS e ON e.EmployeeID = et.EmployeeID
WHERE r.RegionDescription =  'Western'

