-- Для каждого значения скорости ПК, превышающего 600 МГц, определите среднюю цену ПК с такой же скоростью.
-- Вывести: speed, средняя цена.

SELECT speed, avg(price) FROM PC
WHERE speed > 600
GROUP BY speed;