-- for larger dependency transaction.
CREATE TABLE accounts (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    balance INTEGER NOT NULL
)

INSERT INTO accounts (
    name, balance
) values 
('Gia', 100),
('Alyson', 100)

-- creating transactions
-- whenever we ping the db, we are creating a connection to the db with a unique connection

-- OPEN TRANSACTION
BEGIN;

-- transaction

COMMIT; 
-- can manually call or when it crash it will be automatically called;
ROLLBACK;
