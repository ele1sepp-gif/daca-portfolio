# Week 4 – SQL agregatsioon

## Ülevaade

Neljandal nädalal keskendusime SQL agregatsioonile ning õppisime koostama koondanalüüse kasutades `GROUP BY`, `HAVING`, CTE-sid ja aknafunktsioone (Window Functions).

Projekti eesmärk oli koostada UrbanStyle ettevõtte juhtkonnale koondraportid, mis aitaksid teha andmepõhiseid otsuseid müügi, klientide, inventuuri ja turunduse kohta.

---

## Õpieesmärgid

Selle projekti käigus harjutasin:

* andmete koondamist (`GROUP BY`);
* agregaatfunktsioonide kasutamist (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`);
* `HAVING` klausli kasutamist;
* CTE-de (Common Table Expression) koostamist;
* aknafunktsioonide (`ROW_NUMBER`) kasutamist;
* SQL tulemuste tõlgendamist ärilisest vaatenurgast.

---

## Minu panus

Minu roll meeskonnas oli **Roll C – Inventuuristatistika**.

Analüüsi käigus uurisin:

* tootekategooriate suurust ja hinnataset;
* keskmist kasumimarginaali eurodes ja protsentides;
* müüdud koguseid kategooriate lõikes;
* TOP 3 enim müüdud tooteid igas kategoorias;
* laoseisu ja müügimahtude omavahelist seost.

Analüüsi põhjal selgus, et müügimahud olid erinevate kategooriate vahel üllatavalt sarnased, kuigi toodete arv ja hinnatase varieerusid märkimisväärselt.

---

## Peamised leiud

* Müüdud kogused kategooriate lõikes olid üsna ühtlased (ligikaudu 3 200–4 100 toodet).
* Kõige rohkem tooteid sisaldas meeste riiete kategooria (82 toodet), kuid seal leidus ka kõige enam aeglasemalt müüvaid tooteid.
* Kõrgeim keskmine müügihind ja kasumimarginaal eurodes olid jalanõude kategoorias (keskmine hind 214 € ja marginaal 69,56 €).
* Suurim kasumimarginaal protsentides oli laste riiete ja aksessuaaride kategoorias (33%).
* TOP 3 toodete müügimahud olid kategooriate vahel üsna sarnased.
* Laoseis oli kõikides kategooriates võrreldaval tasemel (ligikaudu 33 000–45 000 toodet), kuid laoseis ei liikunud alati samas tempos müügiga.

---

## Soovitused

Analüüsi põhjal soovitasin üle vaadata aeglasemalt liikuvate toodete hinnastamise ja turundustegevused ning hinnata, kas laoseis vastab tegelikule müüginõudlusele. Paremini tasakaalustatud laovarud aitaksid vähendada seisvat kaupa ja parandada varude efektiivsust.

---

## Meeskonna peamised järeldused

Meeskonna analüüsi tulemusena selgus, et müügitrend langes järjepidevalt pärast 2024. aasta lõppu. Kategooriate müügimahud olid oodatust ühtlasemad ning VIP-kliente oli küll kõige vähem, kuid nende keskmine käive kliendi kohta oli suurim. Turunduskanalitest osutus kõige edukamaks Google.

Soovitasime keskenduda aeglaselt liikuvate toodete optimeerimisele, arendada lojaalsusprogrammi regulaarsete klientide kasvatamiseks ning hoida olemasolevaid VIP-kliente. Turunduseelarve suunamisel soovitasime eelistada Google'i, Facebooki ja Direct-kanalit.

---

## AI kasutamine

Kasutasin ChatGPT abi keerukamate SQL päringute kontrollimisel ning CTE-de ja aknafunktsioonide loogika täpsustamisel. AI aitas leida võimalusi päringute parandamiseks ja muuta analüüsi selgemaks.

---

## Olulisemad õppetunnid

See nädal õpetas mulle, kuidas koostada koondanalüüse, mis aitavad teha ettevõttes strateegilisi otsuseid. Lisaks SQL-i tehniliste oskuste arendamisele sain paremini aru, kuidas koondandmeid tõlgendada ning siduda need praktiliste äriliste soovitustega.
