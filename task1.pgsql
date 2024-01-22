-- Вывести продукты количество которых в продаже меньше самого малого среднего количества продуктов в деталях заказов (группировка по product_id). 
-- Результирующая таблица должна иметь колонки product_name и units_in_stock


SELECT product_name, units_in_stock
FROM products
WHERE units_in_stock < ALL (
    SELECT AVG(quantity)
    FROM order_details
    GROUP BY product_id
)
ORDER BY units_in_stock DESC;