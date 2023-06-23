USE gamesdb;

UPDATE customers
SET first_name='Emma', email='emma@datmail.com'
WHERE id=1;

SELECT * FROM customers;