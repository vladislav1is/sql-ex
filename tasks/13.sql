-- Найдите среднюю скорость ПК, выпущенных производителем A.

SELECT avg(pc.speed) as speed FROM PC pc
JOIN Product p ON pc.model = p.model
WHERE p.maker = 'A';