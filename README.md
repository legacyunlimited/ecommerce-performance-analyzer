# E-commerce Performance & Profitability Analyzer (PostgreSQL)

## Problem
Investigate why total revenue declined sharply in 2018-Q3 compared to the previous quarter using transactional e-commerce data.

## Dataset
Brazilian e-commerce dataset (Olist) containing over 100,000 orders across customers, orders, order items, and products.  
Analysis was performed entirely using PostgreSQL from the command line.

## Approach
- Joined customers, orders, order items, and products tables using PostgreSQL.
- Analyzed revenue trends by quarter to identify the period of decline.
- Modeled customers correctly using `customer_unique_id` to distinguish new vs returning customers.
- Evaluated average order value (AOV) to rule out pricing or basket-size effects.
- Reviewed product category performance to provide supporting context.

## Key Findings
- Revenue declined approximately **39% quarter-over-quarter in 2018-Q3**.
- The decline was primarily driven by a sharp drop in **new customer revenue**.
- Returning customer revenue also decreased, but was a smaller contributor.
- Average order value declined only slightly (~4–5%), indicating pricing was not the primary issue.
- High-volume product categories (e.g., watches, health & beauty, home goods) saw reduced contribution, consistent with an acquisition slowdown.

## Recommendation
Investigate customer acquisition channels and campaigns leading into 2018-Q3 and reallocate spend toward channels that previously drove new customer growth. Pair acquisition efforts with targeted re-engagement offers to stabilize returning customer revenue.

## Tools
- PostgreSQL
- Command-line SQL (`psql`)
- Git / GitHub

