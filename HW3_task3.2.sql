-- Задача 3.2:Посчитайте общее количество заказов и среднюю сумму по каждому товару.
SELECT item, ROUND(avg (amount),2) AS avg_amount, count (item) -- почему-то очень много знаков после точки
FROM orders
GROUP BY item
ORDER BY count DESC;
