-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: dbmonopoly
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `eigendomskaarten`
--

DROP TABLE IF EXISTS `eigendomskaarten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eigendomskaarten` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RFID` varchar(45) DEFAULT NULL,
  `Naam` varchar(45) DEFAULT NULL,
  `Hypotheek` varchar(45) DEFAULT NULL,
  `Kost_huis` varchar(45) DEFAULT NULL,
  `Kost_kaart` varchar(45) DEFAULT NULL,
  `Huur_onbebouwd` varchar(45) DEFAULT NULL,
  `Huur_1huis` varchar(45) DEFAULT NULL,
  `Huur_2huizen` varchar(45) DEFAULT NULL,
  `Huur_3Huizen` varchar(45) DEFAULT NULL,
  `Huur_4Huizen` varchar(45) DEFAULT NULL,
  `Huur_1Hotel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eigendomskaarten`
--

LOCK TABLES `eigendomskaarten` WRITE;
/*!40000 ALTER TABLE `eigendomskaarten` DISABLE KEYS */;
INSERT INTO `eigendomskaarten` VALUES (5,NULL,'D0.02 Sint-Jorisstraat','600','1000','1200','40','200','600','1800','3200','5000'),(6,NULL,'C1.02 Sint-Jorisstraat','600','1000','1200','80','400','1200','3600','6400','9000'),(7,NULL,'C2.03 Rijselstraat','1000','1000','2000','120','600','1800','5400','8000','11000'),(8,NULL,'D1.01 Rijselstraat','1000','1000','2000','120','600','1800','5400','8000','11000'),(9,NULL,'C2.04 Rijselstraat','1200','1000','2400','160','800','2000','6000','9000','12000'),(10,NULL,'Treehouse The Studios','1400','2000','2800','200','1000','3000','9000','12500','15000'),(11,NULL,'Oasis The Studios','1400','2000','2800','200','1000','3000','9000','12500','15000'),(12,NULL,'The Offices The Studios','1600','2000','3200','240','1200','3600','10000','14000','18000'),(13,NULL,'Atelier 1 Budafabriek','1800','2000','3600','280','1400','4000','11000','15000','19000'),(14,NULL,'Atelier 2 Budafabriek','1800','2000','3600','280','1400','4000','11000','15000','19000'),(15,NULL,'Atelier 3 Budafabriek','2000','2000','4000','320','1600','4400','12000','16000','20000'),(16,NULL,'S1.02 The Square','2200','3000','4400','360','1800','5000','14000','17500','21000'),(17,NULL,'S2.14 The Square','2200','3000','4400','360','1800','5000','14000','17500','21000'),(18,NULL,'S0.06 The Square','2400','3000','4800','400','2000','6000','15000','18500','22000'),(19,NULL,'L0.07 The Level','2600','3000','5200','440','2200','6600','16000','19500','23000'),(20,NULL,'L0.04 The Level','2600','3000','5200','440','2200','6600','16000','19500','23000'),(21,NULL,'L1.03 The Level','2800','3000','5600','480','2400','7200','17000','20500','24000'),(22,NULL,'Studio 1 IDC','3000','4000','6000','520','2600','7800','18000','22000','25500'),(23,NULL,'Shop IDC','3000','4000','6000','520','2600','7800','18000','22000','25500'),(24,NULL,'Atelier IDC','3200','4000','6400','560','3000','9000','20000','24000','28000'),(25,NULL,'Aula Minor GKG','3500','4000','7000','700','3500','10000','22000','26000','30000'),(26,NULL,'Aula Major GkG','4000','4000','8000','1000','4000','12000','28000','34000','40000');
/*!40000 ALTER TABLE `eigendomskaarten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `overige_kaarten`
--

