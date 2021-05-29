CREATE DATABASE  IF NOT EXISTS `garage_in_your_pocket` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `garage_in_your_pocket`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: garage_in_your_pocket
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (7,'tweshasatia@gmail.com','6bb5219fdbc40bf1b8523fe6c96a0642','20200318_211334_','Twesha',101,0,NULL,NULL,0,0,'Satia'),(8,'rutmahee2015@gmail.com','89a6294cf00ec7fbb10a32e17fa27d7e','20200318_212149_WIN_20180101_185810.JPG','Rutvi',101,0,NULL,NULL,0,0,'Sukjhadia'),(12,'thewingedstories@gmail.com','10e39190d4b514ffc432e4b045d610ee','20200330_173949_','Manav',101,0,NULL,NULL,0,0,'Shah');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area_info`
--

DROP TABLE IF EXISTS `area_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area_info` (
  `areaId` int NOT NULL AUTO_INCREMENT,
  `city_id` int NOT NULL,
  `areaName` varchar(20) NOT NULL,
  `modifiedBy` bigint DEFAULT NULL,
  `createdBy` bigint DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `modifiedDate` date DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`areaId`),
  KEY `city_id_idx` (`city_id`),
  CONSTRAINT `area_info_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city_info` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_info`
--

LOCK TABLES `area_info` WRITE;
/*!40000 ALTER TABLE `area_info` DISABLE KEYS */;
INSERT INTO `area_info` VALUES (7,9,'Vasna',12,12,'2020-08-06','2020-08-06',1,0),(8,9,'Paldi',12,12,'2020-08-06','2020-08-06',1,0),(9,9,'Navrangpura',12,12,'2020-08-06','2020-08-06',1,0),(10,10,'Gotri',12,12,'2020-08-06','2020-08-06',1,0),(11,10,'Alkapuri',12,12,'2020-08-06','2020-08-06',1,0),(12,10,'Fatehgunj',12,12,'2020-08-06','2020-08-06',1,0),(13,11,'Athwa',12,12,'2020-08-06','2020-08-06',1,0),(14,11,'Rander',12,12,'2020-08-06','2020-08-06',1,0),(15,11,'Adajan',12,12,'2020-08-06','2020-08-06',1,0),(16,12,'Aryanagar',12,12,'2020-08-06','2020-08-06',1,0),(17,12,'Diwanpara',12,12,'2020-08-06','2020-08-06',1,0),(18,12,'Gandhigram',12,12,'2020-08-06','2020-08-06',1,0),(19,13,'Motera',12,12,'2020-08-06','2020-08-06',1,0),(20,13,'Adalaj',12,12,'2020-08-06','2020-08-06',1,0),(21,13,'Sector21',12,12,'2020-08-06','2020-08-06',1,0);
/*!40000 ALTER TABLE `area_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_info`
--

DROP TABLE IF EXISTS `city_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city_info` (
  `city_id` int NOT NULL AUTO_INCREMENT,
  `city_name` varchar(20) NOT NULL,
  `modifiedBy` bigint DEFAULT NULL,
  `createdBy` bigint DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `modifiedDate` date DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `stateId` bigint NOT NULL,
  PRIMARY KEY (`city_id`),
  KEY `stateId` (`stateId`),
  CONSTRAINT `city_info_ibfk_1` FOREIGN KEY (`stateId`) REFERENCES `state` (`stateId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_info`
--

LOCK TABLES `city_info` WRITE;
/*!40000 ALTER TABLE `city_info` DISABLE KEYS */;
INSERT INTO `city_info` VALUES (9,'Ahmedabad',12,12,'2020-08-06','2020-08-06',1,0,5),(10,'Baroda',12,12,'2020-08-06','2020-08-06',1,0,5),(11,'Surat',12,12,'2020-08-06','2020-08-06',1,0,5),(12,'Rajkot',12,12,'2020-08-06','2020-08-06',1,0,5),(13,'Gandhinagar',12,12,'2020-08-06','2020-08-06',1,0,5);
/*!40000 ALTER TABLE `city_info` ENABLE KEYS */;
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
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `reviewId` bigint NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `propertyId` bigint NOT NULL,
  `reviewDesc` varchar(100) NOT NULL,
  `reviewDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `isDeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`reviewId`),
  KEY `userId1_idx` (`userId`),
  KEY `propertyId1_idx` (`propertyId`),
  CONSTRAINT `propertyIdReview` FOREIGN KEY (`propertyId`) REFERENCES `property` (`propertyId`),
  CONSTRAINT `userIdReview` FOREIGN KEY (`userId`) REFERENCES `user_master` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (6,32,25,'Very comfortable and peaceful place to live.Best facilities in this range.','2020-08-06 20:27:02',0),(7,32,16,'Very spacious and lavishing.The society is very cooperative.','2020-08-06 20:37:26',0),(8,33,24,'Not so nice.There are no amenities.','2020-08-06 20:42:58',0),(9,34,23,'Very nice location.I am satisfied.','2020-08-06 20:50:04',0),(10,34,18,'The house is worthy of its cost.','2020-08-06 20:52:24',0),(11,35,22,'It is best place in this amount.You should prefer this pg.','2020-08-06 20:57:19',0),(12,35,19,'It is not soo good.It is very costly.','2020-08-06 21:00:24',0),(13,36,21,'Nice 5 star from me','2020-08-06 21:06:14',0),(14,36,20,'Perfect place from all point of view.','2020-08-06 21:07:53',0),(15,37,21,'Not so reliable .Facilities are poor.','2020-08-06 21:13:41',0),(16,37,20,'Nice place and very comfortable.All places are nearby. ','2020-08-06 21:15:17',0),(17,38,19,'This place has amazing view.','2020-08-06 21:18:27',0),(18,38,22,'Affordable','2020-08-06 21:20:35',0),(19,39,18,'Do not rent this place','2020-08-06 21:24:56',0),(20,39,23,'Amazing 4 stars','2020-08-06 21:26:05',0),(21,40,17,'Beautiful place to live.','2020-08-06 21:29:24',0),(22,40,24,'Awesome ','2020-08-06 21:30:47',0),(23,41,16,'nice place for dwelling','2020-08-06 21:34:42',0),(24,41,25,'Superb','2020-08-06 21:36:14',0);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
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
  `createdBy` varchar(30) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedBy` varchar(30) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT '1',
  `isDeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`stateId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (5,'Gujarat','12','2020-08-06 00:00:00','12','2020-08-06 00:00:00',1,0);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_master`
