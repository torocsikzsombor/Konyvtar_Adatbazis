-- 2.feladat
DROP DATABASE IF EXISTS konyvtaradatbazis
CREATE DATABASE konyvtaradatbazis 
    CHARACTER SET utf8mb4 
    COLLATE utf8mb4_hungarian_ci;

-- 3.feladat
USE konyvtaradatbazis;


-- 4.feladat
DROP TABLE IF EXISTS konyvek;
CREATE TABLE IF NOT EXISTS konyvek (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    cim VARCHAR(200) NOT NULL UNIQUE,
    szerzo VARCHAR(200),
    kiadasi_ev YEAR, 
    oldal_szam INTEGER CHECK (BETWEEN 20 AND 2000), 
    kategoria ENUM ("fantasy", "sci-fi", "disztópia", "történelem")
    ertekeles FLOAT DEFAULT 5.0
);

-- 5.feladat
DROP TABLE IF EXISTS olvasok;
CREATE TABLE IF NOT EXISTS olvasok(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nev VARCHAR(100) NOT NULL,
    szuletesi_datum DATE,
    varos VARCHAR(50), 
    aktiv ENUM('igen', 'nem') NOT NULL DEFAULT 'nem',
    regisztracio_idopontja DATE TIME NOT NULL
);

-- 6.feladat

CHECK konyvek

-- 7.feladat

SHOW CREATE TABLE olvasok;