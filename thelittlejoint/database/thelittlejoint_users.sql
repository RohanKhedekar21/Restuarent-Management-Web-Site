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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `phone_no` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `alternate_no` varchar(10) DEFAULT NULL,
  `room_flat_no` int(11) DEFAULT NULL,
  `building_area` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `landmark` varchar(45) DEFAULT NULL,
  `address_type` varchar(10) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`,`phone_no`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (18,'rohan','khedekar','7066711215','rohan123','8149362532',303,'pravin apt','ulhasnagar-3','datta prasad vada pav','home',421003),(19,'gotu','khedekar','8149362532','gotu',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'rajashree','khedekar','8080817566','rajashree','7066711215',303,'pravin apt.','ulhasnagar-3','datta prasad vada pav','home',421003),(21,'chaitali','khedekar','7666052443','chaitali','8149362529',303,'pravin apt','ulhasnagar-3','datta prasad vada pav','home',421003),(22,'7066711215','aasdf','8149362529','sdfsdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'rohan','khedekar','7066711215','asdf','8149362532',303,'pravin apt','ulhasnagar-3','datta prasad vada pav','home',421003),(24,'rohan','khedekar','7066711215','rohan','8149362532',303,'pravin apt','ulhasnagar-3','datta prasad vada pav','home',421003),(25,'kkk','rrr','111','222',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'rohan','khedekar','5454','asdf',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
