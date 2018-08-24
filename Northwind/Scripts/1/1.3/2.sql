--2. Выбрать всех заказчиков из таблицы Customers, у которых название страны начинается на буквы из диапазона b и g.
-- Использовать оператор BETWEEN. Проверить, что в результаты запроса попадает Germany. 
-- Запрос должен возвращать только колонки CustomerID и Country и отсортирован по Country.

SELECT c.CustomerID, c.Country
FROM Customers as c
WHERE c.Country BETWEEN 'b' AND 'i'
ORDER BY c.Country

