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
-- Table structure for table `temp_order_details`
--

DROP TABLE IF EXISTS `temp_order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_order_details` (
  `number` int(45) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `order_id` int(45) DEFAULT NULL,
  `m_id` varchar(45) DEFAULT NULL,
  `m_name` varchar(45) DEFAULT NULL,
  `m_price` varchar(45) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` int(15) DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_order_details`
--

LOCK TABLES `temp_order_details` WRITE;
/*!40000 ALTER TABLE `temp_order_details` DISABLE KEYS */;
INSERT INTO `temp_order_details` VALUES (65,18,1,'1','rice idli','80',1,80),(66,18,1,'2','sambar vada','85',1,85),(67,18,1,'3','rasam','89',1,89),(68,18,2,'1','rice idli','80',1,80),(69,18,2,'2','sambar vada','85',1,85),(70,18,3,'3','rasam','89',1,89),(71,19,4,'2','sambar vada','85',1,85),(72,19,5,'1','rice idli','80',1,80),(73,18,6,'2','sambar vada','85',1,85),(74,18,6,'3','rasam','89',1,89),(75,18,7,'1','rice idli','80',1,80),(76,18,7,'2','sambar vada','85',1,85),(77,18,8,'3','rasam','89',1,89),(78,18,8,'2','sambar vada','85',1,85),(79,19,9,'1','rice idli','80',1,80),(80,19,9,'2','sambar vada','85',1,85);
/*!40000 ALTER TABLE `temp_order_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-15 23:42:07