--

DROP TABLE IF EXISTS `user_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_master` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `profilePicture` varchar(45) DEFAULT NULL,
  `mobileNo` bigint NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(200) NOT NULL,
  `pincode` int NOT NULL,
  `modifiedBy` bigint DEFAULT NULL,
  `createdBy` bigint DEFAULT NULL,
  `modifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `otp` varchar(45) DEFAULT NULL,
  `areaId` int DEFAULT NULL,
  `isLandlord` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`userId`),
  KEY `areaId` (`areaId`),
  CONSTRAINT `areaId` FOREIGN KEY (`areaId`) REFERENCES `area_info` (`areaId`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_master`
--

LOCK TABLES `user_master` WRITE;
/*!40000 ALTER TABLE `user_master` DISABLE KEYS */;
INSERT INTO `user_master` VALUES (27,'tweshasatia@gmail.com','Twesha','Satia','7bebdfcfe83c88e45d71b0418403fa9e','20200806_163410_g1.jpg',8690211859,'female','1999-06-23','9,Shitalnath Flats',380007,0,0,'2020-08-06 00:00:00','2020-08-06 00:00:00',1,0,NULL,7,1),(28,'sanghvivruddhi@gmail.com','Vruddhi','Sanghvi','10e39190d4b514ffc432e4b045d610ee','20200806_174823_g2.jpg',9429460081,'female','1999-10-27','C 502 Indraprasth 2,Near 650 Restaurant, Shreyas Tekra',380015,0,0,'2020-08-06 00:00:00','2020-08-06 00:00:00',1,0,'989558',10,1),(29,'sanghvijainil@gmail.com','Jainil','Sanghvi','1d7720a7c921ca569f6a3f9f3254661d','20200806_172357_b3.jpg',9408492546,'male','2011-06-03','B-11 Vasundhara Flats',380017,0,0,'2020-08-06 00:00:00','2020-08-06 00:00:00',1,0,NULL,13,1),(30,'sanghvirajashree@gmail.com','Rajashree','Sanghvi','47b9204521fd58a7cd7f1fe4b095a2ce','20200806_173543_g3.jpg',992445739,'female','2008-12-20','A 120 Vaibhav towers',380012,0,0,'2020-08-06 00:00:00','2020-08-06 00:00:00',1,0,NULL,16,1),(31,'Crshah3888@gmail.com','Chintan','Shah','cccc6e08862742cfe6e384ac9361d55e','20200806_175749_b6.jpg',9876567866,'male','2009-02-03','6,Chetan Society',365880,0,0,'2020-08-06 00:00:00','2020-08-06 00:00:00',1,0,NULL,20,1),(32,'tweshasatia@yahoo.com','Dolly','Trivedi','7bebdfcfe83c88e45d71b0418403fa9e','20200806_181144_g14.jpg',1234567896,'female','1990-05-08','B9 Kundan app',380002,0,0,'2020-08-06 00:00:00','2020-08-06 00:00:00',1,0,NULL,8,0),(33,'satiaheena@gmail.com','Heena','Satia','e7f4a1abdd69d6c9a5b3f8b8736ea2f3','20200806_204036_g13.jpg',8976567845,'female','1997-01-07','9,Shitalnath Flats',380099,0,0,'2020-08-06 00:00:00','2020-08-06 00:00:00',1,0,NULL,11,0),(34,'Chintanshah_3888@yahoo.co.in','Manav','Shah','cccc6e08862742cfe6e384ac9361d55e','20200806_204851_b4.jpg',8978779078,'male','1998-01-16','C 502 Indraprasth 2,Near 650 Restaurant',380015,0,0,'2020-08-06 00:00:00','2020-08-06 00:00:00',1,0,NULL,15,0),(35,'jainil_1995@hotmail.com','Jay','Sanghvi','1d7720a7c921ca569f6a3f9f3254661d','20200806_205518_boy1.jpg',9408492546,'male','1993-06-09','3 solar tower',380015,0,0,'2020-08-06 00:00:00','2020-08-06 00:00:00',1,0,NULL,14,0),(36,'patelmeshwa2692@gmail.com','Meshwa','Patel','7a59ee46b505f556d27a0a2178b2c6ee','20200806_210444_g6.jpg',987654321,'female','1995-06-14','303 Ekta Towers',38954,0,0,'2020-08-06 00:00:00','2020-08-06 00:00:00',1,0,NULL,17,0),(37,'manavshah2612@gmail.com','Manas','Shah','ab311d308738b3145c34998285b5f247','20200806_211136_b5.jpg',345678912,'male','1989-10-19','F-4 Hiramani Appartments',879000,0,0,'2020-08-06 00:00:00','2020-08-06 00:00:00',1,0,NULL,21,0),(38,'grimashah303@gmail.com','Grima','Satia','6afaaa84fb7d6a642706b9afccddacd0','20200806_211709_g7.jpg',234567801,'female','1989-10-18','6,Chetan Society',38954,0,0,'2020-08-06 00:00:00','2020-08-06 00:00:00',1,0,NULL,20,0),(39,'grimashah220817@gmail.com','Grishma','Shah','6afaaa84fb7d6a642706b9afccddacd0','20200806_212358_g11.jpg',7895678453,'female','1993-12-29','A-18 Sumel Society',380014,0,0,'2020-08-06 00:00:00','2020-08-06 00:00:00',1,0,NULL,16,0),(40,'rutmahee2015@gmail.com','Rutvi','Sukhadia','21733d2b96db325a9cea2871a3de6ec3','20200806_212844_g10.jpg',8765432198,'female','1990-07-12','Swaminarayan',123345,0,0,'2020-08-06 00:00:00','2020-08-06 00:00:00',1,0,NULL,10,0),(41,'vatsssal@gmail.com','Vatsal','Trivedi','40f49a5a5f5d0d8f91e19a8983339cd8','20200806_213328_b2.jpg',7896504567,'male','1987-06-04','Salaj Homes',456578,0,0,'2020-08-06 00:00:00','2020-08-06 00:00:00',1,0,NULL,21,0);
/*!40000 ALTER TABLE `user_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-29 18:11:18
