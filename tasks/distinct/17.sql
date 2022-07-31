-- Найдите модели ПК-блокнотов, скорость которых меньше скорости каждого из ПК.
-- Вывести: type, model, speed

SELECT DISTINCT p.type, p.model, l.speed FROM laptop l
INNER JOIN product p ON p.model = l.model
WHERE l.speed < ALL (SELECT speed FROM PC);