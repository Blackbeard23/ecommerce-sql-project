--
CREATE TABLE customers (
	customer_id serial PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	email VARCHAR(100) UNIQUE,
	phone_number VARCHAR(15),
	address TEXT
);

CREATE TABLE products (
	product_id serial PRIMARY KEY,
	product_name VARCHAR(100) NOT NULL,
	category VARCHAR(30),
	price NUMERIC,
	stock_quantity INTEGER
);

CREATE TABLE orders (
	order_id serial PRIMARY KEY,
	customer_id INTEGER REFERENCES customers (customer_id) ON DELETE CASCADE, -- When a customer record is deleted, all related orders will also be deleted
	order_date DATE,
	total_amount NUMERIC
);

CREATE TABLE order_items (
	order_item_id serial PRIMARY KEY,
	order_id INTEGER REFERENCES orders (order_id) ON DELETE CASCADE, -- When an order record is deleted, all related order items will also be deleted
	product_id INTEGER REFERENCES products (product_id) ON DELETE CASCADE, -- When a product record is deleted, all related order items will also be deleted
	quantity INTEGER,
	price NUMERIC
);

INSERT INTO customers (name, email, phone_number, address)
VALUES ('Charles Jennings', 'charles.jennings@email.com', '937-293-8980', '24169 Clark Causeway Harrisonberg, GU 16358'),
		('Chad Henry', 'chad.henry@email.com', '947-588-8273', '52755 Thomas Route South Michael, NY 66376'),
		('Heather Barker', 'heather.barker@email.com', '974-849-9401', '046 Theresa Expressway Garychester, MP 32531'),
		('Dawn Thompson', 'dawn.thompson@email.com', '642-755-3886', 'PSC 5590, Box 0715 APO AP 92258'),
		('Benjamin Fischer', 'benjamin.fischer@email.com', '512-976-7220', '037 Smith Divide East Felicia, SD 04149'),
		('Diane Pugh', 'diane.pugh@email.com', '702-120-9661', 'Unit 4888 Box 3182 DPO AE 72311'),
		('Tami Peterson', 'tami.peterson@email.com', '779-490-3691', '70068 Lyons Ways Lambstad, AS 12455'),
		('Ryan Daniels', 'ryan.daniels@email.com', '889-769-5984', '009 Micheal Coves East Lorifurt, GU 33238'),
		('Michael Miller', 'michael.miller@email.com', '798-664-3131', '6546 Christopher Course Suite 538 East Albertfort, DE 88426'),
		('Kimberly Rodgers', 'kimberly.rodgers@email.com', '134-917-5303', 'Unit 1555 Box 7830 DPO AA 22263'),
		('Jordan Smith', 'jordan.smith@email.com', '142-762-9602', '2028 Perez Vista Apt. 023 East Amanda, OH 71335'),
		('Frank Rios', 'frank.rios@email.com', '700-219-4907', '27808 Hodges Streets Apt. 253 Brianfort, CT 61895'),
		('Stephen Torres', 'stephen.torres@email.com', '802-308-5558', '0880 Pena Inlet East Megan, MH 89083'),
		('Leslie Reed', 'leslie.reed@email.com', '539-995-7088', '9236 Young Hills Apt. 091 Lucasbury, IA 25704'),
		('Tracy Cole', 'tracy.cole@email.com', '138-105-3120', '1446 Jessica Valleys Kimberlychester, ID 67045'),
		('Isabella Trujillo', 'isabella.trujillo@email.com', '756-941-8554', '5060 Stacy Hills New Joannview, OR 58972'),
		('David Hall', 'david.hall@email.com', '924-377-7561', '127 Pena Terrace Suite 937 Danielletown, VA 92604'),
		('Darren Hayes', 'darren.hayes@email.com', '658-218-8437', '7991 Ballard Underpass East Rick, NY 05636'),
		('Gloria Ortega', 'gloria.ortega@email.com', '364-105-2985', '4708 Tucker Route East Jonathonburgh, VA 15769'),
		('Judith Richard', 'judith.richard@email.com', '190-962-5155', '9831 Steven Parkways Trevorton, HI 89285');
		
