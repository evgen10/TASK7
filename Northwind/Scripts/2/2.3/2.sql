--2.Выдать в результатах запроса имена всех заказчиков из таблицы Customers и суммарное количество их заказов из таблицы Orders.
--Принять во внимание, что у некоторых заказчиков нет заказов, но они также должны быть выведены в результатах запроса.
--Упорядочить результаты запроса по возрастанию количества заказов.


SELECT c.CompanyName, COUNT(o.OrderID) as [Order quantity]
FROM Customers AS c 
LEFT JOIN Orders AS o ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID,c.CompanyName
ORDER BY [Order quantity]




















