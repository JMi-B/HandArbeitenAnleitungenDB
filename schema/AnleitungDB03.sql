-- create database AnleitungDB03 character set	utf8mb4 collate utf8mb4_bin; -- Zeichensatz festlegen, collate Binärvergleich, Groß-/Kleinschreibung und Akzente werden unterschieden
use AnleitungDB03;

/*
Medien Tabelle 
*/


CREATE TABLE Medium (
    MediumID INT AUTO_INCREMENT PRIMARY KEY,
    Titel VARCHAR(150) NOT NULL,
    MedienArt ENUM('Buch', 'Zeitschrift', 'Schnittmuster', 'Website', 'Flyer') NOT NULL
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
ALTER TABLE Objekt RENAME COLUMN Katergorie TO Kategorie;  -- wird von der aktuellen MySQL Version nicht unterstützt
	ALTER TABLE Objekt RENAME COLUMN Zwek TO Zweck; -- wird von der aktuellen MySQL Version nicht unterstützt
 */

-- ALTER TABLE Objekt CHANGE Katergorie Kategorie VARCHAR(45);
-- ALTER TABLE Objekt CHANGE Zwek Zweck VARCHAR(45);

/*
Tabelle für Projektideen
*/

CREATE TABLE Projekt (
    ProjektID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Beschreibung TEXT
);

/*
Bezeihungen
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

alter table Anleitung add ObjektID int not null;
alter table Anleitung add foreign key (ObjektID) references Objekt(ObjektID);	

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

alter table Anleitung modify ObjektID int null;

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

CREATE TABLE MediumObjekt (
    MediumID INT NOT NULL,
    ObjektID INT NOT NULL,
    PRIMARY KEY (MediumID , ObjektID),
    FOREIGN KEY (MediumID)
        REFERENCES Medium (MediumID),
    FOREIGN KEY (ObjektID)
        REFERENCES Objekt (ObjektID)
);


/* 
Umbenenung Objekt zu Gegenstand
*/

rename table Objekt to Gegenstand;

alter table Gegenstand change ObjektID GegenstandID int;
alter table Anleitung change ObjektID GegenstandID int;

rename table MediumObjekt to MediumGegenstand;
alter table MediumGegenstand change ObjektID GegenstandID int;


select table_name, column_name
from information_schema.columns
where column_name like '%Objekt%';

-- liefert alte Objekt Tabelle zurück

/*
Fehler suche


show tables;
describe objekt;

show full tables in anleitungdb03 where table_type like 'view';

-- information_schema greift auf alle DB zu nicht nur auf die in use

*/
/* Suche nach Resten von Objekt

-- Spalten
select table_name, column_name
from information_schema.columns
where table_schema = 'Anleitung03DB'
and column_name like '%Objekt%';

-- Tabellen
select table_name
from information_schema.tables
where table_schema = 'Anleitung03DB'
and table_name like '%Objekt%';

-- views
select table_name
from information_schema.views
where table_schema = 'Anleitung03DB'
and table_name like '%Objekt%';

-- indizes und constrainrs

select table_name
from information_schema.statistics
where table_schema = 'Anleitung03DB'
and index_name like '%Objekt%';

-- Fremdschlüssel

select table_name, constraint_name
from information_schema.key_column_usage
where table_schema = 'Anleitung03DB'
and constraint_name like '%Objekt%';

-- Trigger Routinen
SELECT ROUTINE_NAME, ROUTINE_TYPE
FROM INFORMATION_SCHEMA.ROUTINES
WHERE ROUTINE_SCHEMA = 'Anleitung03DB'
  AND ROUTINE_DEFINITION LIKE '%Objekt%';
  
  -- alles Sauber
  */
  
  CREATE TABLE GegenstandTechnik (
    GegenstandID INT NOT NULL,
    TechnikID INT NOT NULL,
    PRIMARY KEY (GegenstandID , TechnikID),
    FOREIGN KEY (GegenstandID)
        REFERENCES Gegenstand(GegenstandID),
    FOREIGN KEY (TechnikID)
        REFERENCES Technik(TechnikID)
);
  
 CREATE TABLE Buch (
  MediumID INT PRIMARY KEY,
  Untertitel VARCHAR(100),
  Jahr YEAR,
  Verlag VARCHAR(45),
  Ort VARCHAR(45),
  ISBN VARCHAR(20),
  Reihe VARCHAR(45),
  Band INT,
  FOREIGN KEY (MediumID) REFERENCES Medium(MediumID)
);
  