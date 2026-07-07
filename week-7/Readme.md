# Nädal 7 – Python RFM kliendisegmentatsioon

## Ülevaade

Selles projektis analüüsiti UrbanStyle ettevõtte kliendi- ja müügiandmeid eesmärgiga mõista klientide väärtust, ostukäitumist ning erinevaid kliendisegmente.

Analüüsi eesmärk oli tuvastada:

- millised kliendid toovad ettevõttele kõige rohkem väärtust;
- millised kliendid vajavad taasaktiveerimist;
- millised kliendid on kasvupotentsiaaliga;
- kuidas segmenteerimist kasutada turundusotsuste toetamiseks.

Analüüs viidi läbi Pythoniga, kasutades Pandase andmetöötlust ja Plotly visualiseeringuid.

---

# Äriprobleem

Kõik kliendid ei panusta ettevõttesse võrdselt.

Et turundustegevusi efektiivsemalt planeerida, on oluline mõista:

- kes on kõige väärtuslikumad kliendid;
- kes on muutumas passiivseks;
- kelle puhul võiks kasutada lojaalsus- või tagasivõitmise kampaaniaid.

Selle lahendamiseks kasutati RFM-analüüsi.

---

# Kasutatud metoodika

RFM analüüs põhineb kolmel kliendikäitumise näitajal:

### Recency
Kui kaua aega on möödunud kliendi viimasest ostust.

### Frequency
Kui sageli klient ostab.

### Monetary
Kui palju klient on ettevõttele kulutanud.

Nende näitajate põhjal loodi kliendisegmendid:

- VIP Champions
- Loyal Customers
- Potential Customers
- At Risk
- Lost

Lisaks loodi kaalutud RFM mudel, kus kliendi rahaline väärtus (Monetary) sai suurema osakaalu.

---

# Minu tööprotsess

Analüüs koosnes neljast etapist:

## Andmete laadimine

- Laadisin müügi- ja kliendiandmed Supabase'ist.
- Ühendasin tabelid `customer_id` alusel.
- Kontrollisin andmete struktuuri ja kvaliteeti.

## Andmete puhastamine

Teostasin:

- duplikaatide kontrolli;
- puuduvate väärtuste käsitlemise;
- kuupäevade teisendamise;
- vigaste väärtuste eemaldamise.

## RFM analüüs

Arvutasin iga kliendi kohta:

- viimase ostu aja;
- ostude arvu;
- kogukulutuse.

Seejärel määrasin RFM skoorid ja kliendisegmendid.

## Visualiseerimine

Lõin Plotly abil:

- segmentide jaotuse visualiseeringud;
- RFM hajuvusdiagrammi;
- VIP klientide analüüsi.

---

# Peamised leiud

## Kliendibaasi ülevaade

Pärast andmete puhastamist:

- müügikirjeid: 8950
- unikaalseid kliente: 2540

---

## VIP kliendid

VIP Champions segmenti kuulus:

- 455 klienti
- ligikaudu 42,82% kogu kliendikäibest

See näitab, et väike osa klientidest loob ettevõttele väga suure osa väärtusest.

---

## Riskis kliendid

At Risk segmenti kuulus:

- 529 klienti

Need kliendid olid varasemalt aktiivsed, kuid nende ostuaktiivsus oli langenud.

See grupp vajab tähelepanu, et vähendada kliendikadu.

---

## Kliendikasvu võimalus

Suurim segment oli Potential Customers.

See näitab, et ettevõttel on olemas suur hulk kliente, kelle väärtust saab kasvatada sihipärase turunduse ja lojaalsusprogrammidega.

---

# Täiendav analüüs: kaalutud RFM mudel

Kaalutud RFM mudel andis täpsema ülevaate kliendi väärtusest, kuna see arvestas rohkem kliendi tegelikku rahalist mõju ettevõttele.

Peamine erinevus:

- standardne RFM hindab kõiki näitajaid võrdselt;
- kaalutud RFM toob paremini esile kõrge väärtusega kliendid.

Selle tulemusena muutus VIP segment väiksemaks, kuid kvaliteetsemaks.

---

# Ärilised soovitused

Analüüsi põhjal soovitasin:

## VIP klientidele

- personaalseid pakkumisi;
- lojaalsusprogrammi eeliseid;
- varajast ligipääsu kampaaniatele.

## At Risk klientidele

- win-back kampaaniaid;
- personaalseid pakkumisi;
- aktiivsuse taastamise strateegiaid.

## Uutele ja potentsiaalsetele klientidele

- onboarding kampaaniaid;
- esmaostu soodustusi;
- tegevusi korduvostude suurendamiseks.

---

# Kasutatud tööriistad

- Python
- Pandas
- Plotly
- Jupyter Notebook
- Supabase
- GitHub

---

# AI kasutamine

Kasutasin ChatGPT abi Pandase koodi struktureerimisel, RFM analüüsi loogika kontrollimisel ning analüüsi tulemuste selgemaks sõnastamisel.

---

# Analüüsi põhisõnum

RFM analüüs võimaldab ettevõttel liikuda üldisest kliendivaateest personaalsema lähenemiseni.

Kliendisegmentide mõistmine aitab suunata turundustegevusi õigetele klientidele, hoida väärtuslikke suhteid ning vähendada kliendikadu.
