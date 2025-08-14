--Задача 2.2:Выведите список доставок со статусом и именем клиента.
SELECT status, first_name, last_name
FROM shippings shi
JOIN customers cus ON cus.customer_id=shi.customer
ORDER BY status; --красиво разбивает по статусам 