-- В предположении, что приход и расход денег на каждом пункте приема фиксируется произвольное число раз
-- (первичным ключом в таблицах является столбец code),
-- требуется получить таблицу, в которой каждому пункту за каждую дату выполнения операций будет соответствовать одна строка.

-- Вывод: point, date, суммарный расход пункта за день (out), суммарный приход пункта за день (inc).
-- Отсутствующие значения считать неопределенными (NULL).

SELECT point, date, sum(sumOut), sum(sumInc) FROM (
    SELECT point, date, sum(inc) AS sumInc, null AS sumOut
    FROM Income GROUP BY point, date
    UNION
    SELECT point, date, null AS sumInc, sum(out) AS sumOut
    FROM Outcome GROUP BY point, date
) as X
GROUP BY point, date order by point;