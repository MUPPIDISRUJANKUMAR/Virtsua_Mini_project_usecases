USE retail_insights_db;

-- 1. Products exipring within 7 days and stock>50
SELECT prod_id,prod_name,expiry_date,stock_cnt
FROM products
WHERE expiry_date<=CURDATE()+INTERVAL 7 DAY
AND stock_cnt>50;

-- 2. Dead Stock analyze
-- Product not sold in last 60 days
SELECT p.prod_id,p.prod_name
FROM products p
LEFT JOIN salesTransaction s
ON p.prod_id=s.prod_id
AND s.sale_date>=CURDATE()-INTERVAL 60 DAY
WHERE s.prod_id is NULL;

-- 3. Revenue Contribution by Category (Last Month)
SELECT c.cat_id,c.cat_name,SUM(p.price*s.quantity) AS total_revenue
FROM salesTransaction s
JOIN products p ON s.prod_id=p.prod_id
JOIN categories c ON p.cat_id=c.cat_id
WHERE MONTH(s.sale_date)=MONTH(CURDATE() -INTERVAL 1 MONTH)
AND YEAR(s.sale_date)=YEAR(CURDATE() - INTERVAL 1 MONTH)
GROUP BY c.cat_id,c.cat_name
ORDER BY total_revenue DESC;
