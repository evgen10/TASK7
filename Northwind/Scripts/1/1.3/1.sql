--1.	Выбрать все заказы (OrderID) из таблицы Order Details (заказы не должны повторяться), 
--где встречаются продукты с количеством от 3 до 10 включительно – это колонка Quantity в таблице Order Details.
-- Использовать оператор BETWEEN. Запрос должен возвращать только колонку OrderID

SELECT DISTINCT od.OrderID
FROM  [Order Details] AS od
WHERE od.Quantity BETWEEN 3 AND 10