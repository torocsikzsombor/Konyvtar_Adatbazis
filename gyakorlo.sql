-- 1. feladat
-- Jelenítsd meg az összes film címét és rendezőjét!

SELECT cim, rendezo FROM filmek;


-- 2. feladat
-- Listázd ki az összes színész nevét és nemzetiségét!

SELECT nev, nemzetiseg FROM szineszek;

-- 3. feladat
-- Mutasd meg az összes film teljes információit (minden oszlop)!

SELECT * FROM filmek;

-- 4. feladat
-- Keresd meg azokat a filmeket, amelyek 2000 után jelentek meg!

SELECT * FROM filmek
WHERE megjelenesi_ev > 2000;

-- 5. feladat
-- Listázd ki azokat a filmeket, amelyek hossza 120 percnél hosszabb!

SELECT * FROM filmek
WHERE hossz > 120;

-- 6. feladat
-- Mutasd meg azokat a színészeket, akik aktívak (aktiv = 'igen')!

SELECT * FROM szineszek
WHERE aktiv = 'igen';

-- 7. feladat
-- Keresd meg azokat a filmeket, amelyek értékelése 8.0 felett van!

SELECT * FROM filmek
WHERE ertekeles > 8.0;

-- 8. feladat 
-- Listázd ki azokat a filmeket, amelyek korhatára 16 vagy 18 év!

SELECT * FROM filmek
WHERE korhatar BETWEEN 16 AND 18;

SELECT * FROM filmek
WHERE korhatar IN (16,18);


-- 9. feladat
-- Rendezd az összes filmet megjelenési év szerint növekvő sorrendben!

SELECT * FROM filmek
ORDER BY megjelenesi_ev ASC


--Insert Feladatok

--1 feladat

INSERT INTO filmek (cim, rendezo, megjelenesi_ev, hossz, korhatar, ertekeles)
VALUES ('ToyStory 4', 'Josh Cooley', 2019, 100, "0", 8.7);


--2 feladat

INSERT INTO szineszek (nev, szuletesi_datum, nemzetiseg, aktiv)
VALUES
("tgyb", "ggg", 2000, 200, "12", 8.7),


UPDATE filmek
SET rendezo = "Joe Ranft"
WHERE cim = "Toy Story";

UPDATE filmek
SET megjelenesi_ev = 1999
WHERE cim = "Matrix";

UPDATE filmek
SET cim = "A tégla (felújított kiadás)",
    ertekeles = 8.9
WHERE cim = "A tégla";
