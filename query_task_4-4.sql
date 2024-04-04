USE db_theme_3;
SELECT categories.name AS category_name, COUNT(*) as category_rows_qauntity, AVG(order_details.quantity) as avarage_product_quantity FROM order_details
INNER JOIN orders ON  orders.id = order_details.order_id
INNER JOIN products ON  products.id = order_details.product_id
INNER JOIN categories ON  categories.id = products.category_id
INNER JOIN customers ON customers.id = orders.customer_id
RIGHT JOIN employees ON employees.employee_id = orders.employee_id
INNER JOIN shippers ON shippers.id = orders.shipper_id
INNER JOIN suppliers ON suppliers.id = products.supplier_id
WHERE employees.employee_id >3 AND employees.employee_id <=10
GROUP BY categories.name;