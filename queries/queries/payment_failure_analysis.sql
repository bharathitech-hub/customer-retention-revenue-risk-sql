-- Purpose: Analyze payment failures and their impact on revenue
-- Business Question: Do payment failures correlate with revenue loss?
-- Decision Use: Improve payment systems and reduce revenue leakage

SELECT
    c.customer_id,
    c.customer_name,
    COUNT(p.payment_id) AS total_payments,
    SUM(CASE WHEN p.payment_status = 'Failed' THEN 1 ELSE 0 END) AS failed_payments,
    ROUND(
        SUM(CASE WHEN p.payment_status = 'Failed' THEN 1 ELSE 0 END) * 1.0
        / COUNT(p.payment_id),
        2
    ) AS failure_rate
FROM customers c
JOIN payments p
    ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING
    SUM(CASE WHEN p.payment_status = 'Failed' THEN 1 ELSE 0 END) > 0
ORDER BY failure_rate DESC;
