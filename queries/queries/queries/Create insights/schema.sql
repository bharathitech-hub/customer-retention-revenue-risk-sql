-- Database schema for Customer Retention & Revenue Risk Analysis

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    signup_date DATE,
    country VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    customer_id INT,
    payment_date DATE,
    payment_amount DECIMAL(10,2),
    payment_status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE support_interactions (
    ticket_id INT PRIMARY KEY,
    customer_id INT,
    issue_type VARCHAR(50),
    ticket_date DATE,
    resolution_status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
