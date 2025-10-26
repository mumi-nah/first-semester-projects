-- SQL script to insert sample data
INSERT INTO customers (name, email, join_date) VALUES
('Aisha Bello','aisha@bello.com','2025-01-10'),
('John Doe','johndoe29@.com','2025-02-05'),
('Mary Okafor','maryokafor@.com','2025-03-12'),
('Chike Nwosu','chikenwosu@gmail.com','2025-01-20'),
('Sara Ahmed','saraahmed.com','2025-04-01');

INSERT INTO products (product_name, category, price) VALUES
('Mineral Water','Drinks',0.50),
('Bread','Bakery',1.20),
('Soda','Drinks',0.80),
('Chocolate','Snacks',1.50),
('Milk','Dairy',0.90);

INSERT INTO orders (customer_id, product_id, quantity, order_date) VALUES
(1,1,10,'2025-06-01'),
(2,3,5,'2025-06-02'),
(3,5,2,'2025-06-03'),
(4,2,1,'2025-06-04'),
(2,4,3,'2025-06-05');
