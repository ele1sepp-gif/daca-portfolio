# UrbanStyle turundusanalüüsi projekt

## Projekti ülevaade

**UrbanStyle Ltd** on moeettevõte, mille eesmärk oli kasutada olemasolevaid müügi-, kliendi- ja tooteandmeid teadlikumate äriotsuste tegemiseks.

Projekti käigus loodi terviklik andmeanalüüsi protsess, mis hõlmas:

* andmete kvaliteedi hindamist;
* andmete puhastamist ja valideerimist;
* SQL-põhist andmeanalüüsi;
* uurivat andmeanalüüsi (EDA) Pythoni abil;
* interaktiivsete dashboardide loomist;
* äriliste järelduste ja soovituste koostamist.

---

# Kasutatud andmestikud

## Müügiandmed (Sales)

* **15 234** kirjet
* **12** veergu
* negatiivsed tehinguväärtused
* **1 487** kirjet puuduvate kliendiandmetega
* duplikaatkirjed

## Kliendiandmed (Customers)

* **3 150** klienti
* **9** veergu
* **380** puuduvat e-posti aadressi
* **128** duplikaatset e-posti aadressi
* ebaühtlased linnanimede kirjapildid (näiteks *Tallinn*, *tallinn*, *TALLINN*)

## Tooted (Products)

* **362** toodet
* **9** veergu
* üksikud andmekvaliteedi probleemid
* kategooriate korrastamise vajadus

---

# Andmete puhastamine

### Enne puhastamist

* **Sales:** 15 234 kirjet

### Pärast puhastamist

* **Sales:** 10 118 analüüsiks sobivat tehingut

### Läbiviidud tegevused

* eemaldati duplikaatkirjed;
* standardiseeriti linnanimede kirjapilt;
* kontrolliti ja käsitleti puuduvaid väärtusi;
* valideeriti andmetüübid;
* tuvastati ja eemaldati ebaloogilised väärtused.

---

# Teostatud analüüsid

## Kliendianalüüs

* kliendikäitumise analüüs;
* VIP-klientide tuvastamine;
* ostumustrite analüüs;
* lojaalsete klientide leidmine.

## Müügianalüüs

* müügitulemuste analüüs ajaperioodide lõikes;
* müügikanalite võrdlus;
* toodete tulemuslikkuse hindamine;
* tootekategooriate analüüs.

---

# Peamised järeldused

* VIP-kliendid moodustavad märkimisväärse osa ettevõtte kogukäibest.
* Lojaalsete klientide hoidmine mõjutab oluliselt ettevõtte müügitulemusi.
* Enne automatiseeritud raportite loomist tuleb parandada andmete kvaliteeti.
* Linnapõhised erinevused mõjutavad müügitulemusi ning neid tuleks otsuste tegemisel arvesse võtta.

---

# Soovitused

* täiustada andmesisestuse reegleid;
* muuta e-posti aadress kliendi loomisel kohustuslikuks väljaks;
* rakendada win-back-kampaaniaid passiivsete või kadunud klientide tagasivõitmiseks;
* arendada vähem müüdud tootekategooriaid;
* kasutada dashboarde ettevõtte peamiste KPI-de pidevaks jälgimiseks.

---

# Kasutatud tehnoloogiad

* SQL
* Python (Pandas, NumPy, Matplotlib, Seaborn)
* Jupyter Notebook
* Power BI
* Git & GitHub

# Portfoolio koduleht

https://ele1sepp-gif.github.io/daca-portfolio
