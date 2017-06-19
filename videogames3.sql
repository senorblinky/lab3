-- MySQL dump 10.13  Distrib 5.7.18, for Win64 (x86_64)
--
-- Host: localhost    Database: videogames
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Current Database: `videogames`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `videogames` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `videogames`;

--
-- Table structure for table `gamegenre`
--

DROP TABLE IF EXISTS `gamegenre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamegenre` (
  `gameID` int(11) DEFAULT NULL,
  `genreID` int(11) DEFAULT NULL,
  `subGenreID` int(11) DEFAULT NULL,
  UNIQUE KEY `pkgamegenre` (`gameID`,`genreID`),
  KEY `genreID` (`genreID`),
  CONSTRAINT `gamegenre_ibfk_1` FOREIGN KEY (`gameID`) REFERENCES `games` (`gameID`),
  CONSTRAINT `gamegenre_ibfk_2` FOREIGN KEY (`genreID`) REFERENCES `genre` (`genreID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamegenre`
--

LOCK TABLES `gamegenre` WRITE;
/*!40000 ALTER TABLE `gamegenre` DISABLE KEYS */;
/*!40000 ALTER TABLE `gamegenre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games` (
  `gameID` int(11) NOT NULL AUTO_INCREMENT,
  `gameName` varchar(30) DEFAULT NULL,
  `systemID` int(11) DEFAULT NULL,
  PRIMARY KEY (`gameID`),
  KEY `systemID` (`systemID`),
  CONSTRAINT `games_ibfk_1` FOREIGN KEY (`systemID`) REFERENCES `systems` (`systemID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,'gameName',NULL),(2,'Assassins Creed 3',NULL),(3,'Final Fantasy XIV',NULL),(4,'Final Fantasy XV',NULL),(5,'League of Legends',NULL),(6,'Legend of Zelda: Breath of the',NULL),(7,'Legend of Zelda: Skyward Sword',NULL),(8,'Legend of Zelda: Twilight Prin',NULL),(9,'Mortal Kombat X',NULL),(10,'Resident Evil 6',NULL),(11,'Resident Evil 7',NULL),(12,'Titanfall 2',NULL),(13,'Tomb Raider',NULL),(14,'Uncharted 4',NULL),(15,'World of Warcraft',NULL);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `genreID` int(11) NOT NULL AUTO_INCREMENT,
  `genreName` varchar(25) DEFAULT NULL,
  `genreDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`genreID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'genreName','genreDescription'),(2,'Action','\"Platformer'),(3,'Adventure',''),(4,'RPG','\"Role Playing Game - action'),(5,'Simulation','\"Vehicle'),(6,'Strategy','\"Real time strategy'),(7,'Sports','\"Racing');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems`
--

DROP TABLE IF EXISTS `systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems` (
  `systemID` int(11) NOT NULL AUTO_INCREMENT,
  `systemName` varchar(25) DEFAULT NULL,
  `systemDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`systemID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems`
--

LOCK TABLES `systems` WRITE;
/*!40000 ALTER TABLE `systems` DISABLE KEYS */;
INSERT INTO `systems` VALUES (1,'PC','Personal Computer'),(2,'PS4','Sony Playstation 4'),(3,'Xbox360','Microsoft Xbox 360'),(4,'Wii','Nintendo Wii'),(5,'WiiU','Nintendo Wii U');
/*!40000 ALTER TABLE `systems` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-19 12:32:52
