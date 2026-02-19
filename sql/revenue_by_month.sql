-- 1. Top 10 categories by revenue
SELECT product_category,
       SUM(revenue) AS total_revenue,
       COUNT(DISTINCT customer_id) AS unique_customers
FROM ecommerce_data
GROUP BY product_category
ORDER BY total_revenue DESC
LIMIT 10;

-- VIEWS
CREATE VIEW vw_category_sales AS
SELECT product_category, SUM(revenue) AS total_revenue, SUM(quantity) AS total_quantity
FROM ecommerce_data GROUP BY product_category;

CREATE VIEW vw_daily_revenue AS
SELECT visit_date, SUM(revenue) AS total_revenue
FROM ecommerce_data GROUP BY visit_date;
