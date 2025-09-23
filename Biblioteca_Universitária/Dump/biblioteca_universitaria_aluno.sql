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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `id_alunos` int NOT NULL AUTO_INCREMENT,
  `ra` varchar(15) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `curso` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `usuario` int NOT NULL,
  PRIMARY KEY (`id_alunos`),
  UNIQUE KEY `ra` (`ra`),
  KEY `fk_aluno_usuario` (`usuario`),
  CONSTRAINT `fk_aluno_usuario` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'RA1001','Aluno 1','Engenharia','aluno1@email.com','1111-1001',1),(2,'RA1002','Aluno 2','Direito','aluno2@email.com','1111-1002',2),(3,'RA1003','Aluno 3','Medicina','aluno3@email.com','1111-1003',3),(4,'RA1004','Aluno 4','História','aluno4@email.com','1111-1004',4),(5,'RA1005','Aluno 5','Engenharia','aluno5@email.com','1111-1005',5),(6,'RA1006','Aluno 6','Direito','aluno6@email.com','1111-1006',6),(7,'RA1007','Aluno 7','Medicina','aluno7@email.com','1111-1007',7),(8,'RA1008','Aluno 8','História','aluno8@email.com','1111-1008',8),(9,'RA1009','Aluno 9','Engenharia','aluno9@email.com','1111-1009',9),(10,'RA1010','Aluno 10','Direito','aluno10@email.com','1111-1010',10),(11,'RA1011','Aluno 11','Medicina','aluno11@email.com','1111-1011',11),(12,'RA1012','Aluno 12','História','aluno12@email.com','1111-1012',12),(13,'RA1013','Aluno 13','Engenharia','aluno13@email.com','1111-1013',13),(14,'RA1014','Aluno 14','Direito','aluno14@email.com','1111-1014',14),(15,'RA1015','Aluno 15','Medicina','aluno15@email.com','1111-1015',15),(16,'RA1016','Aluno 16','História','aluno16@email.com','1111-1016',16),(17,'RA1017','Aluno 17','Engenharia','aluno17@email.com','1111-1017',17),(18,'RA1018','Aluno 18','Direito','aluno18@email.com','1111-1018',18),(19,'RA1019','Aluno 19','Medicina','aluno19@email.com','1111-1019',19),(20,'RA1020','Aluno 20','História','aluno20@email.com','1111-1020',20);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
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
