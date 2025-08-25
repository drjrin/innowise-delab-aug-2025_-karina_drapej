-- Задача 3.1:Подсчитайте количество клиентов в каждой стране.
SELECT country, count (*) AS count_of_clients
FROM customers 
GROUP BY country;