INSERT INTO products (product_name, category, price, stock_quantity)
VALUES ('Laptop', 'Electronics', 1200.00, 50),
		('Headphones', 'Electronics', 200.00, 150),
		('Smartphone', 'Electronics', 800.00, 100),
		('Tablet', 'Electronics', 600.00, 80),
		('Monitor', 'Electronics', 300.00, 60),
		('Keyboard', 'Accessories', 50.00, 200),
		('Mouse', 'Accessories', 30.00, 300),
		('Desk Chair', 'Furniture', 150.00, 40),
		('Desk', 'Furniture', 250.00, 20),
		('Printer', 'Electronics', 400.00, 30),
		('Earbuds', 'Electronics', 100.00, 200),
		('Smartwatch', 'Electronics', 250.00, 120), 
		('Bicycle', 'Outdoors', 500.00, 25),
		('Gaming Console', 'Electronics', 400.00, 50),
		('Coffee Maker', 'Appliances', 100.00, 75);
		
INSERT INTO orders (customer_id, order_date, total_amount)
VALUES
	(1, '2024-01-15', 150.00),
	(2, '2024-02-10', 220.00),
	(3, '2024-03-05', 180.00),
	(4, '2024-04-12', 320.00),
	(5, '2024-05-08', 400.00),
	(6, '2024-06-20', 250.00),
	(7, '2024-07-15', 300.00),
	(8, '2024-08-02', 120.00),
	(9, '2024-09-18', 450.00),
	(10, '2024-10-25', 200.00),
	(11, '2024-11-05', 360.00),
	(12, '2024-03-22', 400.00),
	(13, '2024-05-30', 290.00),
	(14, '2024-07-08', 270.00),
	(15, '2024-08-25', 310.00),
	(16, '2024-09-12', 340.00),
	(17, '2024-10-06', 500.00),
	(18, '2024-11-15', 410.00),
	(19, '2024-12-01', 280.00),
	(20, '2024-12-10', 150.00),
	(1, '2024-02-18', 200.00),
	(2, '2024-03-25', 340.00),
	(3, '2024-06-10', 190.00),
	(4, '2024-08-05', 220.00),
	(5, '2024-09-15', 180.00),
	(6, '2024-10-20', 450.00),
	(7, '2024-12-05', 380.00),
	(8, '2024-11-18', 420.00),
	(9, '2024-07-12', 500.00),
	(10, '2024-04-14', 250.00);

INSERT INTO order_items (order_id, product_id, quantity, price)
VALUES
    (1, 3, 2, 199.98),
    (1, 7, 3, 299.97),
    (2, 5, 1, 49.99),
    (2, 6, 5, 24.95),
    (3, 8, 4, 199.96),
    (3, 9, 2, 159.98),
    (4, 4, 2, 799.98),
    (4, 10, 1, 299.99),
    (5, 1, 3, 599.97),
    (5, 2, 2, 99.98),
    (6, 6, 4, 19.96),
    (6, 3, 1, 999.99),
    (7, 8, 6, 299.94),
    (7, 9, 1, 79.99),
    (8, 7, 5, 499.95),
    (8, 5, 2, 99.98),
    (9, 4, 3, 1199.97),
    (9, 10, 1, 299.99),
    (10, 2, 2, 99.98),
    (10, 3, 3, 2999.97),
    (11, 6, 4, 19.96),
    (11, 5, 5, 124.95),
    (12, 1, 1, 199.99),
    (12, 8, 3, 149.97),
    (13, 7, 2, 199.98),
    (13, 9, 6, 479.94),
    (14, 10, 1, 299.99),
    (14, 4, 2, 799.98),
    (15, 3, 2, 1999.98),
    (15, 2, 3, 149.97),
    (16, 1, 4, 799.96),
    (16, 5, 5, 124.95),
    (17, 6, 4, 19.96),
    (17, 7, 1, 99.99),
    (18, 8, 2, 99.98),
    (18, 9, 3, 239.97),
    (19, 10, 2, 599.98),
    (19, 1, 3, 599.97),
    (20, 4, 1, 399.99),
    (20, 2, 5, 249.95),
    (21, 3, 1, 999.99),
    (21, 7, 2, 199.98),
    (22, 5, 4, 99.96),
    (22, 6, 3, 14.97),
    (23, 8, 1, 49.99),
    (23, 9, 2, 159.98),
    (24, 4, 3, 1199.97),
    (24, 10, 1, 299.99),
    (25, 2, 4, 199.96),
    (25, 1, 1, 199.99);

   -- Add a new customer to the database
   INSERT INTO customers (name, email, phone_number, address)
   VALUES ('Kathleen Mcdaniel', 'kathleen.mcdaniel@email.com', '104-806-3986', '733 Robert Harbors Apt. 675 Huberhaven, WI 35710');
   
  -- Update the stock quantity of a product after a purchase
  UPDATE products
  SET stock_quantity = stock_quantity - 3
  WHERE product_id = 5;
  
  -- Delete an order from the database
  DELETE FROM orders
  WHERE order_id = 9;
  
