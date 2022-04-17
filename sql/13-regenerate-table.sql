-- POSTGRES
DROP TABLE "user";
DROP TABLE "conversation";
DROP TABLE "employer";

CREATE TABLE IF NOT EXISTS "user" (
  "id" SERIAL,
  "full_name" VARCHAR(50),
  "salary" INT,
  "status" employment_status
 );

 CREATE TABLE IF NOT EXISTS employer (
  id SERIAL,
  company_name VARCHAR(50),
  company_address VARCHAR(300),
  yearly_revenue NUMERIC(5,2),
  is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS conversation (
  id SERIAL,
  user_name VARCHAR(50),
  employer_name VARCHAR(300),
  message VARCHAR(1000),
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

-- MYSQL
DROP TABLE user;
DROP TABLE conversation;
DROP TABLE employer;

CREATE TABLE IF NOT EXISTS user (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `full_name` VARCHAR(50),
  `salary` INT,
  `status` ENUM('employed', 'self-employed', 'unemployed')
 );

 CREATE TABLE IF NOT EXISTS employer (
  id INT PRIMARY KEY AUTO_INCREMENT,
  company_name VARCHAR(50),
  company_address VARCHAR(300),
  yearly_revenue NUMERIC(5,2),
  is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS conversation (
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(50),
  employer_name VARCHAR(300),
  message VARCHAR(1000),
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)