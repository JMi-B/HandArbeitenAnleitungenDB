create database 02AnleitungDB;

CREATE TABLE anleitung (
  idAnleitung INT NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  AnleitungBezeichnung VARCHAR(255) NOT NULL COMMENT 'Bezeichnung der Anleitung',
  AnleitungNr VARCHAR(10) Comment 'Eindeutige Nummer der Anleitung im Medium',
  Seitenzahl INT COMMENT 'Seitenzahl im Medium',
  Arbeitsbogen VARCHAR(10) COMMENT 'Arbeitsbogen-Nummer',
  Standort VARCHAR(45) COMMENT 'Standort der Anleitung',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (idAnleitung)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