-- Retrieve all orders for a specific customer
SELECT o.order_id, 
		o.order_date, 
		o.total_amount
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
WHERE c.name = 'Charles Jennings';

-- REVENUE ANALYSIS
--- Calculate the total revenue generated by the e-commerce platform
SELECT sum(total_amount) AS total_revenue
FROM orders;

--- Find the revenue generated per product
SELECT p.product_name,
		sum(oi.quantity * oi.price) AS total_revenue
FROM order_items oi
INNER JOIN	products p
ON oi.product_id = p.product_id
GROUP BY 1;

-- CUSTOMER INSIGHTS
--- List the top 5 customers by total spending.
SELECT c.name AS customer_name,
		sum(o.total_amount) AS total_spending
FROM orders o 
INNER JOIN customers c 
ON o.customer_id = c.customer_id
GROUP BY customer_name
ORDER BY total_spending DESC
LIMIT 5;

--- Identify customers who haven’t made any purchases.
SELECT c.name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- PRODUCT TRENDS
--- Find the top 3 best-selling products.
SELECT p.product_name,
		SUM(oi.quantity * oi.price) AS total_revenue
FROM order_items oi 
INNER JOIN products p
ON oi.product_id = p.product_id
GROUP BY 1
ORDER BY total_revenue DESC
LIMIT 3;

--- Identify products that are out of stock.
SELECT p.product_id, 
		(p.stock_quantity - s.sold_stock) AS remaining_stock 
FROM (SELECT product_id, 
		sum(quantity) AS sold_stock
		FROM order_items
		GROUP BY 1
		) s
INNER JOIN products p
ON p.product_id = s.product_id
WHERE (p.stock_quantity - s.sold_stock) <= 0;

-- ORDER DETAILS
--- Retrieve all items in a specific order, including product names, quantities, and prices.
SELECT p.product_name,
		oi.quantity,
		oi.price
FROM order_items oi
INNER JOIN products p
ON oi.product_id = p.product_id;

--- Calculate the total amount of an order.
SELECT order_id,
		SUM(quantity * price) AS total_amount_of_an_order
FROM order_items
GROUP BY 1;

-- MONTHLY TRENDS
--- Calculate the number of orders and total revenue for each month.
SELECT date_part('month', order_date) AS monthNo,
		to_char(date_trunc('month', order_date), 'Month') AS MONTH,
		count(order_id) AS number_of_orders,
		sum(total_amount) AS total_revenue
FROM orders
GROUP BY 1,2
ORDER BY 1;


-- WINDOW FUNCTION
--- Use RANK() to rank customers based on their total spending.
SELECT c.name,
		COALESCE(SUM(oi.quantity * oi.price),0) AS total_spending,
		RANK() OVER(ORDER BY COALESCE(SUM(oi.quantity * oi.price),0) DESC) AS rank
FROM customers c 
LEFT JOIN orders o 
ON c.customer_id = o.customer_id
LEFT JOIN order_items oi
ON o.order_id  = oi.order_id
GROUP BY c.name;

--- Use ROW_NUMBER() to assign a unique number to each order for a customer.
SELECT *,
		ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_date)
FROM orders o;

-- CTE AND SUBQUERIES
--- Use a Common Table Expression (CTE) to calculate the total revenue per customer, then find the customers with revenue greater than $500.
WITH CustomerRevenue AS (
    SELECT c.customer_id, c.name, SUM(o.total_amount) AS total_spent
    FROM Customers c
    JOIN Orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.name
)
SELECT name, total_spent
FROM CustomerRevenue
WHERE total_spent > 500;

--- Write a subquery to find the product with the highest price.
SELECT product_name,
		price AS highest_price
FROM products
WHERE product_id = (SELECT product_id
					FROM products
					ORDER BY price DESC
					LIMIT 1);

-- INDEXING
--- Create indexes on frequently queried fields (e.g., customer_id, product_id) and demonstrate their impact on query performance.
CREATE INDEX customerid_indx
ON orders(customer_id);
CREATE INDEX productid_indx
ON order_items(product_id);

-- OPTIMIZATION
--- Analyze query performance using EXPLAIN or EXPLAIN ANALYZE.
EXPLAIN ANALYZE
WITH CustomerRevenue AS (
    SELECT c.customer_id, c.name, SUM(o.total_amount) AS total_spent
    FROM Customers c
    JOIN Orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.name
)
SELECT name, total_spent
FROM CustomerRevenue
WHERE total_spent > 500;
--- Queries has been optimized to by adjusting indexes, reordering joins, and rewriting the query.
