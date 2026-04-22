-- Categories Data
INSERT INTO categories (cat_name) VALUES
('Dairy'),
('Snacks'),
('Beverages'),
('Frozen'),
('Bakery');

-- Products Data
INSERT INTO products(prod_name,cat_id,expiry_date,stock_cnt,price) VALUES
('Milk', 1, '2026-04-25', 60, 50.00),
('Cheese', 1, '2026-05-10', 30, 120.00),
('Chips', 2, '2026-12-01', 100, 20.00),
('Cold Drink', 3, '2026-04-28', 80, 40.00),
('Ice Cream', 4, '2026-06-15', 25, 150.00),
('Bread', 5, '2026-04-23', 70, 30.00),
('Butter', 1, '2026-04-24', 55, 80.00),
('Biscuits', 2, '2026-11-01', 90, 25.00),
('Juice', 3, '2026-04-27', 65, 60.00),
('Pizza Base', 4, '2026-07-01', 40, 90.00);

-- Sales Transactions Data
INSERT INTO salesTransaction (prod_id,quantity,sale_date) VALUES
(1, 10, '2026-04-10'),
(2, 5, '2026-04-01'),
(3, 20, '2026-03-15'),
(4, 15, '2026-04-18'),
(5, 3, '2026-02-10'),
(6, 12, '2026-04-20'),
(7, 8, '2026-04-21'),
(8, 25, '2026-01-05'),
(9, 10, '2026-04-19');

SELECT * FROM products;
SELECT * FROM salesTransaction;
