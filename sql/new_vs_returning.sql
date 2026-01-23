WITH first_orders AS (
  SELECT
    c.customer_unique_id,
    DATE_TRUNC('quarter', MIN(o.order_purchase_timestamp)) AS first_order_quarter
  FROM orders o
  JOIN customers c ON o.customer_id = c.customer_id
  WHERE o.order_status = 'delivered'
  GROUP BY c.customer_unique_id
)
SELECT
  DATE_TRUNC('quarter', o.order_purchase_timestamp) AS quarter,
  CASE
    WHEN DATE_TRUNC('quarter', o.order_purchase_timestamp) = f.first_order_quarter
      THEN 'new'
    ELSE 'returning'
  END AS customer_type,
  SUM(oi.price) AS revenue
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN first_orders f ON c.customer_unique_id = f.customer_unique_id
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY 1, 2
ORDER BY 1, 2;

