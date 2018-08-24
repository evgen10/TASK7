--2. По таблице Orders найти количество заказов, cделанных каждым продавцом.
--Заказ для указанного продавца – это любая запись в таблице Orders, где в колонке EmployeeID задано значение для данного продавца. 
--В результатах запроса надо возвращать колонку с именем продавца (Должно высвечиваться имя полученное конкатенацией LastName & FirstName.
--Эта строка LastName & FirstName должна быть получена отдельным запросом в колонке основного запроса. Также основной запрос должен использовать группировку по EmployeeID.)
--с названием колонки ‘Seller’ и колонку c количеством заказов возвращать с названием 'Amount'. Результаты запроса должны быть упорядочены по убыванию количества заказов. 


SELECT  CONCAT(e.FirstName,' ',e.LastName) AS Seller
	  , COUNT(o.EmployeeID) AS Amount
FROM Orders AS o, Employees AS e
WHERE o.EmployeeID = e.EmployeeID
GROUP BY o.EmployeeID, e.FirstName, e.LastName
ORDER BY Amount


--SELECT  CONCAT(e.FirstName,' ',e.LastName) AS Seller
--	  , COUNT(o.EmployeeID) AS Amount	
--FROM Orders AS o 
--    ,(SELECT empl.EmployeeID, empl.FirstName, empl.LastName
--	  FROM Employees as empl) as e
--WHERE e.EmployeeID = o.EmployeeID
--GROUP BY o.EmployeeID, e.FirstName,e.LastName
--ORDER BY Amount
				 

