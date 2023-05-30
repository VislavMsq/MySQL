-- 1. Найти департаменты в которых есть работники, зарабатывающие больше 10 000. В результате выборки формируются два поля 
--    (department_id и поле со значениями 1 или 0) (использовать оператор max)
USE airport;
SELECT
	department_id,
    CASE WHEN MAX(salary) > 10000 THEN 1 ELSE 0 END AS high_earners
FROM
	employees
GROUP BY
	department_id;
    
-- Найти департаменты в которых все работники зарабатывают больше 10 000. В результате выборки формируются два поля 
-- (department_id и поле со значениями 1 или 0) (использовать оператор min)    

SELECT
	department_id,
    CASE WHEN MIN(salary) > 10000 THEN 1 ELSE 0 END AS high_earners
FROM
	employees
GROUP BY
	department_id;
    
-- min - возвращает найменьшее значение указанного столбца    
-- max - возвращает найбольшее значение указанного столбца    