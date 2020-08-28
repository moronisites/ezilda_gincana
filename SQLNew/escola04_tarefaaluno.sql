-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: escola04
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `tarefaaluno`
--

DROP TABLE IF EXISTS `tarefaaluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarefaaluno` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dataEntrega` date DEFAULT NULL,
  `conceito` float DEFAULT NULL,
  `obs` varchar(250) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `idAluno` int DEFAULT NULL,
  `idTarefa` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idAluno` (`idAluno`),
  KEY `idTarefa` (`idTarefa`),
  CONSTRAINT `tarefaAluno_ibfk_1` FOREIGN KEY (`idAluno`) REFERENCES `alunos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tarefaAluno_ibfk_2` FOREIGN KEY (`idTarefa`) REFERENCES `tarefas` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarefaaluno`
--

LOCK TABLES `tarefaaluno` WRITE;
/*!40000 ALTER TABLE `tarefaaluno` DISABLE KEYS */;
INSERT INTO `tarefaaluno` VALUES (85,'2020-08-12',2,'pelo sistema','2020-08-28 01:47:25','2020-08-28 01:47:25',2,8),(86,'2020-07-01',6,'pelo sistema','2020-08-28 01:48:11','2020-08-28 02:06:30',5,8),(87,'2020-08-26',4,'pelo sistema','2020-08-28 01:50:32','2020-08-28 01:50:32',23,8),(88,'2020-08-04',10,'pelo sistema','2020-08-28 01:55:42','2020-08-28 02:05:59',8,2),(89,'2020-08-19',4,'pelo sistema','2020-08-28 02:07:01','2020-08-28 02:07:01',2,2),(91,'2020-08-11',6,'pelo sistema','2020-08-28 02:27:59','2020-08-28 02:27:59',14,6),(92,'2020-08-11',5,'pelo sistema','2020-08-28 02:42:24','2020-08-28 02:42:24',8,1);
/*!40000 ALTER TABLE `tarefaaluno` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-28  0:26:34
