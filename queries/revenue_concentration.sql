-- Purpose: Identify customers contributing disproportionately to total revenue
-- Business Question: Are we dependent on a small set of customers for revenue?
-- Decision Use: Assess revenue concentration risk

SELECT
    c.customer_id,
    c.customer_name,
    SUM(o.order_amount) AS total_revenue
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_revenue DESC;
