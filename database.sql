CREATE DATABASE  IF NOT EXISTS `garage_in_your_pocket` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `garage_in_your_pocket`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: garage_in_your_pocket
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adminId` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(150) NOT NULL,
  `profilePicture` varchar(100) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `createdBy` bigint DEFAULT NULL,
  `modifiedBy` bigint DEFAULT NULL,
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `modifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `isActive` tinyint(1) DEFAULT '1',
  `isDeleted` tinyint(1) DEFAULT '0',
  `lname` varchar(45) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (7,'tweshasatia@gmail.com','bd8909ba4859a3a409581ade54527fce','20210530_003118_Screenshot (12).png','Twesha',0,7,NULL,'2021-05-30 00:00:00',0,0,'Satia'),(12,'thewingedstories@gmail.com','21232f297a57a5a743894a0e4a801fc3','20200330_173949_','Manav',101,0,NULL,NULL,0,0,'Shah'),(43,'rks241527@gmail.com','4a13a7d06c6e9fc0a4367b7771d014f6','20210530_044725_Screenshot (12).png','Rutvi',7,7,'2021-05-30 00:00:00','2021-05-30 00:00:00',1,0,'Sukhadia');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area` (
  `areaId` bigint NOT NULL AUTO_INCREMENT,
  `areaName` varchar(45) NOT NULL,
  `cityId` bigint NOT NULL,
  `createdBy` bigint DEFAULT '0',
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` bigint DEFAULT '0',
  `modifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `isActive` tinyint(1) DEFAULT '1',
  `isDeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`areaId`),
  KEY `cityId_idx` (`cityId`),
  CONSTRAINT `cityId` FOREIGN KEY (`cityId`) REFERENCES `city` (`cityId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'Vasna',1,1,'2020-05-24 00:00:00',0,NULL,1,0),(2,'Paldi',1,1,'2020-05-24 00:00:00',0,NULL,1,0),(3,'Navrangpura',1,1,'2020-05-24 00:00:00',0,NULL,1,0),(4,'Raipur',1,1,'2020-05-25 00:00:00',0,NULL,1,0),(5,'Adajan',2,1,'2020-05-25 00:00:00',0,NULL,1,0),(6,'Maninagar',1,4,'2020-08-12 00:00:00',0,NULL,1,0),(7,'Vastrapur',1,4,'2020-08-12 00:00:00',0,NULL,1,0),(8,'Nanpura',2,0,NULL,4,'2020-08-14 00:00:00',1,0),(9,'Athwa',2,4,'2020-08-14 00:00:00',0,NULL,1,0),(10,'Begumpura',2,4,'2020-08-14 00:00:00',0,NULL,1,0),(11,'Gopipura',2,4,'2020-08-14 00:00:00',0,NULL,1,0),(12,'Adalaj',3,4,'2020-08-14 00:00:00',0,NULL,1,0),(13,'Bhaijipura',3,0,NULL,4,'2020-08-14 00:00:00',1,0),(14,'Chiloda',3,4,'2020-08-14 00:00:00',0,NULL,1,1);
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `cityId` bigint NOT NULL AUTO_INCREMENT,
  `cityName` varchar(45) NOT NULL,
  `stateId` bigint NOT NULL,
  `createdBy` bigint DEFAULT '0',
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` bigint DEFAULT '0',
  `modifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `isActive` tinyint(1) DEFAULT '1',
  `isDeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cityId`),
  KEY `stateId_idx` (`stateId`),
  CONSTRAINT `stateId` FOREIGN KEY (`stateId`) REFERENCES `state` (`stateId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Ahmedabad',1,1,'2020-05-24 00:00:00',0,NULL,1,0),(2,'Surat',1,1,'2020-05-24 00:00:00',0,NULL,1,0),(3,'Gandhinagar',1,0,NULL,1,'2020-05-24 00:00:00',1,0),(4,'Mumbai',2,1,'2020-05-24 00:00:00',0,NULL,1,0),(5,'Pune',2,1,'2020-05-24 00:00:00',0,NULL,1,0);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `feedbackId` bigint NOT NULL AUTO_INCREMENT,
  `subject` varchar(20) NOT NULL,
  `feedbackDesc` varchar(100) NOT NULL,
  `feedbackDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `isDeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`feedbackId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (3,'Appreciation','The site is user friendly and provides best guidance.','2020-08-07 00:00:00','tweshasatia@yahoo.com','Dolly Trivedi',0),(4,'Suggestion','You must provide options of more than one states.','2020-08-07 00:00:00','rutmahee2015@gmail.com','Rutvi Sukhadia',0);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `garage`
--

DROP TABLE IF EXISTS `garage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garage` (
  `garageId` int NOT NULL AUTO_INCREMENT,
  `garageName` varchar(45) NOT NULL,
  `verification` varchar(45) DEFAULT NULL,
  `createdBy` varchar(45) NOT NULL,
  `modifiedBy` varchar(45) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `isActive` tinyint GENERATED ALWAYS AS (1) VIRTUAL,
  `isDeleted` tinyint GENERATED ALWAYS AS (0) VIRTUAL,
  PRIMARY KEY (`garageId`),
  UNIQUE KEY `garageId_UNIQUE` (`garageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garage`
--

LOCK TABLES `garage` WRITE;
/*!40000 ALTER TABLE `garage` DISABLE KEYS */;
/*!40000 ALTER TABLE `garage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state` (
  `stateId` bigint NOT NULL AUTO_INCREMENT,
  `stateName` varchar(30) NOT NULL,
  `createdBy` bigint DEFAULT '0',
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` bigint DEFAULT '0',
  `modifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `isActive` tinyint(1) DEFAULT '1',
  `isDeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`stateId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Gujarat',0,NULL,1,'2020-05-24 00:00:00',1,0),(2,'Maharashtra',0,NULL,1,'2020-05-24 00:00:00',1,0),(3,'Rajasthan',1,'2020-05-24 00:00:00',0,NULL,1,0);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userId` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `mobileNo` bigint DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `profilePicture` varchar(100) DEFAULT NULL,
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `modifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `isActive` tinyint(1) DEFAULT '1',
  `isDeleted` tinyint(1) DEFAULT '0',
  `areaId` bigint NOT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `pincode` bigint DEFAULT '0',
  `otp` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  KEY `areaId_idx` (`areaId`),
  CONSTRAINT `areaId` FOREIGN KEY (`areaId`) REFERENCES `area` (`areaId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (3,'rutmahee2015@gmail.com','dcd9dcf9330337c283263dfeeabb5ec8','Rutvik','Sukhadia','1999-06-24',8160149703,'p-402, Swaminarayan Park-1','20200728_200351_d2.jpg','2020-05-28 00:00:00','2020-08-05 00:00:00',1,1,1,'Male',380007,NULL),(4,'saloni19koya@gmail.com','5e36c9f741aac0be6250faecf38e9c7a','Samir','Koya','1987-07-19',9725509531,'F-1004, sardar Patel nagar society,naranpura','20200725_171658_d3.jpg','2020-05-29 00:00:00','2020-08-15 00:00:00',1,0,5,'Male',380007,NULL),(11,'jeny23koya@gmail.com','5e36c9f741aac0be6250faecf38e9c7a','Jeny','Koya','2020-07-03',9974359873,'F-1004, sardar Patel nagar society,naranpura','20200815_022753_IMG-20140210-WA0019.jpg','2020-06-01 00:00:00','2020-08-15 00:00:00',1,1,3,'Female',380007,NULL),(12,'rutmahee2015@gmail.com','dc6fc55d406c147e3ffaedc19d00add4','Rutvi','Sukhadia','1999-06-24',8160149703,'P-402, Swaminarayan Park -1','20200805_164210_author.jpg','2020-07-17 00:00:00','2020-08-05 00:00:00',1,1,3,'Female',380007,NULL),(13,'rutmahee@gmail.com','4a13a7d06c6e9fc0a4367b7771d014f6','Rakesh','Sharma','1984-06-05',7897654322,'K-403, Keshav Baugh','20210530_022928_202012028_painting.png','2020-07-19 00:00:00','2021-05-30 00:00:00',1,0,1,'male',380007,'915244'),(14,'tweshasatia@gmail.com','c736ce98347a997abbf6f582bc59ef9d','Twesha','Satia','1999-06-23',7654321245,'Shitalnath Flats','20200728_170835_IMG-20140210-WA0018.jpg','2020-07-28 00:00:00','2021-05-30 00:00:00',1,0,1,'female',380007,'238546'),(15,'janak20@gmail.com','a94bbf351f6dcece925d287deb3e3b14','Janak','Shah','1994-09-06',78654567,'A-1, Somanath Bunglows','20200814_193202_01.jpg','2020-08-14 00:00:00',NULL,1,0,14,'Male',380007,NULL),(17,'priyanshisoni2410@gmail.com','c5d0fa27363044291af3d969a298a4ce','Priyanshi','Soni','2020-08-17',5896325874,'Raipur Darwaja','20200815_163341_user5.jpg','2020-08-15 00:00:00','2020-08-15 00:00:00',1,0,4,'Female',380007,NULL),(18,'sonih1835@gmail.com','afa50301816e3a99c2053ab6fa8b1ae8','Manan','Chokshi','1987-08-14',9726358941,'8-B, Swaminarayan Colony','20200815_175206_d4.jpg','2020-08-15 00:00:00','2020-08-15 00:00:00',1,0,3,'Male',380007,NULL),(19,'202012028@daiict.ac.in','21cd83e98c6cbd8f0ae26a62d5f5c488','Rutvi','Sukhadia','2021-05-05',8160149703,'B/H G.B. Shah College\r\nP-402, Swaminarayan Park-1','20210529_134527_Screenshot (12).png','2021-05-29 00:00:00',NULL,1,1,1,'Female',380007,NULL),(21,'rks241527@gmail.com','a65549e8a7814307e02c857e1bb2f793','Rutvi','Sukhadia','2021-04-29',8160149703,'B/H G.B. Shah College','20210530_045828_202012028_painting.png','2021-05-30 00:00:00','2021-05-30 00:00:00',1,0,6,'female',380007,'653160');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-30  7:09:54
