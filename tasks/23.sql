-- Найдите производителей, которые производили бы как ПК со скоростью не менее 750 МГц,
-- так и ПК-блокноты со скоростью не менее 750 МГц.
-- Вывести: Maker

SELECT DISTINCT maker from Product
JOIN PC ON PC.model = Product.model and PC.speed >= 750
AND maker in (
    SELECT maker from Product
    JOIN Laptop ON Laptop.model = Product.model and Laptop.speed >= 750
);