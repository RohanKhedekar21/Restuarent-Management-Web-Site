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
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categorie` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'south-indian','rice idli',80),(2,'south-indian','sambar vada',85),(3,'south-indian','rasam',89),(4,'dosas','dosa',111),(5,'dosas','pepar dosa',125),(6,'dosas','mysore dosa',135),(7,'dosas','rawa dosa',120),(8,'dosas','onion rawa dosa',140),(9,'dosas','paneer dosa',130),(10,'dosas','ghee dosa',140),(11,'dosas','set dosa',155),(12,'uttapam','onion',155),(13,'uttapam','tomato',155),(14,'uttapam','mix',155),(15,'rice','sambar rice',125),(16,'sweet','rawa kesari',75),(17,'soups','tomato coriander soup',80),(18,'soups','hot & sour',85),(19,'soups','sweet corn',85),(20,'soups','veg. munchow',85),(21,'soups','veg. clear soup',85),(22,'soups','lemone & coriander',85),(23,'starters','spring rolls',120),(24,'starters','veg. manchurian dry',140),(25,'starters','chilly paneer dry',160),(26,'starters','chilly mushroom dry',155),(27,'starters','paneer shashik',175),(28,'starters','spianch paper salt',125),(29,'starters','stuffed mushroom',175),(30,'starters','crispy honey chilly potato',115),(31,'starters','chilly idli',140),(32,'starters','crispy spinach & baby corn',150),(33,'starters','fried vegetables in salt & pepper',135),(34,'main-course','veg. chopsuey',140),(35,'main-course','manchurian gravy',125),(36,'main-course','chilly paneer gravy',150),(37,'main-course','sweet & sour veg.',125),(38,'main-course','mix. veg. in hot garlic sauce',130),(39,'main-course','shredded potatoes in hot garlic sauce',125),(40,'noodles','veg. hakka noodles',111),(41,'noodles','chilli gralic noodles',115),(42,'noodles','pan fried noodles',170),(43,'noodles','gravy noodles',185),(44,'rice','veg. fried rice',121),(45,'rice ','chily garlic rice',121),(46,'starters','paneer tikka',185),(47,'starters','soya tandoori tikka',148),(48,'starters','aloo tandoori',155),(49,'starters','tandoori pineapple',160),(50,'starters','spinach chaat',140),(51,'starters','dahi ke kabab',150),(52,'starters','veg. seekh kabab',165),(53,'starters','platter',230),(54,'starters','punjabi soya chaap',148),(55,'starters','bharwaan tandoori mushroom',190),(56,'starters','tandoori panner khaas-e-khaas',190),(57,'sabziyan','butter soya chaap',165),(58,'sabziyan','kadhai paneer',205),(59,'sabziyan','malai kofta',205),(60,'sabziyan','paneer butter masala',185),(61,'sabziyan','subz panch meal',180),(62,'sabziyan','paneer lababdar',185),(63,'sabziyan','gobhi masala',165),(64,'sabziyan','paneer tikka masala',185),(65,'sabziyan','banarsi achaari aloo',180),(66,'sabziyan','shahi paneer',190),(67,'sabziyan','tadka dahi',180);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
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
