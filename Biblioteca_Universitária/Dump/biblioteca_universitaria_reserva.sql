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
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva` (
  `id_reservas` int NOT NULL AUTO_INCREMENT,
  `usuario` int NOT NULL,
  `livro` int NOT NULL,
  `data` date NOT NULL,
  `status` varchar(15) NOT NULL,
  PRIMARY KEY (`id_reservas`),
  KEY `fk_reserva_usuario` (`usuario`),
  KEY `fk_reserva_livro` (`livro`),
  CONSTRAINT `fk_reserva_livro` FOREIGN KEY (`livro`) REFERENCES `livro` (`id_livros`),
  CONSTRAINT `fk_reserva_usuario` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (1,1,5,'2025-01-10','Ativa'),(2,1,6,'2025-02-12','Concluída'),(3,2,10,'2025-01-15','Ativa'),(4,2,11,'2025-02-18','Cancelada'),(5,3,15,'2025-01-20','Ativa'),(6,4,20,'2025-02-22','Ativa'),(7,5,25,'2025-03-05','Concluída'),(8,6,30,'2025-03-10','Ativa'),(9,6,31,'2025-04-12','Ativa'),(10,7,35,'2025-03-15','Cancelada'),(11,8,40,'2025-03-20','Ativa'),(12,9,45,'2025-04-01','Ativa'),(13,10,50,'2025-04-05','Concluída'),(14,11,2,'2025-04-08','Ativa'),(15,12,3,'2025-04-10','Ativa'),(16,13,7,'2025-04-12','Cancelada'),(17,14,8,'2025-04-15','Ativa'),(18,15,9,'2025-04-18','Ativa'),(19,15,12,'2025-05-01','Concluída'),(20,16,14,'2025-05-05','Ativa'),(21,17,16,'2025-05-10','Ativa'),(22,18,18,'2025-05-12','Ativa'),(23,19,22,'2025-05-15','Cancelada'),(24,20,24,'2025-05-20','Ativa'),(25,21,26,'2025-05-25','Ativa'),(26,22,28,'2025-05-28','Ativa'),(27,23,32,'2025-06-01','Concluída'),(28,24,34,'2025-06-05','Ativa'),(29,25,36,'2025-06-10','Ativa'),(30,26,38,'2025-06-15','Ativa'),(31,27,39,'2025-06-20','Concluída'),(32,28,41,'2025-06-25','Ativa'),(33,29,42,'2025-07-01','Ativa'),(34,30,43,'2025-07-05','Ativa'),(35,31,44,'2025-07-10','Ativa'),(36,32,46,'2025-07-15','Cancelada'),(37,33,47,'2025-07-20','Ativa'),(38,34,48,'2025-07-25','Ativa'),(39,35,49,'2025-07-30','Ativa'),(40,36,50,'2025-08-05','Concluída');
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-23 17:13:45
