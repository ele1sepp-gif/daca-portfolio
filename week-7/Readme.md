## Nädal 7: Python Pandas — RFM kliendisegmenteerimine

### Minu roll- tegin kõik rollid

Roll A – Data Loading
Laadisin UrbanStyle müügi- ja kliendiandmed Supabase'ist pandas DataFrame'idesse, kontrollisin andmete struktuuri ning ühendasin tabelid customer_id alusel üheks analüüsitavaks andmestikuks.

Roll B – Data Cleaning
Puhastasin andmestiku, kontrollisin duplikaate ja puuduvaid väärtusi, teisendasin kuupäevad datetime formaati ning eemaldasin vigased kirjed.

Roll C – Analysis
Arvutasin klientide Recency, Frequency ja Monetary näitajad, määrasin RFM skoorid ning lõin kliendisegmendid.

Roll D – Visualization
Lõin Plotly visualiseerimised, analüüsisin tulemusi ning koostasin ärilised soovitused kliendisegmentide põhjal.

### Peamised leiud
* UrbanStyle andmestikus oli pärast puhastamist 8950 müügikirjet ja 2540 unikaalset klienti.
* VIP Champions segment sisaldas 455 klienti ning moodustas 42.82% kogu klientide käibest.
* At Risk segmenti kuulus 529 klienti, kelle puhul on kõrgem kliendikao risk.
* Suurim segment oli Potential kliendid, mis näitab head võimalust lojaalsete klientide arvu kasvatamiseks

### AI kasutamine
Kasutasin pealmiselt Chat CPT, kes aitas mul koodi loogilisemaks kirjutada. 
