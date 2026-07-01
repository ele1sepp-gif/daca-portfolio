# Nädal 2 — Andmete puhastamine ja kvaliteedikontroll

## Eesmärk

Teise nädala eesmärk oli mõista andmekvaliteedi tähtsust ning rakendada SQL-põhiseid andmete puhastamise tehnikaid.

Peamine fookus oli kliendiandmete analüüsil, vigade tuvastamisel ja andmestiku ettevalmistamisel edasiseks analüüsiks.

---

## Minu roll

**Kliendiandmete analüütik**

Nädal 2 jooksul vastutasin kliendiandmete uurimise ja puhastamise eest ning panustasin meeskonna esitlusmaterjalide ja projekti dokumentatsiooni koostamisse.

---

## Teostatud ülesanded

### Kliendiandmete puhastamine

Analüüsisin `customers` tabelit ning tuvastasin andmekvaliteedi probleemid, mis võisid mõjutada edasist analüüsi.

Peamised leiud:

- Klientide arv: 3150
- Puuduvad e-mailid: 380
- Duplikaatsed e-mailid: 128
- Ebajärjekindlad linnanimed (näiteks Tallinn, tallinn, TALLINN)

Tehtud tegevused:

- Tuvastasin puuduvad väärtused ja ebakõlad.
- Standardiseerisin linnanimed ühtseks formaadiks.
- Kontrollisin duplikaatseid kirjeid.
- Valideerisin muudatusi enne lõplikku rakendamist.

---

## Andmete puhastamise protsess

Kõik muudatused testisin esmalt eraldi testtabelites.

Töövoog:

1. Analüüsisin olemasolevat andmestruktuuri.
2. Testisin SQL muudatusi eraldi tabelis.
3. Kontrollisin tulemusi.
4. Rakendasin kinnitatud muudatused lõplikus andmestikus.

Selline lähenemine aitas vältida juhuslikku andmekadu ning tagas usaldusväärsed muudatused.

---

## Arendatud SQL oskused

- Keerukam SQL süntaks
- UPDATE päringud
- Andmete valideerimine
- Duplikaatide leidmine
- Puuduvate väärtuste käsitlemine
- Andmete standardiseerimine

---

## Panus meeskonda

Nädala jooksul:

- Koostasin grupi esitlusslaidid.
- Täiendasin projekti portfooliot.
- Dokumenteerisin SQL loogikat ja puhastamise samme.

---

## Olulisem õppetund

Selle nädala peamine õppetund oli, et andmete puhastamine nõuab analüütilist mõtlemist ja ettevaatlikke otsuseid.

Andmeanalüütiku töö ei ole ainult SQL päringute kirjutamine, vaid andmete tähenduse mõistmine enne nende muutmist.

Koostasin endale SQL konspekti, kus dokumenteerisin päringute loogikat ja kasutatud tehnikaid tulevaste analüüside lihtsustamiseks.
