-- Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.

SELECT c.class, s.name, c.country FROM Ships s
JOIN Classes c ON c.class = s.class
WHERE numGuns >= 10;