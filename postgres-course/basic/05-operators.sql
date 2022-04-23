SELECT CONCAT(name, ', ', country) AS location FROM city;

SELECT name || ', ' || country AS location FROM city;

select CONCAT(name, ', ', UPPER(country)) AS location FROM city;