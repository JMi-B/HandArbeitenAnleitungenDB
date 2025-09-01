-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: AnleitungDB03
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `anleitung`
--

DROP TABLE IF EXISTS `anleitung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anleitung` (
  `AnleitungID` int(11) NOT NULL AUTO_INCREMENT,
  `Titel` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `Seitenzahl` int(11) DEFAULT NULL,
  `Grundschnitt` tinyint(1) DEFAULT 0,
  `Modellnummer` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL,
  `Schnittbogen` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL,
  `MediumID` int(11) NOT NULL,
  `GegenstandID` int(11) DEFAULT NULL,
  `TechnikID` int(11) NOT NULL,
  PRIMARY KEY (`AnleitungID`),
  KEY `MediumID` (`MediumID`),
  KEY `GegenstandID` (`GegenstandID`),
  KEY `TechnikID` (`TechnikID`),
  CONSTRAINT `anleitung_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`),
  CONSTRAINT `anleitung_ibfk_2` FOREIGN KEY (`GegenstandID`) REFERENCES `gegenstand` (`GegenstandID`),
  CONSTRAINT `anleitung_ibfk_3` FOREIGN KEY (`TechnikID`) REFERENCES `technik` (`TechnikID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anleitung`
--

LOCK TABLES `anleitung` WRITE;
/*!40000 ALTER TABLE `anleitung` DISABLE KEYS */;
/*!40000 ALTER TABLE `anleitung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anleitungautor`
--

DROP TABLE IF EXISTS `anleitungautor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anleitungautor` (
  `AnleitungID` int(11) NOT NULL,
  `AutorID` int(11) NOT NULL,
  PRIMARY KEY (`AnleitungID`,`AutorID`),
  KEY `AutorID` (`AutorID`),
  CONSTRAINT `anleitungautor_ibfk_1` FOREIGN KEY (`AnleitungID`) REFERENCES `anleitung` (`AnleitungID`),
  CONSTRAINT `anleitungautor_ibfk_2` FOREIGN KEY (`AutorID`) REFERENCES `autor` (`AutorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anleitungautor`
--

LOCK TABLES `anleitungautor` WRITE;
/*!40000 ALTER TABLE `anleitungautor` DISABLE KEYS */;
/*!40000 ALTER TABLE `anleitungautor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anleitungprojekt`
--

DROP TABLE IF EXISTS `anleitungprojekt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anleitungprojekt` (
  `AnleitungID` int(11) NOT NULL,
  `ProjektID` int(11) NOT NULL,
  PRIMARY KEY (`AnleitungID`,`ProjektID`),
  KEY `ProjektID` (`ProjektID`),
  CONSTRAINT `anleitungprojekt_ibfk_1` FOREIGN KEY (`AnleitungID`) REFERENCES `anleitung` (`AnleitungID`),
  CONSTRAINT `anleitungprojekt_ibfk_2` FOREIGN KEY (`ProjektID`) REFERENCES `projekt` (`ProjektID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anleitungprojekt`
--

LOCK TABLES `anleitungprojekt` WRITE;
/*!40000 ALTER TABLE `anleitungprojekt` DISABLE KEYS */;
/*!40000 ALTER TABLE `anleitungprojekt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autor` (
  `AutorID` int(11) NOT NULL AUTO_INCREMENT,
  `Nachname` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `Vorname` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `Alias` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `Zusatz` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`AutorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buch`
--

DROP TABLE IF EXISTS `buch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buch` (
  `MediumID` int(11) NOT NULL,
  `Untertitel` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `Jahr` year(4) DEFAULT NULL,
  `Verlag` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `Ort` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `ISBN` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `Reihe` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `Band` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`MediumID`),
  CONSTRAINT `buch_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buch`
--

LOCK TABLES `buch` WRITE;
/*!40000 ALTER TABLE `buch` DISABLE KEYS */;
INSERT INTO `buch` VALUES (1,NULL,NULL,NULL,NULL,'978-37724-4830-0',NULL,NULL),(2,'Einfach selbst genäht',NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'39 Projekte in edlem Blau',NULL,NULL,NULL,NULL,NULL,NULL),(7,'couture, broderie, appliqué, tricot et perles',NULL,NULL,NULL,NULL,NULL,NULL),(8,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,NULL,NULL,'Gruner & Jahr','Hamburg',NULL,'Das große Buch der Handarbeiten','10.0'),(31,'50 neue Projekte vom Strick-Sensei',2019,'Stiebner','Grünwald','978-3-8307-0999-2',NULL,NULL),(32,'Muster aus geometrischen Formen',2011,'Christopherus','Feiburg','978-3-8410-6081-5',NULL,NULL),(33,NULL,NULL,NULL,NULL,'978-37724-4830-0',NULL,NULL),(34,'Einfach selbst genäht',NULL,NULL,NULL,NULL,NULL,NULL),(35,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'39 Projekte in edlem Blau',NULL,NULL,NULL,NULL,NULL,NULL),(39,'couture, broderie, appliqué, tricot et perles',NULL,NULL,NULL,NULL,NULL,NULL),(40,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,NULL,NULL,'Gruner & Jahr','Hamburg',NULL,'Das große Buch der Handarbeiten','10.0'),(63,'50 neue Projekte vom Strick-Sensei',2019,'Stiebner','Grünwald','978-3-8307-0999-2',NULL,NULL),(64,'Muster aus geometrischen Formen',2011,'Christopherus','Feiburg','978-3-8410-6081-5',NULL,NULL);
/*!40000 ALTER TABLE `buch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flyer`
--

DROP TABLE IF EXISTS `flyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flyer` (
  `MediumID` int(11) NOT NULL,
  `Herausgeber` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `Erscheinungsdatum` date DEFAULT NULL,
  PRIMARY KEY (`MediumID`),
  CONSTRAINT `flyer_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flyer`
--

LOCK TABLES `flyer` WRITE;
/*!40000 ALTER TABLE `flyer` DISABLE KEYS */;
/*!40000 ALTER TABLE `flyer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gegenstand`
--

DROP TABLE IF EXISTS `gegenstand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gegenstand` (
  `GegenstandID` int(11) NOT NULL AUTO_INCREMENT,
  `Kategorie` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `Zweck` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `Stil` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `Modell` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`GegenstandID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gegenstand`
--

LOCK TABLES `gegenstand` WRITE;
/*!40000 ALTER TABLE `gegenstand` DISABLE KEYS */;
/*!40000 ALTER TABLE `gegenstand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gegenstandtechnik`
--

DROP TABLE IF EXISTS `gegenstandtechnik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gegenstandtechnik` (
  `GegenstandID` int(11) NOT NULL,
  `TechnikID` int(11) NOT NULL,
  PRIMARY KEY (`GegenstandID`,`TechnikID`),
  KEY `TechnikID` (`TechnikID`),
  CONSTRAINT `gegenstandtechnik_ibfk_1` FOREIGN KEY (`GegenstandID`) REFERENCES `gegenstand` (`GegenstandID`),
  CONSTRAINT `gegenstandtechnik_ibfk_2` FOREIGN KEY (`TechnikID`) REFERENCES `technik` (`TechnikID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gegenstandtechnik`
--

LOCK TABLES `gegenstandtechnik` WRITE;
/*!40000 ALTER TABLE `gegenstandtechnik` DISABLE KEYS */;
/*!40000 ALTER TABLE `gegenstandtechnik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medium`
--

DROP TABLE IF EXISTS `medium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medium` (
  `MediumID` int(11) NOT NULL AUTO_INCREMENT,
  `Titel` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `MedienArt` enum('Buch','Zeitschrift','Schnittmuster','Website','Flyer') COLLATE utf8mb4_bin NOT NULL,
  `Sprache` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`MediumID`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medium`
--

LOCK TABLES `medium` WRITE;
/*!40000 ALTER TABLE `medium` DISABLE KEYS */;
INSERT INTO `medium` VALUES (1,'Harry Potter: Magisch Stricken','Buch','deutsch'),(2,'Bunte Nadelkissen','Buch','deutsch'),(3,'Burda Stricklehrbuch','Buch','deutsch'),(4,'Faszination Makramee','Buch','deutsch'),(5,'Geschenke für Mutti selbstgemacht','Buch','deutsch'),(6,'Japanisch Quilten','Buch','deutsch'),(7,'L‘atelier du fil','Buch','französisch'),(8,'omiyage','Buch',NULL),(9,'stricken à la carte','Buch','deutsch'),(10,'Accessoires','Zeitschrift','deutsch'),(11,'Andrea Kreativ','Zeitschrift','deutsch'),(12,'Andrea Kreativ','Zeitschrift','deutsch'),(13,'Anna','Zeitschrift','deutsch'),(14,'Anna','Zeitschrift','deutsch'),(15,'Anna','Zeitschrift','deutsch'),(16,'Anna','Zeitschrift','deutsch'),(17,'Anna','Zeitschrift','deutsch'),(18,'Anna','Zeitschrift','deutsch'),(19,'Anna','Zeitschrift','deutsch'),(20,'Anna','Zeitschrift','deutsch'),(21,'Anna','Zeitschrift','deutsch'),(22,'Anna','Zeitschrift','deutsch'),(23,'Anna','Zeitschrift','deutsch'),(24,'Anna','Zeitschrift','deutsch'),(25,'Anna','Zeitschrift','deutsch'),(26,'Burda','Zeitschrift','deutsch'),(27,'Burda','Zeitschrift','deutsch'),(28,'Burda Patchwork','Zeitschrift','deutsch'),(29,'Burda style','Zeitschrift','deutsch'),(30,'Das große Buch der Handarbeiten','Buch','deutsch'),(31,'Japanische Handschuhe stricken','Buch','deutsch'),(32,'English Paper Peircing','Buch','englisch'),(33,'Harry Potter: Magisch Stricken','Buch','deutsch'),(34,'Bunte Nadelkissen','Buch','deutsch'),(35,'Burda Stricklehrbuch','Buch','deutsch'),(36,'Faszination Makramee','Buch','deutsch'),(37,'Geschenke für Mutti selbstgemacht','Buch','deutsch'),(38,'Japanisch Quilten','Buch','deutsch'),(39,'L‘atelier du fil','Buch','französisch'),(40,'omiyage','Buch',NULL),(41,'stricken à la carte','Buch','deutsch'),(42,'Accessoires','Zeitschrift','deutsch'),(43,'Andrea Kreativ','Zeitschrift','deutsch'),(44,'Andrea Kreativ','Zeitschrift','deutsch'),(45,'Anna','Zeitschrift','deutsch'),(46,'Anna','Zeitschrift','deutsch'),(47,'Anna','Zeitschrift','deutsch'),(48,'Anna','Zeitschrift','deutsch'),(49,'Anna','Zeitschrift','deutsch'),(50,'Anna','Zeitschrift','deutsch'),(51,'Anna','Zeitschrift','deutsch'),(52,'Anna','Zeitschrift','deutsch'),(53,'Anna','Zeitschrift','deutsch'),(54,'Anna','Zeitschrift','deutsch'),(55,'Anna','Zeitschrift','deutsch'),(56,'Anna','Zeitschrift','deutsch'),(57,'Anna','Zeitschrift','deutsch'),(58,'Burda','Zeitschrift','deutsch'),(59,'Burda','Zeitschrift','deutsch'),(60,'Burda Patchwork','Zeitschrift','deutsch'),(61,'Burda style','Zeitschrift','deutsch'),(62,'Das große Buch der Handarbeiten','Buch','deutsch'),(63,'Japanische Handschuhe stricken','Buch','deutsch'),(64,'English Paper Peircing','Buch','englisch');
/*!40000 ALTER TABLE `medium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mediumautor`
--

DROP TABLE IF EXISTS `mediumautor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mediumautor` (
  `MediumID` int(11) NOT NULL,
  `AutorID` int(11) NOT NULL,
  PRIMARY KEY (`MediumID`,`AutorID`),
  KEY `AutorID` (`AutorID`),
  CONSTRAINT `mediumautor_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`),
  CONSTRAINT `mediumautor_ibfk_2` FOREIGN KEY (`AutorID`) REFERENCES `autor` (`AutorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mediumautor`
--

LOCK TABLES `mediumautor` WRITE;
/*!40000 ALTER TABLE `mediumautor` DISABLE KEYS */;
/*!40000 ALTER TABLE `mediumautor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mediumgegenstand`
--

DROP TABLE IF EXISTS `mediumgegenstand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mediumgegenstand` (
  `MediumID` int(11) NOT NULL,
  `GegenstandID` int(11) NOT NULL,
  PRIMARY KEY (`MediumID`,`GegenstandID`),
  KEY `GegenstandID` (`GegenstandID`),
  CONSTRAINT `mediumgegenstand_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`),
  CONSTRAINT `mediumgegenstand_ibfk_2` FOREIGN KEY (`GegenstandID`) REFERENCES `gegenstand` (`GegenstandID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mediumgegenstand`
--

LOCK TABLES `mediumgegenstand` WRITE;
/*!40000 ALTER TABLE `mediumgegenstand` DISABLE KEYS */;
/*!40000 ALTER TABLE `mediumgegenstand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mediumtechnik`
--

DROP TABLE IF EXISTS `mediumtechnik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mediumtechnik` (
  `MediumID` int(11) NOT NULL,
  `TechnikID` int(11) NOT NULL,
  PRIMARY KEY (`MediumID`,`TechnikID`),
  KEY `TechnikID` (`TechnikID`),
  CONSTRAINT `mediumtechnik_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`),
  CONSTRAINT `mediumtechnik_ibfk_2` FOREIGN KEY (`TechnikID`) REFERENCES `technik` (`TechnikID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mediumtechnik`
--

LOCK TABLES `mediumtechnik` WRITE;
/*!40000 ALTER TABLE `mediumtechnik` DISABLE KEYS */;
/*!40000 ALTER TABLE `mediumtechnik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekt`
--

DROP TABLE IF EXISTS `projekt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projekt` (
  `ProjektID` int(11) NOT NULL AUTO_INCREMENT,
  `Projektname` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `Beschreibung` text COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ProjektID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekt`
--

LOCK TABLES `projekt` WRITE;
/*!40000 ALTER TABLE `projekt` DISABLE KEYS */;
/*!40000 ALTER TABLE `projekt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schnittmuster`
--

DROP TABLE IF EXISTS `schnittmuster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schnittmuster` (
  `MediumID` int(11) NOT NULL,
  `Nummer` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `Verlag` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `Jahr` year(4) DEFAULT NULL,
  PRIMARY KEY (`MediumID`),
  CONSTRAINT `schnittmuster_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schnittmuster`
--

LOCK TABLES `schnittmuster` WRITE;
/*!40000 ALTER TABLE `schnittmuster` DISABLE KEYS */;
/*!40000 ALTER TABLE `schnittmuster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technik`
--

DROP TABLE IF EXISTS `technik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `technik` (
  `TechnikID` int(11) NOT NULL AUTO_INCREMENT,
  `Bereich` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `Methode` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `Arbeitsweise` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`TechnikID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technik`
--

LOCK TABLES `technik` WRITE;
/*!40000 ALTER TABLE `technik` DISABLE KEYS */;
/*!40000 ALTER TABLE `technik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website`
--

DROP TABLE IF EXISTS `website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `website` (
  `MediumID` int(11) NOT NULL,
  `URL` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `Kanalname` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `LanchDatum` date DEFAULT NULL,
  `Download` tinyint(1) DEFAULT NULL,
  `Ausdruck` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`MediumID`),
  CONSTRAINT `website_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website`
--

LOCK TABLES `website` WRITE;
/*!40000 ALTER TABLE `website` DISABLE KEYS */;
/*!40000 ALTER TABLE `website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zeitschrift`
--

DROP TABLE IF EXISTS `zeitschrift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zeitschrift` (
  `MediumID` int(11) NOT NULL,
  `Untertitel` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `Jahrgang` year(4) DEFAULT NULL,
  `Monat` int(11) DEFAULT NULL,
  `Heftnummer` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `Sonderheft` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`MediumID`),
  CONSTRAINT `zeitschrift_ibfk_1` FOREIGN KEY (`MediumID`) REFERENCES `medium` (`MediumID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zeitschrift`
--

LOCK TABLES `zeitschrift` WRITE;
/*!40000 ALTER TABLE `zeitschrift` DISABLE KEYS */;
INSERT INTO `zeitschrift` VALUES (10,NULL,2019,NULL,'2019',0),(11,'Puppenmode',NULL,NULL,'554',0),(12,'Puppenmode spezial',NULL,NULL,'552',1),(13,NULL,2007,10,'10/2007',0),(14,NULL,2007,11,'11/2007',0),(15,NULL,2007,12,'12/2007',0),(16,NULL,2007,9,'9/2007',0),(17,NULL,2009,4,'04/2009',0),(18,NULL,2010,3,'03/2010',0),(19,NULL,2010,12,'12/2010',0),(20,NULL,2011,0,'04/2011',0),(21,NULL,2012,1,'1/2012',0),(22,NULL,2019,4,'4/2019',0),(23,NULL,2020,5,'5/2020',0),(24,NULL,2020,7,'7/2020',0),(25,NULL,2020,8,'8/2020',0),(26,'accessoires',2018,5,'5/2018',0),(27,'easy',2019,2,'2/2019',0),(28,'Best of Burda Patchwork',2018,NULL,'Herbst/201',1),(29,NULL,2020,10,'10/2020',0),(42,NULL,2019,NULL,'2019',0),(43,'Puppenmode',NULL,NULL,'554',0),(44,'Puppenmode spezial',NULL,NULL,'552',1),(45,NULL,2007,10,'10/2007',0),(46,NULL,2007,11,'11/2007',0),(47,NULL,2007,12,'12/2007',0),(48,NULL,2007,9,'9/2007',0),(49,NULL,2009,4,'04/2009',0),(50,NULL,2010,3,'03/2010',0),(51,NULL,2010,12,'12/2010',0),(52,NULL,2011,0,'04/2011',0),(53,NULL,2012,1,'1/2012',0),(54,NULL,2019,4,'4/2019',0),(55,NULL,2020,5,'5/2020',0),(56,NULL,2020,7,'7/2020',0),(57,NULL,2020,8,'8/2020',0),(58,'accessoires',2018,5,'5/2018',0),(59,'easy',2019,2,'2/2019',0),(60,'Best of Burda Patchwork',2018,NULL,'Herbst/201',1),(61,NULL,2020,10,'10/2020',0);
/*!40000 ALTER TABLE `zeitschrift` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-01 12:09:53
