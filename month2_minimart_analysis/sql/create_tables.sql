-- SQL script to create necessary tables
CREATE TABLE customers(  
customer_id, INTEGER PRIMARY KEY
name TEXT,
email varchar(50),
join_date DATE
);


CREATE TABLE products(
product_id INTEGER PRIMARY KEY,
product_name TEXT,
category VARCHAR,
price NUMERIC
);

CREATE TABLE orders (
order_id INTEGER PRIMARY KEY,
customer_id INTEGER,
product_id INTEGER,
quantity INTEGER,
order_date TEXT,
FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
FOREIGN KEY(product_id) REFERENCES products(product_id)
