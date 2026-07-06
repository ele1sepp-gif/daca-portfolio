# Nädal 7: Python Pandas – RFM kliendisegmenteerimine

## Minu roll

Tegin iseseisvalt kõik projekti etapid (Rollid A–D).

### Roll A – Data Loading

Laadisin UrbanStyle müügi- ja kliendiandmed Supabase'ist Pandase DataFrame'idesse, kontrollisin andmete struktuuri ning ühendasin tabelid `customer_id` alusel üheks analüüsitavaks andmestikuks.

### Roll B – Data Cleaning

Puhastasin andmestiku, kontrollisin duplikaate ja puuduvaid väärtusi, teisendasin kuupäevad `datetime` formaati ning eemaldasin vigased kirjed.

### Roll C – Analysis

Arvutasin klientide Recency, Frequency ja Monetary (RFM) näitajad, määrasin RFM-skoorid ning lõin kliendisegmendid.

### Roll D – Visualization

Lõin Plotly visualiseeringud, analüüsisin tulemusi ning koostasin kliendisegmentide põhjal ärilised soovitused.

# RFM analüüs

## 1. Tavaline vs kaalutud RFM segmentatsioon

Ülemine vasak diagramm näitab standardset RFM segmenteerimist, kus kliente hinnatakse võrdselt Recency, Frequency ja Monetary näitajate põhjal.

Selle põhjal on suurimad segmendid **Potentsiaalsed kliendid** ja **Lojaalsed kliendid**, mis viitab sellele, et suur osa kliendibaasist on aktiivne või kasvupotentsiaaliga.

Ülemine parem diagramm näitab **kaalutud RFM mudelit**, kus **Monetary (kliendi rahaline väärtus)** on suurema kaaluga.

### Peamine järeldus
Kaalutud RFM mudel muudab segmenteerimise täpsemaks, sest see arvestab lisaks ostude sagedusele ja värskusele ka kliendi tegelikku rahalist väärtust ettevõttele.

Selle tulemusena muutub **VIP segment väiksemaks, kuid kvaliteetsemaks** – sinna kuuluvad ainult kõrgeima rahalise panusega kliendid.

**Lost segment (118 klienti)** jäi mõlemas mudelis samaks, mis näitab, et kõige passiivsemad kliendid on mõlema meetodi järgi selgelt ja stabiilselt tuvastatavad.

---

## 2. RFM hajuvusdiagramm

Hajuvusdiagramm (all vasakul) näitab seost kliendi viimase ostu aja ja kogukulutuse vahel.

- X-telg: aeg viimasest ostust  
  - vasakul → hiljuti ostnud kliendid  
  - paremal → ammu ostnud kliendid  

- Y-telg: kogukulutus eurodes  
  - kõrgem väärtus → suurem kliendi väärtus  

Diagramm aitab eristada:
- aktiivseid kõrge väärtusega kliente  
- passiivseid või riskis kliente  

---

## 3. Top 10 VIP kliendid

Parempoolne diagramm näitab 10 kõige väärtuslikumat VIP klienti kogukulutuse põhjal.

Nende klientide kulutused jäävad vahemikku ligikaudu **20 000 – 27 000 eurot**.

Oluline tähelepanek: Top 10 klientide väärtused on suhteliselt sarnased, mis näitab, et ettevõttel ei ole ainult üks suurklient, vaid mitu väga väärtuslikku klienti.

### Äriline järeldus
Nende klientide hoidmine on ettevõtte jaoks kriitilise tähtsusega. Soovitused:
- personaalsed pakkumised  
- lojaalsusprogrammid  
- eritingimused ja varajane ligipääs kampaaniatele

## Peamised leiud

* UrbanStyle andmestikus oli pärast puhastamist **8950 müügikirjet** ja **2540 unikaalset klienti**.
* **VIP Champions** segment sisaldas **455 klienti** ning moodustas ligikaudu **42,82% kogu kliendikäibest**.
* **At Risk** segmenti kuulus **529 klienti**, kelle puhul on suurenenud kliendikao risk.
* Suurim segment oli **Potential**, mis viitab heale võimalusele kasvatada lojaalsete klientide arvu sihipäraste turunduskampaaniatega.

## AI kasutamine

Kasutasin peamiselt ChatGPT abi. AI aitas mul kirjutada selgemat ja loogilisemat Pandase koodi, selgitas RFM-analüüsi ülesehitust ning aitas korrastada README sisu.
