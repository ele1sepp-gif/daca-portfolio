# Nädal 8 – Automatiseeritud andmepipeline Pythoniga

## Ülevaade

Selles projektis loodi automatiseeritud andmepipeline, mille eesmärk oli muuta UrbanStyle ettevõtte andmete töötlemine korduvkasutatavaks ja efektiivsemaks.

Pipeline ühendab kogu analüüsiprotsessi üheks töövooguks:

- andmete pärimine API kaudu;
- andmete puhastamine ja töötlemine;
- KPI-de arvutamine;
- visualiseerimine;
- tulemuste eksport.

Eesmärk oli vähendada käsitsi tehtavat tööd ning luua süsteem, mida saab regulaarselt uuesti kasutada.

---

# Äriprobleem

Analüüsiprojektides kulub palju aega korduvatele tegevustele:

- andmete laadimine;
- puhastamine;
- mõõdikute arvutamine;
- raportite uuendamine.

Käsitsi tehtav töö suurendab vigade tekkimise võimalust ning muudab analüüside värskendamise aeglasemaks.

Selle lahendamiseks loodi automatiseeritud pipeline, mis viib andmed algallikast valmis analüüsitulemusteni.

---

# Pipeline ülesehitus

Lahendus koosneb neljast põhikomponendist.

## 1. Data Fetching (`data_fetcher.py`)

Vastutab andmete hankimise eest.

Funktsioonid:

- pärib müügi-, kliendi- ja tooteandmeid Supabase API kaudu;
- kasutab kuupäevafiltreid;
- tagastab andmed Pandase DataFrame kujul;
- sisaldab veakäsitlust API probleemide jaoks.

---

## 2. Data Processing (`transform.py`)

Vastutab andmete ettevalmistamise eest.

Tegevused:

- duplikaatide eemaldamine;
- puuduvate väärtuste kontroll;
- kuupäevade töötlemine;
- tabelite ühendamine;
- KPI-de arvutamine.

Loodud mõõdikud:

- kogutulu;
- klientide arv;
- keskmine tellimuse väärtus;
- nädalased müügitrendid.

---

## 3. Visualization & Export (`visualize_export.py`)

Vastutab tulemuste esitamise eest.

Loodud väljundid:

- nädalase müügitulu trendi visualiseering;
- KPI kokkuvõte;
- CSV eksport;
- HTML raport.

---

## 4. Automation (`pipeline.py`)

Ühendab kõik etapid üheks automaatseks töövooguks.

Protsess:

1. Fetch  
2. Transform  
3. Visualize  
4. Export  

Kogu analüüsi saab käivitada ühe skriptiga.

Lisaks kasutati:

- loggingut protsessi jälgimiseks;
- try/except lahendusi vigade käsitlemiseks.

---

# Peamised tulemused

Automatiseeritud pipeline andis järgmised eelised:

## Efektiivsus

- Käsitsi tehtav andmete ettevalmistus vähenes märkimisväärselt.
- Varasem mitmetunnine töö muutus minutite pikkuseks protsessiks.

## Andmekvaliteet

- Struktureeritud puhastusprotsess vähendas vigade tekkimise võimalust.
- Andmete valideerimine toimus iga töötlemisetapi jooksul.

## Korduvkasutatavus

- Pipeline'i saab kasutada uute andmete töötlemiseks ilma kogu protsessi uuesti üles ehitamata.
- Lahendust saab laiendada uute andmeallikate ja täiendavate mõõdikutega.

---

# Äriline väärtus

Automatiseeritud andmevoog võimaldab ettevõttel:

- saada kiiremini värsket infot;
- jälgida regulaarseid KPI-sid;
- vähendada käsitsi tehtavat raportitööd;
- teha otsuseid ajakohaste andmete põhjal.

---

# Kasutatud tehnoloogiad

- Python
- Pandas
- Plotly
- Supabase API
- Jupyter Notebook
- GitHub

---

# AI kasutamine

Kasutasin ChatGPT abi pipeline'i arhitektuuri planeerimisel, funktsioonide loogika kontrollimisel ning API, Pandase ja veakäsitluse ühendamisel.

AI aitas muuta koodi struktuuri selgemaks ja parandada lahenduse töökindlust.

---

# Analüüsi põhisõnum

Hea analüüs ei seisne ainult tulemuste leidmises, vaid ka selles, kuidas muuta andmetöötlus usaldusväärseks, korratavaks ja efektiivseks protsessiks.

Automatiseeritud pipeline võimaldab analüütikul keskenduda rohkem tulemuste tõlgendamisele ja äriliste otsuste toetamisele, vähendades samal ajal käsitsi tehtavat tööd.
