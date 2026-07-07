# Week 2 – Kliendiandmete kvaliteedianalüüs ja puhastamine

## Ülevaade

Selle analüüsi eesmärk oli hinnata UrbanStyle kliendiandmete kvaliteeti ning tuvastada probleemid, mis võiksid mõjutada edasiste analüüside täpsust.

Usaldusväärne kliendiinfo on oluline müügi-, turundus- ja kliendikäitumise analüüside jaoks. Enne andmete kasutamist analüüsiti olemasolevat andmestikku, tuvastati ebakõlad ning valmistati andmed ette edasiseks kasutamiseks.

---

## Analüüsi eesmärk

Analüüsi käigus otsiti vastuseid järgmistele küsimustele:

* Kas kliendiandmetes esineb puuduvaid väärtusi?
* Kas andmetes leidub duplikaate?
* Kas kontaktandmed on ühtses formaadis?
* Kas linnade ja teiste tekstiväljade kirjapilt on standardiseeritud?
* Millised andmekvaliteedi probleemid võivad mõjutada ärianalüüse?

---

## Kasutatud tehnoloogiad

* PostgreSQL
* SQL
* Supabase
* GitHub

---

## Andmed

Analüüs põhines UrbanStyle andmebaasi `customers` tabelil.

Analüüsitud andmed sisaldasid:

* kliendi identifikaatoreid;
* nimesid;
* e-posti aadresse;
* telefoninumbreid;
* linnasid.

---

## Analüüsi protsess

Andmekvaliteedi kontroll viidi läbi järgmiste sammudena:

### 1. Andmestruktuuri ja mahtu kontroll

Kontrolliti kliendikirjete koguarvu ning hinnati olemasoleva andmestiku suurust.

Tulemuseks:

* Kliente kokku: **3150**

---

### 2. Puuduvate väärtuste tuvastamine

Kontrolliti puuduvate väärtuste esinemist:

* e-mailides;
* nimedes;
* telefoninumbrite väljal.

Tulemused:

* Puuduvaid e-maile: **380**
* Kõik kliendinimed olid olemas.
* Telefoninumbrid olid olemas ning vastasid kasutatud kontrollkriteeriumitele.

---

### 3. Duplikaatide kontroll

Analüüsiti e-mailide korduvust, et tuvastada võimalikud topeltkirjed.

Tulemused:

* Leiti **128 korduvat e-maili**.
* Kõik korduvad väärtused ei tähendanud automaatselt duplikaatseid kliente, mistõttu kontrolliti kirjeid täiendavalt enne muudatuste tegemist.

---

### 4. Andmete standardiseerimine

Viidi läbi andmete korrastamine:

* linnanimede ühtlustamine;
* e-mailide muutmine väiketähtedeks;
* tekstiväljade korrastamine;
* võimalike puuduvate nimede käsitlemine.

Kõik muudatused testiti esmalt eraldi testtabelites enne lõplike muudatuste rakendamist.

---

## Peamised tulemused

Analüüsi käigus tuvastati järgmised andmekvaliteedi probleemid:

| Probleem                       | Tulemus |
| ------------------------------ | ------- |
| Kliendikirjete arv             | 3150    |
| Puuduvad e-mailid              | 380     |
| Korduvad e-mailid              | 128     |
| Linnanimede erinevad formaadid | Esines  |

Oluline tähelepanek:

Kuigi osa andmeid vajasid puhastamist, olid mitmed väljad juba kvaliteetsed. Näiteks olid klientide nimed ja telefoninumbrid täielikult täidetud.

---

## Ärialased järeldused ja soovitused

Kliendiandmete kvaliteet mõjutab otseselt ettevõtte võimet teha täpseid analüüse ja suunata turundustegevusi.

Peamised soovitused:

* parandada puuduvate e-mailide kogumist, kuna need mõjutavad kliendisuhtlust;
* rakendada regulaarseid andmekvaliteedi kontrolle;
* säilitada standardiseeritud andmevormingud uute kirjete lisamisel;
* kasutada testtabeleid enne suuremate andmemuudatuste rakendamist.

Korrastatud kliendiandmed loovad usaldusväärse aluse näiteks kliendisegmentatsiooni, kampaaniate ja ostukäitumise analüüside jaoks.

---

## Failid

* `week2_customers_cleaning.sql`

---

## Analüüsi peamine väärtus

Selle analüüsi tulemusena valmis kvaliteetsem kliendiandmestik, mida saab kasutada edasistes müügi-, turundus- ja kliendikäitumise analüüsides.
