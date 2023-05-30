-- 1 константная величина
-- SELECT "Vlad";  -- констант

-- 2 Константные величины
-- SELECT -1 AS numbers;

-- Числа
-- ABS - возвращает абсолютное значение
-- SELECT ABS(-1) AS value;
-- SELECT ABS(1) AS value;

-- POW - возведение числа в степень, первое число возводимое, второе сама степень
-- SELECT POW(2,3) AS value;

-- ROUND - округление числа
-- SELECT ROUND(3.2) AS value; 
-- SELECT ROUND(3.4) AS value; 
-- SELECT ROUND(3.5) AS value; 
-- SELECT ROUND(3.6) AS value; 

-- SQRT - получает квадратный корень из числа
-- SELECT SQRT(144) AS value;
-- SELECT SQRT(4) AS value;
-- SELECT SQRT(25) AS value;

-- Найти сумму зарплат тех сотрудников, которые зарабатывают больше 10000
-- USE hr;

-- SELECT SUM(salary) 
-- 	AS sum_solary
--     FROM employees
--     WHERE salary > 1000;
--     
-- -- решение с помощью CASE
-- SELECT SUM(
-- 		CASE
-- 			WHEN salary < 1000 THEN 0
--          ELSE salary
--         END
-- 	) AS sum_salary
-- FROM employees;

-- avg - возвращает среднее значение. Прибавляем значение и делим на кл-во. 100, 200, 300 => 
-- (100 + 200 + 300) / 3

-- Найти среднюю зарплату тех сотрудников, которые зарабатывают меньше 10000

SELECT AVG (
		CASE 
			WHEN salary < 10000 THEN salary  -- выполняем проверку, если рузельтат не подходит, прибавляем 0
            ELSE NULL
        END
	) AS avg_salary
FROM employees;        

-- СТРОКИ 

-- CONCAT - помогает слить строки вместе, принимает неограниченное кл-во аргументов
SELECT CONCAT("Hallo","Friend") AS value;
SELECT CONCAT("Hallo ","Friend") AS value;
SELECT CONCAT("Hallo"," Friend") AS value;
SELECT CONCAT("Hallo"," "," Friend") AS value;

-- CONCAT_WS
-- CONCAT_WS - помогает слить строки вместе, принимает неограниченное кл-во аргументов, 1й аргумент - это разделитель
SELECT CONCAT_WS(" ","Hallo","Best","Friend") AS value;

-- INSERT
-- INSERT - помогает заменить в строке конкретную подстроку, 
-- 1ым аргументом - это строка, которую мы хотим изменить
-- 2ым аргументом идет индекс подстроки с которой мы хотим начать изменять
-- 3ым аргументом идет кл-во символов которое мы хотим изменить, последним идет подстрока которую мы хотим изменить
SELECT INSERT("Привет дорогой друг", 8, 7, "мой") AS value;
SELECT INSERT("Привет дорогой друг", 8, 7, "") AS value;

-- LENGTH

SELECT LENGTH("") AS value;
SELECT LENGTH("A") AS value;
SELECT LENGTH("AB") AS value;
SELECT LENGTH("AB C") AS value;
 
SELECT LENGTH("") AS value;
SELECT LENGTH("А") AS value;
SELECT LENGTH("АВВ") AS value;
SELECT LENGTH("АВ С") AS value;

-- TRIM - омогает убрать лишние пробелы
SELECT TRIM("               Hello friend                ") As value;

-- LEFT - помогает убрать слева определенное кл-во символов
SELECT LEFT("My best friend",3) AS value;

-- RIGHT - помогает убрать справа определенное кл-во символов
SELECT LEFT("My best friend",6) AS value;

-- REPLACE - помогает заменить подстроку везде
-- 1ый аргумент строка в которой хотим сделать изменения
-- 2й аргумент это подстрока которую мы хотим измекнить
-- 3й аргумент это подстрока на которую мф заменяем
SELECT REPLAСE("800 700 927 77"," ", "-") AS value;

-- SUBSTRING - позволяет из строки взять подстроку
-- 1ый - это строка с которой мы работаем
-- 2ой индекс подстроки с которой начинаем вырезать
-- 3й (опциональный), это кл-во символов для отрезания, если не ставим,то отрежет от конца строки
SELECT substring("Привет мой друг, как дела", 8) AS value;
SELECT substring("Привет мой друг, как дела", 8, 8) AS value;

-- lower - маленький регистр
SELECT lower("HElLo") AS value;
-- upper - большой регистр
SELECT upper("HElLo") AS value;



