--Grupitöö week3, Roll A

--Ühenda `sales` ja `customers` tabelid INNER JOIN-iga:  Lihtne INNER JOIN: kliendid, kes on ostnud.
SELECT        
c.first_name,        
c.last_name,        
c.email,        
c.city,        
s.sale_id,        
s.sale_date,        
s.total_price    
FROM sales s    
INNER JOIN customers c ON s.customer_id = c.customer_id    
LIMIT 20;

--Leia TOP 10 klienti kogumüügi järgi:1.Triin Pärn(tartu, 73 ostu, 27668,02), 2.Priit Rand (pärnu, 76 ostu, kogusumma väiksem 26286,10), 3.kevin Org(tallinn, 78 ostu, 23467,13 kogusumma), 4.Laura Tammik(pärnu, 74, 23385,82), 5->(jätan vahele), 6. Anu Kuusik(tallinn, 77, 21626,10) jne. Kogusumma mõttes, mis ta poodi on "jätnud" on suurim Tiina Pärn, kuid ostude arvu mõttes on suurim ost Kevin Org.
 SELECT        c.first_name || ' ' || c.last_name AS klient,        
 c.city,        COUNT(DISTINCT s.sale_id) AS ostude_arv,        
 SUM(s.total_price) AS kogumüük    
 FROM sales s    
 INNER JOIN customers c ON s.customer_id = c.customer_id    
 GROUP BY c.customer_id, c.first_name, c.last_name, c.city    
 ORDER BY kogumüük DESC    
 LIMIT 10;

 --Analüüsi linnade kaupa:Müük linnade kaupa. Kõige rohkem toob raha sisse Tallinna poed. See on poole rohkem kui teisel kohal asuv Tartu(tln-1006252,88, trt-523286,64). Samuti on Tallinnas kleite poole enam kui näiteks tartus(tln 1007, trt 525). Väike linnas on üsna vähe kliente, klientide arv jääb alla 200. 
 SELECT        
 c.city,        
 COUNT(DISTINCT c.customer_id) AS kliente,        
 COUNT(s.sale_id) AS oste,        
 SUM(s.total_price) AS kogumüük    
 FROM sales s    
 INNER JOIN customers c ON s.customer_id = c.customer_id    
 GROUP BY c.city    
 ORDER BY kogumüük DESC;

 --Uuri loyalty_tier jaotust: Müük lojaalsustasemete kaupa. Tiitliga on kokku 1527 klienti, kuigi ilma tiitlita on 1024 klienti. 
 SELECT        
 c.loyalty_tier,        
 COUNT(DISTINCT c.customer_id) AS kliente,        
 SUM(s.total_price) AS kogumüük    
 FROM sales s    
 INNER JOIN customers c ON s.customer_id = c.customer_id    
 GROUP BY c.loyalty_tier    
 ORDER BY kogumüük DESC;

 SELECT 560 + 491 + 476;

-- Millisest linnast tuleb enim müüke? Enim müüke tuleb Tallinnast, Tartust ja Pärnust. Kõige enam Tallinnast. Tallinn on võrreldes näiteks tartuga üle ca poole võrra. 
--Milline loyalty_tier on kõige kasumlikum? Kuigi loyalty programmita klientide kogumüük on suurim, on neid ka kõige rohkem. Keskmise kliendi väärtuse järgi on kõige kasumlikumad kuld taseme kliendid, kuna nad kulutavad ühe kliendi kohta rohkem raha kui teised grupid.

SELECT
    c.loyalty_tier,

    COUNT(DISTINCT c.customer_id) AS kliente,

    SUM(s.total_price) AS kogumüük,

    ROUND(
        SUM(s.total_price) /
        COUNT(DISTINCT c.customer_id),
        2
    ) AS keskmine_kliendi_väärtus

FROM customers c
INNER JOIN sales s
ON c.customer_id = s.customer_id
GROUP BY c.loyalty_tier
ORDER BY keskmine_kliendi_väärtus DESC;

--kes on parimad kliendid?
--Analüüsi põhjal on UrbanStylei tugevaim müügipiirkond Tallinn, mis toob ettevõttele kõige suurema käibe ja kliendiarvu. Tartu on samuti oluline turg ning seal võiks kaaluda täiendavaid turunduskampaaniaid, et kasvatada müüki veelgi. Väiksemates linnades on klientide arv oluliselt madalam, mistõttu võiks seal testida väiksema mahuga või rohkem online-põhiseid kampaaniaid. TOP-klientide analüüs näitab, et osa kliente teeb väga sagedasi oste või kulutab märkimisväärselt palju raha, mis viitab lojaalsete püsiklientide suurele väärtusele ettevõtte jaoks. Lisaks näitab loyalty tier analüüs, et kõrgema taseme kliendid kulutavad keskmiselt rohkem, seega tasub lojaalsusprogrammidesse edasi investeerida.