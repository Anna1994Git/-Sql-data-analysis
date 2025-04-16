-- Advanced: Top 3 Departments by Average Spend per Order

WITH department_spend AS (
    SELECT 
        d.department_id,
        d.department_name,
        AVG(p.price) AS avg_price
    FROM 
        order_products op
    JOIN 
        products p ON op.product_id = p.product_id
    JOIN 
        departments d ON p.department_id = d.department_id
    GROUP BY 
        d.department_id, d.department_name
)
SELECT * 
FROM department_spend
ORDER BY avg_price DESC
LIMIT 3;
