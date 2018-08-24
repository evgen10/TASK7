--1.	Найти общую сумму всех заказов из таблицы Order Details с учетом количества закупленных товаров и скидок по ним.
-- Результатом запроса должна быть одна запись с одной колонкой с названием колонки 'Totals'.

SELECT SUM(od.UnitPrice * od.Quantity * od.Discount) AS Totals
FROM [Order Details] AS od
