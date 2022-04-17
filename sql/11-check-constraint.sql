-- create table
CREATE TABLE constraint_table (
  full_name VARCHAR(300) NOT NULL,
  salary INT CHECK (salary > 0),
)

-- table wide constraint
ALTER TABLE "user"
ADD CONSTRAINT salary_positive CHECK (salary > 0);

ALTER TABLE "user"
DROP CONSTRAINT salary_positive