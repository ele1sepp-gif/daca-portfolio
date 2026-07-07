# Week 3 – Müügi- ja kliendianalüüs SQL JOIN-ide abil

## Ülevaade

Selle analüüsi eesmärk oli ühendada UrbanStyle erinevad andmetabelid ning luua terviklik ülevaade ettevõtte müügist, klientidest, toodetest ja müügikanalitest.

Relatsioonilistes andmebaasides paikneb äriliselt oluline info sageli erinevates tabelites. Nende ühendamine võimaldab analüüsida mitte ainult üksikuid andmeid, vaid mõista seoseid klientide, toodete ja müügitulemuste vahel.

---

## Analüüsi eesmärk

Analüüsi käigus otsiti vastuseid järgmistele äriküsimustele:

* Kes on ettevõtte väärtuslikumad kliendid müügitulu põhjal?
* Millised linnad toovad kõige rohkem müüki?
* Kuidas mõjutavad kliendisegmendid ettevõtte tulemusi?
* Millised müügikanalid on kõige efektiivsemad?
* Kuidas ühendada erinevatest tabelitest pärinev info ühtseks analüüsiks?

---

## Kasutatud tehnoloogiad

* PostgreSQL
* SQL
* Supabase
* GitHub

---

## Andmed

Analüüsis kasutati mitut UrbanStyle andmebaasi tabelit:

* `customers` – kliendiinfo
* `sales` – müügitehingud
* `products` – tooteinfo
* `inventory` – laoseisuinfo

Tabelid ühendati omavahel primaar- ja võõrvõtmete abil.

---

## Analüüsi protsess

Analüüsis kasutati:

### INNER JOIN

Kasutati olemasolevate seoste põhjal andmete ühendamiseks ning müügi ja klientide analüüsimiseks.

Näiteks:

* kliendiinfo ühendamine müügitehingutega;
* toodete ühendamine müügiandmetega.

---

### LEFT JOIN

Kasutati olukordades, kus oli oluline säilitada kõik põhitegevuse kirjed ning kontrollida seotud andmete olemasolu.

---

### Agregatsioon ja tulemuste tõlgendamine

Analüüsi käigus kasutati:

* `COUNT()`
* `SUM()`
* `AVG()`
* `GROUP BY`
* `ORDER BY`

Nende abil koostati ülevaated klientide väärtusest, müügist ja kanalite tulemuslikkusest.

---

## Minu panus

Minu põhiroll oli:

**Roll A – Müük ja kliendid (INNER JOIN)**

Analüüsisin:

* suurima kogumüügiga kliente;
* müügitulemusi linnade lõikes;
* lojaalsustasemete mõju müügitulemustele.

Lisaks koostasin meeskonna analüüsi jaoks:

**Roll D – Müügikanalite analüüs**

---

## Peamised tulemused

Analüüsi tulemusena loodi ülevaade:

* klientide väärtusest ettevõttele;
* erinevate piirkondade müügitulemustest;
* müügikanalite efektiivsusest;
* kliendisegmentide käitumisest.

JOIN-analüüs võimaldas siduda kliendi-, toote- ja müügiinfo ning muuta üksikud tabelid terviklikuks ärivaateks.

---

## Ärialased järeldused

Analüüsi põhjal sai hinnata:

* millised kliendid toovad ettevõttele enim väärtust;
* milliste piirkondade müük vajab rohkem tähelepanu;
* millised kanalid toetavad ettevõtte müügieesmärke.

Selline analüüs annab ettevõttele võimaluse suunata turundustegevusi ja ressursse andmepõhiselt.

---

## Peamised õppetunnid analüüsi vaatenurgast

Erinevate andmetabelite ühendamine on oluline osa praktilisest andmeanalüüsist. Üksik tabel annab piiratud info, kuid ühendatud andmed võimaldavad vastata keerukamatele äriküsimustele.

---

## Failid

Individuaalsed analüüsid:

* `week3_roll_a_myyk_kliendid.sql`
* `week3[domeen]joins.sql`
* `week3_nsm_harjutus_roll_b_kadunud_kliendid.sql`
* `week3_nsm_harjutus_roll_c_tooted_inventuur.sql`
* `week3_nsmharjutus_roll_d_muugikanalid.sql`

---

