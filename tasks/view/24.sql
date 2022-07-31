-- Перечислите номера моделей любых типов, имеющих самую высокую цену по всей имеющейся в базе данных продукции.

SELECT model FROM (
    SELECT model, price FROM pc
    UNION
    SELECT model, price FROM Laptop
    UNION
    SELECT model, price FROM Printer
) AS A
WHERE A.price = (
    SELECT max(B.price) FROM (
        SELECT price FROM pc
        UNION
        SELECT price FROM laptop
        UNION
        SELECT price FROM printer
    ) AS B
);

--

WITH Inc_Out AS (
    SELECT model, price FROM pc
    UNION
    SELECT model, price FROM Laptop
    UNION
    SELECT model, price FROM Printer
)
SELECT model FROM Inc_Out
WHERE Inc_Out.price = (SELECT max(Inc_Out.price) FROM Inc_Out);

--

CREATE VIEW Inc_Out AS
SELECT model, price FROM pc
UNION
SELECT model, price FROM Laptop
UNION
SELECT model, price FROM Printer;

SELECT model FROM Inc_Out
WHERE Inc_Out.price = (SELECT max(Inc_Out.price) FROM Inc_Out);