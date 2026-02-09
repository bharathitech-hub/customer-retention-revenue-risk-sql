-- Purpose: Identify customers showing early churn risk signals
-- Business Question: Which customers are likely to churn based on behavior patterns?
-- Decision Use: Proactive retention strategy and targeted interventions

SELECT
    c.customer_id,
    c.customer_name,
    COUNT(DISTINCT o.order_id) AS total_orders,
    MAX(o.order_date) AS last_order_date,
    COUNT(DISTINCT s.ticket_id) AS support_tickets,
    AVG(p.payment_status = 'Failed') AS failed_payment_ratio
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
LEFT JOIN payments p
    ON c.customer_id = p.customer_id
LEFT JOIN support_interactions s
    ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING
    MAX(o.order_date) < CURRENT_DATE - INTERVAL '90 days'
    OR COUNT(DISTINCT s.ticket_id) >= 3
    OR AVG(p.payment_status = 'Failed') > 0.3
ORDER BY last_order_date ASC;
