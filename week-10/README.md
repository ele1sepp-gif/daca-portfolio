# Nädal 10 – UrbanStyle andmeanalüüsi projekti kaitsmine

## Ülevaade

Projekti eesmärk oli analüüsida UrbanStyle'i kliendi-, müügi- ja tooteandmeid ning töötada välja andmetel põhinevad soovitused müügikasvu toetamiseks, kliendiväärtuse suurendamiseks ja äritulemuste parandamiseks.

Projekti käigus ühendasime SQL-i, Pythoni ja Power BI, et koguda, puhastada, analüüsida ning visualiseerida ettevõtte andmeid. Tulemused esitlesime portfoolio kaitsmisel, kus keskendusime nii tehnilistele lahendustele kui ka ärilistele soovitustele.

---

# Projekti eesmärk

Analüüsi eesmärk oli:

- hinnata andmete kvaliteeti;
- analüüsida klientide ostukäitumist;
- tuvastada müügitrendid ja edukaimad turunduskanalid;
- segmenteerida kliendid RFM-mudeli abil;
- koostada juhtkonnale praktilised soovitused andmete põhjal.

---

# SQL analüüs

Andmebaasina kasutasime PostgreSQL-i (Supabase).

Analüüsis kasutasin järgmisi tabeleid:

- `sales`
- `customers`
- `web_logs`
- `inventory`

### Kasutatud SQL võtted

- JOIN
- GROUP BY
- HAVING
- CASE WHEN
- COUNT DISTINCT
- SUM
- AVG
- ROUND
- DATE_TRUNC
- CTE-d
- Aknafunktsioonid (`LAG`, `RANK`)

### Peamised leiud

- Leidsime **5116 duplikaatset kirjet**.
- Tuvastasime **1487 puuduvat customer_id väärtust**.
- Andmestikust puudus **599 klienti**.
- Leidsime **12 toodet**, mida ei olnud kordagi müüdud.
- Suurima käibega kauplus oli **Tallinn** (1 006 525 €).
- Kõige efektiivsem turunduskanal oli **Google**, mille kaudu tehti **1823 tellimust**.

---

# Python analüüs

Pythonis kasutasime Pandast ning Supabase API-t andmete töötlemiseks ja automatiseerimiseks.

### RFM kliendisegmenteerimine

Analüüsi käigus:

- analüüsisime **10 118 müügirida** ja **3150 kliendirida**;
- pärast andmete puhastamist jäi alles **8950 müügirida** ja **2540 unikaalset klienti**;
- suurim kliendisegment oli **Potential** (759 klienti);
- kõige väärtuslikum segment oli **VIP** (455 klienti), kes moodustasid ligikaudu **43% kogu käibest**;
- riskigrupis (**At Risk**) oli **529 klienti**.

### API ja automatiseerimine

Ehitasime automatiseeritud andmepipeline'i, mis:

- laadis andmed Supabase API kaudu;
- puhastas ja ühendas andmestiku;
- arvutas automaatselt peamised KPI-d;
- lõi Plotly visualiseeringud;
- eksportis tulemused CSV- ja HTML-failidesse.

Arvutatud KPI-d:

- kogukäive;
- unikaalsed kliendid;
- keskmine ostuväärtus.

---

# Power BI visualiseeringud

Power BI abil koostasime juhtimisdashboardid, mis võimaldasid visualiseerida:

- müügitrende;
- kliendisegmente;
- müügikanalite tulemuslikkust;
- peamisi KPI-sid;
- toodete ja kaupluste võrdlust.

Dashboardid võimaldasid muuta keerukad andmed lihtsalt tõlgendatavaks ning toetada andmepõhiseid otsuseid.

---

# Peamised soovitused UrbanStyle juhtkonnale

Analüüsi põhjal soovitasime:

### Lojaalsusprogramm

Luua kliendisegmentidel põhinev lojaalsusprogramm, sest ligikaudu **40% klientidest on veel segmenteerimata**. See aitaks suurendada klientide hoidmist ning kasvatada kordusoste.

### VIP-klientide hoidmine

Arendada VIP lojaalsusprogrammi, sest **455 VIP klienti** moodustavad ligikaudu **43% ettevõtte käibest**.

### Riskiklientide tagasitoomine

Käivitada win-back kampaaniad **529 At Risk** kliendile, et vähendada klientide lahkumist.

### Digiturunduse arendamine

Suurendada investeeringuid digitaalsetesse turunduskanalitesse ja kampaaniatesse väljaspool tipphooaegu, et vähendada hooajalisust ning kasvatada e-poe müüki.

### Tooteportfelli optimeerimine

Vähendada madala nõudlusega toodete osakaalu ning keskenduda suurema nõudlusega toodetele.

### Automatiseeritud aruandlus

Rakendada automaatne KPI-raporteerimine, mis vähendab käsitööd ning kiirendab juhtimisaruannete koostamist.

---

# Kasutatud tööriistad

- PostgreSQL (Supabase)
- SQL
- Python (Pandas)
- Supabase API
- Plotly
- Power BI
- VS Code
- GitHub

---

# AI kasutamine

Kasutasime AI-d kogu projekti jooksul erinevates etappides.

AI aitas:

- koostada ja parandada SQL-päringuid;
- leida ning lahendada Pythoni vigu;
- selgitada keerulisemaid andmeanalüüsi teemasid;
- täiustada visualiseeringuid ja esitluse sisu.

Kõik tulemused kontrollisime ise ning lõplikud järeldused ja ärilised soovitused põhinesid meie enda analüüsil.

---

# Projekti kokkuvõte

Projekt võimaldas rakendada kogu õppe jooksul omandatud teadmisi ühes terviklikus andmeanalüüsi projektis.

Kasutasime SQL-i andmete analüüsimiseks, Pythonit automatiseerimiseks ja kliendisegmenteerimiseks ning Power BI-d tulemuste visualiseerimiseks.

Kõige olulisem õppetund oli mõista, kuidas muuta tehniline analüüs praktilisteks ärisoovitusteks, mis toetavad ettevõtte otsuste tegemist. Projekt kinnitas, et edukas andmeanalüüs ei seisne ainult andmete töötlemises, vaid eelkõige nende tõlgendamises ja selges esitamisel.
