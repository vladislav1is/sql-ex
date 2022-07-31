-- Найдите производителей самых дешевых цветных принтеров.
-- Вывести: maker, price

SELECT p.maker, pr.price FROM Product p
JOIN Printer pr ON p.model = pr.model
WHERE pr.price = (
    SELECT min(price) minPrice FROM Printer WHERE color ='y'
) AND color ='y';