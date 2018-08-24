-- 1.	По таблице Orders найти количество заказов с группировкой по годам.
-- В результатах запроса надо возвращать две колонки c названиями Year и Total.
-- Написать проверочный запрос, который вычисляет количество всех заказов.


SELECT  YEAR(o.OrderDate) AS [Year], COUNT(YEAR(o.OrderDate)) AS Total
FROM  Orders AS o 
GROUP BY YEAR(o.OrderDate)

SELECT COUNT(*)
FROM Orders AS o