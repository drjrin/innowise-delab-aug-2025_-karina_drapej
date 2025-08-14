-- Задание 2.1:Получите список заказов вместе с именем клиента, который сделал заказ
SELECT first_name,last_name, item, amount
FROM orders ord
JOIN customers cus ON ord.customer_id = cus.customer_id -- объединяем таблы орд и кус при условии что id совпадает
ORDER BY ord.order_id; -- сортируем от большего значения id к меньшему
