SELECT
  DATE_TRUNC('quarter', o.order_purchase_timestamp) AS quarter,
  SUM(oi.price) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY 1
ORDER BY 1;

