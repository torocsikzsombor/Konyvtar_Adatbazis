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