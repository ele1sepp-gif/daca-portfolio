# Week 1 – UrbanStyle toodete andmeanalüüs

## Ülevaade

Selle analüüsi eesmärk oli uurida UrbanStyle ettevõtte tooteandmeid ning luua ülevaade olemasolevast tooteportfellist enne põhjalikemate analüüside tegemist.

Andmete esmase uurimise abil selgitati välja andmestiku struktuur, toodete jaotus ning info kvaliteet. See etapp oli vajalik, et mõista, milliseid andmeid saab kasutada edasiste ärianalüüside alusena.

---

## Analüüsi eesmärk

Analüüsi käigus otsiti vastuseid järgmistele küsimustele:

* Milline on ettevõtte tootevaliku struktuur?
* Kui palju erinevaid tooteid andmestikus on?
* Millised tootekategooriad on esindatud?
* Kas olemasolevad andmed on piisava kvaliteediga edasiseks analüüsiks?

---

## Kasutatud tehnoloogiad

* PostgreSQL
* SQL
* Supabase
* GitHub

---

## Andmed

Analüüs põhines UrbanStyle andmebaasi `products` tabelil.

Analüüsitud andmed sisaldasid:

* toodete identifikaatoreid
* tootenimesid
* kategooriaid
* hinnainfot

---

## Analüüsi protsess

Tooteandmete uurimiseks kasutati SQL päringuid, millega:

* kontrolliti tabeli struktuuri;
* loendati toodete koguarv;
* uuriti erinevaid tootekategooriaid;
* hinnati andmete kvaliteeti;
* kontrolliti analüüsi jaoks vajaliku info olemasolu.

---

## Peamised tulemused

Analüüsi tulemusena selgus:

* Andmestikus oli kokku **362 toodet**.
* Tooted jagunesid järgmiste kategooriate vahel:

  * Jalanõud
  * Laste riided
  * Aksessuaarid
  * Naiste riided
  * Meeste riided

Andmekvaliteedi kontroll näitas:

* Kõikidel toodetel olid hinnad olemas.
* Tootekategooriad olid kasutatavad edasiseks analüüsiks.
* Esmase kontrolli käigus suuri andmekvaliteedi probleeme ei tuvastatud.

---

## Ärialased järeldused

Tooteandmete esmane analüüs kinnitas, et olemasolev andmestik sobib edasiseks ärianalüüsiks.

Korrektselt struktureeritud tooteinfo loob aluse järgmisteks analüüsideks, näiteks:

* müügitulemuste võrdlemiseks kategooriate lõikes;
* populaarsemate toodete leidmiseks;
* hinnastamise ja inventuuri analüüsimiseks.

---

## Failid
[Week1sql.sql](https://github.com/user-attachments/files/27438429/Week1sql.sql)



