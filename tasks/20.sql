-- Найдите производителей, выпускающих по меньшей мере три различных модели ПК.
-- Вывести: Maker, число моделей ПК.

SELECT maker, count(model) AS Count_Model
FROM Product
WHERE type = 'PC'
GROUP BY Product.maker
HAVING count(model) >= 3;