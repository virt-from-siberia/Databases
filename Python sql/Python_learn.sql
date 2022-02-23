SELECT company_name, contact_name, phone
FROM customers
WHERE country = 'USA';

SELECT *
FROM products
WHERE unit_price > 20;

SELECT COUNT(*)
FROM products
WHERE unit_price < 20;

SELECT *
FROM products
WHERE discontinued = 1;

SELECT *
FROM customers
WHERE city = 'London';

SELECT *
FROM orders
WHERE order_date > '1998-03-01';

SELECT *
FROM products
WHERE unit_price > 25
  AND units_in_stock > 40;

SELECT *
FROM customers
WHERE city = 'Berlin'
   OR city = 'London'
   OR city = 'San Francisco';

SELECT *
FROM orders
WHERE shipped_date > '1998-04-30'
  AND (
        freight > 75
        OR freight < 150
    )
ORDER BY freight DESC;

SELECT freight
FROM orders
WHERE freight >= 20
  AND freight <= 40;

SELECT freight
FROM orders
WHERE freight BETWEEN 20 AND 40
ORDER BY freight DESC;

SELECT *
FROM orders
WHERE order_date BETWEEN '1998-03-30' AND '1998-04-034';

SELECT *
FROM customers
WHERE country = 'Mexico'
   OR country = 'USA'
   OR country = 'Canada';

SELECT *
FROM customers
WHERE country IN ('Mexico', 'USA', 'Canada');

SELECT *
FROM customers
WHERE country NOT IN ('Mexico', 'USA', 'Canada');

SELECT *
FROM products
WHERE category_id IN (1, 2, 3, 4, 5);

SELECT ship_city, order_date
FROM orders
WHERE ship_city = 'London'
ORDER BY order_date;

SELECT MIN(order_date)
FROM orders
WHERE ship_city = 'London';

SELECT ship_city, order_date
FROM orders
WHERE ship_city = 'London'
ORDER BY order_date DESC;

SELECT MAX(order_date)
FROM orders
WHERE ship_city = 'London';

SELECT AVG(unit_price)
FROM products
WHERE discontinued <> 1;

SELECT SUM(units_in_stock)
FROM products
WHERE discontinued <> 1;

SELECT *
FROM orders
WHERE ship_country IN ('Mexico', 'USA', 'Canada')
  AND ship_via = 1
ORDER BY ship_country DESC;

SELECT MIN(unit_price)
FROM products
WHERE units_in_stock > 30;

SELECT MAX(unit_price)
FROM products
WHERE units_in_stock > 30;

SELECT MAX(units_in_stock)
FROM products
WHERE unit_price > 30;

SELECT AVG(shipped_date - order_date)
FROM orders
WHERE ship_country = 'USA';

SELECT SUM(unit_price * units_in_stock)
FROM products
WHERE discontinued <> 1;

SELECT last_name, first_name
FROM employees
WHERE first_name LIKE '%n';

SELECT last_name, first_name
FROM employees
WHERE last_name LIKE 'Buc%';

SELECT last_name, first_name
FROM employees
WHERE last_name LIKE '__c%';

SELECT COUNT(*)
FROM orders
WHERE ship_postal_code LIKE '%-673';

SELECT product_name, unit_price
FROM products
WHERE discontinued <> 1
ORDER BY unit_price DESC
LIMIT 10;

SELECT ship_city, ship_region, ship_country
FROM orders
WHERE ship_region IS NULL;

SELECT ship_city, ship_region, ship_country
FROM orders
WHERE ship_region IS NOT NULL;

SELECT ship_country, COUNT(*)
FROM orders
WHERE freight > 50
GROUP BY ship_country
ORDER BY COUNT(*) DESC;

SELECT ship_country, freight
FROM orders;

SELECT category_id, SUM(units_in_stock)
FROM products
GROUP BY category_id
ORDER BY SUM(units_in_stock) DESC
LIMIT 5;

SELECT category_id, SUM(unit_price * units_in_stock)
FROM products
WHERE discontinued <> 1
GROUP BY category_id
HAVING SUM(unit_price * units_in_stock) > 5000
ORDER BY SUM(unit_price * units_in_stock) DESC;

SELECT country
FROM customers
UNION
SELECT country
FROM employees;

SELECT country
FROM customers
INTERSECT
SELECT country
FROM suppliers;

