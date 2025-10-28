-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 28. Okt 2025 um 16:32
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
(4, 'Wende-Mantel', NULL, 0, NULL, NULL, 4),
(5, 'Hexagon-Tuch', NULL, 0, NULL, NULL, 5),
(6, 'Cozy Home', NULL, 0, NULL, NULL, 6),
(7, 'Technik trifft Tradition', NULL, 0, NULL, NULL, 7),
(8, 'Khakifarbene Bundfaltenhose', NULL, 0, '42.0', 'E', 8),
(9, 'Einfache Windrat-Fäustlige', NULL, 1, '2.0', NULL, 9),
(10, 'Nadelkissen', NULL, 0, NULL, 'CD', 10),
(11, 'Wende-Mantel', NULL, 0, NULL, NULL, 11),
(12, 'Hexagon-Tuch', NULL, 0, NULL, NULL, 12),
(13, 'Cozy Home', NULL, 0, NULL, NULL, 13),
(14, 'Technik trifft Tradition', NULL, 0, NULL, NULL, 14),
(15, 'Khakifarbene Bundfaltenhose', NULL, 0, '42.0', 'E', 15),
(16, 'Einfache Windrat-Fäustlige', NULL, 1, '2.0', NULL, 16),
(17, 'Nadelkissen', NULL, 0, NULL, 'CD', 17),
(18, 'Wende-Mantel', NULL, 0, NULL, NULL, 18),
(19, 'Hexagon-Tuch', NULL, 0, NULL, NULL, 19),
(20, 'Cozy Home', NULL, 0, NULL, NULL, 20),
(21, 'Technik trifft Tradition', NULL, 0, NULL, NULL, 21),
(22, 'Khakifarbene Bundfaltenhose', NULL, 0, '42.0', 'E', 24),
(23, 'Einfache Windrat-Fäustlige', NULL, 1, '2.0', NULL, 25),
(24, 'Nadelkissen', NULL, 0, NULL, 'CD', 26),
(25, 'Wende-Mantel', NULL, 0, NULL, NULL, 27),
(26, 'Hexagon-Tuch', NULL, 0, NULL, NULL, 28),
(27, 'Cozy Home', NULL, 0, NULL, NULL, 29),
(28, 'Technik trifft Tradition', NULL, 0, NULL, NULL, 30),
(29, 'Khakifarbene Bundfaltenhose', NULL, 0, '42.0', 'E', 31),
(30, 'Einfache Windrat-Fäustlige', NULL, 1, '2.0', NULL, 32),
(31, 'Nadelkissen', NULL, 0, NULL, 'CD', 33),
(32, 'Khakifarbene Bundfaltenhose', NULL, 0, '42.0', 'E', 36),
(33, 'Einfache Windrat-Fäustlige', NULL, 1, '2.0', NULL, 37),
(34, 'Nadelkissen', NULL, 0, NULL, 'CD', 38),
(35, 'Khakifarbene Bundfaltenhose', NULL, 0, '42.0', 'E', 40),
(36, 'Einfache Windrat-Fäustlige', NULL, 1, '2.0', NULL, 41),
(37, 'Nadelkissen', NULL, 0, NULL, 'CD', 42),
(38, 'Khakifarbene Bundfaltenhose', NULL, 0, '42.0', 'E', 44),
(39, 'Einfache Windrat-Fäustlige', NULL, 1, '2.0', NULL, 45),
(40, 'Nadelkissen', NULL, 0, NULL, 'CD', 46),
(41, 'Wende-Mantel', NULL, 0, NULL, NULL, 47),
(42, 'Hexagon-Tuch', NULL, 0, NULL, NULL, 48),
(43, 'Cozy Home', NULL, 0, NULL, NULL, 49),
(44, 'Technik trifft Tradition', NULL, 0, NULL, NULL, 50),
(45, 'Khakifarbene Bundfaltenhose', NULL, 0, '42.0', 'E', 51),
(46, 'Einfache Windrat-Fäustlige', NULL, 1, '2.0', NULL, 52),
(47, 'Nadelkissen', NULL, 0, NULL, 'CD', 53),
(48, 'Wende-Mantel', NULL, 0, NULL, NULL, 54),
(49, 'Hexagon-Tuch', NULL, 0, NULL, NULL, 55),
(50, 'Cozy Home', NULL, 0, NULL, NULL, 56),
(51, 'Technik trifft Tradition', NULL, 0, NULL, NULL, 57);

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
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 1),
(39, 2),
(40, 3),
(41, 38),
(42, 39),
(43, 40),
(44, 41),
(45, 1),
(46, 2),
(47, 3),
(48, 42),
(49, 43),
(50, 44),
(51, 45);

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
(7, NULL, NULL, NULL, NULL, 'OZ-Verlag'),
(8, 'Bär', 'Sigrid', NULL, NULL, NULL),
(9, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(10, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL, 'anna'),
(12, NULL, NULL, NULL, NULL, 'Desingner Knitting deutsch'),
(13, NULL, NULL, NULL, NULL, 'burda'),
(14, NULL, NULL, NULL, NULL, 'OZ-Verlag'),
(15, 'Bär', 'Sigrid', NULL, NULL, NULL),
(16, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(17, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL, 'anna'),
(19, NULL, NULL, NULL, NULL, 'Desingner Knitting deutsch'),
(20, NULL, NULL, NULL, NULL, 'burda'),
(21, NULL, NULL, NULL, NULL, 'OZ-Verlag'),
(22, 'Bär', 'Sigrid', NULL, NULL, NULL),
(23, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(24, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(25, NULL, NULL, NULL, NULL, 'anna'),
(26, NULL, NULL, NULL, NULL, 'Desingner Knitting deutsch'),
(27, NULL, NULL, NULL, NULL, 'burda'),
(28, NULL, NULL, NULL, NULL, 'OZ-Verlag'),
(29, 'Bär', 'Sigrid', NULL, NULL, NULL),
(30, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(31, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(32, 'Bär', 'Sigrid', NULL, NULL, NULL),
(33, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(34, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(35, 'Bär', 'Sigrid', NULL, NULL, NULL),
(36, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(37, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(38, NULL, NULL, NULL, NULL, 'anna'),
(39, NULL, NULL, NULL, NULL, 'Desingner Knitting deutsch'),
(40, NULL, NULL, NULL, NULL, 'burda'),
(41, NULL, NULL, NULL, NULL, 'OZ-Verlag'),
(42, NULL, NULL, NULL, NULL, 'anna'),
(43, NULL, NULL, NULL, NULL, 'Desingner Knitting deutsch'),
(44, NULL, NULL, NULL, NULL, 'burda'),
(45, NULL, NULL, NULL, NULL, 'OZ-Verlag');

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
(3, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(8, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(9, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(10, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(15, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(16, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(17, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(22, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(23, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(24, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(25, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(26, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(31, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(32, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(33, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(35, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(36, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(37, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(38, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(40, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(41, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(42, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(44, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(45, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(46, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(51, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(52, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(53, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL);

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
(7, 'Patchwork Magazin', 'Zeitschrift'),
(8, 'Das große Buch der Handarbeiten', 'Buch'),
(9, 'Japanische Hansschuhe stricken', 'Buch'),
(10, 'English Paper Peircing', 'Buch'),
(11, 'Anna', 'Zeitschrift'),
(12, 'Designer Knitting', 'Zeitschrift'),
(13, 'Burda', 'Zeitschrift'),
(14, 'Patchwork Magazin', 'Zeitschrift'),
(15, 'Das große Buch der Handarbeiten', 'Buch'),
(16, 'Japanische Hansschuhe stricken', 'Buch'),
(17, 'English Paper Peircing', 'Buch'),
(18, 'Anna', 'Zeitschrift'),
(19, 'Designer Knitting', 'Zeitschrift'),
(20, 'Burda', 'Zeitschrift'),
(21, 'Patchwork Magazin', 'Zeitschrift'),
(22, 'Das große Buch der Handarbeiten', 'Buch'),
(23, 'Das große Buch der Handarbeiten', 'Buch'),
(24, 'Das große Buch der Handarbeiten', 'Buch'),
(25, 'Japanische Hansschuhe stricken', 'Buch'),
(26, 'English Paper Peircing', 'Buch'),
(27, 'Anna', 'Zeitschrift'),
(28, 'Designer Knitting', 'Zeitschrift'),
(29, 'Burda', 'Zeitschrift'),
(30, 'Patchwork Magazin', 'Zeitschrift'),
(31, 'Das große Buch der Handarbeiten', 'Buch'),
(32, 'Japanische Hansschuhe stricken', 'Buch'),
(33, 'English Paper Peircing', 'Buch'),
(34, 'Anna', 'Zeitschrift'),
(35, 'Das große Buch der Handarbeiten', 'Buch'),
(36, 'Das große Buch der Handarbeiten', 'Buch'),
(37, 'Japanische Hansschuhe stricken', 'Buch'),
(38, 'English Paper Peircing', 'Buch'),
(39, 'Anna', 'Zeitschrift'),
(40, 'Das große Buch der Handarbeiten', 'Buch'),
(41, 'Japanische Hansschuhe stricken', 'Buch'),
(42, 'English Paper Peircing', 'Buch'),
(43, 'Anna', 'Zeitschrift'),
(44, 'Das große Buch der Handarbeiten', 'Buch'),
(45, 'Japanische Hansschuhe stricken', 'Buch'),
(46, 'English Paper Peircing', 'Buch'),
(47, 'Anna', 'Zeitschrift'),
(48, 'Designer Knitting', 'Zeitschrift'),
(49, 'Burda', 'Zeitschrift'),
(50, 'Patchwork Magazin', 'Zeitschrift'),
(51, 'Das große Buch der Handarbeiten', 'Buch'),
(52, 'Japanische Hansschuhe stricken', 'Buch'),
(53, 'English Paper Peircing', 'Buch'),
(54, 'Anna', 'Zeitschrift'),
(55, 'Designer Knitting', 'Zeitschrift'),
(56, 'Burda', 'Zeitschrift'),
(57, 'Patchwork Magazin', 'Zeitschrift');

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
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(24, 22),
(25, 23),
(26, 24),
(27, 25),
(28, 26),
(29, 27),
(30, 28),
(31, 29),
(32, 30),
(33, 31),
(36, 32),
(37, 33),
(38, 34),
(40, 35),
(41, 36),
(42, 37),
(44, 1),
(45, 2),
(46, 3),
(47, 38),
(48, 39),
(49, 40),
(50, 41),
(51, 1),
(52, 2),
(53, 3),
(54, 42),
(55, 43),
(56, 44),
(57, 45);

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
(7, 'Taschen selber machen', '2010', NULL, '25.0', 1),
(11, NULL, '2010', 12, '50.0', 0),
(12, NULL, '2019', 2, NULL, 0),
(13, 'accessoires', '2018', 5, '34.0', 0),
(14, 'Taschen selber machen', '2010', NULL, '25.0', 1),
(18, NULL, '2010', 12, '50.0', 0),
(19, NULL, '2019', 2, NULL, 0),
(20, 'accessoires', '2018', 5, '34.0', 0),
(21, 'Taschen selber machen', '2010', NULL, '25.0', 1),
(27, NULL, '2010', 12, '50.0', 0),
(28, NULL, '2019', 2, NULL, 0),
(29, 'accessoires', '2018', 5, '34.0', 0),
(30, 'Taschen selber machen', '2010', NULL, '25.0', 1),
(34, NULL, '2010', 12, '50.0', 0),
(39, NULL, '2010', 12, '50.0', 0),
(43, NULL, '2010', 12, '50.0', 0),
(47, NULL, '2010', 12, '50.0', 0),
(48, NULL, '2019', 2, NULL, 0),
(49, 'accessoires', '2018', 5, '34.0', 0),
(50, 'Taschen selber machen', '2010', NULL, '25.0', 1),
(54, NULL, '2010', 12, '50.0', 0),
(55, NULL, '2019', 2, NULL, 0),
(56, 'accessoires', '2018', 5, '34.0', 0),
(57, 'Taschen selber machen', '2010', NULL, '25.0', 1);

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
  MODIFY `AnleitungID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT für Tabelle `autor`
--
ALTER TABLE `autor`
  MODIFY `AutorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT für Tabelle `medium`
--
ALTER TABLE `medium`
  MODIFY `MediumID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

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
