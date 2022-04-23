SELECT name, area FROM city WHERE area > 4000;

SELECT name, country FROM city WHERE LENGTH(country) >= 5;

SELECT name, country FROM city WHERE country in ('India', 'China');

SELECT name, country, AREA FROM city WHERE area BETWEEN 2000 AND 5000;

