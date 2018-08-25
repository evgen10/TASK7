--2.	Выдать всех продавцов, которые имеют более 150 заказов. Использовать вложенный SELECT.



SELECT e.FirstName, oq.[Order quantity]
FROM (SELECT o.EmployeeID, COUNT(o.OrderID) as [Order quantity]
	  FROM Orders AS o
      GROUP BY o.EmployeeID
      HAVING COUNT(o.OrderID) >150
      ) AS oq
JOIN Employees AS e ON e.EmployeeID = oq.EmployeeID






