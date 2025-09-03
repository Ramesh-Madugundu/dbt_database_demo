CREATE OR REPLACE TABLE orders (
    order_id INT AUTOINCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    product_name STRING,
    quantity INT,
    price_per_unit DECIMAL(10,2),
    total_amount DECIMAL(10,2),
    status STRING
);

-- Step 2: Insert 20 sample records
INSERT INTO orders (customer_id, order_date, product_name, quantity, price_per_unit, total_amount, status) VALUES
(101, '2025-08-01', 'Apples', 10, 2.50, 25.00, 'Completed'),
(102, '2025-08-02', 'Bananas', 5, 1.20, 6.00, 'Completed'),
(103, '2025-08-03', 'Oranges', 8, 3.00, 24.00, 'Pending'),
(104, '2025-08-04', 'Tomatoes', 12, 2.00, 24.00, 'Shipped'),
(105, '2025-08-05', 'Potatoes', 20, 1.50, 30.00, 'Completed'),
(106, '2025-08-06', 'Mangoes', 6, 4.00, 24.00, 'Pending'),
(107, '2025-08-07', 'Onions', 15, 1.80, 27.00, 'Shipped'),
(108, '2025-08-08', 'Grapes', 7, 3.50, 24.50, 'Completed'),
(109, '2025-08-09', 'Cabbage', 4, 2.20, 8.80, 'Cancelled'),
(110, '2025-08-10', 'Carrots', 9, 2.10, 18.90, 'Completed'),
(111, '2025-08-11', 'Watermelon', 3, 7.00, 21.00, 'Completed'),
(112, '2025-08-12', 'Pineapple', 2, 6.50, 13.00, 'Pending'),
(113, '2025-08-13', 'Cucumber', 10, 1.70, 17.00, 'Shipped'),
(114, '2025-08-14', 'Beans', 5, 2.80, 14.00, 'Completed'),
(115, '2025-08-15', 'Chillies', 6, 3.20, 19.20, 'Completed'),
(116, '2025-08-16', 'Papaya', 2, 5.50, 11.00, 'Cancelled'),
(117, '2025-08-17', 'Strawberries', 4, 6.00, 24.00, 'Shipped'),
(118, '2025-08-18', 'Pumpkin', 3, 4.80, 14.40, 'Completed'),
(119, '2025-08-19', 'Spinach', 8, 2.30, 18.40, 'Completed'),
(120, '2025-08-20', 'Sweet Corn', 6, 3.60, 21.60, 'Pending');