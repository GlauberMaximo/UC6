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
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `id_professores` int NOT NULL AUTO_INCREMENT,
  `matricula` varchar(20) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `departamento` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `usuario` int NOT NULL,
  PRIMARY KEY (`id_professores`),
  UNIQUE KEY `matricula` (`matricula`),
  KEY `fk_professor_usuario` (`usuario`),
  CONSTRAINT `fk_professor_usuario` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'P2001','Professor 1','Matemática','prof1@email.com',21),(2,'P2002','Professor 2','Física','prof2@email.com',22),(3,'P2003','Professor 3','História','prof3@email.com',23),(4,'P2004','Professor 4','Direito','prof4@email.com',24),(5,'P2005','Professor 5','Biologia','prof5@email.com',25),(6,'P2006','Professor 6','Medicina','prof6@email.com',26),(7,'P2007','Professor 7','Engenharia','prof7@email.com',27),(8,'P2008','Professor 8','Química','prof8@email.com',28),(9,'P2009','Professor 9','Matemática','prof9@email.com',29),(10,'P2010','Professor 10','Física','prof10@email.com',30),(11,'P2011','Professor 11','História','prof11@email.com',31),(12,'P2012','Professor 12','Direito','prof12@email.com',32),(13,'P2013','Professor 13','Biologia','prof13@email.com',33),(14,'P2014','Professor 14','Medicina','prof14@email.com',34),(15,'P2015','Professor 15','Engenharia','prof15@email.com',35),(16,'P2016','Professor 16','Química','prof16@email.com',36),(17,'P2017','Professor 17','Matemática','prof17@email.com',37),(18,'P2018','Professor 18','Física','prof18@email.com',38),(19,'P2019','Professor 19','História','prof19@email.com',39),(20,'P2020','Professor 20','Direito','prof20@email.com',40);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-23 17:13:43
