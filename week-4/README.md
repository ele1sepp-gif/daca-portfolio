# Week 4 – SQL agregatsioon

## Ülevaade

Neljandal nädalal keskendusime SQL agregatsioonifunktsioonidele ning õppisime koostama koondanalüüse kasutades `GROUP BY`, `HAVING`, CTE-sid (Common Table Expression) ja aknafunktsioone (Window Functions).

UrbanStyle näidisandmebaasi põhjal koostasime ettevõtte juhtkonnale koondraporteid, mille eesmärk oli toetada äriliste otsuste tegemist. Analüüsi käigus ei piisanud enam üksikute ridade vaatamisest – oluline oli leida mustrid, trendid ja teha andmete põhjal järeldusi.

---

## Õpieesmärgid

Selle projekti käigus harjutasin:

* andmete koondamist (`GROUP BY`);
* agregaatfunktsioonide kasutamist (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`);
* tulemuste filtreerimist `HAVING` klausliga;
* CTE-de (Common Table Expression) kasutamist;
* aknafunktsioonide (`ROW_NUMBER`) rakendamist;
* tulemuste tõlgendamist ärilisest vaatenurgast.

---

## Minu panus

Minu roll meeskonnas oli **Roll C – Inventuuristatistika**.

Selle ülesande käigus analüüsisin:

* tootekategooriate koondnäitajaid;
* toodete keskmisi hindu ja kasumimarginaale;
* müüdud koguseid kategooriate lõikes;
* toodete järjestamist kategooriate sees aknafunktsioonide abil;
* iga kategooria enim müüdud tooteid.

Analüüsi eesmärk oli hinnata toodete ja kategooriate tulemuslikkust ning teha ettepanekuid laovarude ja tooteportfelli paremaks juhtimiseks.

---

## Kasutatud tehnoloogiad

* PostgreSQL
* Supabase
* SQL
* GitHub

---

## AI kasutamine

Kasutasin ChatGPT abi keerukamate SQL päringute koostamisel ja kontrollimisel, eelkõige CTE-de ning aknafunktsioonide kasutamisel. AI aitas kontrollida päringute loogikat ja pakkus soovitusi, kuidas muuta analüüs loetavamaks ning paremini tõlgendatavaks.

---

## Olulisemad õppetunnid

See nädal aitas mul paremini mõista, kuidas koondandmeid kasutada ettevõtte tegevuse analüüsimisel. Kui varasematel nädalatel keskendusin üksikute kirjete leidmisele, siis nüüd õppisin vaatama andmeid tervikuna ning leidma mustreid erinevate kategooriate vahel.

Kõige huvitavamaks osaks osutusid CTE-d ja aknafunktsioonid, mis võimaldasid koostada keerukamaid analüüse ning järjestada tulemusi erinevate tingimuste alusel. Samuti sain paremini aru, kuidas SQL-i abil koostada juhtkonnale mõeldud kokkuvõtteid ja ärilisi soovitusi.
