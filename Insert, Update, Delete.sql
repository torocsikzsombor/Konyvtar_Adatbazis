
--Insert Feladatok

--1 feladat

INSERT INTO filmek (cim, rendezo, megjelenesi_ev, hossz, korhatar, ertekeles)
VALUES ('ToyStory 4', 'Josh Cooley', 2019, 100, "0", 8.7);


--2 feladat

INSERT INTO szineszek (nev, szuletesi_datum, nemzetiseg, aktiv)
VALUES 
('Kovács András', '1985-04-12', 'magyar', 'igen'),
('Szabó Péter', '1972-11-30', 'magyar', 'nem');

--3.feladat

INSERT INTO filmek (cim, megjelenes_eve, mufaj, hossz, korhatar)
VALUES ('Az Idő Árnyéka', 2022, 'dráma', 110, 12);

--4.feladat

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

UPDATE szinesz
SET aktiv = 'igen',
    nemzetiseg = 'brit'
WHERE nev = 'Daniel Day-Lewis';


--DELETE

DELETE FROM film
WHERE ev < 1990;

DELETE FROM szinesz
WHERE aktiv = 'nem';

DELETE FROM filmek
WHERE cim = 'Toy Story 4';


