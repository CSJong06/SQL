-- CREATE DATABASE ecommerce; 

-- CREATE TABLE customers(
-- 	customer_id INT(30) unique auto_increment,
--     first_name VARCHAR(30),
--     last_name VARCHAR(30),
--     email VARCHAR(40) unique,
--     phone VARCHAR(35),
--     address VARCHAR(30),
--     city VARCHAR(30),
--     state VARCHAR(5),
--     zip VARCHAR(10),
--     registration_date timestamp
-- );

-- CREATE TABLE products(
-- 	product_id INT(30) unique auto_increment primary key,
--     product_name VARCHAR(30),
--     product_desc VARCHAR(150),
--     price DECIMAL(10, 2),
--     stock INT(10),
--     inventory_date VARCHAR(20)
-- );

-- CREATE TABLE orders(
-- 	order_id INT(30) unique auto_increment,
--     customer_id INT,
--     order_date TIMESTAMP,
--     order_status VARCHAR(20),
--     order_amount INT(20),
--     
--     FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
-- );

-- CREATE TABLE order_details(
-- 	order_id INT(30),
--     product_id INT(30),
--     quantity_ordered INT(30),
--     price_per_product INT(30),
--     order_detail_id INT(30) unique auto_increment,
--     
--     foreign key(order_id) references orders(order_id),
--     foreign key(product_id) references products(product_id)
-- );

-- INSERT INTO customers (first_name, last_name, email, phone, address, city, state, zip, registration_date)
-- VALUES
-- ('John', 'Doe', 'john.doe@example.com', '555-1234', '123 Maple St', 'Springfield', 'IL', '62704', NOW()),
-- ('Jane', 'Smith', 'jane.smith@example.com', '555-5678', '456 Oak St', 'Columbus', 'OH', '43215', NOW()),
-- ('Alice', 'Brown', 'alice.brown@example.com', '555-9876', '789 Pine Ave', 'Madison', 'WI', '53703', NOW()),
-- ('Bob', 'Johnson', 'bob.johnson@example.com', '555-6543', '321 Elm St', 'Austin', 'TX', '73301', NOW()),
-- ('Sara', 'Lee', 'sara.lee@example.com', '555-4321', '654 Birch Blvd', 'Denver', 'CO', '80203', NOW());

-- INSERT INTO products (product_name, product_desc, price, stock, inventory_date)
-- VALUES
-- ('Laptop', '15-inch screen, 8GB RAM', 899.99, 20, '2024-11-01'),
-- ('Smartphone', '6.5-inch display, 128GB storage', 599.99, 50, '2024-11-02'),
-- ('Headphones', 'Noise-canceling, wireless', 199.99, 30, '2024-11-03'),
-- ('Tablet', '10-inch screen, 64GB storage', 329.99, 15, '2024-11-04'),
-- ('Smartwatch', 'Waterproof, heart-rate monitor', 249.99, 25, '2024-11-05');

-- INSERT INTO orders (customer_id, order_date, order_status, order_amount)
-- VALUES
-- (1, '2024-11-10 14:30:00', 'Completed', 1799.98),
-- (2, '2024-11-11 10:15:00', 'Pending', 799.98),
-- (3, '2024-11-12 16:45:00', 'Completed', 529.98),
-- (4, '2024-11-13 11:20:00', 'Shipped', 1149.97),
-- (5, '2024-11-14 15:00:00', 'Pending', 449.99);

-- INSERT INTO order_details (order_id, product_id, quantity_ordered, price_per_product)
-- VALUES
-- (1, 1, 2, 899.99), -- John Doe bought 2 Laptops
-- (2, 2, 1, 599.99), -- Jane Smith bought 1 Smartphone
-- (3, 4, 1, 329.99), -- Alice Brown bought 1 Tablet
-- (3, 3, 1, 199.99), -- Alice Brown also bought 1 Headphones
-- (4, 1, 1, 899.99), -- Bob Johnson bought 1 Laptop
-- (4, 5, 1, 249.99), -- Bob Johnson also bought 1 Smartwatch
-- (5, 3, 2, 199.99); -- Sara Lee bought 2 Headphones

-- SELECT * FROM orders
-- JOIN customers on orders.customer_id = customers.customer_id

-- SELECT * FROM order_details
-- JOIN orders on orders.order_id = order_details.order_id
-- JOIN products on products.product_id = order_details.product_id

-- SELECT customers.first_name as customer, sum(order_details.quantity_ordered * order_details.price_per_product) as revenue
-- FROM order_details
-- JOIN orders on orders.order_id = order_details.order_id
-- JOIN products on products.product_id = order_details.product_id
-- JOIN customers on customers.customer_id = orders.customer_id
-- GROUP BY customers.first_name

-- select sum(orders.order_amount * order_details.price_per_product) as total_revenue
-- FROM order_details
-- JOIN orders on orders.order_id = order_details.order_id
-- JOIN products on products.product_id = order_details.product_id
-- JOIN customers on customers.customer_id = orders.customer_id
-- GROUP BY orders.order_id

-- SELECT sum(orders.order_amount) / 5 as average
-- from orders






