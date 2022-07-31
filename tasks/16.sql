-- Найдите пары моделей PC, имеющих одинаковые скорость и RAM.
-- В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i),
-- Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM.

SELECT P.model, L.model, P.speed, P.ram FROM PC P
JOIN (
    SELECT speed, ram FROM PC
    GROUP BY speed, ram
    HAVING count(*) = 2
) S ON P.speed = S.speed AND P.ram = S.ram
JOIN PC L ON L.speed = S.speed AND L.ram = S.ram AND L.model < P.model;