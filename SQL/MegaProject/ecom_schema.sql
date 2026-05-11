-- ============================================================
-- E-COMMERCE ORDER & CUSTOMER ANALYTICS SYSTEM
-- Database: MySQL / PostgreSQL compatible
-- ============================================================
/*
E-Commerce Order & Customer Analytics — SQL Mega Project
Context
You are a Data Analyst hired by an e-commerce company operating across India. The business wants deep visibility into its customers, products, orders, payments, and returns. Your job is to write SQL queries that answer real business questions and build reusable analytical views.
*/
-- -----------------------------------------------
-- TABLE 1: regions
-- -----------------------------------------------
CREATE TABLE regions (
    region_id   INT PRIMARY KEY,
    region_name VARCHAR(50) NOT NULL UNIQUE
);

INSERT INTO regions VALUES
(1, 'North'),
(2, 'South'),
(3, 'East'),
(4, 'West');

-- -----------------------------------------------
-- TABLE 2: customers
-- -----------------------------------------------
CREATE TABLE customers (
    customer_id   INT PRIMARY KEY,
    full_name     VARCHAR(100) NOT NULL,
    email         VARCHAR(150) NOT NULL UNIQUE,
    phone         VARCHAR(15),
    city          VARCHAR(50),
    region_id     INT,
    signup_date   DATE NOT NULL,
    is_premium    BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (region_id) REFERENCES regions(region_id)
);

INSERT INTO customers VALUES
(1,  'Aarav Mehta',     'aarav@email.com',    '9876543210', 'Mumbai',    4, '2021-03-15', TRUE),
(2,  'Sneha Iyer',      'sneha@email.com',    '9845001234', 'Chennai',   2, '2021-07-22', FALSE),
(3,  'Rohan Sharma',    'rohan@email.com',    '9812345678', 'Delhi',     1, '2022-01-10', TRUE),
(4,  'Priya Nair',      'priya@email.com',    '9700012345', 'Kochi',     2, '2022-04-05', FALSE),
(5,  'Karan Patel',     'karan@email.com',    '9654321098', 'Ahmedabad', 4, '2022-06-18', TRUE),
(6,  'Ananya Das',      'ananya@email.com',   '9532109876', 'Kolkata',   3, '2022-09-30', FALSE),
(7,  'Vikram Rao',      'vikram@email.com',   '9411234567', 'Hyderabad', 2, '2023-02-14', TRUE),
(8,  'Meera Joshi',     'meera@email.com',    '9378901234', 'Pune',      4, '2023-05-20', FALSE),
(9,  'Arjun Singh',     'arjun@email.com',    '9267890123', 'Jaipur',    1, '2023-08-11', FALSE),
(10, 'Divya Reddy',     'divya@email.com',    '9156789012', 'Bengaluru', 2, '2023-11-02', TRUE),
(11, 'Nikhil Gupta',    'nikhil@email.com',   '9045678901', 'Lucknow',   1, '2024-01-25', FALSE),
(12, 'Tanvi Kulkarni',  'tanvi@email.com',    '8934567890', 'Nagpur',    4, '2024-03-08', FALSE),
(13, 'Sahil Verma',     'sahil@email.com',    NULL,         'Bhopal',    1, '2024-06-14', FALSE),
(14, 'Rhea Fernandes',  'rhea@email.com',     '8712345678', 'Goa',       4, '2024-09-01', TRUE),
(15, 'Amit Bose',       'amit@email.com',     NULL,         'Kolkata',   3, '2025-01-17', FALSE);

-- -----------------------------------------------
-- TABLE 3: categories
-- -----------------------------------------------
CREATE TABLE categories (
    category_id   INT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL UNIQUE,
    parent_id     INT,
    FOREIGN KEY (parent_id) REFERENCES categories(category_id)
);

INSERT INTO categories VALUES
(1, 'Electronics',      NULL),
(2, 'Clothing',         NULL),
(3, 'Home & Kitchen',   NULL),
(4, 'Books',            NULL),
(5, 'Mobiles',          1),
(6, 'Laptops',          1),
(7, 'Men''s Wear',      2),
(8, 'Women''s Wear',    2),
(9, 'Kitchen Appliances', 3);

