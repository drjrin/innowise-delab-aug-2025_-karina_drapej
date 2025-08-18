-- Задание 5.1 Найдите всех клиентов, которые сделали заказ с максимальной суммой
SELECT c.first_name, c.last_name, o.amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE amount = (SELECT MAX(amount) FROM orders); 