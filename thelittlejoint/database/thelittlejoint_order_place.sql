CREATE DATABASE  IF NOT EXISTS `thelittlejoint` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `thelittlejoint`;
-- MySQL dump 10.13  Distrib 5.6.11, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: thelittlejoint
-- ------------------------------------------------------
-- Server version	5.6.13

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
-- Table structure for table `order_place`
--

DROP TABLE IF EXISTS `order_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_place` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_price` int(11) DEFAULT NULL,
  `delivery_preference` varchar(45) DEFAULT NULL,
  `order_address` varchar(100) DEFAULT NULL,
  `order_client_name` varchar(45) DEFAULT NULL,
  `client_phone` varchar(45) DEFAULT NULL,
  `client_id` varchar(45) DEFAULT NULL,
  `order_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_place`
--

LOCK TABLES `order_place` WRITE;
/*!40000 ALTER TABLE `order_place` DISABLE KEYS */;
INSERT INTO `order_place` VALUES (1,274,'Home Delivery','202 pravin  3,  Landmark:datta prasad vada pav  (home)  421003','rohan khedekar','7066711215','18','Order Canceled'),(2,185,'Home Delivery','202 pravin  3,  Landmark:datta prasad vada pav  (home)  421003','rohan khedekar','7066711215','18','Complete'),(3,109,'Home Delivery','202 pravin  3,  Landmark:datta prasad vada pav  (home)  421003','rohan khedekar','7066711215','18','Complete'),(4,85,NULL,NULL,NULL,NULL,NULL,'InProcess'),(5,80,NULL,NULL,NULL,NULL,NULL,'InProcess'),(6,194,'Home Delivery','202 pravin  3,  Landmark:datta prasad vada pav  (home)  421003','rohan khedekar','7066711215','18','Complete'),(7,165,NULL,NULL,NULL,NULL,NULL,'InProcess'),(8,194,'Home Delivery','202 pravin  3,  Landmark:datta prasad vada pav  (home)  421003','rohan khedekar','7066711215','18','Order Place'),(9,165,NULL,NULL,NULL,NULL,NULL,'InProcess');
/*!40000 ALTER TABLE `order_place` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-15 23:42:08
