--Вывести все товары (уникальные названия продуктов), которых заказано 
--ровно 10 единиц (конечно же, это можно решить и без подзапроса).

SELECT product_name
FROM products
WHERE product_id = ANY (
	  SELECT product_id FROM order_details WHERE quantity = 10
)