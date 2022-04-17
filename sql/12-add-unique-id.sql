-- manually assignment
CREATE TABLE users (
  id INT NOT NULL UNIQUE,
  full_name VARCHAR(300) NOT NULL,
  salary INT CHECK (salary > 0)
)

-- auto assignment (MYSQL)
CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  full_name VARCHAR(300) NOT NULL,
  salary INT CHECK (salary > 0)
)

-- auto assignment (POSTGRES)
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  full_name VARCHAR(300) NOT NULL,
  salary INT CHECK (salary > 0)
)