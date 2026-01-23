SELECT
  p.product_category_name,
  DATE_TRUNC('quarter', o.order_purchase_timestamp) AS quarter,
  SUM(oi.price) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE o.order_status = 'delivered'
  AND DATE_TRUNC('quarter', o.order_purchase_timestamp)
      IN ('2018-04-01', '2018-07-01')
GROUP BY 1, 2
ORDER BY 2, 3 DESC;