SELECT country
FROM customers
    EXCEPT
SELECT country
FROM suppliers;

SELECT *
FROM orders
WHERE ship_country LIKE 'U%';

SELECT order_id, customer_id, freight, ship_country
FROM orders
WHERE ship_country LIKE 'N%'
ORDER BY freight DESC
LIMIT 10;

SELECT first_name, last_name, home_phone, region
FROM employees
WHERE region IS NULL;

SELECT COUNT(*)
FROM customers
WHERE region IS NOT NULL;

SELECT country, COUNT(*)
FROM suppliers
GROUP BY country
ORDER BY COUNT(*) DESC;

SELECT ship_country, SUM(freight)
FROM orders
WHERE ship_region IS NOT NULL
GROUP BY ship_country
HAVING SUM(freight) > 2750
ORDER BY SUM(freight) DESC;

SELECT country
FROM customers
UNION
SELECT country
FROM suppliers
ORDER BY country;

SELECT country
FROM customers
INTERSECT
SELECT country
FROM suppliers
INTERSECT
SELECT country
FROM employees;

SELECT country
FROM customers
INTERSECT
SELECT country
FROM suppliers
    EXCEPT
SELECT country
FROM employees;

SELECT product_name, company_name, units_in_stock
FROM products
         INNER JOIN suppliers ON products.supplier_id = suppliers.supplier_id
ORDER BY units_in_stock DESC;

SELECT category_name, SUM(units_in_stock)
FROM products
         INNER JOIN categories ON products.category_id = categories.category_id
GROUP BY category_name
ORDER BY SUM(units_in_stock) DESC
LIMIT 10;

SELECT category_name, SUM(unit_price * units_in_stock)
FROM products
         INNER JOIN categories ON products.category_id = categories.category_id
WHERE discontinued <> 1
GROUP BY category_name
HAVING SUM(unit_price * units_in_stock) > 5000
ORDER BY SUM(unit_price * units_in_stock) DESC;

SELECT order_id, customer_id, first_name, last_name, title
FROM orders
         INNER JOIN employees ON orders.employee_id = employees.employee_id;

SELECT order_date, product_name, ship_country, products.unit_price, quantity, discount
FROM orders
         INNER JOIN order_details ON orders.order_id = order_details.order_id

         INNER JOIN products ON order_details.product_id = products.product_id;

SELECT company_name
FROM suppliers
         LEFT JOIN products ON suppliers.supplier_id = products.supplier_id;

SELECT company_name, order_id
FROM customers
         LEFT JOIN orders ON orders.customer_id = customers.customer_id
WHERE order_id IS NULL;

SELECT COUNT(*)
FROM employees
         LEFT JOIN orders ON orders.employee_id = employees.employee_id
WHERE order_id IS NULL;

CREATE TABLE test_employees
(
    employee_id INT PRIMARY KEY,
    first_name  VARCHAR(255) NOT NULL,
    last_name   VARCHAR(255) NOT NULL,
    manager_id  INT,
    FOREIGN KEY (manager_id) REFERENCES test_employees (employee_id)
);

INSERT INTO test_employees (employee_id, first_name, last_name, manager_id)
VALUES (1, 'Aleks', 'Elchin', NULL),
       (2, 'Michael', 'Shumaher', 1),
       (3, 'Jarno', 'Truli', 1),
       (4, 'Jenson', 'Button', 2),
       (5, 'Alex', 'Zanardi', 2),
       (6, 'Fernando', 'Alonso', 3),
       (7, 'Ralth', 'Shumaher', 3),
       (8, 'Olivie', 'Panis', 3);

SELECT e.first_name || ' ' || e.last_name AS employee,
       m.first_name || ' ' || m.last_name AS manager
FROM test_employees e
         LEFT JOIN test_employees m ON m.employee_id = e.manager_id
ORDER BY manager DESC;

SELECT COUNT(*) AS emploees_count
FROM test_employees;

SELECT COUNT(DISTINCT country) AS country
FROM employees;

SELECT category_id, SUM(units_in_stock) AS units_in_stock
FROM products
GROUP BY category_id
ORDER BY units_in_stock;

SELECT category_id, SUM(unit_price * units_in_stock) AS total_price
FROM products
WHERE discontinued <> 1
GROUP BY category_id
HAVING SUM(unit_price * units_in_stock) > 5000
ORDER BY category_id DESC;














