-- -----------------------------------------------
-- TABLE 4: products
-- -----------------------------------------------
CREATE TABLE products (
    product_id    INT PRIMARY KEY,
    product_name  VARCHAR(150) NOT NULL,
    category_id   INT NOT NULL,
    price         DECIMAL(10,2) NOT NULL,
    cost_price    DECIMAL(10,2) NOT NULL,
    stock_qty     INT DEFAULT 0,
    is_active     BOOLEAN DEFAULT TRUE,
    launch_date   DATE,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

INSERT INTO products VALUES
(1,  'Samsung Galaxy S23',       5,  62999.00, 48000.00, 120, TRUE,  '2023-02-01'),
(2,  'Apple iPhone 15',          5,  79999.00, 62000.00,  85, TRUE,  '2023-09-22'),
(3,  'OnePlus 12',               5,  54999.00, 40000.00,  60, TRUE,  '2024-01-23'),
(4,  'Dell XPS 15',              6, 129999.00, 98000.00,  30, TRUE,  '2022-08-15'),
(5,  'MacBook Air M2',           6, 114999.00, 88000.00,  45, TRUE,  '2022-06-10'),
(6,  'Levi''s 511 Jeans',        7,   3499.00,  1500.00, 300, TRUE,  '2021-01-01'),
(7,  'Allen Solly Formal Shirt', 7,   1999.00,   800.00, 250, TRUE,  '2021-01-01'),
(8,  'Saree Banarasi Silk',      8,   8999.00,  4000.00,  80, TRUE,  '2022-03-10'),
(9,  'Kurti Floral Print',       8,   1299.00,   500.00, 400, TRUE,  '2022-05-15'),
(10, 'Instant Pot 6Qt',          9,   9999.00,  6500.00, 150, TRUE,  '2021-11-05'),
(11, 'Philips Air Fryer',        9,   6499.00,  4000.00, 200, TRUE,  '2022-07-20'),
(12, 'Atomic Habits',            4,    499.00,   150.00, 500, TRUE,  '2020-01-01'),
(13, 'Rich Dad Poor Dad',        4,    399.00,   120.00, 450, TRUE,  '2020-01-01'),
(14, 'Deep Work',                4,    449.00,   140.00, 380, TRUE,  '2020-06-01'),
(15, 'Noise Cancelling Headset', 1,   4999.00,  3000.00,  90, FALSE, '2021-04-10');

-- -----------------------------------------------
-- TABLE 5: orders
-- -----------------------------------------------
CREATE TABLE orders (
    order_id      INT PRIMARY KEY,
    customer_id   INT NOT NULL,
    order_date    DATE NOT NULL,
    status        VARCHAR(20) NOT NULL,   -- Pending, Shipped, Delivered, Cancelled, Returned
    coupon_code   VARCHAR(20),
    discount_pct  DECIMAL(5,2) DEFAULT 0,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders VALUES
(1001, 1,  '2023-03-10', 'Delivered',  'SAVE10',  10.00),
(1002, 2,  '2023-04-22', 'Delivered',  NULL,       0.00),
(1003, 3,  '2023-05-15', 'Delivered',  'FLAT20',  20.00),
(1004, 4,  '2023-06-01', 'Cancelled',  NULL,       0.00),
(1005, 5,  '2023-07-18', 'Delivered',  'SAVE10',  10.00),
(1006, 1,  '2023-08-25', 'Delivered',  NULL,       0.00),
(1007, 6,  '2023-09-10', 'Returned',   NULL,       0.00),
(1008, 7,  '2023-10-05', 'Delivered',  'FLAT20',  20.00),
(1009, 8,  '2023-11-11', 'Delivered',  NULL,       0.00),
(1010, 9,  '2023-12-20', 'Pending',    NULL,       0.00),
(1011, 10, '2024-01-14', 'Delivered',  'SAVE10',  10.00),
(1012, 2,  '2024-02-28', 'Delivered',  NULL,       0.00),
(1013, 3,  '2024-03-22', 'Shipped',    NULL,       0.00),
(1014, 11, '2024-04-05', 'Delivered',  NULL,       0.00),
(1015, 5,  '2024-05-30', 'Delivered',  'FLAT20',  20.00),
(1016, 12, '2024-06-15', 'Delivered',  NULL,       0.00),
(1017, 1,  '2024-07-04', 'Cancelled',  'SAVE10',  10.00),
(1018, 13, '2024-08-19', 'Delivered',  NULL,       0.00),
(1019, 7,  '2024-09-23', 'Delivered',  NULL,       0.00),
(1020, 14, '2024-10-31', 'Delivered',  'FLAT20',  20.00),
(1021, 15, '2024-11-11', 'Delivered',  NULL,       0.00),
(1022, 6,  '2024-12-25', 'Delivered',  'SAVE10',  10.00),
(1023, 10, '2025-01-08', 'Delivered',  NULL,       0.00),
(1024, 3,  '2025-02-14', 'Pending',    NULL,       0.00),
(1025, 4,  '2025-03-01', 'Delivered',  NULL,       0.00);

-- -----------------------------------------------
-- TABLE 6: order_items
-- -----------------------------------------------
CREATE TABLE order_items (
    item_id       INT PRIMARY KEY,
    order_id      INT NOT NULL,
    product_id    INT NOT NULL,
    quantity      INT NOT NULL,
    unit_price    DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id)   REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items VALUES
(1,  1001, 1,  1, 62999.00),
(2,  1001, 12, 2,   499.00),
(3,  1002, 6,  2,  3499.00),
(4,  1002, 9,  3,  1299.00),
(5,  1003, 5,  1, 114999.00),
(6,  1004, 2,  1, 79999.00),
(7,  1005, 10, 1,  9999.00),
(8,  1005, 13, 1,   399.00),
(9,  1006, 11, 2,  6499.00),
(10, 1007, 8,  1,  8999.00),
(11, 1008, 4,  1, 129999.00),
(12, 1009, 3,  1, 54999.00),
(13, 1009, 14, 2,   449.00),
(14, 1010, 7,  3,  1999.00),
(15, 1011, 2,  1, 79999.00),
(16, 1012, 9,  5,  1299.00),
(17, 1012, 13, 2,   399.00),
(18, 1013, 5,  1, 114999.00),
(19, 1014, 6,  1,  3499.00),
(20, 1014, 12, 3,   499.00),
(21, 1015, 1,  1, 62999.00),
(22, 1015, 11, 1,  6499.00),
(23, 1016, 9,  4,  1299.00),
(24, 1017, 2,  1, 79999.00),
(25, 1018, 10, 1,  9999.00),
(26, 1018, 14, 1,   449.00),
(27, 1019, 3,  1, 54999.00),
(28, 1020, 4,  1, 129999.00),
(29, 1021, 7,  2,  1999.00),
(30, 1021, 8,  1,  8999.00),
(31, 1022, 12, 4,   499.00),
(32, 1022, 13, 3,   399.00),
(33, 1023, 2,  1, 79999.00),
(34, 1024, 5,  1, 114999.00),
(35, 1025, 11, 1,  6499.00),
(36, 1025, 9,  2,  1299.00);

-- -----------------------------------------------
-- TABLE 7: returns
-- -----------------------------------------------
CREATE TABLE returns (
    return_id     INT PRIMARY KEY,
    order_id      INT NOT NULL UNIQUE,
    return_date   DATE NOT NULL,
    reason        VARCHAR(200),
    refund_amt    DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

INSERT INTO returns VALUES
(1, 1007, '2023-09-20', 'Wrong size delivered',  8999.00);

-- -----------------------------------------------
-- TABLE 8: payments
-- -----------------------------------------------
CREATE TABLE payments (
    payment_id     INT PRIMARY KEY,
    order_id       INT NOT NULL UNIQUE,
    payment_date   DATE NOT NULL,
    method         VARCHAR(30) NOT NULL,  -- UPI, Credit Card, Debit Card, COD, Net Banking
    amount_paid    DECIMAL(10,2) NOT NULL,
    status         VARCHAR(20) NOT NULL,  -- Success, Failed, Refunded
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

INSERT INTO payments VALUES
(1,  1001, '2023-03-10', 'UPI',         57149.10, 'Success'),
(2,  1002, '2023-04-22', 'Credit Card', 10295.00, 'Success'),
(3,  1003, '2023-05-15', 'Net Banking', 91999.20, 'Success'),
(4,  1004, '2023-06-01', 'UPI',         79999.00, 'Failed'),
(5,  1005, '2023-07-18', 'Debit Card',  9357.30,  'Success'),
(6,  1006, '2023-08-25', 'UPI',         12998.00, 'Success'),
(7,  1007, '2023-09-10', 'Credit Card', 8999.00,  'Refunded'),
(8,  1008, '2023-10-05', 'Net Banking', 103999.20,'Success'),
(9,  1009, '2023-11-11', 'COD',         55897.00, 'Success'),
(10, 1010, '2023-12-20', 'UPI',         5997.00,  'Failed'),
(11, 1011, '2024-01-14', 'Credit Card', 71999.10, 'Success'),
(12, 1012, '2024-02-28', 'UPI',         7293.00,  'Success'),
(13, 1013, '2024-03-22', 'Debit Card',  114999.00,'Success'),
(14, 1014, '2024-04-05', 'COD',         4996.00,  'Success'),
(15, 1015, '2024-05-30', 'Credit Card', 55598.40, 'Success'),
(16, 1016, '2024-06-15', 'UPI',         5196.00,  'Success'),
(17, 1017, '2024-07-04', 'UPI',         71999.10, 'Failed'),
(18, 1018, '2024-08-19', 'Net Banking', 10448.00, 'Success'),
(19, 1019, '2024-09-23', 'COD',         54999.00, 'Success'),
(20, 1020, '2024-10-31', 'Credit Card', 103999.20,'Success'),
(21, 1021, '2024-11-11', 'UPI',         12997.00, 'Success'),
(22, 1022, '2024-12-25', 'Debit Card',  3492.90,  'Success'),
(23, 1023, '2025-01-08', 'Credit Card', 79999.00, 'Success'),
(24, 1024, '2025-02-14', 'UPI',         114999.00,'Success'),
(25, 1025, '2025-03-01', 'Net Banking', 9097.00,  'Success');
