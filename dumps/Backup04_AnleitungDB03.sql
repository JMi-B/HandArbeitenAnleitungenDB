
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
 erster probe Datensatz
 */
 
 /* 1. Mediumn anlegen */
 
 Insert into Medium (Titel, Sprache, MedienArt)
 Values ('Das große Buch der Handarbeiten', 'deutsch', 'Buch');
 set @MediumID := last_insert_id();
 
 /* Buch Anlegen */
 
 insert into Buch (MediumID, Untertitel, Jahr, Verlag, Ort, ISBN, Reihe, Band)
 values (@MediumID, 'X', NULL, 'Gruner & Jahr', 'Hamburg', Null, 'Das große Buch der Handarbeiten', 'X');

/* Autor */
 
 insert into Autor (Nachname, Vorname)
 values ('Bär', 'Sigrid');
 set @AutorID := last_insert_id();
 
/*Gegenstand*/

insert	into Gegenstand (Kategorie, Zweck, Stil, Modell)
values ('Kleidung', 'OB', ' Paperbag', 'Hose');
set @GegenstandID := last_insert_id();

/*Technik*/

insert into Technik (Bereich, Methode, Arbeitsweise)
values ('nähen', 'schneidern', Null);
set @TechnikID := last_insert_id();

/*Projekt*/

insert into Projekt (Projektname)
values ('Hobbithose');
set @ProjektID := last_insert_id();

/*Anleitung*/

insert into Anleitung (Titel, Seitenzahl, Grundschnitt, Modellnummer, Schnittbogen, MediumID, GegenstandID, TechnikID)
values ('Khakifarbene Bundfaltenhose', 345, false, '42', 'E', @MediumID, @GegenstandID, @TechnikID);
set @AnleitungID := last_insert_id();

/* VErknüpfungen*/

insert into anleitungautor (AnleitungID, AutorID)
values(@AnleitungID, @AutorID);

insert into anleitungprojekt (anleitungID, ProjektID)
values (@AnleitungID, @ProjektID);

insert into gegenstandtechnik (gegenstandID, technikID)
values (@gegenstandID, @TechnikID);

insert into mediumautor (mediumid, autorid)
values (@mediumID, @AutorID);

insert into mediumtechnik (mediumid, technikid)
values (@mediumid, @technikid);


/*
Was ist in den Tabellen
*/

/*
zweiter DatenSatz
*/

Insert into Medium (Titel, Sprache, MedienArt)
values ('Japanische Hansschuhe stricken', 'deutsch', 'Buch');
set @MediumID2 := last_insert_id();

insert into Buch (MediumID, Untertitel, Jahr, Verlag, Ort, ISBN, Reihe, Band)
values ( @MediumID2, '50 neue Projekte vom Strick-Sensei', 2019, 'Stiebner', 'Grünwald', '978-3-8307-0999-2', null, null);

insert into Autor (Nachname, Vorname, Alias, Zusatz)
values ('Kestler', 'Bernd', 'Strick-Sensei', null);
set @AutorID2 := last_insert_id();

insert into Gegenstand (Kategorie, Zweck, Stil, Modell)
values ('Acsessoires', null, 'Ohne Finger', 'Handschuh');
set @GegenstandID2 := last_insert_id();

insert into Technik (Bereich, Methode, Arbeitsweise)
values ('Stricken', 'Rund', 'One Piece');
set @TechnikID2 := last_insert_id();

insert into Anleitung ( Titel, Seitenzahl, Grundschnitt, Modellnummer, Schnittbogen, MediumID, GegenstandID, TechnikID)
values ('Einfache Windrad-Fäustlinge', 52, true, '2', null,  @MediumID2, @GegenstandID2, @TechnikID2);
set @AnleitungID2 := last_insert_id();

insert into anleitungautor (AnleitungID, AutorID)
values (@AnleitungID2, @AutorID2);

insert into gegenstandtechnik (GegenstandID, TechnikID)
values (@GegenstandID2, @TechnikID2);

insert into mediumautor (MediumID, AutorID)
values (@MediumID2, @AutorID2);

insert into mediumtechnik (MediumID, TechnikID)
values (@MediumID2, @TechnikID2);

/*
MediumGegenstand nachträglich füllen
*/

insert into MediumGegenstand (MediumID, GegenstandID)
values (@MediumID, @GegenstandID);

insert into MediumGegenstand (MediumID, GegenstandID)
values (@MediumID2, @GegenstandID2);

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


/*
Datensätze Löschen vor import table from
*/

select * from Medium where Titel in ('Das große Buch der Handarbeiten', 'Japanische Hansschuhe stricken');

/* Code von IGOR*/

-- safemode ausschalten
SET SQL_SAFE_UPDATES = 0;
-- Schritt 1: Lösche alle verknüpften Einträge mit MediumID 1 oder 2
DELETE FROM AnleitungAutor WHERE AnleitungID IN (SELECT AnleitungID FROM Anleitung WHERE MediumID IN (1,2));
DELETE FROM AnleitungProjekt WHERE AnleitungID IN (SELECT AnleitungID FROM Anleitung WHERE MediumID IN (1,2));
DELETE FROM Anleitung WHERE MediumID IN (1,2);

DELETE FROM MediumAutor WHERE MediumID IN (1,2);
DELETE FROM MediumTechnik WHERE MediumID IN (1,2);
DELETE FROM MediumGegenstand WHERE MediumID IN (1,2);

DELETE FROM Buch WHERE MediumID IN (1,2);
DELETE FROM Zeitschrift WHERE MediumID IN (1,2);
DELETE FROM Schnittmuster WHERE MediumID IN (1,2);
DELETE FROM Flyer WHERE MediumID IN (1,2);
DELETE FROM Website WHERE MediumID IN (1,2);

DELETE FROM Medium WHERE MediumID IN (1,2);

-- Lösche alle GegenstandTechnik-Einträge, deren Gegenstand nicht mehr verwendet wird
DELETE FROM GegenstandTechnik
WHERE GegenstandID NOT IN (
    SELECT GegenstandID FROM Anleitung WHERE GegenstandID IS NOT NULL
    UNION
    SELECT GegenstandID FROM MediumGegenstand
);

-- Lösche alle GegenstandTechnik-Einträge, deren Technik nicht mehr verwendet wird
DELETE FROM GegenstandTechnik
WHERE TechnikID NOT IN (
    SELECT TechnikID FROM Anleitung
    UNION
    SELECT TechnikID FROM MediumTechnik
);

-- Schritt 2: Lösche verwaiste Gegenstände
DELETE FROM Gegenstand
WHERE GegenstandID NOT IN (
    SELECT GegenstandID FROM Anleitung WHERE GegenstandID IS NOT NULL
    UNION
    SELECT GegenstandID FROM MediumGegenstand
    UNION
    SELECT GegenstandID FROM GegenstandTechnik
);

-- Schritt 3: Lösche verwaiste Techniken
DELETE FROM Technik
WHERE TechnikID NOT IN (
    SELECT TechnikID FROM Anleitung
    UNION
    SELECT TechnikID FROM MediumTechnik
    UNION
    SELECT TechnikID FROM GegenstandTechnik
);

-- Schritt 4: Lösche verwaiste Autoren
DELETE FROM Autor
WHERE AutorID NOT IN (
    SELECT AutorID FROM AnleitungAutor
    UNION
    SELECT AutorID FROM MediumAutor
);

DELETE FROM Projekt
WHERE ProjektID NOT IN (
    SELECT ProjektID FROM AnleitungProjekt
);

SET SQL_SAFE_UPDATES = 1;

