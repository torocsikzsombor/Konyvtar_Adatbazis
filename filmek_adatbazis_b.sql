DROP DATABASE IF EXISTS filmadatbazis;
CREATE DATABASE filmadatbazis
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_hungarian_ci;


USE filmadatbazis;


DROP TABLE IF EXISTS filmek;
CREATE TABLE IF NOT EXISTS filmek (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cim VARCHAR(150) NOT NULL UNIQUE,
    rendezo VARCHAR(140),
    megjelenesi_ev YEAR,
    hossz INT CHECK (hossz BETWEEN 20 AND 350),
    korhatar ENUM("0", "6", "12", "16", "18"),
    ertekeles FLOAT DEFAULT 6.0
);


DROP TABLE IF EXISTS szineszek;
CREATE TABLE IF NOT EXISTS szineszek(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nev VARCHAR(120) NOT NULL,
    szuletesi_datum DATE,
    nemzetiseg VARCHAR(50) DEFAULT 'magyar', 
    aktiv ENUM('igen', 'nem') DEFAULT 'nem',
    regisztracio_idopontja DATETIME DEFAULT CURRENT_TIMESTAMP
);


DESCRIBE filmek;


