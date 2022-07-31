-- Найдите среднюю цену ПК и ПК-блокнотов, выпущенных производителем A (латинская буква).
-- Вывести: одна общая средняя цена.

SELECT sum(X.price)/sum(X.amount) FROM (
    SELECT pc.price AS price, 1 AS amount FROM PC pc
    JOIN Product p ON pc.model = p.model
    WHERE p.maker = 'A'
    UNION ALL
    SELECT l.price AS price, 1 AS amount FROM Laptop l
    JOIN Product p ON l.model = p.model
    WHERE p.maker = 'A'
) AS X;