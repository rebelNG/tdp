CREATE DATABASE IF NOT EXISTS gamesdb;

USE gamesdb;


DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS customers;

CREATE TABLE IF NOT EXISTS customers (
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(60) NOT NULL,
    surname VARCHAR(60) NOT NULL,
    email VARCHAR(60) NOT NULL,
    age INT NOT NULL,
    post_code VARCHAR(10) NOT NULL
);


CREATE TABLE IF NOT EXISTS product (
	product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(80) NOT NULL,
    price DECIMAL(6,2),
    stock_level INT NOT NULL
);


CREATE TABLE IF NOT EXISTS orders (
	order_id INT PRIMARY KEY AUTO_INCREMENT,
    customers_id INT NOT NULL,
    FOREIGN KEY (customers_id) REFERENCES customers(id),
    products_id INT NOT NULL,
    FOREIGN KEY (products_id) REFERENCES product(product_id),
    order_date DATE NOT NULL
);

