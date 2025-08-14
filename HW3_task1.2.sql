-- Задача 2. Выведите все заказы, у которых сумма (amount) больше 1000
SELECT *
FROM orders
WHERE amount >1000
ORDER BY amount DESC;