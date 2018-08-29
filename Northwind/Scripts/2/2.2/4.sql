--4.Найти покупателей и продавцов, которые живут в одном городе.
--Если в городе живут только один или несколько продавцов, или только один или несколько покупателей,
--то информация о таких покупателя и продавцах не должна попадать в результирующий набор. Не использовать конструкцию JOIN. 


SELECT c.City AS [Customer's city], e.City AS [Employee's city], c.CustomerID, e.EmployeeID
FROM  Employees AS e, Customers AS c
WHERE e.City = c.City 





