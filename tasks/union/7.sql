-- Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).

SELECT p.model, l.price FROM laptop l
INNER JOIN product p
ON p.model = l.model AND p.maker = 'B'
UNION
SELECT p.model, pc.price FROM pc
INNER JOIN product p
ON p.model = pc.model AND p.maker = 'B'
UNION
SELECT p.model, pr.price FROM printer pr
INNER JOIN product p
ON p.model = pr.model AND p.maker = 'B';