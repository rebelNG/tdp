USE gamesdb;

INSERT INTO customers (first_name, surname, email, age, post_code)
VALUES ('Emmanuel', 'Oneman', 'oneman@datmail.com', 30, 'TS18 5GD'),
('Mmanuel', 'Twoman', 'twoman@datmail.com', 45, 'TS4 3NG'),
('Mmanuel', 'Twoman', 'twoman@datmail.com', 15, 'TS4 3NG'),
('Boss', 'Man', 'bossman@datmail.com', 19, 'TS2 4GO'),
('Boss', 'Man', 'bossman@datmail.com', 29, 'TS2 4GO');

INSERT INTO product (product_name, price, stock_level)
VALUES ('COD Modern warfare', 40.20, 10),
('COD Modern warfare', 40.20, 9),
('COD Modern warfare', 40.20, 8),
('COD Modern warfare', 40.20, 7),
('COD Modern warfare', 40.20, 6),
('COD Modern warfare', 40.20, 5),
('COD Modern warfare', 40.20, 4);

INSERT INTO orders (customers_id, products_id, order_date, date_collected)
VALUES (1, 1, '2023-12-13', '2023-12-25'),
(4, 4, '2023-12-13', '2023-12-25'),
(3, 3, '2023-12-13', '2023-12-25');

