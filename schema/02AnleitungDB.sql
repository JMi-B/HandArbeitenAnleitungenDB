create database 02AnleitungDB;

create table anleitung (
idAnleitung int not null auto_increment,
AnleitungBezeichnung var(255),
AnleitungNr var(10),
Seitenzahl int,
Arbeitsbogen var(10),
Standort var(45),
Primary Key (idAnleitung)
);
