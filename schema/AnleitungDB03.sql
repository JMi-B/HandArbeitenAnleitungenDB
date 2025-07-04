create database AnleitungDB03 character set	utf8mb4 collate utf8mb4_bin; -- Zeichensatz festlegen, collate Binärvergleich, Groß-/Kleinschreibung und Akzente werden unterschieden
use AnleitungDB03;

/*
Medien Tabelle 
*/

CREATE TABLE Medium (
    MediumID INT AUTO_INCREMENT PRIMARY KEY,
    Titel VARCHAR(150) NOT NULL,
    MedienArt ENUM('Buch', 'Zeitschrift', 'Schnittmuster', 'Website', 'Flyer') NOT NULL -- Lösung mit der enum, andere Möklichkeiten vielleicht später
);

/* 
Tabelle Anleitung
*/

CREATE TABLE Anleitung (
    AnleitungID INT AUTO_INCREMENT PRIMARY KEY,
    Titel VARCHAR(150) NOT NULL,
    Seitenzahl INT,
    Grundschnitt BOOLEAN DEFAULT FALSE
);

/*
Tabelle Autor
*/

CREATE TABLE Autor (
    AutorID INT AUTO_INCREMENT PRIMARY KEY,
    Nachname VARCHAR(45) NOT NULL,
    Vorname VARCHAR(45),
    Alias VARCHAR(45),
    Zusatz VARCHAR(10)
);

/*
Tabelle Objekt
*/

CREATE TABLE Objekt (
    ObjektID INT AUTO_INCREMENT PRIMARY KEY,
    Katergorie VARCHAR(45),
    Zwek VARCHAR(45),
    Stil VARCHAR(45),
    Modell VARCHAR(45)
);

/*
Tabelle Technik
*/

CREATE TABLE Technik (
    TechnikID INT AUTO_INCREMENT PRIMARY KEY,
    Bereich VARCHAR(45),
    Methode VARCHAR(45),
    Arbeitsweise VARCHAR(45)
);

/* ALTER TABLE Objekt RENAME COLUMN Katergorie TO Kategorie;  -- wird von der aktuellen MySQL Version nicht unterstützt
	ALTER TABLE Objekt RENAME COLUMN Zwek TO Zweck; -- wird von der aktuellen MySQL Version nicht unterstützt
 */

ALTER TABLE Objekt CHANGE Katergorie Kategorie VARCHAR(45);
ALTER TABLE Objekt CHANGE Zwek Zweck VARCHAR(45);