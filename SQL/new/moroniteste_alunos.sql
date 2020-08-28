CREATE DATABASE  IF NOT EXISTS `escola04` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `escola04`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: mysql669.umbler.com    Database: moroniteste
-- ------------------------------------------------------
-- Server version	5.6.40

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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(55) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `idTurma` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idTurma` (`idTurma`),
  CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`idTurma`) REFERENCES `turmas` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'Fabio um',1,'2020-06-28 19:29:41','2020-06-28 19:29:41',3),(2,'Marcelo dois',2,'2020-06-28 19:33:38','2020-06-28 19:33:38',2),(4,'Gustavo quatro',4,'2020-06-28 19:37:26','2020-06-28 19:37:26',1),(5,'Douglas cinco',5,'2020-06-28 19:40:08','2020-06-28 19:40:08',2),(7,'Marta sete',7,'2020-07-01 20:42:55','2020-07-01 20:42:55',1),(8,'Roberto oito',8,'2020-07-29 22:58:05','2020-07-29 22:58:05',1),(10,'Julia dez',10,'2020-08-03 19:08:58','2020-08-03 19:08:58',1),(11,'Margarida onze',11,'2020-08-03 19:10:01','2020-08-03 19:10:01',1),(12,'Paulo doze',12,'2020-08-03 19:11:41','2020-08-03 19:11:41',1),(13,'Rogerio treze',13,'2020-08-11 16:55:52','2020-08-11 16:55:52',1),(14,'Patricia quatorze',14,'2020-08-11 16:57:39','2020-08-11 16:57:39',1),(15,'Emerson quinze',15,'2020-08-11 16:58:36','2020-08-11 16:58:36',1),(19,'Bernardo Dezenove',19,'0000-00-00 00:00:00','0000-00-00 00:00:00',1),(20,'Claudemir vinte',20,'0000-00-00 00:00:00','0000-00-00 00:00:00',1),(21,'Fernanda vinte e um',21,'0000-00-00 00:00:00','0000-00-00 00:00:00',2),(22,'Monica vinte e dois',22,'0000-00-00 00:00:00','0000-00-00 00:00:00',3);
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-21 17:45:50
