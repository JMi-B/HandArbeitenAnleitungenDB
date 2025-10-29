-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 29. Okt 2025 um 16:36
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
-- Datenbank: `anleitungdb04`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `anleitung`
--

CREATE TABLE `anleitung` (
  `AnleitungID` int(11) NOT NULL,
  `NameAnleitung` varchar(150) NOT NULL,
  `Seitenzahl` int(11) DEFAULT NULL,
  `Grundschnitt` tinyint(1) DEFAULT 0,
  `Modellnummer` varchar(5) DEFAULT NULL,
  `Schnittbogen` varchar(5) DEFAULT NULL,
  `MediumID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `anleitung`
--

INSERT INTO `anleitung` (`AnleitungID`, `NameAnleitung`, `Seitenzahl`, `Grundschnitt`, `Modellnummer`, `Schnittbogen`, `MediumID`) VALUES
(1, 'Khakifarbene Bundfaltenhose', NULL, 0, '42.0', 'E', 1),
(2, 'Einfache Windrat-Fäustlige', NULL, 1, '2.0', NULL, 2),
(3, 'Nadelkissen', NULL, 0, NULL, 'CD', 3),
(4, 'Khakifarbene Bundfaltenhose', NULL, 0, '42.0', 'E', 1),
(5, 'Khakifarbene Bundfaltenhose', NULL, 0, '42.0', 'E', 1),
(6, 'Khakifarbene Bundfaltenhose', NULL, 0, '42.0', 'E', 1),
(7, 'Khakifarbene Bundfaltenhose', NULL, 0, '42.0', 'E', 1),
(8, 'Khakifarbene Bundfaltenhose', NULL, 0, '42.0', 'E', 1),
(9, 'Khakifarbene Bundfaltenhose', NULL, 0, '42.0', 'E', 1),
(10, 'Khakifarbene Bundfaltenhose', NULL, 0, '42.0', 'E', 1),
(11, 'Khakifarbene Bundfaltenhose', NULL, 0, '42.0', 'E', 1),
(12, 'Khakifarbene Bundfaltenhose', NULL, 0, '42.0', 'E', 1),
(13, 'Khakifarbene Bundfaltenhose', NULL, 0, '42.0', 'E', 1),
(14, 'Einfache Windrat-Fäustlige', NULL, 1, '2.0', NULL, 2),
(15, 'Nadelkissen', NULL, 0, NULL, 'CD', 3),
(16, 'Wende-Mantel', NULL, 0, NULL, NULL, 4),
(17, 'Hexagon-Tuch', NULL, 0, NULL, NULL, 5),
(18, 'Cozy Home', NULL, 0, NULL, NULL, 6),
(19, 'Technik trifft Tradition', NULL, 0, NULL, NULL, 7),
(20, 'Khakifarbene Bundfaltenhose', NULL, 0, '42.0', 'E', 1),
(21, 'Einfache Windrat-Fäustlige', NULL, 1, '2.0', NULL, 2),
(22, 'Nadelkissen', NULL, 0, NULL, 'CD', 3),
(23, 'Wende-Mantel', NULL, 0, NULL, NULL, 4),
(24, 'Hexagon-Tuch', NULL, 0, NULL, NULL, 5),
(25, 'Cozy Home', NULL, 0, NULL, NULL, 6),
(26, 'Technik trifft Tradition', NULL, 0, NULL, NULL, 7),
(27, 'Khakifarbene Bundfaltenhose', NULL, 0, '42.0', 'E', 1),
(28, 'Einfache Windrat-Fäustlige', NULL, 1, '2.0', NULL, 2),
(29, 'Nadelkissen', NULL, 0, NULL, 'CD', 3),
(30, 'Khakifarbene Bundfaltenhose', NULL, 0, '42.0', 'E', 1),
(31, 'Einfache Windrat-Fäustlige', NULL, 1, '2.0', NULL, 2),
(32, 'Nadelkissen', NULL, 0, NULL, 'CD', 3),
(33, 'Wende-Mantel', NULL, 0, NULL, NULL, 4),
(34, 'Hexagon-Tuch', NULL, 0, NULL, NULL, 5),
(35, 'Cozy Home', NULL, 0, NULL, NULL, 6),
(36, 'Technik trifft Tradition', NULL, 0, NULL, NULL, 7);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `anleitungautor`
--

CREATE TABLE `anleitungautor` (
  `AnleitungID` int(11) NOT NULL,
  `AutorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `anleitungautor`
--

INSERT INTO `anleitungautor` (`AnleitungID`, `AutorID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(13, 1),
(14, 2),
(15, 3),
(16, 4),
(17, 5),
(18, 6),
(19, 7),
(20, 1),
(21, 2),
(22, 3),
(23, 4),
(24, 5),
(25, 6),
(26, 7),
(27, 1),
(28, 2),
(30, 1),
(31, 2),
(32, 3),
(33, 4),
(34, 5),
(35, 6),
(36, 7);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `autor`
--

CREATE TABLE `autor` (
  `AutorID` int(11) NOT NULL,
  `Nachname` varchar(45) DEFAULT NULL,
  `Vorname` varchar(45) DEFAULT NULL,
  `Alias` varchar(45) DEFAULT NULL,
  `Zusatz` varchar(10) DEFAULT NULL,
  `Firma` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `autor`
--

INSERT INTO `autor` (`AutorID`, `Nachname`, `Vorname`, `Alias`, `Zusatz`, `Firma`) VALUES
(1, 'Bär', 'Sigrid', NULL, NULL, NULL),
(2, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(3, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, 'anna'),
(5, NULL, NULL, NULL, NULL, 'Desingner Knitting deutsch'),
(6, NULL, NULL, NULL, NULL, 'burda'),
(7, NULL, NULL, NULL, NULL, 'OZ-Verlag');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `buch`
--

INSERT INTO `buch` (`MediumID`, `Untertitel`, `Jahr`, `Verlag`, `Ort`, `ISBN`, `Reihe`, `Band`) VALUES
(1, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(2, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(3, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `flyer`
--

CREATE TABLE `flyer` (
  `MediumID` int(11) NOT NULL,
  `Herausgeber` varchar(45) DEFAULT NULL,
  `Erscheinungsdatum` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `medium`
--

CREATE TABLE `medium` (
  `MediumID` int(11) NOT NULL,
  `TitelMedium` varchar(150) NOT NULL,
  `MedienArt` enum('Buch','Zeitschrift','Schnittmuster','Website','Flyer','PdfTexte') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `medium`
--

INSERT INTO `medium` (`MediumID`, `TitelMedium`, `MedienArt`) VALUES
(1, 'Das große Buch der Handarbeiten', 'Buch'),
(2, 'Japanische Hansschuhe stricken', 'Buch'),
(3, 'English Paper Peircing', 'Buch'),
(4, 'Anna', 'Zeitschrift'),
(5, 'Designer Knitting', 'Zeitschrift'),
(6, 'Burda', 'Zeitschrift'),
(7, 'Patchwork Magazin', 'Zeitschrift');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mediumautor`
--

CREATE TABLE `mediumautor` (
  `MediumID` int(11) NOT NULL,
  `AutorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `mediumautor`
--

INSERT INTO `mediumautor` (`MediumID`, `AutorID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `schnittmuster`
--

CREATE TABLE `schnittmuster` (
  `MediumID` int(11) NOT NULL,
  `Nummer` varchar(20) DEFAULT NULL,
  `Verlag` varchar(45) DEFAULT NULL,
  `Jahr` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `zeitschrift`
--

CREATE TABLE `zeitschrift` (
  `MediumID` int(11) NOT NULL,
  `Untertitel` varchar(164) DEFAULT NULL,
  `Jahrgang` year(4) DEFAULT NULL,
  `Monat` int(11) DEFAULT NULL,
  `Heftnummer` varchar(10) DEFAULT NULL,
  `Sonderheft` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `zeitschrift`
--

INSERT INTO `zeitschrift` (`MediumID`, `Untertitel`, `Jahrgang`, `Monat`, `Heftnummer`, `Sonderheft`) VALUES
(4, NULL, '2010', 12, '50.0', 0),
(5, NULL, '2019', 2, NULL, 0),
(6, 'accessoires', '2018', 5, '34.0', 0),
(7, 'Taschen selber machen', '2010', NULL, '25.0', 1);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `anleitung`
--
ALTER TABLE `anleitung`
  ADD PRIMARY KEY (`AnleitungID`),
  ADD KEY `anleitung_ibfk_1` (`MediumID`);

--
-- Indizes für die Tabelle `anleitungautor`
--
ALTER TABLE `anleitungautor`
  ADD PRIMARY KEY (`AnleitungID`,`AutorID`),
  ADD KEY `anleitungautor_ibfk_2` (`AutorID`);

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
-- Indizes für die Tabelle `medium`
--
ALTER TABLE `medium`
  ADD PRIMARY KEY (`MediumID`);

--
-- Indizes für die Tabelle `mediumautor`
--
ALTER TABLE `mediumautor`
  ADD PRIMARY KEY (`MediumID`,`AutorID`),
  ADD KEY `mediumautor_ibfk_2` (`AutorID`);

--
-- Indizes für die Tabelle `pdftexte`
--
ALTER TABLE `pdftexte`
  ADD PRIMARY KEY (`MediumID`);

--
-- Indizes für die Tabelle `schnittmuster`
--
ALTER TABLE `schnittmuster`
  ADD PRIMARY KEY (`MediumID`);

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
  MODIFY `AnleitungID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT für Tabelle `autor`
--
ALTER TABLE `autor`
  MODIFY `AutorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `medium`
--
ALTER TABLE `medium`
  MODIFY `MediumID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `anleitung`
--
ALTER TABLE `anleitung`
  ADD CONSTRAINT `anleitung_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `anleitungautor`
--
ALTER TABLE `anleitungautor`
  ADD CONSTRAINT `anleitungautor_ibfk_1` FOREIGN KEY (`AnleitungID`) REFERENCES `anleitung` (`AnleitungID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `anleitungautor_ibfk_2` FOREIGN KEY (`AutorID`) REFERENCES `autor` (`AutorID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `buch`
--
ALTER TABLE `buch`
  ADD CONSTRAINT `buch_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `flyer`
--
ALTER TABLE `flyer`
  ADD CONSTRAINT `flyer_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`);

--
-- Constraints der Tabelle `mediumautor`
--
ALTER TABLE `mediumautor`
  ADD CONSTRAINT `mediumautor_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mediumautor_ibfk_2` FOREIGN KEY (`AutorID`) REFERENCES `autor` (`AutorID`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `zeitschrift_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
