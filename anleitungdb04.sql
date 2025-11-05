-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 05. Nov 2025 um 16:31
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
  `Seitenzahl` int(11) NOT NULL,
  `Grundschnitt` tinyint(1) DEFAULT 0,
  `ModelNR` varchar(5) DEFAULT NULL,
  `Schnittbogen` varchar(5) DEFAULT NULL,
  `MediumID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `anleitung`
--

INSERT INTO `anleitung` (`AnleitungID`, `NameAnleitung`, `Seitenzahl`, `Grundschnitt`, `ModelNR`, `Schnittbogen`, `MediumID`) VALUES
(1, 'Khakifarbene Bundfaltenhose', 345, 0, '42', 'E', 1),
(2, 'Nadelkissen', 69, 0, NULL, 'CD', 2),
(3, 'Handarbeitskörbchen', 9, NULL, '9', NULL, 3),
(4, 'Nähetui', 73, NULL, 'F', NULL, 4),
(5, 'Tasche für Nähutensilien', 77, NULL, 'H', NULL, 4),
(6, 'Etuit für Boutis-Nadeln', 77, NULL, NULL, NULL, 4),
(7, 'Einfache Windrad-Fäustlige', 52, 1, '2', NULL, 5),
(8, 'Wende-Mantel', 54, 0, '50', NULL, 6),
(9, 'Biscoru', 25, NULL, '21', NULL, 7),
(10, 'Cozy Home', 11, 0, '34', NULL, 8),
(11, 'Nähetui', 17, NULL, NULL, NULL, 9),
(12, 'Hexagon-Tuch', 8, 0, NULL, NULL, 10),
(13, 'Travellers Friend', 26, 0, NULL, NULL, 11),
(14, 'Endlich Pausen-Zeit', 10, 0, '4', NULL, 12),
(15, 'Für alle Fälle', 12, 0, '5', NULL, 12),
(16, 'Freie Fahrt', 40, 0, '13', NULL, 12),
(17, 'Viel-Falt', 48, 0, '15', NULL, 12),
(18, 'Für Dich', 60, 0, '19', NULL, 13),
(19, 'Dekorativer Stauraum', 26, NULL, '9', NULL, 14),
(20, 'Alles in Ordnung?', 30, NULL, NULL, NULL, 11),
(21, 'Fadenkörbchen & Nadelkissen', 62, NULL, NULL, NULL, 15),
(22, 'Projekttasche & Nadelrolle', 64, NULL, NULL, NULL, 15),
(23, 'Little Noah', 42, 0, NULL, NULL, 16),
(24, 'Immer den Durchblick behalten', 46, 0, NULL, NULL, 16),
(25, 'Für mein Nähzimmer', 28, NULL, NULL, NULL, 16),
(26, 'Für mein Nähzimmer', 29, NULL, NULL, NULL, 16),
(27, 'Stern', 34, NULL, NULL, NULL, 16),
(28, 'Brotzeitköfferchen', 60, 0, NULL, NULL, 17),
(29, 'Tea-rific', 40, NULL, NULL, NULL, 18),
(30, 'Nählady', 52, NULL, NULL, NULL, 19),
(31, 'Ordentlich kreativ', 12, NULL, NULL, NULL, 17),
(32, 'Stitch in Time', 14, NULL, NULL, NULL, 17),
(33, 'Stitch in Time', 16, NULL, NULL, NULL, 17),
(34, 'Mein kleines Nähzimmer', 20, NULL, NULL, NULL, 17),
(35, 'Schöne Aussichten', 38, NULL, NULL, NULL, 17),
(36, '2 in 1- Alles dabei', 46, NULL, NULL, NULL, 17),
(37, 'Ordnung muss sein', 49, NULL, NULL, NULL, 20),
(38, 'Technik trifft Tradition', 36, 0, NULL, NULL, 21),
(39, 'Hexagon, Raute & Co', 2, NULL, NULL, NULL, 10),
(40, 'Stricknadelordnung', 95, NULL, NULL, NULL, 10),
(41, 'Utensilo To Go', 11, NULL, NULL, NULL, 22),
(42, 'Ein Ball für den Ball', 54, 0, NULL, NULL, 11),
(43, 'Kimikos Tasche', 20, 0, NULL, NULL, 23),
(44, 'Flechttasche', 48, 0, NULL, NULL, 24),
(45, 'Monstertasche', 16, 0, NULL, NULL, 7),
(46, 'Unter der Haube', 48, NULL, NULL, NULL, 7),
(47, 'Unter der Haube', 49, NULL, NULL, NULL, 25),
(48, 'Gut erpackt', 55, NULL, NULL, NULL, 23),
(49, 'My Sewing Box', 18, NULL, NULL, NULL, 26),
(50, 'Ordnungshelfer', 23, NULL, NULL, NULL, 26),
(51, 'Quilters Hip-Bag', 14, NULL, NULL, NULL, 24),
(52, 'Zum Nähen schön', 56, NULL, '22', NULL, 27),
(53, 'Lunch-Bag', 6, 0, NULL, NULL, 28),
(54, 'Die kleine Reiseapotheke', 52, NULL, NULL, NULL, 28),
(55, '1 Khakifarbene Bundfaltenhose', 345, 0, '42', 'E', 29),
(56, '2 Khakifarbene Bundfaltenhose', 355, 0, '42', 'E', 30),
(57, '3 Khakifarbene Bundfaltenhose', 365, 0, '42', 'E', 31),
(58, '4 Khakifarbene Bundfaltenhose', 375, 0, '42', 'E', 32),
(59, '5 Khakifarbene Bundfaltenhose', 385, 0, '42', 'E', 33),
(60, '6 Khakifarbene Bundfaltenhose', 395, 0, '42', 'E', 34),
(61, '7 Khakifarbene Bundfaltenhose', 405, 0, '42', 'E', 35),
(62, '8 Khakifarbene Bundfaltenhose', 415, 0, '42', 'E', 36),
(63, '9 Khakifarbene Bundfaltenhose', 425, 0, '42', 'E', 37),
(64, '10 Khakifarbene Bundfaltenhose', 435, 0, '42', 'E', 38),
(65, '11 Khakifarbene Bundfaltenhose', 445, 0, '42', 'E', 39),
(66, '12 Khakifarbene Bundfaltenhose', 455, 0, '42', 'E', 40),
(67, '13 Khakifarbene Bundfaltenhose', 465, 0, '42', 'E', 41),
(68, '14 Khakifarbene Bundfaltenhose', 475, 0, '42', 'E', 42),
(69, 'Gestrickte Teufelsmütze aus Rainbow Baumwolle', 5, 1, NULL, NULL, 43),
(70, 'Gestrickte DROPS Mütze mit Dominomuster aus Delight', 4, 0, '0-882', NULL, 44),
(71, 'Grante', 7, 1, 'bd-09', NULL, 45);

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
(4, 4),
(5, 4),
(6, 4),
(7, 5),
(8, 6),
(9, 6),
(10, 7),
(11, 7),
(12, 8),
(13, 9),
(14, 10),
(15, 10),
(16, 10),
(17, 10),
(18, 10),
(19, 10),
(20, 10),
(21, 11),
(22, 11),
(23, 12),
(24, 12),
(25, 12),
(26, 12),
(27, 12),
(28, 12),
(29, 12),
(30, 12),
(31, 12),
(32, 12),
(33, 12),
(34, 12),
(35, 12),
(36, 12),
(37, 12),
(38, 9),
(39, 9),
(40, 9),
(41, 9),
(42, 9),
(43, 9),
(44, 9),
(45, 9),
(46, 11),
(47, 11),
(48, 11),
(49, 11),
(50, 11),
(51, 11),
(52, 11),
(53, 9),
(54, 9),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 13),
(70, 14),
(71, 14);

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
(1, 'Bär', 'Sigrid', NULL, NULL, 'Gruner & Jahr'),
(2, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, 'Ravensburg'),
(4, 'Kutoh', 'Shizuko', NULL, NULL, NULL),
(5, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(6, NULL, NULL, NULL, NULL, 'anna'),
(7, NULL, NULL, NULL, NULL, 'burda'),
(8, NULL, NULL, NULL, NULL, 'Desingner Knitting deutsch'),
(9, NULL, NULL, NULL, NULL, 'OZ-Verlag'),
(10, NULL, NULL, NULL, NULL, 'Lena'),
(11, NULL, NULL, NULL, NULL, 'cravty'),
(12, NULL, NULL, NULL, NULL, 'P&N'),
(13, NULL, NULL, NULL, NULL, 'hobbii'),
(14, NULL, NULL, NULL, NULL, 'Drops-Desing');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `buch`
--

CREATE TABLE `buch` (
  `MediumID` int(11) NOT NULL,
  `Untertitel` varchar(100) DEFAULT NULL,
  `Jahr` varchar(5) NOT NULL,
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
(1, 'I', 'o.J.', 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '1.0'),
(2, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(3, 'o.T.', 'o.J.', 'Ravensburg', NULL, NULL, NULL, NULL),
(4, '40 Projekte in edlem Blau', 'o.J.', NULL, NULL, NULL, NULL, NULL),
(5, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(29, 'II', 'o.J.', 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '2.0'),
(30, 'III', 'o.J.', 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '3.0'),
(31, 'IV', 'o.J.', 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '4.0'),
(32, 'V', 'o.J.', 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '5.0'),
(33, 'VI', 'o.J.', 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '6.0'),
(34, 'VII', 'o.J.', 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '7.0'),
(35, 'VIII', 'o.J.', 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '8.0'),
(36, 'IX', 'o.J.', 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '9.0'),
(37, 'X', 'o.J.', 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(38, 'XI', 'o.J.', 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '11.0'),
(39, 'XII', 'o.J.', 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '12.0'),
(40, 'XIII', 'o.J.', 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '13.0'),
(41, 'XIV', 'o.J.', 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '14.0'),
(42, 'XV', 'o.J.', 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '15.0');

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
(2, 'English Paper Peircing', 'Buch'),
(3, 'Geschenke für Mutti selbstgemacht', 'Buch'),
(4, 'Japanisch Quilten', 'Buch'),
(5, 'Japanische Hansschuhe stricken', 'Buch'),
(6, 'Anna', 'Zeitschrift'),
(7, 'Anna', 'Zeitschrift'),
(8, 'Burda', 'Zeitschrift'),
(9, 'Burda Patchwork', 'Zeitschrift'),
(10, 'Designer Knitting', 'Zeitschrift'),
(11, 'Lenas Patchwork', 'Zeitschrift'),
(12, 'Lenas Patchwork', 'Zeitschrift'),
(13, 'Lenas Patchwork', 'Zeitschrift'),
(14, 'Lenas Patchwork', 'Zeitschrift'),
(15, 'Nähstoff', 'Zeitschrift'),
(16, 'Patchwork & Nähen', 'Zeitschrift'),
(17, 'Patchwork & Nähen Spezial', 'Zeitschrift'),
(18, 'Patchwork & Nähen Spezial', 'Zeitschrift'),
(19, 'Patchwork & Nähen Spezial', 'Zeitschrift'),
(20, 'Patchwork & Nähen Spezial', 'Zeitschrift'),
(21, 'Patchwork Magazin', 'Zeitschrift'),
(22, 'Patchwork Magazin', 'Zeitschrift'),
(23, 'Patchwork Spezial', 'Zeitschrift'),
(24, 'Patchwork Spezial', 'Zeitschrift'),
(25, 'Patchwork Spezial', 'Zeitschrift'),
(26, 'Patchwork Spezial', 'Zeitschrift'),
(27, 'Sabrina Nähen Special', 'Zeitschrift'),
(28, 'Sonderheft Patchwork Magazin', 'Zeitschrift'),
(29, 'Das große Buch der Handarbeiten', 'Buch'),
(30, 'Das große Buch der Handarbeiten', 'Buch'),
(31, 'Das große Buch der Handarbeiten', 'Buch'),
(32, 'Das große Buch der Handarbeiten', 'Buch'),
(33, 'Das große Buch der Handarbeiten', 'Buch'),
(34, 'Das große Buch der Handarbeiten', 'Buch'),
(35, 'Das große Buch der Handarbeiten', 'Buch'),
(36, 'Das große Buch der Handarbeiten', 'Buch'),
(37, 'Das große Buch der Handarbeiten', 'Buch'),
(38, 'Das große Buch der Handarbeiten', 'Buch'),
(39, 'Das große Buch der Handarbeiten', 'Buch'),
(40, 'Das große Buch der Handarbeiten', 'Buch'),
(41, 'Das große Buch der Handarbeiten', 'Buch'),
(42, 'Das große Buch der Handarbeiten', 'Buch'),
(43, 'GestrickteTeufelsmtzeRainbowBaumwolle', ''),
(44, 'DROPSGestrickteMützeDominomuster', ''),
(45, 'Granite', '');

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
(7, 6),
(7, 9),
(7, 11),
(8, 7),
(9, 7),
(10, 8),
(10, 9),
(11, 9),
(11, 10),
(12, 10),
(13, 10),
(14, 10),
(15, 11),
(16, 12),
(17, 12),
(18, 12),
(19, 12),
(20, 12),
(21, 9),
(22, 9),
(23, 9),
(23, 11),
(24, 9),
(24, 11),
(25, 11),
(26, 11),
(27, 11),
(28, 9),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 13),
(44, 14),
(45, 14);

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
-- Tabellenstruktur für Tabelle `textdatei`
--

CREATE TABLE `textdatei` (
  `MediumID` int(11) NOT NULL,
  `Dateiname` varchar(64) NOT NULL,
  `Pfad` varchar(128) NOT NULL,
  `Dateiformat` varchar(12) NOT NULL,
  `Datum` varchar(20) NOT NULL,
  `Ausdruck` tinyint(1) NOT NULL,
  `GanzerText` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `textdatei`
--

INSERT INTO `textdatei` (`MediumID`, `Dateiname`, `Pfad`, `Dateiformat`, `Datum`, `Ausdruck`, `GanzerText`) VALUES
(43, 'GestrickteTeufelsmtzeRainbowBaumwolle.pdf', 'C:\\Users\\juliane.bonenkamp\\HandArbeitenAnleitungenDB\\Data\\strick\\Mützen\\GestrickteTeufelsmtzeRainbowBaumwolle.pdf', 'pdf', '2018', 0, ''),
(44, 'DROPSGestrickteMützeDominomuster.pdf', 'C:\\Users\\juliane.bonenkamp\\HandArbeitenAnleitungenDB\\Data\\strick\\Mützen\\DROPSGestrickteMützeDominomuster.pdf', 'pdf', '10.12.2019', 0, ''),
(45, 'Granite.pdf', '\"C:\\Users\\juliane.bonenkamp\\HandArbeitenAnleitungenDB\\Data\\strick\\Mützen\\Granite.pdf\"', 'pdf', '10.12.2019', 0, '');

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
  `HeftThema` varchar(164) DEFAULT NULL,
  `Jahrgang` year(4) DEFAULT NULL,
  `Monat` int(11) DEFAULT NULL,
  `HeftNR` varchar(10) DEFAULT NULL,
  `Sonderheft` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `zeitschrift`
--

INSERT INTO `zeitschrift` (`MediumID`, `HeftThema`, `Jahrgang`, `Monat`, `HeftNR`, `Sonderheft`) VALUES
(6, NULL, '2010', 12, NULL, 0),
(7, NULL, '2011', 4, NULL, 0),
(8, 'accessoires', '2018', 5, NULL, 0),
(9, 'Best of', '2018', NULL, 'Herbst', 0),
(10, NULL, '2019', 2, NULL, 0),
(11, 'Taschen', '2010', 3, NULL, 0),
(12, 'Trendige Taschen', '2015', NULL, '43', 0),
(13, 'Taschen', '2013', NULL, '43', 0),
(14, 'Trendige Taschen', '0000', NULL, '43', 0),
(15, NULL, '0000', NULL, '1', 0),
(16, 'Die 100 besten Ideen', '2020', 1, NULL, 0),
(17, 'Ordnungshelden', '2019', 5, NULL, 1),
(18, 'Spaß mit Patchwork', '2018', 3, NULL, 1),
(19, 'Spaß mit Patchwork', '2019', 3, NULL, 1),
(20, 'Ordnungshelden', '2020', 5, NULL, 1),
(21, 'Taschen selber machen', '2010', NULL, '25', 1),
(22, NULL, '2020', 2, NULL, 0),
(23, 'Taschen', '2008', 3, NULL, 0),
(24, 'Taschen', '2009', 3, NULL, 0),
(25, 'Taschen', '2012', 4, NULL, 0),
(26, 'Spielereien', '2012', 1, NULL, 0),
(27, 'Ideen fürs neue Jahr', '0000', NULL, 'SN 059', 1),
(28, 'Taschen selber machen', '2009', NULL, '25', 1);

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
-- Indizes für die Tabelle `schnittmuster`
--
ALTER TABLE `schnittmuster`
  ADD PRIMARY KEY (`MediumID`);

--
-- Indizes für die Tabelle `textdatei`
--
ALTER TABLE `textdatei`
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
  MODIFY `AnleitungID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT für Tabelle `autor`
--
ALTER TABLE `autor`
  MODIFY `AutorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT für Tabelle `medium`
--
ALTER TABLE `medium`
  MODIFY `MediumID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

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
  ADD CONSTRAINT `anleitungautor_ibfk_1` FOREIGN KEY (`AnleitungID`) REFERENCES `anleitung` (`AnleitungID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `anleitungautor_ibfk_2` FOREIGN KEY (`AutorID`) REFERENCES `autor` (`AutorID`) ON DELETE CASCADE ON UPDATE NO ACTION;

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
