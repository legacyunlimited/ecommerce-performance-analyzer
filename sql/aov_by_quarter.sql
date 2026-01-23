WITH order_totals AS (
  SELECT
    o.order_id,
    DATE_TRUNC('quarter', o.order_purchase_timestamp) AS quarter,
    SUM(oi.price) AS order_total
  FROM orders o
  JOIN order_items oi ON o.order_id = oi.order_id
  WHERE o.order_status = 'delivered'
  GROUP BY o.order_id, quarter
)
SELECT
  quarter,
  AVG(order_total) AS avg_order_value
FROM order_totals
GROUP BY quarter
ORDER BY quarter;

