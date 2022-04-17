-- MYSQL && POSTGRES
CREATE TABLE IF NOT EXISTS employer (
  company_name VARCHAR(50),
  company_address VARCHAR(300),
  yearly_revenue NUMERIC(5,2),
  is_hiring BOOLEAN
);

-- WITH DEFAULT
CREATE TABLE IF NOT EXISTS employer (
  company_name VARCHAR(50),
  company_address VARCHAR(300),
  yearly_revenue NUMERIC(5,2),
  is_hiring BOOLEAN DEFAULT FALSE
);
