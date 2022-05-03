SELECT * FROM products
ORDER BY price, weight ASC;

SELECT COUNT(*) FROM users;

SELECT * FROM users
ORDER BY first_name
OFFSET 40 
LIMIT 5