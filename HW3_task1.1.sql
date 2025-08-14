-- Задание 1. Найдите всех клиентов из страны 'USA', которым больше 25 лет.
SELECT *
FROM customers
WHERE country = 'USA' AND age > 25
ORDER BY age DESC; 