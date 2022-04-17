CREATE TABLE IF NOT EXISTS conversation (
  user_name VARCHAR(50),
  employer_name VARCHAR(300),
  message VARCHAR(1000),
  createdAt TIMESTAMP
)

-- With default
CREATE TABLE IF NOT EXISTS conversation (
  user_name VARCHAR(50),
  employer_name VARCHAR(300),
  message VARCHAR(1000),
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)