-- Customer Segmentation Based on Total Orders

SELECT 
    customer_id,
    COUNT(order_id) AS total_orders,
    CASE 
        WHEN COUNT(order_id) >= 50 THEN 'High Activity'
        WHEN COUNT(order_id) BETWEEN 20 AND 49 THEN 'Medium Activity'
        ELSE 'Low Activity'
    END AS customer_segment
FROM orders
GROUP BY customer_id
ORDER BY total_orders DESC;
