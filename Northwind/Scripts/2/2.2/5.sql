--5. Найти всех покупателей, которые живут в одном городе. 

SELECT c.City, COUNT(c.CustomerID)
FROM Customers AS c 
GROUP BY  c.City


