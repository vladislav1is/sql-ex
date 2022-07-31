-- Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker

SELECT DISTINCT p.maker FROM Product p
JOIN PC pc ON p.model = pc.model
WHERE speed >= 450;