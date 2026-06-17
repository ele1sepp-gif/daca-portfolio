# UrbanStyle RFM Kliendianalüüs

## Ülevaade

Selles projektis analüüsiti UrbanStyle müügi- ja kliendiandmeid ning koostati RFM (Recency, Frequency, Monetary) põhine kliendisegmentatsioon.

Eesmärk oli tuvastada erinevad kliendigrupid ning anda soovitusi turundustegevusteks.

---

## Andmed

Kasutati kahte Supabase tabelit:

- `sales` – müügiandmed
- `customers` – kliendiandmed

Tabelid ühendati `customer_id` alusel.

---

## Töö etapid

### A – Andmete laadimine
- Laaditi andmed Supabase'ist
- Kontrolliti andmete struktuuri
- Ühendati tabelid üheks DataFrame'iks

---

### B – Andmete puhastamine
- Eemaldati duplikaadid
- Töödeldi puuduvad väärtused
- Teisendati kuupäevad
- Eemaldati vigased (nt negatiivsed) väärtused

---

### C – RFM analüüs
Arvutati iga kliendi kohta:

- Recency – aeg viimasest ostust
- Frequency – ostude arv
- Monetary – kogukulutus

Selle põhjal loodi kliendisegmendid:
- VIP Champions
- Loyal
- Potential
- At Risk
- Lost

---

### D – Visualiseerimine
- Segmentide jaotus
- RFM hajuvusdiagramm
- VIP klientide analüüs

Lisaks koostati ärilised järeldused ja soovitused.

---

## Edasijõudnud analüüs

Lisati kaalutud RFM mudel, kus Monetary väärtusel on suurem mõju.

Uued segmendid:
- VIP Champions
- Loyal Customers
- Regular Customers
- New Customers
- At Risk
- Lost

Tulemused eksporditi faili `rfm_segments.csv`.

---

## Peamised tulemused

- Kliente kokku: 2540
- VIP Champions: 455
- At Risk: 529
- VIP käibe osakaal: 42.82%

---

## Soovitused

- VIP klientidele: lojaalsusprogramm ja eripakkumised
- At Risk klientidele: win-back kampaaniad
- Uutele klientidele: onboarding ja sooduspakkumised

---

## Kasutatud tehnoloogiad

- Python
- Pandas
- Supabase
- Plotly
- Jupyter Notebook
