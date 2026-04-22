-- Database
CREATE DATABASE retail_insights_db;
USE retail_insights_db;

-- Categories Table
CREATE TABLE categories(
cat_id INT PRIMARY KEY AUTO_INCREMENT,
cat_name VARCHAR(100) NOT NULL
);

-- Product Table
CREATE TABLE products(
prod_id INT PRIMARY KEY AUTO_INCREMENT,
prod_name VARCHAR(100) NOT NULL,
cat_id INT,
expiry_date DATE,
stock_cnt INT,
price DECIMAL(10,2),
FOREIGN KEY (cat_id) REFERENCES categories(cat_id)
);

-- Sales Transactions Table
CREATE TABLE salesTransaction(
ts_id INT PRIMARY KEY AUTO_INCREMENT,
prod_id INT,
quantity INT,
sale_date DATE,
FOREIGN KEY (prod_id) REFERENCES products(prod_id)
);
