CREATE DATABASE  IF NOT EXISTS `dojxs_and_ninjxs` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dojxs_and_ninjxs`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: dojxs_and_ninjxs
-- ------------------------------------------------------
-- Server version	8.0.0-dmr

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
-- Table structure for table `dojos`
--

DROP TABLE IF EXISTS `dojos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dojos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `upadated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dojos`
--

LOCK TABLES `dojos` WRITE;
/*!40000 ALTER TABLE `dojos` DISABLE KEYS */;
INSERT INTO `dojos` VALUES (1,'SJ','2021-11-02 15:18:21','2021-11-02 15:18:20','2021-11-02 15:18:20.574000'),(2,'Puntarenas','2021-11-02 15:22:28','2021-11-02 15:22:27','2021-11-02 15:22:27.757000'),(3,'Heredia','2021-11-05 16:03:59','2021-11-05 16:03:59','2021-11-05 16:03:59.206000'),(4,'Cartago','2021-11-07 01:24:24','2021-11-07 01:24:23','2021-11-07 01:24:23.841000'),(7,'Limón','2021-11-07 03:07:46','2021-11-07 03:07:45','2021-11-07 03:07:45.585000'),(8,'Alajuela','2021-11-07 03:16:55','2021-11-07 03:16:55','2021-11-07 03:16:55.012000'),(9,'Guanacaste','2021-11-07 03:35:51','2021-11-07 03:35:51','2021-11-07 03:35:51.487000');
/*!40000 ALTER TABLE `dojos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ninjas`
--

DROP TABLE IF EXISTS `ninjas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ninjas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `dojo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ninjas_dojos_idx` (`dojo_id`),
  CONSTRAINT `fk_ninjas_dojos` FOREIGN KEY (`dojo_id`) REFERENCES `dojos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ninjas`
--

LOCK TABLES `ninjas` WRITE;
/*!40000 ALTER TABLE `ninjas` DISABLE KEYS */;
INSERT INTO `ninjas` VALUES (1,'Jose','Lopez',20,'2021-11-02 15:18:59','2021-11-02 15:18:59',1),(2,'Mario','Lara',25,'2021-11-02 15:19:52','2021-11-02 15:19:52',1),(3,'Octavio','Paz',45,'2021-11-02 15:38:00','2021-11-02 15:38:00',2),(4,'Gioconda','Belli',24,'2021-11-02 15:38:37','2021-11-02 15:38:37',2),(5,'Luis','Paz',42,'2021-11-05 16:02:21','2021-11-05 16:02:21',2),(7,'Lorena','Zamora',63,'2021-11-07 01:12:07','2021-11-07 01:12:07',1),(8,'Alejo','Sucre',38,'2021-11-07 01:32:30','2021-11-07 01:32:30',4),(9,'Herminia','De la O',44,'2021-11-07 03:34:16','2021-11-07 03:34:16',8),(10,'Juan','Mora',85,'2021-11-07 16:18:17','2021-11-07 16:18:17',9),(11,'Luisa','Herrera',47,'2021-11-07 16:22:08','2021-11-07 16:22:08',8);
/*!40000 ALTER TABLE `ninjas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-07 16:33:47
