--3.	Выбрать всех заказчиков из таблицы Customers, у которых название страны начинается на буквы из диапазона b и g,
-- не используя оператор BETWEEN. 

SELECT  c.CustomerID, c.Country
FROM Customers as c
WHERE SUBSTRING(c.Country,1,1) >= 'b' AND SUBSTRING(c.Country,1,1) <= 'g'
ORDER BY c.Country