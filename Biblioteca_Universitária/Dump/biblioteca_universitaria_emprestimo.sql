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
-- Table structure for table `emprestimo`
--

DROP TABLE IF EXISTS `emprestimo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emprestimo` (
  `id_emprestimos` int NOT NULL AUTO_INCREMENT,
  `usuario` int NOT NULL,
  `exemplar` int NOT NULL,
  `data_retirada` date NOT NULL,
  `data_prevista` date NOT NULL,
  `data_devolucao` date NOT NULL,
  `status` varchar(15) NOT NULL,
  PRIMARY KEY (`id_emprestimos`),
  KEY `fk_emprestimo_usuario` (`usuario`),
  KEY `fk_emprestimo_exemplar` (`exemplar`),
  CONSTRAINT `fk_emprestimo_exemplar` FOREIGN KEY (`exemplar`) REFERENCES `exemplar` (`id_exemplares`),
  CONSTRAINT `fk_emprestimo_usuario` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprestimo`
--

LOCK TABLES `emprestimo` WRITE;
/*!40000 ALTER TABLE `emprestimo` DISABLE KEYS */;
INSERT INTO `emprestimo` VALUES (1,1,1,'2025-01-05','2025-01-20','2025-01-18','Concluído'),(2,2,2,'2025-01-10','2025-01-25','2025-01-24','Concluído'),(3,3,3,'2025-01-12','2025-01-27','2025-01-27','Em andamento'),(4,4,4,'2025-01-15','2025-01-30','2025-01-29','Concluído'),(5,5,5,'2025-01-18','2025-02-02','2025-02-02','Em andamento'),(6,6,6,'2025-01-20','2025-02-04','2025-02-03','Concluído'),(7,6,7,'2025-01-22','2025-02-06','2025-02-06','Em andamento'),(8,7,8,'2025-01-25','2025-02-09','2025-02-07','Concluído'),(9,8,9,'2025-01-28','2025-02-12','2025-02-12','Em andamento'),(10,9,10,'2025-02-01','2025-02-16','2025-02-16','Em andamento'),(11,10,11,'2025-02-03','2025-02-18','2025-02-16','Concluído'),(12,11,12,'2025-02-05','2025-02-20','2025-02-20','Em andamento'),(13,12,13,'2025-02-07','2025-02-22','2025-02-21','Concluído'),(14,13,14,'2025-02-09','2025-02-24','2025-02-24','Em andamento'),(15,14,15,'2025-02-11','2025-02-26','2025-02-25','Concluído'),(16,15,16,'2025-02-13','2025-02-28','2025-02-28','Em andamento'),(17,15,17,'2025-02-15','2025-03-02','2025-03-02','Em andamento'),(18,16,18,'2025-02-17','2025-03-04','2025-03-03','Concluído'),(19,17,19,'2025-02-19','2025-03-06','2025-03-06','Em andamento'),(20,18,20,'2025-02-21','2025-03-08','2025-03-08','Em andamento'),(21,19,21,'2025-02-23','2025-03-10','2025-03-09','Concluído'),(22,20,22,'2025-02-25','2025-03-12','2025-03-12','Em andamento'),(23,21,23,'2025-02-27','2025-03-14','2025-03-14','Em andamento'),(24,22,24,'2025-03-01','2025-03-16','2025-03-16','Em andamento'),(25,23,25,'2025-03-03','2025-03-18','2025-03-16','Concluído'),(26,24,26,'2025-03-05','2025-03-20','2025-03-20','Em andamento'),(27,25,27,'2025-03-07','2025-03-22','2025-03-22','Em andamento'),(28,26,28,'2025-03-09','2025-03-24','2025-03-24','Em andamento'),(29,27,29,'2025-03-11','2025-03-26','2025-03-24','Concluído'),(30,28,30,'2025-03-13','2025-03-28','2025-03-28','Em andamento'),(31,29,31,'2025-03-15','2025-03-30','2025-03-28','Concluído'),(32,30,32,'2025-03-17','2025-04-01','2025-04-01','Em andamento'),(33,31,33,'2025-03-19','2025-04-03','2025-04-03','Em andamento'),(34,32,34,'2025-03-21','2025-04-05','2025-04-04','Concluído'),(35,33,35,'2025-03-23','2025-04-07','2025-04-07','Em andamento');
/*!40000 ALTER TABLE `emprestimo` ENABLE KEYS */;
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
