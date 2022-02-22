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

 









