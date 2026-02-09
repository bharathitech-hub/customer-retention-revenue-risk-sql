-- Purpose: Analyze customer retention by cohort over time
-- Business Question: How well do different customer cohorts retain?
-- Decision Use: Improve onboarding and long-term engagement strategies

WITH first_order AS (
    SELECT
        customer_id,
        MIN(order_date) AS first_order_date
    FROM orders
    GROUP BY customer_id
),
cohort_data AS (
    SELECT
        o.customer_id,
        DATE_TRUNC('month', f.first_order_date) AS cohort_month,
        DATE_TRUNC('month', o.order_date) AS activity_month
    FROM orders o
    JOIN first_order f
        ON o.customer_id = f.customer_id
)
SELECT
    cohort_month,
    activity_month,
    COUNT(DISTINCT customer_id) AS active_customers
FROM cohort_data
GROUP BY cohort_month, activity_month
ORDER BY cohort_month, activity_month;
