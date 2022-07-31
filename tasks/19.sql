-- Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ПК-блокнотов.
-- Вывести: maker, средний размер экрана.

SELECT p.maker, avg(l.screen) FROM Product p
JOIN Laptop l ON p.model = l.model
GROUP BY p.maker;