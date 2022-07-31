-- Найдите максимальную цену ПК, выпускаемых каждым производителем, у которого есть модели в таблице PC.
-- Вывести: maker, максимальная цена.

SELECT p.maker, max(pc.price) FROM Product p
JOIN PC pc ON pc.model = p.model
GROUP BY p.maker;