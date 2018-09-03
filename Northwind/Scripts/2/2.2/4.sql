--4.Найти покупателей и продавцов, которые живут в одном городе.
--Если в городе живут только один или несколько продавцов, или только один или несколько покупателей,
--то информация о таких покупателя и продавцах не должна попадать в результирующий набор. Не использовать конструкцию JOIN. 



SELECT c.City,
	   STUFF((SELECT DISTINCT ',' + cus.CompanyName
			  FROM Customers AS cus, Employees AS em
			  WHERE cus.City = c.City
			  FOR XML PATH('')), 1,1,''),
		STUFF((SELECT DISTINCT ',' + em.FirstName+' '+em.LastName
			  FROM Customers AS cus, Employees AS em
			  WHERE em.City = e.City
			  FOR XML PATH('')), 1,1,'')
FROM Customers AS c,Employees AS e
WHERE c.City = e.City
GROUP BY c.City, e.City


--SELECT c.City, e.City, c.ContactName, e.FirstName +' '+ e.LastName as [Emloyee name]
--FROM Customers as c, Employees as e
--WHERE c.City = e.City
--GROUP BY c.City,e.City, c.ContactName, e.FirstName +' '+ e.LastName




