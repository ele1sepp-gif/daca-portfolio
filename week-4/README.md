# Week 4 – SQL Aggregation & Business Reporting

## Ülevaade

Selles projektis analüüsiti UrbanStyle ettevõtte müügi-, toote- ja inventuuriandmeid eesmärgiga luua juhtkonnale ülevaade ettevõtte tulemuslikkusest ning toetada andmepõhiseid otsuseid.

Analüüsi eesmärk oli mõista:
- millised tootekategooriad genereerivad enim väärtust;
- kuidas müük ja laoseis omavahel suhestuvad;
- millised tooted vajavad rohkem tähelepanu;
- millised kategooriad mõjutavad ettevõtte kasumlikkust.

Analüüs viidi läbi SQL-i abil, kasutades agregatsioonifunktsioone, CTE-sid ja aknafunktsioone.

---

# Ärilised küsimused

Analüüsi käigus otsiti vastuseid järgmistele äriküsimustele:

- Millised tootekategooriad on suurima müügimahuga?
- Millistes kategooriates on kõrgeim keskmine hind ja kasumimarginaal?
- Millised tooted moodustavad suurima osa müügist?
- Millised tooted liiguvad aeglaselt ning vajavad tähelepanu?
- Kas olemasolev laoseis vastab tegelikule müüginõudlusele?

---

# Minu panus

Minu vastutus oli **Inventuuristatistika analüüs**.

Analüüsisin:

- tootekategooriate suurust ja hinnataset;
- toodete keskmist kasumimarginaali;
- müügimahtusid kategooriate lõikes;
- TOP toodete mõju müügitulemustele;
- laoseisu ja müügi vahelist seost.

---

# Analüüsi tehnikad

Kasutasin järgmisi SQL tehnikaid:

- `GROUP BY` – andmete koondamine kategooriate ja segmentide kaupa;
- `COUNT`, `SUM`, `AVG`, `MIN`, `MAX` – põhilised mõõdikud;
- `HAVING` – filtreerimine pärast agregeerimist;
- `CTE (Common Table Expression)` – keerukamate analüüside struktureerimine;
- `ROW_NUMBER()` – toodete järjestamine kategooriate sees;
- `JOIN` – müügi, toodete ja inventuuriandmete ühendamine.

---

# Pealmised leiud

Analüüs näitas, et:

### Tootekategooriad

- Müügimahud olid kategooriate vahel suhteliselt sarnased, jäädes ligikaudu vahemikku 3200–4100 müüdud toodet.
- Meeste riiete kategoorias oli kõige rohkem erinevaid tooteid, kuid seal esines rohkem aeglasemalt liikuvaid tooteid.
- Jalanõude kategoorias oli kõrgeim keskmine müügihind ning suurim eurodes arvutatud marginaal.

### Kasumlikkus

- Kõrgeim keskmine marginaal eurodes tuli jalanõude kategooriast:
  - keskmine hind ligikaudu 214 €
  - keskmine marginaal ligikaudu 69,56 €

- Protsentuaalselt olid tugevad laste riiete ja aksessuaaride kategooriad.

### Tootetaseme analüüs

- TOP 3 toodete müügimahud olid kategooriate vahel üsna tasakaalus.
- Üksikud tooted ei moodustanud liiga suurt osa kogu müügist, mis viitab mitmekesisele tooteportfellile.

### Inventuur

- Laoseis oli kategooriate vahel sarnasel tasemel.
- Kõrge laoseis ei tähendanud alati suuremat müüki, mis viitab vajadusele optimeerida varude planeerimist.

---

# Ärilised soovitused

Analüüsi põhjal soovitasin:

- hinnata aeglasemalt liikuvate toodete hinnastamist;
- vähendada liigset laovaru toodetel, mille müügikiirus on madal;
- siduda inventuuri planeerimine tugevamalt tegeliku müüginõudlusega;
- keskenduda toodetele ja kategooriatele, mille marginaal on kõrgem.

Paremini tasakaalustatud laohaldus aitab vähendada seisvat kaupa ning parandada ettevõtte efektiivsust.

---

# Meeskonna kokkuvõte

Meeskonna ühine analüüs näitas:

- müügitrend langes pärast 2024. aasta lõppu;
- VIP-kliente oli vähem, kuid nende keskmine väärtus oli kõige suurem;
- Google oli kõige efektiivsem turunduskanal;
- lojaalsusprogrammi arendamine võiks aidata kasvatada korduvklientide arvu.

---

# Kasutatud vahendid

- PostgreSQL
- SQL
- Supabase
- GitHub

---

# AI Kasutus

Kasutasin ChatGPT abi SQL päringute kontrollimisel, keerukamate CTE-de ja aknafunktsioonide loogika täpsustamisel ning analüüsi tulemuste ärilisemaks sõnastamisel.

---

# Järeldus

See projekt näitas, kuidas SQL abil saab muuta toorandmed struktureeritud äriraportiteks.

Lisaks tehnilistele päringutele oli oluline osata tulemusi tõlgendada ning siduda need praktiliste soovitustega, mis aitavad ettevõttel teha paremaid otsuseid.
