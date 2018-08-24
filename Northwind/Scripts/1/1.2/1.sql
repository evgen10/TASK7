--1.	Выбрать из таблицы Customers всех заказчиков, проживающих в USA и Canada. 
--Запрос сделать с только помощью оператора IN. Возвращать колонки с именем пользователя и названием страны в результатах запроса.
-- Упорядочить результаты запроса по имени заказчиков и по месту проживания.


SELECT c.CompanyName, c.Country
FROM Customers as c
WHERE c.Country in ('USA','Canada')
ORDER BY c.CompanyName, c.Country








