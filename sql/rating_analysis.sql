-- 3. Revenue trend by month & season
SELECT visit_month,
       visit_season,
       SUM(revenue) AS total_revenue
FROM ecommerce_data
GROUP BY visit_month, visit_season
ORDER BY visit_month;
