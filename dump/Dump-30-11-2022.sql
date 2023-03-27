-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: travel-mng-sys
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table ` itinerary`
--

DROP TABLE IF EXISTS ` itinerary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE ` itinerary` (
  `id itinerary` int NOT NULL AUTO_INCREMENT,
  `nameThingsPlus` varchar(45) NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id itinerary`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table ` itinerary`
--

LOCK TABLES ` itinerary` WRITE;
/*!40000 ALTER TABLE ` itinerary` DISABLE KEYS */;
/*!40000 ALTER TABLE ` itinerary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardsdetails`
--

DROP TABLE IF EXISTS `cardsdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cardsdetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `numberCard` varchar(45) NOT NULL,
  `dateValidation` date NOT NULL,
  `codeCard` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardsdetails`
--

LOCK TABLES `cardsdetails` WRITE;
/*!40000 ALTER TABLE `cardsdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardsdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactus` (
  `idcontactUs` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `yourMessages` varchar(405) NOT NULL,
  PRIMARY KEY (`idcontactUs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus`
--

LOCK TABLES `contactus` WRITE;
/*!40000 ALTER TABLE `contactus` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proceedbooking`
--

DROP TABLE IF EXISTS `proceedbooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proceedbooking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nameTravel` varchar(45) NOT NULL,
  `price` int NOT NULL,
  `numberOfPersones` int NOT NULL,
  `totalPrice` int NOT NULL,
  `udhtimi_id` int NOT NULL,
  `te_dhenat_e_klientit_id` int NOT NULL,
  PRIMARY KEY (`id`,`udhtimi_id`,`te_dhenat_e_klientit_id`),
  KEY `fk_proceedbooking_udhtimi1_idx` (`udhtimi_id`),
  KEY `fk_proceedbooking_te_dhenat_e_klientit1_idx` (`te_dhenat_e_klientit_id`),
  CONSTRAINT `fk_proceedbooking_te_dhenat_e_klientit1` FOREIGN KEY (`te_dhenat_e_klientit_id`) REFERENCES `te_dhenat_e_klientit` (`id`),
  CONSTRAINT `fk_proceedbooking_udhtimi1` FOREIGN KEY (`udhtimi_id`) REFERENCES `udhtimi` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proceedbooking`
--

LOCK TABLES `proceedbooking` WRITE;
/*!40000 ALTER TABLE `proceedbooking` DISABLE KEYS */;
/*!40000 ALTER TABLE `proceedbooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rentacar`
--

DROP TABLE IF EXISTS `rentacar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rentacar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `markeCar` varchar(45) NOT NULL,
  `series` varchar(45) NOT NULL,
  `targe` varchar(45) NOT NULL,
  `colore` varchar(45) NOT NULL,
  `priceDay` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentacar`
--

LOCK TABLES `rentacar` WRITE;
/*!40000 ALTER TABLE `rentacar` DISABLE KEYS */;
/*!40000 ALTER TABLE `rentacar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rentacar_klientit`
--

DROP TABLE IF EXISTS `rentacar_klientit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rentacar_klientit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rentacar_id` int NOT NULL,
  `te_dhenat_e_klientit_id` int NOT NULL,
  `numri_diteve` int NOT NULL,
  `cmimi_total` varchar(45) NOT NULL,
  PRIMARY KEY (`id`,`rentacar_id`,`te_dhenat_e_klientit_id`),
  KEY `fk_rentacar_has_te_dhenat_e_klientit_te_dhenat_e_klientit1_idx` (`te_dhenat_e_klientit_id`),
  KEY `fk_rentacar_has_te_dhenat_e_klientit_rentacar1_idx` (`rentacar_id`),
  CONSTRAINT `fk_rentacar_has_te_dhenat_e_klientit_rentacar1` FOREIGN KEY (`rentacar_id`) REFERENCES `rentacar` (`id`),
  CONSTRAINT `fk_rentacar_has_te_dhenat_e_klientit_te_dhenat_e_klientit1` FOREIGN KEY (`te_dhenat_e_klientit_id`) REFERENCES `te_dhenat_e_klientit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentacar_klientit`
--

LOCK TABLES `rentacar_klientit` WRITE;
/*!40000 ALTER TABLE `rentacar_klientit` DISABLE KEYS */;
/*!40000 ALTER TABLE `rentacar_klientit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `te_dhenat_e_klientit`
--

DROP TABLE IF EXISTS `te_dhenat_e_klientit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `te_dhenat_e_klientit` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `te_dhenat_e_klientit`
--

LOCK TABLES `te_dhenat_e_klientit` WRITE;
/*!40000 ALTER TABLE `te_dhenat_e_klientit` DISABLE KEYS */;
/*!40000 ALTER TABLE `te_dhenat_e_klientit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udhtimi`
--

DROP TABLE IF EXISTS `udhtimi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udhtimi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `TripName` varchar(45) NOT NULL,
  `About` varchar(115) NOT NULL,
  `travelTime` varchar(45) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  ` itinerary_id itinerary` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Udhtimi_ itinerary_idx` (` itinerary_id itinerary`),
  CONSTRAINT `fk_Udhtimi_ itinerary` FOREIGN KEY (` itinerary_id itinerary`) REFERENCES ` itinerary` (`id itinerary`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udhtimi`
--

LOCK TABLES `udhtimi` WRITE;
/*!40000 ALTER TABLE `udhtimi` DISABLE KEYS */;
/*!40000 ALTER TABLE `udhtimi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-30 12:50:54
