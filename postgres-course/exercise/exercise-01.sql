CREATE TYPE manufacturer as ENUM('Nokia', 'Apple', 'Samsung');

CREATE TABLE phones (
    name VARCHAR(50),
    manufacturer manufacturer,
    price INTEGER,
    units_sold INTEGER
)

INSERT INTO phones (name, manufacturer, price, units_sold)
VALUES 
('N1280', 'Nokia', 199, 1925),
('Iphone 4', 'Apple', 399, 9436),
('Galaxy S', 'Samsung', 299, 2359),
('S5620 Monte', 'Samsung', 250, 2385),
('N8', 'Nokia', 150, 7543);

SELECT name, price * units_sold AS revenue FROM phones