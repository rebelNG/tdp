CREATE DATABASE IF NOT EXISTS gamesdb;

USE gamesdb;


DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS customers;

CREATE TABLE IF NOT EXISTS customers (
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    age INT NOT NULL
);


CREATE TABLE IF NOT EXISTS product (
	product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(40) NOT NULL,
    price DECIMAL(6,2) NOT NULL,
    stock_level INT NOT NULL
);


CREATE TABLE IF NOT EXISTS orders (
	order_id INT PRIMARY KEY AUTO_INCREMENT,
    customers_id INT NOT NULL,
    FOREIGN KEY (customers_id) REFERENCES customers(customer_id),
    products_id INT NOT NULL,
    FOREIGN KEY (products_id) REFERENCES product(product_id),
    order_date DATE NOT NULL
);

