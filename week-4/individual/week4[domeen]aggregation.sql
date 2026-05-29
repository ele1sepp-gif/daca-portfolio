Inventuuristatistika

--1. Tootekategooriate koondandmed. Koosta ülevaade kategooriate kaupa:

SELECT      
    p.category,      
    COUNT(DISTINCT p.product_id) AS tooteid,      
    ROUND(AVG(p.retail_price), 2) AS keskmine_hind,      
    MIN(p.retail_price) AS min_hind,      
    MAX(p.retail_price) AS max_hind    
FROM products p    
GROUP BY p.category    
ORDER BY tooteid DESC;

SELECT      
    p.category,      
    COUNT(DISTINCT p.product_id) AS tooteid,      
    ROUND(AVG(p.retail_price), 2) AS keskmine_hind,   --keskmine müügihind
    AVG(p.retail_price - p.cost_price) AS keskmine_marginaal,   --kui palju teenitakse keskmiselt iga toote pealt. müügihind - kulu .       
    MIN(p.retail_price) AS min_hind,      
    MAX(p.retail_price) AS max_hind  
FROM products p    
GROUP BY p.category    
ORDER BY tooteid DESC;

SELECT      
    p.category,      
    COUNT(DISTINCT p.product_id) AS tooteid,      
    ROUND(AVG(p.retail_price), 2) AS keskmine_hind,  
    AVG(p.retail_price - p.cost_price) AS keskmine_marginaal,
    AVG((p.retail_price - p.cost_price) / p.retail_price) AS margin_percent,     --näitab kasumit protsentides.    
    MIN(p.retail_price) AS min_hind,      
    MAX(p.retail_price) AS max_hind  
FROM products p    
GROUP BY p.category    
ORDER BY tooteid DESC;

--2. Müüdud vs laos — ühendades products + sales:

SELECT
    p.category,
    COUNT(DISTINCT p.product_id) AS tooteid,
    SUM(s.quantity) AS müüdud_kokku,
    ROUND(SUM(s.quantity) / COUNT(DISTINCT p.product_id), 2) AS keskmine_müük_toote_kohta
FROM products p
JOIN sales s ON p.product_id = s.product_id
GROUP BY p.category
HAVING SUM(s.quantity) > 100
ORDER BY müüdud_kokku DESC;

SELECT
    p.category,
    SUM(s.quantity) AS müüdud_kokku,
    COUNT(DISTINCT p.product_id) AS tooteid,
    SUM(s.quantity) / COUNT(DISTINCT p.product_id) AS keskmine_müük_toote_kohta
FROM products p
JOIN sales s ON p.product_id = s.product_id
JOIN inventory_movements im ON p.product_id = im.product_id
GROUP BY p.category
HAVING SUM(s.quantity) > 100
ORDER BY müüdud_kokku DESC;

-- 3.Toodete järjestus kategooria sees — kasuta window function'i:

 SELECT      
 p.product_name,      
 p.category,      
 p.Retail_price,      
 ROW_NUMBER(*) OVER (PARTITION BY p.category 
 ORDER BY p.retail_price DESC      ) AS koht_kategoorias    
 FROM products p;

--TOP 10 kallimat ja odavaimat iga kategooria kohta
 WITH ranked_products AS (
    SELECT
        p.product_name,
        p.category,
        p.retail_price,
        ROW_NUMBER() OVER (
            PARTITION BY p.category
            ORDER BY p.retail_price DESC
        ) AS rank_high,
        ROW_NUMBER() OVER (
            PARTITION BY p.category
            ORDER BY p.retail_price ASC
        ) AS rank_low
    FROM products p
)
SELECT
    product_name,
    category,
    retail_price,
    CASE
        WHEN rank_high <= 10 THEN 'TOP 10 kallimad'
        WHEN rank_low <= 10 THEN 'TOP 10 odavaimad'
    END AS segment
FROM ranked_products
WHERE rank_high <= 10
   OR rank_low <= 10
ORDER BY category, retail_price DESC;


--4.millised tooted on TOP 3 igas kategoorias ja kuidas nende müük on jaotunud?

WITH ranked AS (
    SELECT
        p.product_name,
        p.category,
        SUM(s.quantity) AS total_sold,
        ROW_NUMBER() OVER (
            PARTITION BY p.category
            ORDER BY SUM(s.quantity) DESC
        ) AS rank_in_category
    FROM products p
    JOIN sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name, p.category
)
SELECT *
FROM ranked
WHERE rank_in_category <= 3
ORDER BY category, total_sold DESC;

--protsentidega vaatlemine.
WITH product_sales AS (
    SELECT
        p.product_name,
        p.category,
        SUM(s.quantity) AS total_sold
    FROM products p
    JOIN sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name, p.category
),
ranked AS (
    SELECT *,
        ROW_NUMBER() OVER (
            PARTITION BY category
            ORDER BY total_sold DESC
        ) AS rank_in_category,
        SUM(total_sold) OVER (PARTITION BY category) AS category_total
    FROM product_sales
)

SELECT
    product_name,
    category,
    total_sold,
    ROUND(100.0 * total_sold / category_total, 2) AS share_percent
FROM ranked
WHERE rank_in_category <= 3
ORDER BY category, total_sold DESC;

