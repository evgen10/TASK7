--6. По таблице Employees найти для каждого продавца его руководителя.

SELECT e.EmployeeID, e.FirstName,
	   (SELECT em.FirstName
	    FROM Employees as em
		WHERE em.EmployeeID = e.ReportsTo) as Boss
FROM Employees AS e


