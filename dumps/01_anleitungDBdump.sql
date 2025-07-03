-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: 01_anleitungdb
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anleitung` (
  `idAnleitung` int(11) NOT NULL,
  `AnleitungsBezeichnung` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `AnleidungsNummer` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `Seitenzahl` int(11) DEFAULT NULL,
  `Anleitungsbogen` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `Grundschnitt` tinyint(4) DEFAULT NULL,
  `Standort` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idAnleitung`),
  CONSTRAINT `idMedium` FOREIGN KEY (`idAnleitung`) REFERENCES `medium` (`idMedium`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `idAutor` int(11) NOT NULL,
  `AutorNachname` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `AutorVorname` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `AutorZusatz` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `AutorAlias` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idAutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `medium`
--

DROP TABLE IF EXISTS `medium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medium` (
  `idMedium` int(11) NOT NULL,
  `Titel` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `MedienArt` enum('Buch','Zeitschrift','Schnittmuster','Website','Flyer') COLLATE utf8_bin DEFAULT NULL,
  `Mediumcol` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idMedium`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `objekt`
--

DROP TABLE IF EXISTS `objekt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `objekt` (
  `idObjekt` int(11) NOT NULL,
  `ObjektKategorie` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ObjektZweck` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ObjektStyl` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ObjektModel` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idObjekt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `technik`
--

DROP TABLE IF EXISTS `technik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technik` (
  `idTechnik` int(11) NOT NULL,
  `TechnikBereich` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `Methode` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `Arbeisweise` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idTechnik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-03 10:59:13
