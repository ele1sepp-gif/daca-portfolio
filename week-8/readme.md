# Nädal 8: Python APIs — Automatiseeritud andmepipeline

## Minu roll
Tegin kõik rollid (API Query, Data Processing, Visualization + Saving, Automation).

---

## Meeskonna töö ülevaade
Ehitati end-to-end automatiseeritud andmepipeline UrbanStyle OÜ andmete töötlemiseks.

Pipeline koosneb järgmistest etappidest:
- Andmete pärimine Supabase API-st
- Andmete puhastamine ja transformeerimine pandas abil
- KPI-de ja nädalaste koondnäitajate arvutamine
- Visualiseerimine Plotly abil
- Tulemuste salvestamine CSV ja HTML failidena
- Kogu protsessi automatiseerimine ühe skriptina (pipeline.py)

---

## Peamised komponendid

### API Query (data_fetcher.py)
- Pärib müügi-, kliendi- ja tooteandmed Supabase API-st
- Kasutab kuupäevafiltreid ja error handlingut
- Tagastab DataFrame’id

### Data Processing (transform.py)
- Puhastab andmed (duplikaadid, NULL-id, kuupäevad)
- Arvutab nädalased koondnäitajad
- Loob KPI-d (tulu, kliendid, keskmine tellimus)
- Liidab andmestikud customer_id alusel

### Visualization + Saving (visualize_export.py)
- Loob nädalase tulu line chart’i (Plotly)
- Kuvab KPI summary dashboardi
- Ekspordib tulemused CSV ja HTML failidena

### Automation (pipeline.py)
- Ühendab kõik moodulid üheks pipeline’iks
- Käivitab etapid järjekorras: fetch → transform → visualize → export
- Kasutab loggingut ja try/except veakäsitlust
- Võimaldab kogu protsessi käivitada ühe käsuga

---

## Peamised leiud
- Automatiseeritud pipeline vähendab käsitsi töö vajadust ja säästab märkimisväärselt aega (u 4h → ~minutid)
- Andmete kvaliteet paraneb tänu struktureeritud puhastamis- ja valideerimisprotsessile
- Nädalased KPI-d ja trendid on nüüd kiiresti visualiseeritavad
- Süsteem on laiendatav (nt uued andmeallikad või automaatsed alertid)

---

## AI kasutamine
Kasutasin AI-d koodi struktuuri ja funktsioonide loogika täpsustamiseks ning Supabase API ja pandas pipeline’i ühendamise paremini mõistmiseks.
AI aitas eriti error handlingu ja pipeline’i arhitektuuri ülesehituse puhul.
