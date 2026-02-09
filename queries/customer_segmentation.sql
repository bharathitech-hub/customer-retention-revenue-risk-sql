-- Purpose: Segment customers based on revenue and engagement levels
-- Business Question: Which customers should be prioritized differently?
-- Decision Use: Targeted marketing, retention, and upsell strategies

SELECT
    c.customer_id,
    c.customer_name,
    SUM(o.order_amount) AS total_revenue,
    COUNT(o.order_id) AS order_frequency,
    CASE
        WHEN SUM(o.order_amount) >= 50000 AND COUNT(o.order_id) >= 10 THEN 'High Value'
        WHEN SUM(o.order_amount) >= 20000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_revenue DESC;