DROP TABLE IF EXISTS `overige_kaarten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `overige_kaarten` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RFID` varchar(45) DEFAULT NULL,
  `Naam` varchar(45) DEFAULT NULL,
  `hypotheek` int(11) DEFAULT NULL,
  `inkomsten` int(11) DEFAULT NULL,
  `kost` int(11) DEFAULT NULL,
  `kost_1kaart` int(11) DEFAULT NULL,
  `kost_2kaarten` int(11) DEFAULT NULL,
  `huur_1station` int(11) DEFAULT NULL,
  `huur_2stations` int(11) DEFAULT NULL,
  `huur_3stations` int(11) DEFAULT NULL,
  `huur_4stations` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overige_kaarten`
--

LOCK TABLES `overige_kaarten` WRITE;
/*!40000 ALTER TABLE `overige_kaarten` DISABLE KEYS */;
INSERT INTO `overige_kaarten` VALUES (27,NULL,'Kans',NULL,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,NULL,'herexamens',NULL,NULL,1000,NULL,NULL,NULL,NULL,NULL,NULL),(29,NULL,'Start',NULL,4000,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,NULL,'eten betalen',NULL,NULL,1000,NULL,NULL,NULL,NULL,NULL,NULL),(31,NULL,'kot betalen',NULL,NULL,4000,NULL,NULL,NULL,NULL,NULL,NULL),(32,NULL,'onkosten',NULL,NULL,2000,NULL,NULL,NULL,NULL,NULL,NULL),(33,NULL,'Elektriciteit betalen',1500,NULL,2000,960,2400,NULL,NULL,NULL,NULL),(34,NULL,'Water betalen',1500,NULL,2000,960,2400,NULL,NULL,NULL,NULL),(35,NULL,'Bibliotheek',2000,NULL,2000,NULL,NULL,500,1000,2000,4000),(36,NULL,'Onthaal',2000,NULL,2000,NULL,NULL,500,1000,2000,4000),(37,NULL,'Restaurant',2000,NULL,2000,NULL,NULL,500,1000,2000,4000),(38,NULL,'Secretariaat',2000,NULL,2000,NULL,NULL,500,1000,2000,4000);
/*!40000 ALTER TABLE `overige_kaarten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spelers`
--

DROP TABLE IF EXISTS `spelers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spelers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RFID` varchar(45) DEFAULT NULL,
  `Naam` varchar(45) DEFAULT NULL,
  `Pion` varchar(45) DEFAULT NULL,
  `Saldo` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spelers`
--

LOCK TABLES `spelers` WRITE;
/*!40000 ALTER TABLE `spelers` DISABLE KEYS */;
INSERT INTO `spelers` VALUES (1,NULL,'Elien','Roze',15000),(2,NULL,'Emmily','Oranje',22000),(3,NULL,'Niels','Blauw',20000),(4,NULL,'Marco','Paars',24000);
/*!40000 ALTER TABLE `spelers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spelers_has_eigendomskaarten`
--

DROP TABLE IF EXISTS `spelers_has_eigendomskaarten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spelers_has_eigendomskaarten` (
  `spelers_ID` int(11) NOT NULL,
  `eigendomskaarten_ID` int(11) NOT NULL,
  `aantal_huizen` int(11) DEFAULT NULL,
  PRIMARY KEY (`spelers_ID`,`eigendomskaarten_ID`),
  KEY `fk_spelers_has_eigendomskaarten_eigendomskaarten1_idx` (`eigendomskaarten_ID`),
  KEY `fk_spelers_has_eigendomskaarten_spelers_idx` (`spelers_ID`),
  CONSTRAINT `fk_spelers_has_eigendomskaarten_eigendomskaarten1` FOREIGN KEY (`eigendomskaarten_ID`) REFERENCES `eigendomskaarten` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_spelers_has_eigendomskaarten_spelers` FOREIGN KEY (`spelers_ID`) REFERENCES `spelers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spelers_has_eigendomskaarten`
--

LOCK TABLES `spelers_has_eigendomskaarten` WRITE;
/*!40000 ALTER TABLE `spelers_has_eigendomskaarten` DISABLE KEYS */;
INSERT INTO `spelers_has_eigendomskaarten` VALUES (1,5,2),(2,6,0),(3,22,0),(4,18,0);
/*!40000 ALTER TABLE `spelers_has_eigendomskaarten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spelers_has_overige_kaarten`
--

DROP TABLE IF EXISTS `spelers_has_overige_kaarten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spelers_has_overige_kaarten` (
  `spelers_ID` int(11) NOT NULL,
  `overige_kaarten_ID` int(11) NOT NULL,
  `aantal_kaarten` int(11) DEFAULT NULL,
  `aantal_stations` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`spelers_ID`,`overige_kaarten_ID`),
  KEY `fk_spelers_has_overige_kaarten_overige_kaarten1_idx` (`overige_kaarten_ID`),
  KEY `fk_spelers_has_overige_kaarten_spelers1_idx` (`spelers_ID`),
  CONSTRAINT `fk_spelers_has_overige_kaarten_overige_kaarten1` FOREIGN KEY (`overige_kaarten_ID`) REFERENCES `overige_kaarten` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_spelers_has_overige_kaarten_spelers1` FOREIGN KEY (`spelers_ID`) REFERENCES `spelers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spelers_has_overige_kaarten`
--

LOCK TABLES `spelers_has_overige_kaarten` WRITE;
/*!40000 ALTER TABLE `spelers_has_overige_kaarten` DISABLE KEYS */;
INSERT INTO `spelers_has_overige_kaarten` VALUES (1,29,NULL,NULL),(2,36,NULL,'2'),(3,27,NULL,NULL),(4,33,1,NULL);
/*!40000 ALTER TABLE `spelers_has_overige_kaarten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dbmonopoly'
--

--
-- Dumping routines for database 'dbmonopoly'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-17  9:45:20
