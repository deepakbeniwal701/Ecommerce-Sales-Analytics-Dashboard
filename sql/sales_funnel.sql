-- 2. Conversion funnel by device
SELECT device_type,
       COUNT(*) AS visits,
       SUM(CASE WHEN added_to_cart = 1 THEN 1 ELSE 0 END) AS add_to_cart,
       SUM(CASE WHEN purchased = 1 THEN 1 ELSE 0 END) AS purchases
FROM ecommerce_data
GROUP BY device_type;
