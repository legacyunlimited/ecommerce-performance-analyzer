# E-commerce Performance & Profitability Analyzer (PostgreSQL)

## Problem

Ecommerce businesses often see declining performance without knowing whether the real issue is weaker customer acquisition, lower repeat purchase behavior, lower order value, or underperforming product categories.

This project analyzes transactional ecommerce data in PostgreSQL to identify the main drivers behind a major revenue decline and show how operators can diagnose performance issues before they get worse.

## Dataset

This project uses the Brazilian Olist ecommerce dataset, which contains over 100,000 orders across customers, orders, order items, and products.

The analysis was performed in PostgreSQL using command-line SQL and focuses on revenue trends, customer behavior, average order value, and category-level contribution.

## Approach

Using PostgreSQL, I joined customer, order, order item, and product tables to analyze the business levers most likely to explain declining ecommerce performance:

- quarter-over-quarter revenue trends
- new vs returning customer revenue
- average order value (AOV)
- product category contribution

This approach helps isolate whether the main problem is acquisition, retention, order value, or category weakness.

## Key Findings

- Revenue declined by approximately 39% quarter-over-quarter in 2018-Q3.
- The largest driver of the decline was a sharp drop in new customer revenue, pointing to an acquisition slowdown.
- Returning customer revenue also declined, but was a secondary contributor.
- Average order value decreased only slightly (~4–5%), suggesting pricing or basket size was not the main issue.
- High-volume product categories such as watches, health & beauty, and home goods contributed less revenue during the decline period.

## Example Output

Revenue trend snapshot from the analysis:

![Revenue Trend](images/revenue-trend.png)

## Summary Table

| Metric | Result | Interpretation |
|---|---:|---|
| Revenue change (2018-Q3 vs previous quarter) | -39% | Major performance decline |
| New customer revenue | Sharp drop | Main driver was weaker acquisition |
| Returning customer revenue | Declined | Secondary contributor |
| Average order value | Down ~4–5% | Pricing was not the main issue |
| Top product categories | Lower contribution | Category weakness supported the decline |

## Business Interpretation

The results suggest that the primary problem was weaker customer acquisition rather than pricing.

The highest-leverage next step would be to investigate marketing channels, campaign performance, and top-of-funnel traffic sources leading into 2018-Q3. Retention efforts could help stabilize revenue further, but acquisition appears to be the main driver of the decline.

## Why This Matters

This project demonstrates how SQL can be used to diagnose ecommerce performance problems instead of simply reporting top-line revenue.

A business could use this type of analysis to answer questions like:

- Are sales falling because fewer new customers are being acquired?
- Is repeat customer revenue weakening?
- Are top product categories losing momentum?
- Is average order value actually the problem?
- Where should management investigate first?

## Tools

- PostgreSQL
- SQL (psql)
- Git / GitHub

## Skills Demonstrated

- PostgreSQL data analysis
- multi-table joins
- customer segmentation (new vs returning)
- revenue trend analysis
- average order value analysis
- category contribution analysis
- translating technical findings into business recommendations

## Want This Type of Analysis for Your Store?

I use SQL and ecommerce transaction data to identify the likely drivers of revenue decline, customer weakness, and category underperformance.

If you want this type of analysis for your business, fill out my async intake form here: [your link]


