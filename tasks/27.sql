-- Найдите средний размер диска ПК каждого из тех производителей, которые выпускают и принтеры.
-- Вывести: maker, средний размер HD.

SELECT p.maker, avg(pc.hd) FROM Product p
JOIN PC pc ON p.model = pc.model
WHERE p.maker IN (
    SELECT maker FROM Product WHERE type = 'PC'
) AND p.maker IN (
    SELECT maker FROM Product WHERE type = 'Printer'
) GROUP BY p.maker;