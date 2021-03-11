-- MySQL dump 10.13  Distrib 8.0.22, for osx10.15 (x86_64)
--
-- Host: localhost    Database: highcube
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Actuality`
--

DROP TABLE IF EXISTS `Actuality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Actuality` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Text` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Link` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Photo_id` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Photo_id_idx` (`Photo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Actuality`
--

LOCK TABLES `Actuality` WRITE;
/*!40000 ALTER TABLE `Actuality` DISABLE KEYS */;
/*!40000 ALTER TABLE `Actuality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Concept`
--

DROP TABLE IF EXISTS `Concept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Concept` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Text` longtext NOT NULL,
  `Photo_id` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Photo_id_idx` (`Photo_id`),
  CONSTRAINT `A` FOREIGN KEY (`Photo_id`) REFERENCES `Photo` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Concept`
--

LOCK TABLES `Concept` WRITE;
/*!40000 ALTER TABLE `Concept` DISABLE KEYS */;
/*!40000 ALTER TABLE `Concept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contact`
--

DROP TABLE IF EXISTS `Contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Contact` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Adress` varchar(100) NOT NULL,
  `Photo_id` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Photo_id_idx` (`Photo_id`),
  CONSTRAINT `B` FOREIGN KEY (`Photo_id`) REFERENCES `Photo` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contact`
--

LOCK TABLES `Contact` WRITE;
/*!40000 ALTER TABLE `Contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `Contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ParticularProducts`
--

DROP TABLE IF EXISTS `ParticularProducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ParticularProducts` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(100) NOT NULL,
  `Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Price` int NOT NULL,
  `Particular-Pro` tinyint NOT NULL,
  `Photo_id` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Photo_id_idx` (`Photo_id`),
  CONSTRAINT `C` FOREIGN KEY (`Photo_id`) REFERENCES `Photo` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ParticularProducts`
--

LOCK TABLES `ParticularProducts` WRITE;
/*!40000 ALTER TABLE `ParticularProducts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ParticularProducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Photo`
--

DROP TABLE IF EXISTS `Photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Photo` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Photo`
--

LOCK TABLES `Photo` WRITE;
/*!40000 ALTER TABLE `Photo` DISABLE KEYS */;
INSERT INTO `Photo` VALUES (1,NULL);
/*!40000 ALTER TABLE `Photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Profile`
--

DROP TABLE IF EXISTS `Profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Profile` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `JobName` varchar(100) NOT NULL,
  `Photo_id` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Photo_id_idx` (`Photo_id`),
  CONSTRAINT `D` FOREIGN KEY (`Photo_id`) REFERENCES `Photo` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Profile`
--

LOCK TABLES `Profile` WRITE;
/*!40000 ALTER TABLE `Profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `Profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Slider`
--

DROP TABLE IF EXISTS `Slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Slider` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  `Word` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Photo_id` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Photo_id_idx` (`Photo_id`),
  CONSTRAINT `E` FOREIGN KEY (`Photo_id`) REFERENCES `Photo` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Slider`
--

LOCK TABLES `Slider` WRITE;
/*!40000 ALTER TABLE `Slider` DISABLE KEYS */;
INSERT INTO `Slider` VALUES (3,'Joel','Wilder',1);
/*!40000 ALTER TABLE `Slider` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-10 16:10:49
