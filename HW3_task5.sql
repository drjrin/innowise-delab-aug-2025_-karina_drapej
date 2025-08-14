-- Задание 5.1 Найдите всех клиентов, которые сделали заказ с максимальной суммой
SELECT DISTINCT first_name, last_name, amount
FROM orders ord
JOIN customers cus ON ord.customer_id = cus.customer_id
WHERE amount = (SELECT MAX(amount) FROM orders); -- Не понимаю почему не работает