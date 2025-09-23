-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca_universitaria
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `exemplar`
--

DROP TABLE IF EXISTS `exemplar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exemplar` (
  `id_exemplares` int NOT NULL AUTO_INCREMENT,
  `codigo_exemplar` varchar(20) NOT NULL,
  `status` varchar(15) NOT NULL,
  `localizacao` varchar(100) NOT NULL,
  `ISBN` varchar(13) NOT NULL,
  PRIMARY KEY (`id_exemplares`),
  UNIQUE KEY `ISBN` (`ISBN`),
  CONSTRAINT `fk_exemplar_livro` FOREIGN KEY (`ISBN`) REFERENCES `livro` (`ISBN`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exemplar`
--

LOCK TABLES `exemplar` WRITE;
/*!40000 ALTER TABLE `exemplar` DISABLE KEYS */;
INSERT INTO `exemplar` VALUES (1,'EXP001','Disponível','Estante A1','978000000001'),(2,'EXP002','Disponível','Estante A1','978000000002'),(3,'EXP003','Emprestado','Estante A1','978000000003'),(4,'EXP004','Disponível','Estante A1','978000000004'),(5,'EXP005','Disponível','Estante A2','978000000005'),(6,'EXP006','Emprestado','Estante A2','978000000006'),(7,'EXP007','Disponível','Estante A2','978000000007'),(8,'EXP008','Disponível','Estante A2','978000000008'),(9,'EXP009','Disponível','Estante A3','978000000009'),(10,'EXP010','Disponível','Estante A3','978000000010'),(11,'EXP011','Emprestado','Estante B1','978000000011'),(12,'EXP012','Disponível','Estante B1','978000000012'),(13,'EXP013','Disponível','Estante B1','978000000013'),(14,'EXP014','Disponível','Estante B1','978000000014'),(15,'EXP015','Disponível','Estante B2','978000000015'),(16,'EXP016','Disponível','Estante B2','978000000016'),(17,'EXP017','Disponível','Estante B2','978000000017'),(18,'EXP018','Disponível','Estante B2','978000000018'),(19,'EXP019','Disponível','Estante B3','978000000019'),(20,'EXP020','Disponível','Estante B3','978000000020'),(21,'EXP021','Disponível','Estante C1','978000000021'),(22,'EXP022','Disponível','Estante C1','978000000022'),(23,'EXP023','Disponível','Estante C1','978000000023'),(24,'EXP024','Disponível','Estante C2','978000000024'),(25,'EXP025','Emprestado','Estante C2','978000000025'),(26,'EXP026','Disponível','Estante D1','978000000026'),(27,'EXP027','Disponível','Estante D1','978000000027'),(28,'EXP028','Disponível','Estante D1','978000000028'),(29,'EXP029','Disponível','Estante D2','978000000029'),(30,'EXP030','Disponível','Estante D2','978000000030'),(31,'EXP031','Disponível','Estante E1','978000000031'),(32,'EXP032','Disponível','Estante E1','978000000032'),(33,'EXP033','Disponível','Estante E1','978000000033'),(34,'EXP034','Disponível','Estante E2','978000000034'),(35,'EXP035','Disponível','Estante E2','978000000035');
/*!40000 ALTER TABLE `exemplar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-23 17:13:46
