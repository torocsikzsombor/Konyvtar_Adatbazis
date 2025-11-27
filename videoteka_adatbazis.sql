--2.feladat--
DROP DATABASE IF EXISTS videotekaadatbazis;
CREATE DATABASE videotekaadatbazis
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_hungarian_ci;

--3.feladat--
USE videotekaadatbazis;

--4.feladat--
CREATE TABLE filmek (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cim VARCHAR(150) NOT NULL UNIQUE,
    rendezo VARCHAR(120),
    megjelenesi_ev YEAR,
    hossz_perc INT CHECK (hossz_perc BETWEEN 30 AND 400),
    mufaj ENUM('akcio', 'vigjatek', 'drama', 'thriller'),
    imdb_ertekeles FLOAT DEFAULT 6.5
) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;

--5.feladat--
CREATE TABLE kolcsonzok (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(100) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE,
    varos VARCHAR(50) DEFAULT 'Budapest',
    aktiv ENUM('igen','nem') DEFAULT 'igen',
    regisztracio DATETIME DEFAULT CURRENT_TIMESTAMP
) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;

--6.feladat--
DESCRIBE filmek;

--7.feladat--
SHOW CREATE TABLE kolcsonzok;
