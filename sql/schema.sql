
-- SQL Schema for PostgreSQL

-- Customers Table
CREATE TABLE customers (
    customer_id VARCHAR(100) PRIMARY KEY,
    customer_type VARCHAR(50) CHECK (customer_type IN ('Household', 'Corporate', 'Financial Corporation'))
);

-- Accounts Table
CREATE TABLE accounts (
    account_id SERIAL PRIMARY KEY,
    customer_id VARCHAR(100) REFERENCES customers(customer_id),
    account_name VARCHAR(255),
 
x   account_type VARCHAR(50),
    balance DECIMAL(18,2),
    currency VARCHAR(10),
    reference_date DATE
);

-- Deposits Table
CREATE TABLE deposits (
    deposit_id SERIAL PRIMARY KEY,
    customer_id VARCHAR(100) REFERENCES customers(customer_id),
    account_id INT REFERENCES accounts(account_id),
    deposit_type VARCHAR(50),
    country VARCHAR(50),
    amount DECIMAL(18,2),
    currency VARCHAR(10),
    exchange_rate DECIMAL(10,5),
    start_date DATE,
 
x   maturity_date DATE,
    reference_date DATE
);

-- Loans Table
CREATE TABLE loans (
    loan_id SERIAL PRIMARY KEY,
    customer_id VARCHAR(100) REFERENCES customers(customer_id),
    account_id INT REFERENCES accounts(account_id),
    loan_type VARCHAR(50),
    country VARCHAR(50),
    amount DECIMAL(18,2),
    currency VARCHAR(10),
    exchange_rate DECIMAL(10,5),
    start_date DATE,
    maturity_date DATE,
    reference_date DATE
);
x
