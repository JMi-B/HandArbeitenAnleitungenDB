-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 27. Okt 2025 um 16:48
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
  `Titel` varchar(150) NOT NULL,
  `Seitenzahl` int(11) DEFAULT NULL,
  `Grundschnitt` tinyint(1) DEFAULT 0,
  `Modellnummer` varchar(5) DEFAULT NULL,
  `Schnittbogen` varchar(5) DEFAULT NULL,
  `MediumID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `anleitung`
--

INSERT INTO `anleitung` (`AnleitungID`, `Titel`, `Seitenzahl`, `Grundschnitt`, `Modellnummer`, `Schnittbogen`, `MediumID`) VALUES
(2, 'Das große Buch der Handarbeiten', 345, 0, '42.0', 'E', 10),
(3, 'Japanische Hansschuhe stricken', 52, 1, '2.0', NULL, 11),
(4, 'English Paper Peircing', 69, 0, NULL, 'CD', 12),
(5, 'Das große Buch der Handarbeiten', 345, 0, '42.0', 'E', 13),
(6, 'Japanische Hansschuhe stricken', 52, 1, '2.0', NULL, 14),
(7, 'English Paper Peircing', 69, 0, NULL, 'CD', 15),
(8, 'Das große Buch der Handarbeiten', 345, 0, '42.0', 'E', 17),
(9, 'Japanische Hansschuhe stricken', 52, 1, '2.0', NULL, 18),
(10, 'English Paper Peircing', 69, 0, NULL, 'CD', 19),
(11, 'Das große Buch der Handarbeiten', 345, 0, '42.0', 'E', 20),
(12, 'Japanische Hansschuhe stricken', 52, 1, '2.0', NULL, 21),
(13, 'English Paper Peircing', 69, 0, NULL, 'CD', 22),
(14, 'Das große Buch der Handarbeiten', 345, 0, '42.0', 'E', 23),
(15, 'Japanische Hansschuhe stricken', 52, 1, '2.0', NULL, 24),
(16, 'English Paper Peircing', 69, 0, NULL, 'CD', 25),
(17, 'Das große Buch der Handarbeiten', 345, 0, '42.0', 'E', 26),
(18, 'Japanische Hansschuhe stricken', 52, 1, '2.0', NULL, 27),
(19, 'English Paper Peircing', 69, 0, NULL, 'CD', 28),
(20, 'Das große Buch der Handarbeiten', 345, 0, '42.0', 'E', 30),
(21, 'Japanische Hansschuhe stricken', 52, 1, '2.0', NULL, 31),
(22, 'English Paper Peircing', 69, 0, NULL, 'CD', 32),
(23, 'Das große Buch der Handarbeiten', 345, 0, '42.0', 'E', 34),
(24, 'Japanische Hansschuhe stricken', 52, 1, '2.0', NULL, 35),
(25, 'English Paper Peircing', 69, 0, NULL, 'CD', 36),
(26, 'Das große Buch der Handarbeiten', 345, 0, '42.0', 'E', 38),
(27, 'Japanische Hansschuhe stricken', 52, 1, '2.0', NULL, 39),
(28, 'English Paper Peircing', 69, 0, NULL, 'CD', 40),
(29, 'Das große Buch der Handarbeiten', 345, 0, '42.0', 'E', 41),
(30, 'Japanische Hansschuhe stricken', 52, 1, '2.0', NULL, 42),
(31, 'English Paper Peircing', 69, 0, NULL, 'CD', 43),
(32, 'Das große Buch der Handarbeiten', 345, 0, '42.0', 'E', 44),
(33, 'Japanische Hansschuhe stricken', 52, 1, '2.0', NULL, 45),
(34, 'English Paper Peircing', 69, 0, NULL, 'CD', 46),
(35, 'Das große Buch der Handarbeiten', 345, 0, '42.0', 'E', 47),
(36, 'Japanische Hansschuhe stricken', 52, 1, '2.0', NULL, 48),
(37, 'English Paper Peircing', 69, 0, NULL, 'CD', 49),
(38, 'Das große Buch der Handarbeiten', 345, 0, '42.0', 'E', 50),
(39, 'Japanische Hansschuhe stricken', 52, 1, '2.0', NULL, 51),
(40, 'English Paper Peircing', 69, 0, NULL, 'CD', 52),
(42, 'Das große Buch der Handarbeiten', 345, 0, '42.0', 'E', 54),
(43, 'Japanische Hansschuhe stricken', 52, 1, '2.0', NULL, 55),
(44, 'English Paper Peircing', 69, 0, NULL, 'CD', 56),
(45, 'Das große Buch der Handarbeiten', 345, 0, '42.0', 'E', 57),
(46, 'Japanische Hansschuhe stricken', 52, 1, '2.0', NULL, 58),
(47, 'English Paper Peircing', 69, 0, NULL, 'CD', 59),
(52, 'Das große Buch der Handarbeiten', 345, 0, '42.0', 'E', 64),
(54, 'Das große Buch der Handarbeiten', 345, 0, '42.0', 'E', 66),
(55, 'Das große Buch der Handarbeiten', 345, 0, '42.0', 'E', 67),
(56, 'Das große Buch der Handarbeiten', 345, 0, '42.0', 'E', 68),
(57, 'Das große Buch der Handarbeiten', 345, 0, '42.0', 'E', 69),
(58, 'Das große Buch der Handarbeiten', 345, 0, '42.0', 'E', 70),
(59, 'Japanische Hansschuhe stricken', 52, 1, '2.0', NULL, 71),
(60, 'English Paper Peircing', 69, 0, NULL, 'CD', 72),
(61, 'Das große Buch der Handarbeiten', 345, 0, '42.0', 'E', 73),
(62, 'Japanische Hansschuhe stricken', 52, 1, '2.0', NULL, 74),
(63, 'English Paper Peircing', 69, 0, NULL, 'CD', 75),
(64, 'Das große Buch der Handarbeiten', 345, 0, '42.0', 'E', 76),
(65, 'Japanische Hansschuhe stricken', 52, 1, '2.0', NULL, 77),
(66, 'English Paper Peircing', 69, 0, NULL, 'CD', 78),
(67, 'Das große Buch der Handarbeiten', NULL, 0, '42.0', 'E', 79),
(68, 'Japanische Hansschuhe stricken', NULL, 1, '2.0', NULL, 80),
(69, 'English Paper Peircing', NULL, 0, NULL, 'CD', 81),
(70, 'Das große Buch der Handarbeiten', NULL, 0, '42.0', 'E', 83),
(71, 'Japanische Hansschuhe stricken', NULL, 1, '2.0', NULL, 84),
(72, 'English Paper Peircing', NULL, 0, NULL, 'CD', 85),
(73, 'Anna', NULL, 0, NULL, NULL, 86),
(74, 'Designer Knitting', NULL, 0, NULL, NULL, 87),
(75, 'Burda', NULL, 0, NULL, NULL, 88),
(76, 'Patchwork Magazin', NULL, 0, NULL, NULL, 89),
(77, 'Das große Buch der Handarbeiten', NULL, 0, '42.0', 'E', 90),
(78, 'Japanische Hansschuhe stricken', NULL, 1, '2.0', NULL, 91),
(79, 'English Paper Peircing', NULL, 0, NULL, 'CD', 92),
(80, 'Das große Buch der Handarbeiten', NULL, 0, '42.0', 'E', 94),
(81, 'Japanische Hansschuhe stricken', NULL, 1, '2.0', NULL, 95),
(82, 'English Paper Peircing', NULL, 0, NULL, 'CD', 96),
(83, 'Anna', NULL, 0, NULL, NULL, 97),
(84, 'Designer Knitting', NULL, 0, NULL, NULL, 98),
(85, 'Burda', NULL, 0, NULL, NULL, 99),
(86, 'Patchwork Magazin', NULL, 0, NULL, NULL, 100),
(87, 'Das große Buch der Handarbeiten', NULL, 0, '42.0', 'E', 101),
(88, 'Japanische Hansschuhe stricken', NULL, 1, '2.0', NULL, 102),
(89, 'English Paper Peircing', NULL, 0, NULL, 'CD', 103),
(90, 'Anna', NULL, 0, NULL, NULL, 104),
(91, 'Designer Knitting', NULL, 0, NULL, NULL, 105),
(92, 'Burda', NULL, 0, NULL, NULL, 106),
(93, 'Patchwork Magazin', NULL, 0, NULL, NULL, 107);

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
(56, 61),
(58, 63),
(59, 64),
(60, 65),
(61, 66),
(62, 67),
(63, 68),
(64, 69),
(65, 70),
(66, 71),
(67, 72),
(68, 73),
(69, 74),
(70, 75),
(71, 76),
(72, 77),
(73, 78),
(74, 79),
(75, 80),
(76, 81),
(77, 82),
(78, 83),
(79, 84),
(80, 85),
(81, 86),
(82, 87),
(83, 88),
(84, 89),
(85, 90),
(86, 91),
(87, 92),
(88, 93),
(89, 94),
(90, 95),
(91, 96),
(92, 97),
(93, 98);

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
(6, 'Bär', 'Sigrid', NULL, NULL, NULL),
(7, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(8, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(9, 'Bär', 'Sigrid', NULL, NULL, NULL),
(10, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(11, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(12, 'Bär', 'Sigrid', NULL, NULL, NULL),
(13, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(14, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(15, 'Bär', 'Sigrid', NULL, NULL, NULL),
(16, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(17, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(18, 'Bär', 'Sigrid', NULL, NULL, NULL),
(19, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(20, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(21, 'Bär', 'Sigrid', NULL, NULL, NULL),
(22, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(23, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(24, 'Bär', 'Sigrid', NULL, NULL, NULL),
(25, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(26, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(27, 'Bär', 'Sigrid', NULL, NULL, NULL),
(28, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(29, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(31, 'Bär', 'Sigrid', NULL, NULL, NULL),
(32, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(33, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(34, 'Bär', 'Sigrid', NULL, NULL, NULL),
(35, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(36, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(37, 'Bär', 'Sigrid', NULL, NULL, NULL),
(38, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(39, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(40, 'Bär', 'Sigrid', NULL, NULL, NULL),
(41, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(42, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(43, 'Bär', 'Sigrid', NULL, NULL, NULL),
(44, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(45, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(47, 'Bär', 'Sigrid', NULL, NULL, NULL),
(48, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(49, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(50, 'Bär', 'Sigrid', NULL, NULL, NULL),
(51, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(52, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(57, 'Bär', 'Sigrid', NULL, NULL, NULL),
(59, 'Bär', 'Sigrid', NULL, NULL, NULL),
(60, 'Bär', 'Sigrid', NULL, NULL, NULL),
(61, 'Bär', 'Sigrid', NULL, NULL, NULL),
(62, 'Bär', 'Sigrid', NULL, NULL, NULL),
(63, 'Bär', 'Sigrid', NULL, NULL, NULL),
(64, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(65, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(66, 'Bär', 'Sigrid', NULL, NULL, NULL),
(67, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(68, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(69, 'Bär', 'Sigrid', NULL, NULL, NULL),
(70, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(71, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(72, 'Bär', 'Sigrid', NULL, NULL, NULL),
(73, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(74, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(75, 'Bär', 'Sigrid', NULL, NULL, NULL),
(76, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(77, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(78, NULL, NULL, NULL, NULL, 'anna'),
(79, NULL, NULL, NULL, NULL, 'Desingner Knitting deutsch'),
(80, NULL, NULL, NULL, NULL, 'burda'),
(81, NULL, NULL, NULL, NULL, 'OZ-Verlag'),
(82, 'Bär', 'Sigrid', NULL, NULL, NULL),
(83, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(84, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(85, 'Bär', 'Sigrid', NULL, NULL, NULL),
(86, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(87, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(88, NULL, NULL, NULL, NULL, 'anna'),
(89, NULL, NULL, NULL, NULL, 'Desingner Knitting deutsch'),
(90, NULL, NULL, NULL, NULL, 'burda'),
(91, NULL, NULL, NULL, NULL, 'OZ-Verlag'),
(92, 'Bär', 'Sigrid', NULL, NULL, NULL),
(93, 'Kestler', 'Bernd', 'Strick-Sensei', NULL, NULL),
(94, 'Schmidt', 'Claudia', NULL, NULL, NULL),
(95, NULL, NULL, NULL, NULL, 'anna'),
(96, NULL, NULL, NULL, NULL, 'Desingner Knitting deutsch'),
(97, NULL, NULL, NULL, NULL, 'burda'),
(98, NULL, NULL, NULL, NULL, 'OZ-Verlag');

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
(5, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(6, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(7, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(10, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(11, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(12, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(13, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(14, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(15, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(17, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(18, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(19, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(20, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(21, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(22, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(23, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(24, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(25, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(26, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(27, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(28, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(30, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(31, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(32, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(34, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(35, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(36, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(38, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(39, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(40, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(41, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(42, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(43, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(44, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(45, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(46, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(47, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(48, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(49, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(50, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(51, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(52, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(54, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(55, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(56, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(57, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(58, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(59, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(64, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(66, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(67, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(68, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(69, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(70, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(71, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(72, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(73, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(74, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(75, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(76, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(77, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(78, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(79, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(80, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(81, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(83, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(84, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(85, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(90, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(91, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(92, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(94, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(95, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(96, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL),
(101, 'X', NULL, 'Gruner & Jahr', 'Hamburg', NULL, 'Das große Buch der Handarbeiten', '10.0'),
(102, '50 neue Projekte vom Strick-Sensei', '2019', 'Stiebner', 'Grünwald', '978-3-8307-0999-2', NULL, NULL),
(103, 'Muster aus geometrischen Fromen', '2011', 'Christopherus', 'Feiburg', '978-3-8410-6081-5', NULL, NULL);

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
  `Titel` varchar(150) NOT NULL,
  `MedienArt` enum('Buch','Zeitschrift','Schnittmuster','Website','Flyer','PdfTexte') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `medium`
--

INSERT INTO `medium` (`MediumID`, `Titel`, `MedienArt`) VALUES
(1, 'Das große Buch der Handarbeiten', 'Buch'),
(2, 'Japanische Hansschuhe stricken', 'Buch'),
(3, 'English Paper Peircing', 'Buch'),
(5, 'Das große Buch der Handarbeiten', 'Buch'),
(6, 'Japanische Hansschuhe stricken', 'Buch'),
(7, 'English Paper Peircing', 'Buch'),
(10, 'Das große Buch der Handarbeiten', 'Buch'),
(11, 'Japanische Hansschuhe stricken', 'Buch'),
(12, 'English Paper Peircing', 'Buch'),
(13, 'Das große Buch der Handarbeiten', 'Buch'),
(14, 'Japanische Hansschuhe stricken', 'Buch'),
(15, 'English Paper Peircing', 'Buch'),
(17, 'Das große Buch der Handarbeiten', 'Buch'),
(18, 'Japanische Hansschuhe stricken', 'Buch'),
(19, 'English Paper Peircing', 'Buch'),
(20, 'Das große Buch der Handarbeiten', 'Buch'),
(21, 'Japanische Hansschuhe stricken', 'Buch'),
(22, 'English Paper Peircing', 'Buch'),
(23, 'Das große Buch der Handarbeiten', 'Buch'),
(24, 'Japanische Hansschuhe stricken', 'Buch'),
(25, 'English Paper Peircing', 'Buch'),
(26, 'Das große Buch der Handarbeiten', 'Buch'),
(27, 'Japanische Hansschuhe stricken', 'Buch'),
(28, 'English Paper Peircing', 'Buch'),
(30, 'Das große Buch der Handarbeiten', 'Buch'),
(31, 'Japanische Hansschuhe stricken', 'Buch'),
(32, 'English Paper Peircing', 'Buch'),
(34, 'Das große Buch der Handarbeiten', 'Buch'),
(35, 'Japanische Hansschuhe stricken', 'Buch'),
(36, 'English Paper Peircing', 'Buch'),
(38, 'Das große Buch der Handarbeiten', 'Buch'),
(39, 'Japanische Hansschuhe stricken', 'Buch'),
(40, 'English Paper Peircing', 'Buch'),
(41, 'Das große Buch der Handarbeiten', 'Buch'),
(42, 'Japanische Hansschuhe stricken', 'Buch'),
(43, 'English Paper Peircing', 'Buch'),
(44, 'Das große Buch der Handarbeiten', 'Buch'),
(45, 'Japanische Hansschuhe stricken', 'Buch'),
(46, 'English Paper Peircing', 'Buch'),
(47, 'Das große Buch der Handarbeiten', 'Buch'),
(48, 'Japanische Hansschuhe stricken', 'Buch'),
(49, 'English Paper Peircing', 'Buch'),
(50, 'Das große Buch der Handarbeiten', 'Buch'),
(51, 'Japanische Hansschuhe stricken', 'Buch'),
(52, 'English Paper Peircing', 'Buch'),
(54, 'Das große Buch der Handarbeiten', 'Buch'),
(55, 'Japanische Hansschuhe stricken', 'Buch'),
(56, 'English Paper Peircing', 'Buch'),
(57, 'Das große Buch der Handarbeiten', 'Buch'),
(58, 'Japanische Hansschuhe stricken', 'Buch'),
(59, 'English Paper Peircing', 'Buch'),
(64, 'Das große Buch der Handarbeiten', 'Buch'),
(66, 'Das große Buch der Handarbeiten', 'Buch'),
(67, 'Das große Buch der Handarbeiten', 'Buch'),
(68, 'Das große Buch der Handarbeiten', 'Buch'),
(69, 'Das große Buch der Handarbeiten', 'Buch'),
(70, 'Das große Buch der Handarbeiten', 'Buch'),
(71, 'Japanische Hansschuhe stricken', 'Buch'),
(72, 'English Paper Peircing', 'Buch'),
(73, 'Das große Buch der Handarbeiten', 'Buch'),
(74, 'Japanische Hansschuhe stricken', 'Buch'),
(75, 'English Paper Peircing', 'Buch'),
(76, 'Das große Buch der Handarbeiten', 'Buch'),
(77, 'Japanische Hansschuhe stricken', 'Buch'),
(78, 'English Paper Peircing', 'Buch'),
(79, 'Das große Buch der Handarbeiten', 'Buch'),
(80, 'Japanische Hansschuhe stricken', 'Buch'),
(81, 'English Paper Peircing', 'Buch'),
(82, 'Anna', 'Zeitschrift'),
(83, 'Das große Buch der Handarbeiten', 'Buch'),
(84, 'Japanische Hansschuhe stricken', 'Buch'),
(85, 'English Paper Peircing', 'Buch'),
(86, 'Anna', 'Zeitschrift'),
(87, 'Designer Knitting', 'Zeitschrift'),
(88, 'Burda', 'Zeitschrift'),
(89, 'Patchwork Magazin', 'Zeitschrift'),
(90, 'Das große Buch der Handarbeiten', 'Buch'),
(91, 'Japanische Hansschuhe stricken', 'Buch'),
(92, 'English Paper Peircing', 'Buch'),
(93, 'Anna', 'Zeitschrift'),
(94, 'Das große Buch der Handarbeiten', 'Buch'),
(95, 'Japanische Hansschuhe stricken', 'Buch'),
(96, 'English Paper Peircing', 'Buch'),
(97, 'Anna', 'Zeitschrift'),
(98, 'Designer Knitting', 'Zeitschrift'),
(99, 'Burda', 'Zeitschrift'),
(100, 'Patchwork Magazin', 'Zeitschrift'),
(101, 'Das große Buch der Handarbeiten', 'Buch'),
(102, 'Japanische Hansschuhe stricken', 'Buch'),
(103, 'English Paper Peircing', 'Buch'),
(104, 'Anna', 'Zeitschrift'),
(105, 'Designer Knitting', 'Zeitschrift'),
(106, 'Burda', 'Zeitschrift'),
(107, 'Patchwork Magazin', 'Zeitschrift'),
(108, 'Das große Buch der Handarbeiten', 'Buch');

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
(41, 34),
(42, 35),
(43, 36),
(44, 37),
(45, 38),
(46, 39),
(47, 40),
(48, 41),
(49, 42),
(50, 43),
(51, 44),
(52, 45),
(54, 47),
(55, 48),
(56, 49),
(57, 50),
(58, 51),
(59, 52),
(70, 63),
(71, 64),
(72, 65),
(73, 66),
(74, 67),
(75, 68),
(76, 69),
(77, 70),
(78, 71),
(79, 72),
(80, 73),
(81, 74),
(83, 75),
(84, 76),
(85, 77),
(86, 78),
(87, 79),
(88, 80),
(89, 81),
(90, 82),
(91, 83),
(92, 84),
(94, 85),
(95, 86),
(96, 87),
(97, 88),
(98, 89),
(99, 90),
(100, 91),
(101, 92),
(102, 93),
(103, 94),
(104, 95),
(105, 96),
(106, 97),
(107, 98);

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
  `Heftthema` varchar(45) DEFAULT NULL,
  `Jahrgang` year(4) DEFAULT NULL,
  `Monat` int(11) DEFAULT NULL,
  `Heftnummer` varchar(10) DEFAULT NULL,
  `Sonderheft` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `zeitschrift`
--

INSERT INTO `zeitschrift` (`MediumID`, `Heftthema`, `Jahrgang`, `Monat`, `Heftnummer`, `Sonderheft`) VALUES
(86, NULL, '2010', 12, '50.0', 0),
(87, NULL, '2019', 2, NULL, 0),
(88, NULL, '2018', 5, '34.0', 0),
(89, NULL, '2010', NULL, '25.0', 1),
(93, NULL, '2010', 12, '50.0', 0),
(97, NULL, '2010', 12, '50.0', 0),
(98, NULL, '2019', 2, NULL, 0),
(99, NULL, '2018', 5, '34.0', 0),
(100, NULL, '2010', NULL, '25.0', 1),
(104, NULL, '2010', 12, '50.0', 0),
(105, NULL, '2019', 2, NULL, 0),
(106, NULL, '2018', 5, '34.0', 0),
(107, NULL, '2010', NULL, '25.0', 1);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `anleitung`
--
ALTER TABLE `anleitung`
  ADD PRIMARY KEY (`AnleitungID`),
  ADD KEY `MediumID` (`MediumID`);

--
-- Indizes für die Tabelle `anleitungautor`
--
ALTER TABLE `anleitungautor`
  ADD PRIMARY KEY (`AnleitungID`,`AutorID`),
  ADD KEY `AutorID` (`AutorID`);

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
  ADD KEY `AutorID` (`AutorID`);

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
  MODIFY `AnleitungID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT für Tabelle `autor`
--
ALTER TABLE `autor`
  MODIFY `AutorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT für Tabelle `medium`
--
ALTER TABLE `medium`
  MODIFY `MediumID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `anleitung`
--
ALTER TABLE `anleitung`
  ADD CONSTRAINT `anleitung_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`);

--
-- Constraints der Tabelle `anleitungautor`
--
ALTER TABLE `anleitungautor`
  ADD CONSTRAINT `anleitungautor_ibfk_1` FOREIGN KEY (`AnleitungID`) REFERENCES `anleitung` (`AnleitungID`),
  ADD CONSTRAINT `anleitungautor_ibfk_2` FOREIGN KEY (`AutorID`) REFERENCES `autor` (`AutorID`);

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
-- Constraints der Tabelle `mediumautor`
--
ALTER TABLE `mediumautor`
  ADD CONSTRAINT `mediumautor_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`),
  ADD CONSTRAINT `mediumautor_ibfk_2` FOREIGN KEY (`AutorID`) REFERENCES `autor` (`AutorID`);

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
