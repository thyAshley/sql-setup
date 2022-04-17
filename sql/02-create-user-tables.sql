-- POSTGRES

CREATE TYPE employment_status AS ENUM('employed', 'self-employed', 'unemployed')

CREATE TABLE "user" (
  "full_name" VARCHAR(50),
  "salary" INT,
  "status" employment_status
 );
  

-- SQL
CREATE TABLE user (
  `full_name` VARCHAR(50),
  `salary` INT
  `status` ENUM('employed', 'self-employed', 'unemployed')
)