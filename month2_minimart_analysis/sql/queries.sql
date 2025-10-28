-- SQL queries for retrieving insights
select all customers
SELECT * FROM customers;

filter product by category "drinks"
SELECT * FROM products WHERE category='Drinks';

Recent orders by date
SELECT * FROM orders ORDER BY order_date DESC;

Number of total orders
SELECT COUNT(*) FROM orders;

Revenue per product (price × quantity)
SELECT p.product_name, SUM(o.quantity * p.price) as revenue
FROM orders o
JOIN products p ON p.product_id = o.product_id
GROUP BY p.product_id;

detailed order info
SELECT o.order_id, c.name, p.product_name, o.quantity, o.order_date
FROM orders o
JOIN customers c on c.customer_id=o.customer_id
JOIN products p on p.product_id=o.product_id;

Left join all customers + their orders
SELECT c.name, o.order_id, p.product_name FROM customers c
LEFT JOIN orders o ON o.customer_id = c.customer_id
LEFT JOIN products p ON p.product_id = o.product_id;
