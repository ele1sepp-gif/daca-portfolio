--ROLL D , nsm harjuutan kõik läbi.

--Uuri müügikanaleid `sales` tabelis: mitu erinevat kanalit on? 2 kanalit e-pood ja tavaline (online, pood)
SELECT DISTINCT channel 
FROM sales 
ORDER BY channel;

--Kanalite põhiülevaade: Milline kanal toob enim müüke? Enim müüke toob tavaline pood- kliente 2278, oste 6656 ja kogumüük hetkel 1902430,30. e-poe müük on poole väikem.
SELECT        
s.channel AS müügikanal,        
COUNT(DISTINCT s.customer_id) AS kliente,        
COUNT(s.sale_id) AS oste,        
SUM(s.total_price) AS kogumüük    
FROM sales s    
GROUP BY s.channel    
ORDER BY kogumüük DESC; 

--Ühenda `sales` ja `customers` — klientide profiil kanali kaupa: Millistest linnadest kliendid milliseid kanaleid kasutavad? Üldiselt on näha, et rohkem kliente käivad tavalises poes enam kui e-poes. Kuigi see vahe ei ole tohutu.
SELECT        
s.channel AS müügikanal,        
c.city AS linn,        
COUNT(DISTINCT c.customer_id) AS kliente,        
SUM(s.total_price) AS kogumüük    
FROM sales s    
INNER JOIN customers c ON s.customer_id = c.customer_id    
GROUP BY s.channel, c.city    
ORDER BY müügikanal, kogumüük DESC;

--Ühenda 3 tabelit: `sales` + `customers` + `products`: 3 tabeli JOIN: millised tooted müüvad millises kanalis? Kõik UrbanStyle tooted müüvad pea poole paremini tavalises poes. e-poe müük on küll väiksem, aga sellegi poolest oste sealt toimub päris omajagu. Enim ostetud e-poe kaup on meeste riided ning järgmisena naiste riided, samas toodete ostu vahed on väga väikesed, et sellest ei saa väga suuri järeldusi teha. Samuti tavalises poes ostetakse kõige enam meeste riideid, kuid jällegi vahed on väga väikesed, et sellest suuri järeldusi pole mõtete teha. 
SELECT        
s.channel AS müügikanal,        
p.category AS tootekategooria,        
COUNT(DISTINCT c.customer_id) AS kliente,        
COUNT(s.sale_id) AS oste,        
SUM(s.total_price) AS kogumüük,        
ROUND(AVG(s.total_price), 2) AS keskmine_ost    
FROM sales s    
INNER JOIN customers c ON s.customer_id = c.customer_id    
INNER JOIN products p ON s.product_id = p.product_id    
GROUP BY s.channel, p.category    
ORDER BY müügikanal, kogumüük DESC;

--Leia kõige efektiivsem kanal (müük per klient): Nagu ka kõik eelmised syntaxi jooksmised näitab ka see, et tavalises poes toimib müük paremini kui e-poes. kogumüügi summa on tavalises poes pea poole suurem, kuigi ostude vahe nii suure ei ole-tavalises poes:835 müüki kliendi kohta ja e-poes 590. Mis võib tähendada, et inimesed eelistavad osta kohapealt tooteid, mis on kallimad ning ei osta sama tooteid näiteks e-poest. (vaid oletus hetkel numbrite põhjal).  
SELECT        
s.channel AS müügikanal,        
COUNT(DISTINCT s.customer_id) AS kliente,        
SUM(s.total_price) AS kogumüük,        
ROUND(SUM(s.total_price) / COUNT(DISTINCT s.customer_id))  AS müük_per_klient    
FROM sales s    
GROUP BY s.channel    
ORDER BY müük_per_klient DESC;

--Lisa kaupluste võrdlus: leia iga kaupluse müügikanalite jaotus:
SELECT       
s.store_location AS kauplus,       
s.channel AS müügikanal,       
COUNT(s.sale_id) AS oste,       
SUM(s.total_price) AS kogumüük,       
ROUND(SUM(s.total_price) / COUNT(s.sale_id), 2) AS keskmine_ost   
FROM sales s   
GROUP BY s.store_location, s.channel   
ORDER BY kauplus, kogumüük DESC;

--Äriline järeldus: kas Tallinna, Tartu ja Pärnu kauplused kasutavad kanaleid erinevalt? Kas mõni kauplus peaks rohkem online-müügile panustama? Kuhu peaks Anna turunduseelarvet suunama?

SELECT
    s.store_location AS kauplus,

    SUM(
        CASE
            WHEN s.channel = 'pood'
            THEN s.total_price
            ELSE 0
        END
    ) AS store_müük,

    SUM(
        CASE
            WHEN s.channel = 'online'
            THEN s.total_price
            ELSE 0
        END
    ) AS online_müük

FROM sales s

GROUP BY s.store_location

ORDER BY online_müük DESC;

-- kas Tallinna, Tartu ja Pärnu kauplused kasutavad kanaleid erinevalt? Poodide vahelisi kanaleid ei ole võiamlik võrrelda, sest online müük on salvestatud eraldi store_location väärtusena, mitte iga poe sees.
--Kas mõni kauplus peaks rohkem online-müügile panustama? Selle andmestiku põhjal ei saa seda kindlalt öelda, sest online müük ei ole seotud konkreetsete füüsiliste poodidega. Üldiselt võttes, online müük teenib siiski märkimisväärset kasumit, mis tõttu kindlasti tuleb ka edaspidi sellele tähelepanu suunata. _crypto_aead_det_decrypt
--Kuhu peaks Anna turunduseelarvet suunama? Analüüsi põhjal teenivad UrbanStylei füüsilised poed rohkem tulu kui online kanal, mis näitab, et kliendid eelistavad endiselt kohapealset ostlemist. Kõige tugevam müügipiirkond on Tallinn, mistõttu võiks sinna suunata suurema osa turunduseelarvest. Samal ajal võiks väiksemates linnades proovida täiendavaid kampaaniaid või tugevdada online turundust, et kasvatada müüki. Meeste riided on kõige populaarsem kategooria, kuid kuna erinevused teiste kategooriatega ei ole väga suured, peaks ettevõte jätkama mitmekesist turundust kõikide toodete jaoks.
