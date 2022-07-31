-- Используя таблицу Product, определить количество производителей, выпускающих по одной модели.

SELECT count(X.maker) FROM (
    SELECT maker, count(model) AS amount FROM Product
    GROUP BY maker
    HAVING count(model) = 1
) AS X;