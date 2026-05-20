Grupitöö blokk C, nsm harjutamine:
--Leia tooted, mis pole kunagi müüdud: 12 toodet pole kunagi müüdud. 
SELECT        
p.product_name,        
p.category,        
p.subcategory,        
p.retail_price,        
s.sale_id    
FROM products p   
LEFT JOIN sales s ON p.product_id = s.product_id    
WHERE s.sale_id IS NULL;    -- Kui sale_id on NULL, siis toodet pole kunagi müüdud! 

--Loe müümata tooted kokku :12
SELECT COUNT(*) AS müümata_tooteid    
FROM products p    
LEFT JOIN sales s ON p.product_id = s.product_id    
WHERE s.sale_id IS NULL;  

--Leia enim müüdud tooted: kõige enam on müüdud Moodne seemisnahkne oxfordid(väärtuses 18377,86) ja minimalistlik villane pühapäevakliet(väärtuses 4458,24) 43 toodet.
SELECT        
p.product_name,        
p.category,        
p.subcategory,        
COUNT(s.sale_id) AS müüdud_kordi,        
SUM(s.total_price) AS kogumüük    
FROM products p    
INNER JOIN sales s ON p.product_id = s.product_id    
GROUP BY p.product_id, p.product_name, p.category, p.subcategory    
ORDER BY müüdud_kordi DESC, kogumüük DESC    
LIMIT 10;

-- Kuid kõige suurema summa väärtuse mõttes oli õhuline sünteetiline sporditossu 27347,04 (35korda)
SELECT        
p.product_name,        
p.category,        
p.subcategory,        
COUNT(s.sale_id) AS müüdud_kordi,        
SUM(s.total_price) AS kogumüük    
FROM products p    
INNER JOIN sales s ON p.product_id = s.product_id    
GROUP BY p.product_id, p.product_name, p.category, p.subcategory    
ORDER BY kogumüük DESC    
LIMIT 10;

--Analüüsi kategooriate kaupa: Kõige enam müüdi meesteriideid (2266 toodet, väärtuses 749798,72), kuid jalanõusid müüdi küll mõni sada vähem 2031, kuid kogumüügi väärtus 774034,75, ehk rohkem. 
 SELECT        
 p.category,        
 COUNT(DISTINCT p.product_id) AS tooteid,        
 COUNT(s.sale_id) AS müüke,        
 SUM(s.total_price) AS kogumüük    
 FROM products p    
 LEFT JOIN sales s ON p.product_id = s.product_id    
 GROUP BY p.category    
 ORDER BY kogumüük DESC; 

 --Ühenda inventuuriga — millised tooted on laos?
 SELECT        
 p.product_name,        
 p.category,        
 i.location,        
 i.quantity_available,        
 i.reorder_point,        
 CASE            
 WHEN i.quantity_available <= i.reorder_point 
 THEN 'TELLI JUURDE'            
 ELSE 'OK'        
 END AS staatus    
 FROM products p    
 LEFT JOIN inventory i ON p.product_id = i.product_id    
 ORDER BY i.quantity_available ASC;
 -- Antud tabelist loen välja, et mitte ühegi toote kohta pole informatsiooni, ehk ei ole teada palju tooteid laos on, millises poes neid üldse on, ning pole määratud ka miinimumi. 

 --Ühenda kolm tabelit: leia tooted, mis on laos, aga pole kunagi müüdud — topelt kahju (laoseis + müümata): MITTE ÜHTEGI EI NÄITA. 
 SELECT       
 p.product_name,       
 p.category,       
 p.retail_price,       
 i.quantity_available,       
 (p.retail_price,  i.quantity_available) AS kinni_olev_raha   
 FROM products p   
 LEFT JOIN sales s ON p.product_id = s.product_id   
 LEFT JOIN inventory i ON p.product_id = i.product_id   
 WHERE s.sale_id IS NULL     
 AND i.quantity_available > 0   
 ORDER BY kinni_olev_raha DESC;