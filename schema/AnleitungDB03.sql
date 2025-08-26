

drop database if exists AnleitungDB03;
create database AnleitungDB03 character set	utf8mb4 collate utf8mb4_bin; -- Zeichensatz festlegen, collate Binärvergleich, Groß-/Kleinschreibung und Akzente werden unterschieden


use AnleitungDB03;

/*
Medien Tabelle 
*/


CREATE TABLE Medium (
    MediumID INT AUTO_INCREMENT PRIMARY KEY,
    Titel VARCHAR(150) NOT NULL,
    MedienArt ENUM('Buch', 'Zeitschrift', 'Schnittmuster', 'Website', 'Flyer') NOT NULL,
    Sprache varchar(20)
);

/*
Tabelle Anleitung
*/


CREATE TABLE Anleitung (
    AnleitungID INT AUTO_INCREMENT PRIMARY KEY,
    Titel VARCHAR(150) NOT NULL,
    Seitenzahl INT,
    Grundschnitt BOOLEAN DEFAULT FALSE,
    Modellnummer varchar(5),
    Schnittbogen varchar(5)
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

drop table if exists objekt;
*/
CREATE TABLE Gegenstand (
    GegenstandID INT AUTO_INCREMENT PRIMARY KEY,
    Kategorie VARCHAR(45),
    Zweck VARCHAR(45),
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



/*
Tabelle für Projektideen
*/

CREATE TABLE Projekt (
    ProjektID INT AUTO_INCREMENT PRIMARY KEY,
    Projektname VARCHAR(100) NOT NULL,
    Beschreibung TEXT
);

/*
Beziehungen
*/

/*
Anleitung zu Medien 1:n
*/

alter table Anleitung add MediumID int not null;
alter table Anleitung add foreign key (MediumID) references Medium(MediumID);

/*
Anleitung zu Autor n:m
*/

CREATE TABLE AnleitungAutor (
    AnleitungID INT NOT NULL,
    AutorID INT NOT NULL,
    PRIMARY KEY (AnleitungID , AutorID),
    FOREIGN KEY (AnleitungID)
        REFERENCES Anleitung (AnleitungID),
    FOREIGN KEY (AutorID)
        REFERENCES Autor (AutorID)
);


/*
Anleitung zu Objekt 1:n
*/

alter table Anleitung add GegenstandID int not null;
alter table Anleitung add foreign key (GegenstandID) references gegenstand(gegenstandID);	

/*
Anleitung zu Technik 1:n
*/

alter table Anleitung add TechnikID int not null;
alter table Anleitung add foreign key (TechnikID) references Technik(TechnikID);	

/*
Anleitung zu Projekt n:m
*/

CREATE TABLE AnleitungProjekt (
    AnleitungID INT NOT NULL,
    ProjektID INT NOT NULL,
    PRIMARY KEY (AnleitungID , ProjektID),
    FOREIGN KEY (AnleitungID)
        REFERENCES Anleitung (AnleitungID),
    FOREIGN KEY (ProjektID)
        REFERENCES Projekt (ProjektID)
);

/*
Medium zu Autor n:m
*/

CREATE TABLE MediumAutor (
    MediumID INT NOT NULL,
    AutorID INT NOT NULL,
    PRIMARY KEY (MediumID , AutorID),
    FOREIGN KEY (MediumID)
        REFERENCES Medium (MediumID),
    FOREIGN KEY (AutorID)
        REFERENCES Autor (AutorID)
);

/*
Verbesserungen 
*/

/*
Anleitung ohne Objekt ist ein Tutorial
*/

alter table Anleitung modify GegenstandID int null;

/*
Beziehgungen Medium Objekt, Technik
*/ 

CREATE TABLE MediumTechnik (
    MediumID INT NOT NULL,
    TechnikID INT NOT NULL,
    PRIMARY KEY (MediumID , TechnikID),
    FOREIGN KEY (MediumID)
        REFERENCES Medium (MediumID),
    FOREIGN KEY (TechnikID)
        REFERENCES Technik (TechnikID)
);

CREATE TABLE MediumGegenstand (
    MediumID INT NOT NULL,
    GegenstandID INT NOT NULL,
    PRIMARY KEY (MediumID , GegenstandID),
    FOREIGN KEY (MediumID)
        REFERENCES Medium (MediumID),
    FOREIGN KEY (GegenstandID)
        REFERENCES gegenstand (GegenstandID)
);



CREATE TABLE GegenstandTechnik (
    GegenstandID INT NOT NULL,
    TechnikID INT NOT NULL,
    PRIMARY KEY (GegenstandID , TechnikID),
    FOREIGN KEY (GegenstandID)
        REFERENCES Gegenstand (GegenstandID),
    FOREIGN KEY (TechnikID)
        REFERENCES Technik (TechnikID)
);

CREATE TABLE Buch (
    MediumID INT PRIMARY KEY,
    Untertitel VARCHAR(100),
    Jahr YEAR,
    Verlag VARCHAR(45),
    Ort VARCHAR(45),
    ISBN VARCHAR(20),
    Reihe VARCHAR(45),
    Band varchar(5),
    FOREIGN KEY (MediumID)
        REFERENCES Medium (MediumID)
);


/* Fehlerkorektur*/
  
CREATE TABLE Website (
    MediumID INT PRIMARY KEY,
    URL VARCHAR(100),
    Kanalname VARCHAR(45),
    LanchDatum DATE,
    Download BOOL,
    Ausdruck BOOL,
    FOREIGN KEY (MediumID)
        REFERENCES medium (MediumID)
);

/*
 Zeitsschriften
 */
 
CREATE TABLE Zeitschrift (
    MediumID INT PRIMARY KEY,
    Untertitel VARCHAR(45),
    Jahrgang YEAR,
    Monat INT,
    Heftnummer VARCHAR(10),
    Sonderheft BOOL,
    FOREIGN KEY (MediumID)
        REFERENCES medium (MediumID)
);

/*
Zusätzliche Spallten einfügen
*/
 
 /*
 alter table Medium
 add column Sprache varchar(20);
 */
 
 /*
 alter table anleitung
 add column Modellnummer varchar(5),
 add column Schnittbogen varchar(5);
 */

/*
ALTER TABLE Buch
MODIFY COLUMN Band varchar(5);
*/
 
 /*
 alter table Projekt
 rename column Name to Projektname;
 */
 
 
/*
Schnittmuster Tabelle 
Vorschlag von IGOR
*/
CREATE TABLE Schnittmuster (
    MediumID INT PRIMARY KEY,
    Nummer VARCHAR(20),
    Verlag VARCHAR(45),
    Jahr YEAR,
    FOREIGN KEY (MediumID)
        REFERENCES Medium (MediumID)
);

/*
Flyer Tabelle
Vorschlag von IGOR
*/
CREATE TABLE Flyer (
    MediumID INT PRIMARY KEY,
    Herausgeber VARCHAR(45),
    Erscheinungsdatum DATE,
    FOREIGN KEY (MediumID)
        REFERENCES Medium (MediumID)
);


-- Inhalt der einzelnen Tabellen

select * from anleitung;
select * from AnleitungAutor;
select * from Anleitungprojekt;
select * from autor;
select * from buch;
select * from gegenstand;
select * from gegenstandtechnik; 
select * from Medium;
select * from mediumautor; 
select * from mediumgegenstand; 
select * from mediumtechnik; 
select * from projekt;
select * from technik;
select * from website;
select * from zeitschrift;