--millised tooted vajavad tähelepanu: nt 3 iga kategooria kõige halvemini müüdavamt toodet. 

WITH product_stats AS (
    SELECT
        p.product_id,
        p.product_name,
        p.category,
        p.retail_price,
        p.cost_price,
        SUM(s.quantity) AS total_sold,
        ROW_NUMBER() OVER (
            PARTITION BY p.category
            ORDER BY SUM(s.quantity) ASC
        ) AS low_sales_rank
    FROM products p
    JOIN sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name, p.category, p.retail_price, p.cost_price
)

SELECT
    product_name,
    category,
    retail_price,
    total_sold,
    (retail_price - cost_price) AS margin
FROM product_stats
WHERE low_sales_rank <= 3
ORDER BY category, total_sold ASC;

--graafiku jaoks: müüdud kokku tooteid:
SELECT
    p.category,
    SUM(s.quantity) AS müüdud_kokku
FROM products p
JOIN sales s ON p.product_id = s.product_id
GROUP BY p.category
ORDER BY müüdud_kokku DESC;

--laoseis
SELECT
    product_id,
    SUM(quantity) AS laoseis
FROM inventory_movements
GROUP BY product_id;

SELECT
    product_id,
    SUM(CASE 
        WHEN movement_type = 'IN' THEN quantity
        ELSE -quantity
    END) AS laoseis
FROM inventory_movements
GROUP BY product_id
ORDER BY laoseis DESC;

SELECT
    p.category,
    SUM(im.quantity) AS laoseis
FROM inventory_movements im
JOIN products p ON p.product_id = im.product_id
GROUP BY p.category
ORDER BY laoseis DESC;

SELECT
    p.category,
    SUM(
        CASE 
            WHEN im.quantity > 0 THEN im.quantity
            ELSE im.quantity
        END
    ) AS laoseis
FROM inventory_movements im
JOIN products p ON p.product_id = im.product_id
GROUP BY p.category
ORDER BY laoseis DESC;

SELECT
    p.category,
    SUM(s.quantity) AS müük,
    SUM(im.quantity) AS laoseis
FROM products p
LEFT JOIN sales s ON p.product_id = s.product_id
LEFT JOIN inventory_movements im ON p.product_id = im.product_id
GROUP BY p.category;

--domeen:

SELECT
    SUM(s.quantity) AS kogumüük
FROM sales s;

SELECT
    SUM(s.quantity) AS kogumüük,
    COUNT(DISTINCT p.product_id) AS tooteid
FROM sales s
JOIN products p ON p.product_id = s.product_id;

SELECT
    p.category,
    SUM(s.quantity) / NULLIF(SUM(im.quantity),0) AS müük_vs_ladu_ratio
FROM products p
JOIN sales s ON p.product_id = s.product_id
JOIN inventory_movements im ON p.product_id = im.product_id
GROUP BY p.category;

SELECT
    p.category,
    SUM(s.quantity) * 1.0 / NULLIF(SUM(im.quantity), 0) AS müük_vs_ladu_ratio
FROM products p
JOIN sales s ON p.product_id = s.product_id
JOIN inventory_movements im ON p.product_id = im.product_id
GROUP BY p.category;

SELECT
    p.category,
    SUM(s.quantity) AS müük,
    SUM(im.quantity) AS laoseis
FROM products p
LEFT JOIN sales s ON p.product_id = s.product_id
LEFT JOIN inventory_movements im ON p.product_id = im.product_id
GROUP BY p.category
ORDER BY p.category;

--laoseis
WITH inventory AS (
    SELECT
        product_id,
        SUM(quantity) AS laoseis
    FROM inventory_movements
    GROUP BY product_id
)

SELECT
    p.category,
    SUM(s.quantity) AS müük,
    SUM(i.laoseis) AS laoseis
FROM products p
JOIN sales s
    ON p.product_id = s.product_id
JOIN inventory i
    ON p.product_id = i.product_id
GROUP BY p.category
ORDER BY müük DESC;

SELECT *
FROM inventory_movements
LIMIT 20;

--laoseis
SELECT
    movement_type,
    COUNT(*) AS ridu,
    SUM(quantity) AS kogus
FROM inventory_movements
GROUP BY movement_type;

SELECT
    p.category,
    SUM(im.quantity) AS laoseis
FROM products p
JOIN inventory_movements im
    ON p.product_id = im.product_id
GROUP BY p.category
ORDER BY laoseis DESC;

-müük tk
SELECT
    p.category,
    SUM(s.quantity) AS müük
FROM products p
JOIN sales s
    ON p.product_id = s.product_id
GROUP BY p.category;

SELECT product_id, product_name, category
FROM products
WHERE category = 'meeste_riided'
ORDER BY product_id;

SELECT
    COUNT(*) AS read_kokku,
    COUNT(DISTINCT product_id) AS unikaalsed_tooted
FROM products
WHERE category = 'meeste_riided';

SELECT category, COUNT(*)
FROM products
GROUP BY category
ORDER BY category;

SELECT product_id, product_name, category
FROM products
WHERE category = 'meeste_riided'
ORDER BY product_id;

SELECT
    COUNT(*) AS read_kokku,
    COUNT(DISTINCT product_id) AS unikaalsed_tooted
FROM products
WHERE category = 'laste_riided';
