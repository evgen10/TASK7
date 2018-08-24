--3. По таблице Orders найти количество заказов, сделанных каждым продавцом и для каждого покупателя. 
--Необходимо определить это только для заказов, сделанных в 1998 году. 

SELECT o.EmployeeID,o.CustomerID, COUNT(o.EmployeeID) AS Amount, YEAR(o.OrderDate) AS [Year]
FROM Orders AS o
GROUP BY o.EmployeeID, o.CustomerID,YEAR(o.OrderDate)
HAVING YEAR(o.OrderDate) = 1998



