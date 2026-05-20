--Grupitöö 3, vahekaart B

--Leia kliendid, kellel pole ühtegi ostu: 
 --kõik kliendid, ka need kellel pole oste :599 kliendil pole mitte ühtegi ostu.   

SELECT        
c.first_name,        
c.last_name,        
c.email,        
c.city,        
c.registration_date,        
s.sale_id    
FROM customers c    
LEFT JOIN sales s ON c.customer_id = s.customer_id    
WHERE s.sale_id IS NULL;    -- Kui sale_id on NULL, siis klient pole kunagi ostnud!

--2.Loe kokku, mitu "kadunud" klienti on: 599
SELECT COUNT(*) AS kadunud_kliente    
FROM customers c    
LEFT JOIN sales s ON c.customer_id = s.customer_id    
WHERE s.sale_id IS NULL;

--Analüüsi kadunud kliente linnade kaupa: Kõige enam kadunuid kliente on tallinnas 231, teisel kohal taru 133 ja kolmas pärnu 70, ülejäänud linnades jäi kadunud klientide arv alla 35. Kõige vähem kadunud kliente oli Paides.
SELECT        c.city,        COUNT(*) AS kadunud_kliente    
FROM customers c    
LEFT JOIN sales s ON c.customer_id = s.customer_id    
WHERE s.sale_id IS NULL    
GROUP BY c.city    
ORDER BY kadunud_kliente DESC; 

--Uuri registreerimise kuupäeva: -- Millal kadunud kliendid registreerusid? Kõige esimene kadunud klient registreeris end 2020-01-02 (tartu, kuld klient) ja viimane 25-02-27 (tallinn, pronks klient)
SELECT        c.first_name || ' ' || c.last_name AS klient,
        c.registration_date,        
        c.city,        
        c.loyalty_tier    
FROM customers c    
LEFT JOIN sales s ON c.customer_id = s.customer_id   
 WHERE s.sale_id IS NULL    
 ORDER BY c.registration_date DESC;

--Millisel kuupäeval registreerus kõige enam kadunud kliente: 2024-11-09, 6 klienti, kuid see antud suurusjärgu mõttes väga tühine number, mis tähendab, et otseselt aeg ei mõjutanud kadunud klientide teket.
 SELECT
    c.registration_date,
    COUNT(*) AS lost_customers
FROM customers c
LEFT JOIN sales s
ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL
GROUP BY c.registration_date
ORDER BY lost_customers DESC;

--Võrdle kadunud vs aktiivsete klientide arvu: kadunud kliente on 599 ja aktiivseid 9130.
SELECT
    CASE
        WHEN s.sale_id IS NULL THEN 'Kadunud' -- kui müüki ei leitud siis kadunud
        ELSE 'Aktiivne' --kõik muu aktiivne
    END AS staatus,   ---nimeta see uus veeg staatuseks
    COUNT(*) AS kliente
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
GROUP BY
    CASE
        WHEN s.sale_id IS NULL THEN 'Kadunud'
        ELSE 'Aktiivne'
    END;

--Lisa ajaline analüüs: Kõige enam kadunud kliente oli 2025-01-01 ja 2024-12-01 53 klienti. 2025-02-01 oli nende hulk 47
SELECT       DATE_TRUNC('month', c.registration_date) AS registreerimis_kuu,       
COUNT(*) AS kadunud_kliente   
FROM customers c   
LEFT JOIN sales s ON c.customer_id = s.customer_id   
WHERE s.sale_id IS NULL   
GROUP BY DATE_TRUNC('month', c.registration_date)   
ORDER BY registreerimis_kuu DESC;

SELECT
    TO_CHAR(DATE '2025-12-01', 'DD Month YYYY');

--Äriline järeldus: kas on konkreetseid kuid, kus registreerus palju kliente, kes kunagi ei ostnud? Mida see UrbanStyle turunduskampaaniate kohta ütleb?
--Mida aeg edasi on neid kliente, kes ostuni ei jõua siiski päris palju, ehk see muutus on kasvanud ajaga. Kui 2020 aastal jäi selliste klientide arv alla 10, enamsti isegi alla 5 kliendid. Tõus hkkas pihta 2024 ja sealt edasi on vaid tõusu teel ka olnud. Minu järeldus selle kohta on see, et võib-olla on reklaam suunatud valele sihtgrupile, kes küll leiavad tee antud poeni, kuid miskipärast ostu ei soorita. Või äkki oli antud ajal allahinduse kampaania reklaam, kuid sobivat toodet nad ei leidnud endale ning selle taha ka ost jäi. 