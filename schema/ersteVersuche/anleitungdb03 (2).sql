-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 23. Okt 2025 um 16:29
-- Server-Version: 10.4.32-MariaDB
-- PHP-Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `anleitungdb03`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `anleitung`
--

CREATE TABLE `anleitung` (
  `AnleitungID` int(11) NOT NULL,
  `Titel` varchar(150) NOT NULL,
  `Seitenzahl` int(11) DEFAULT NULL,
  `Grundschnitt` tinyint(1) DEFAULT 0,
  `Modellnummer` varchar(5) DEFAULT NULL,
  `Schnittbogen` varchar(5) DEFAULT NULL,
  `MediumID` int(11) NOT NULL,
  `GegenstandID` int(11) DEFAULT NULL,
  `TechnikID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `anleitungautor`
--

CREATE TABLE `anleitungautor` (
  `AnleitungID` int(11) NOT NULL,
  `AutorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `anleitungprojekt`
--

CREATE TABLE `anleitungprojekt` (
  `AnleitungID` int(11) NOT NULL,
  `ProjektID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `autor`
--

CREATE TABLE `autor` (
  `AutorID` int(11) NOT NULL,
  `Nachname` varchar(45) NOT NULL,
  `Vorname` varchar(45) DEFAULT NULL,
  `Alias` varchar(45) DEFAULT NULL,
  `Zusatz` varchar(10) DEFAULT NULL,
  `Firma` varchar(250) NOT NULL,
  `websiteautor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `buch`
--

CREATE TABLE `buch` (
  `MediumID` int(11) NOT NULL,
  `Untertitel` varchar(100) DEFAULT NULL,
  `Jahr` year(4) DEFAULT NULL,
  `Verlag` varchar(45) DEFAULT NULL,
  `Ort` varchar(45) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `Reihe` varchar(45) DEFAULT NULL,
  `Band` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Daten für Tabelle `buch`
--

INSERT INTO `buch` (`MediumID`, `Untertitel`, `Jahr`, `Verlag`, `Ort`, `ISBN`, `Reihe`, `Band`) VALUES
(1, NULL, NULL, NULL, NULL, '978-37724-4830-0', NULL, NULL),
(2, 'Einfach selbst genäht', NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '39 Projekte in edlem Blau', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'couture, broderie, appliqué, tricot et perles', NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, NULL, NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(31, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(32, 'Muster aus geometrischen Formen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `flyer`
--

CREATE TABLE `flyer` (
  `MediumID` int(11) NOT NULL,
  `Herausgeber` varchar(45) DEFAULT NULL,
  `Erscheinungsdatum` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `gegenstand`
--

CREATE TABLE `gegenstand` (
  `GegenstandID` int(11) NOT NULL,
  `Kategorie` varchar(45) DEFAULT NULL,
  `Zweck` varchar(45) DEFAULT NULL,
  `Stil` varchar(45) DEFAULT NULL,
  `Modell` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `gegenstandtechnik`
--

CREATE TABLE `gegenstandtechnik` (
  `GegenstandID` int(11) NOT NULL,
  `TechnikID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `medium`
--

CREATE TABLE `medium` (
  `MediumID` int(11) NOT NULL,
  `Titel` varchar(150) NOT NULL,
  `MedienArt` enum('Buch','Zeitschrift','Schnittmuster','Website','Flyer','PdfTexte') NOT NULL,
  `Sprache` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Daten für Tabelle `medium`
--

INSERT INTO `medium` (`MediumID`, `Titel`, `MedienArt`, `Sprache`) VALUES
(1, 'Harry Potter: Magisch Stricken', 'Buch', 'deutsch'),
(2, 'Bunte Nadelkissen', 'Buch', 'deutsch'),
(3, 'Burda Stricklehrbuch', 'Buch', 'deutsch'),
(4, 'Faszination Makramee', 'Buch', 'deutsch'),
(5, 'Geschenke für Mutti selbstgemacht', 'Buch', 'deutsch'),
(6, 'Japanisch Quilten', 'Buch', 'deutsch'),
(7, 'L‘atelier du fil', 'Buch', 'französisch'),
(8, 'omiyage', 'Buch', NULL),
(9, 'stricken à la carte', 'Buch', 'deutsch'),
(10, 'Accessoires', 'Zeitschrift', 'deutsch'),
(11, 'Andrea Kreativ', 'Zeitschrift', 'deutsch'),
(12, 'Andrea Kreativ', 'Zeitschrift', 'deutsch'),
(13, 'Anna', 'Zeitschrift', 'deutsch'),
(14, 'Anna', 'Zeitschrift', 'deutsch'),
(15, 'Anna', 'Zeitschrift', 'deutsch'),
(16, 'Anna', 'Zeitschrift', 'deutsch'),
(17, 'Anna', 'Zeitschrift', 'deutsch'),
(18, 'Anna', 'Zeitschrift', 'deutsch'),
(19, 'Anna', 'Zeitschrift', 'deutsch'),
(20, 'Anna', 'Zeitschrift', 'deutsch'),
(21, 'Anna', 'Zeitschrift', 'deutsch'),
(22, 'Anna', 'Zeitschrift', 'deutsch'),
(23, 'Anna', 'Zeitschrift', 'deutsch'),
(24, 'Anna', 'Zeitschrift', 'deutsch'),
(25, 'Anna', 'Zeitschrift', 'deutsch'),
(26, 'Burda', 'Zeitschrift', 'deutsch'),
(27, 'Burda', 'Zeitschrift', 'deutsch'),
(28, 'Burda Patchwork', 'Zeitschrift', 'deutsch'),
(29, 'Burda style', 'Zeitschrift', 'deutsch'),
(30, 'Das große Buch der Handarbeiten', 'Buch', 'deutsch'),
(31, 'Japanische Handschuhe stricken', 'Buch', 'deutsch'),
(32, 'English Paper Peircing', 'Buch', 'englisch');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mediumautor`
--

CREATE TABLE `mediumautor` (
  `MediumID` int(11) NOT NULL,
  `AutorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mediumgegenstand`
--

CREATE TABLE `mediumgegenstand` (
  `MediumID` int(11) NOT NULL,
  `GegenstandID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mediumtechnik`
--

CREATE TABLE `mediumtechnik` (
  `MediumID` int(11) NOT NULL,
  `TechnikID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pdftexte`
--

CREATE TABLE `pdftexte` (
  `MediumID` int(11) NOT NULL,
  `Dateiname` varchar(64) NOT NULL,
  `Pfad` varchar(128) NOT NULL,
  `Dateiformat` varchar(12) NOT NULL,
  `Datum` varchar(20) NOT NULL,
  `Ausdruck` tinyint(1) NOT NULL,
  `Ganz_Text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `projekt`
--

CREATE TABLE `projekt` (
  `ProjektID` int(11) NOT NULL,
  `Projektname` varchar(100) NOT NULL,
  `Beschreibung` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `schnittmuster`
--

CREATE TABLE `schnittmuster` (
  `MediumID` int(11) NOT NULL,
  `Nummer` varchar(20) DEFAULT NULL,
  `Verlag` varchar(45) DEFAULT NULL,
  `Jahr` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `technik`
--

CREATE TABLE `technik` (
  `TechnikID` int(11) NOT NULL,
  `Bereich` varchar(45) DEFAULT NULL,
  `Methode` varchar(45) DEFAULT NULL,
  `Arbeitsweise` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `website`
--

CREATE TABLE `website` (
  `MediumID` int(11) NOT NULL,
  `URL` varchar(100) DEFAULT NULL,
  `Kanalname` varchar(45) DEFAULT NULL,
  `LanchDatum` date DEFAULT NULL,
  `Download` tinyint(1) DEFAULT NULL,
  `Ausdruck` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `zeitschrift`
--

CREATE TABLE `zeitschrift` (
  `MediumID` int(11) NOT NULL,
  `Untertitel` varchar(45) DEFAULT NULL,
  `Jahrgang` year(4) DEFAULT NULL,
  `Monat` int(11) DEFAULT NULL,
  `Heftnummer` varchar(10) DEFAULT NULL,
  `Sonderheft` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Daten für Tabelle `zeitschrift`
--

INSERT INTO `zeitschrift` (`MediumID`, `Untertitel`, `Jahrgang`, `Monat`, `Heftnummer`, `Sonderheft`) VALUES
(10, NULL, '2019', NULL, '2019', 0),
(11, 'Puppenmode', NULL, NULL, '554', 0),
(12, 'Puppenmode spezial', NULL, NULL, '552', 1),
(13, NULL, '2007', 10, '10/2007', 0),
(14, NULL, '2007', 11, '11/2007', 0),
(15, NULL, '2007', 12, '12/2007', 0),
(16, NULL, '2007', 9, '9/2007', 0),
(17, NULL, '2009', 4, '04/2009', 0),
(18, NULL, '2010', 3, '03/2010', 0),
(19, NULL, '2010', 12, '12/2010', 0),
(20, NULL, '2011', 0, '04/2011', 0),
(21, NULL, '2012', 1, '1/2012', 0),
(22, NULL, '2019', 4, '4/2019', 0),
(23, NULL, '2020', 5, '5/2020', 0),
(24, NULL, '2020', 7, '7/2020', 0),
(25, NULL, '2020', 8, '8/2020', 0),
(26, 'accessoires', '2018', 5, '5/2018', 0),
(27, 'easy', '2019', 2, '2/2019', 0),
(28, 'Best of Burda Patchwork', '2018', NULL, 'Herbst/201', 1),
(29, NULL, '2020', 10, '10/2020', 0);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `anleitung`
--
ALTER TABLE `anleitung`
  ADD PRIMARY KEY (`AnleitungID`),
  ADD KEY `MediumID` (`MediumID`),
  ADD KEY `GegenstandID` (`GegenstandID`),
  ADD KEY `TechnikID` (`TechnikID`);

--
-- Indizes für die Tabelle `anleitungautor`
--
ALTER TABLE `anleitungautor`
  ADD PRIMARY KEY (`AnleitungID`,`AutorID`),
  ADD KEY `AutorID` (`AutorID`);

--
-- Indizes für die Tabelle `anleitungprojekt`
--
ALTER TABLE `anleitungprojekt`
  ADD PRIMARY KEY (`AnleitungID`,`ProjektID`),
  ADD KEY `ProjektID` (`ProjektID`);

--
-- Indizes für die Tabelle `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`AutorID`);

--
-- Indizes für die Tabelle `buch`
--
ALTER TABLE `buch`
  ADD PRIMARY KEY (`MediumID`);

--
-- Indizes für die Tabelle `flyer`
--
ALTER TABLE `flyer`
  ADD PRIMARY KEY (`MediumID`);

--
-- Indizes für die Tabelle `gegenstand`
--
ALTER TABLE `gegenstand`
  ADD PRIMARY KEY (`GegenstandID`);

--
-- Indizes für die Tabelle `gegenstandtechnik`
--
ALTER TABLE `gegenstandtechnik`
  ADD PRIMARY KEY (`GegenstandID`,`TechnikID`),
  ADD KEY `TechnikID` (`TechnikID`);

--
-- Indizes für die Tabelle `medium`
--
ALTER TABLE `medium`
  ADD PRIMARY KEY (`MediumID`);

--
-- Indizes für die Tabelle `mediumautor`
--
ALTER TABLE `mediumautor`
  ADD PRIMARY KEY (`MediumID`,`AutorID`),
  ADD KEY `AutorID` (`AutorID`);

--
-- Indizes für die Tabelle `mediumgegenstand`
--
ALTER TABLE `mediumgegenstand`
  ADD PRIMARY KEY (`MediumID`,`GegenstandID`),
  ADD KEY `GegenstandID` (`GegenstandID`);

--
-- Indizes für die Tabelle `mediumtechnik`
--
ALTER TABLE `mediumtechnik`
  ADD PRIMARY KEY (`MediumID`,`TechnikID`),
  ADD KEY `TechnikID` (`TechnikID`);

--
-- Indizes für die Tabelle `pdftexte`
--
ALTER TABLE `pdftexte`
  ADD PRIMARY KEY (`MediumID`);

--
-- Indizes für die Tabelle `projekt`
--
ALTER TABLE `projekt`
  ADD PRIMARY KEY (`ProjektID`);

--
-- Indizes für die Tabelle `schnittmuster`
--
ALTER TABLE `schnittmuster`
  ADD PRIMARY KEY (`MediumID`);

--
-- Indizes für die Tabelle `technik`
--
ALTER TABLE `technik`
  ADD PRIMARY KEY (`TechnikID`);

--
-- Indizes für die Tabelle `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`MediumID`);

--
-- Indizes für die Tabelle `zeitschrift`
--
ALTER TABLE `zeitschrift`
  ADD PRIMARY KEY (`MediumID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `anleitung`
--
ALTER TABLE `anleitung`
  MODIFY `AnleitungID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `autor`
--
ALTER TABLE `autor`
  MODIFY `AutorID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `gegenstand`
--
ALTER TABLE `gegenstand`
  MODIFY `GegenstandID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `medium`
--
ALTER TABLE `medium`
  MODIFY `MediumID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT für Tabelle `projekt`
--
ALTER TABLE `projekt`
  MODIFY `ProjektID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `technik`
--
ALTER TABLE `technik`
  MODIFY `TechnikID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `anleitung`
--
ALTER TABLE `anleitung`
  ADD CONSTRAINT `anleitung_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`),
  ADD CONSTRAINT `anleitung_ibfk_2` FOREIGN KEY (`GegenstandID`) REFERENCES `gegenstand` (`GegenstandID`),
  ADD CONSTRAINT `anleitung_ibfk_3` FOREIGN KEY (`TechnikID`) REFERENCES `technik` (`TechnikID`);

--
-- Constraints der Tabelle `anleitungautor`
--
ALTER TABLE `anleitungautor`
  ADD CONSTRAINT `anleitungautor_ibfk_1` FOREIGN KEY (`AnleitungID`) REFERENCES `anleitung` (`AnleitungID`),
  ADD CONSTRAINT `anleitungautor_ibfk_2` FOREIGN KEY (`AutorID`) REFERENCES `autor` (`AutorID`);

--
-- Constraints der Tabelle `anleitungprojekt`
--
ALTER TABLE `anleitungprojekt`
  ADD CONSTRAINT `anleitungprojekt_ibfk_1` FOREIGN KEY (`AnleitungID`) REFERENCES `anleitung` (`AnleitungID`),
  ADD CONSTRAINT `anleitungprojekt_ibfk_2` FOREIGN KEY (`ProjektID`) REFERENCES `projekt` (`ProjektID`);

--
-- Constraints der Tabelle `buch`
--
ALTER TABLE `buch`
  ADD CONSTRAINT `buch_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`);

--
-- Constraints der Tabelle `flyer`
--
ALTER TABLE `flyer`
  ADD CONSTRAINT `flyer_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`);

--
-- Constraints der Tabelle `gegenstandtechnik`
--
ALTER TABLE `gegenstandtechnik`
  ADD CONSTRAINT `gegenstandtechnik_ibfk_1` FOREIGN KEY (`GegenstandID`) REFERENCES `gegenstand` (`GegenstandID`),
  ADD CONSTRAINT `gegenstandtechnik_ibfk_2` FOREIGN KEY (`TechnikID`) REFERENCES `technik` (`TechnikID`);

--
-- Constraints der Tabelle `mediumautor`
--
ALTER TABLE `mediumautor`
  ADD CONSTRAINT `mediumautor_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`),
  ADD CONSTRAINT `mediumautor_ibfk_2` FOREIGN KEY (`AutorID`) REFERENCES `autor` (`AutorID`);

--
-- Constraints der Tabelle `mediumgegenstand`
--
ALTER TABLE `mediumgegenstand`
  ADD CONSTRAINT `mediumgegenstand_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`),
  ADD CONSTRAINT `mediumgegenstand_ibfk_2` FOREIGN KEY (`GegenstandID`) REFERENCES `gegenstand` (`GegenstandID`);

--
-- Constraints der Tabelle `mediumtechnik`
--
ALTER TABLE `mediumtechnik`
  ADD CONSTRAINT `mediumtechnik_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`),
  ADD CONSTRAINT `mediumtechnik_ibfk_2` FOREIGN KEY (`TechnikID`) REFERENCES `technik` (`TechnikID`);

--
-- Constraints der Tabelle `pdftexte`
--
ALTER TABLE `pdftexte`
  ADD CONSTRAINT `MediumID` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`);

--
-- Constraints der Tabelle `schnittmuster`
--
ALTER TABLE `schnittmuster`
  ADD CONSTRAINT `schnittmuster_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`);

--
-- Constraints der Tabelle `website`
--
ALTER TABLE `website`
  ADD CONSTRAINT `website_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`);

--
-- Constraints der Tabelle `zeitschrift`
--
ALTER TABLE `zeitschrift`
  ADD CONSTRAINT `zeitschrift_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
