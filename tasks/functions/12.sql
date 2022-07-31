-- Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.

SELECT avg(speed) as speed FROM Laptop
WHERE price > 1000;