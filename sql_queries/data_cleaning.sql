-- Top 5 high-value customers based on total spend
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(o.order_total) AS total_spend
FROM 
    customers c
JOIN 
    orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id, c.first_name, c.last_name
ORDER BY 
    total_spend DESC
LIMIT 5;
