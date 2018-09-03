--5. Найти всех покупателей, которые живут в одном городе. 

SELECT c.City,
		STUFF((SELECT ',' + cus.ContactName
			   FROM Customers cus 
			   WHERE c.City = cus.City
			   FOR XML PATH('')),1,1,'') AS Customers
FROM Customers AS c
GROUP BY c.City


