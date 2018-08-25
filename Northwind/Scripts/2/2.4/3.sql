--3. Выдать всех заказчиков (таблица Customers), которые не имеют ни одного заказа (подзапрос по таблице Orders). Использовать оператор EXISTS.

SELECT *
FROM Customers AS c
WHERE NOT EXISTS
      ( SELECT c.CustomerID
	    FROM Orders AS o
		WHERE o.CustomerID = c.CustomerID)
	  
	







