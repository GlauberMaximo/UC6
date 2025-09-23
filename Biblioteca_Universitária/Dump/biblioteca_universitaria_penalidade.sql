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
-- Table structure for table `penalidade`
--

DROP TABLE IF EXISTS `penalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penalidade` (
  `id_penalidades` int NOT NULL AUTO_INCREMENT,
  `usuario` int NOT NULL,
  `dias_atraso` int NOT NULL,
  `valor_multa` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_penalidades`),
  KEY `fk_penalidade_usuario` (`usuario`),
  CONSTRAINT `fk_penalidade_usuario` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penalidade`
--

LOCK TABLES `penalidade` WRITE;
/*!40000 ALTER TABLE `penalidade` DISABLE KEYS */;
INSERT INTO `penalidade` VALUES (1,2,3,7.50),(2,5,2,5.00),(3,6,5,12.50),(4,6,4,10.00),(5,9,7,17.50),(6,11,1,2.50),(7,13,6,15.00),(8,15,10,25.00),(9,15,8,20.00),(10,17,2,5.00),(11,18,4,10.00),(12,19,12,30.00),(13,21,9,22.50),(14,23,3,7.50),(15,25,15,37.50),(16,27,6,15.00),(17,29,11,27.50),(18,30,2,5.00),(19,32,5,12.50),(20,33,4,10.00);
/*!40000 ALTER TABLE `penalidade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-23 17:13:44
