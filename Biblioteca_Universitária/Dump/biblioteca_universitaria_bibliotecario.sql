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
-- Table structure for table `bibliotecario`
--

DROP TABLE IF EXISTS `bibliotecario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bibliotecario` (
  `id_bibliotecarios` int NOT NULL AUTO_INCREMENT,
  `matricula` varchar(20) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `turno` varchar(10) NOT NULL,
  `contato` varchar(20) NOT NULL,
  `usuario` int NOT NULL,
  PRIMARY KEY (`id_bibliotecarios`),
  UNIQUE KEY `matricula` (`matricula`),
  KEY `fk_bibliotecario_usuario` (`usuario`),
  CONSTRAINT `fk_bibliotecario_usuario` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bibliotecario`
--

LOCK TABLES `bibliotecario` WRITE;
/*!40000 ALTER TABLE `bibliotecario` DISABLE KEYS */;
INSERT INTO `bibliotecario` VALUES (1,'B3001','Bibliotecário 1','Manhã','9999-3001',41),(2,'B3002','Bibliotecário 2','Tarde','9999-3002',42),(3,'B3003','Bibliotecário 3','Noite','9999-3003',43),(4,'B3004','Bibliotecário 4','Manhã','9999-3004',44),(5,'B3005','Bibliotecário 5','Tarde','9999-3005',45),(6,'B3006','Bibliotecário 6','Noite','9999-3006',46),(7,'B3007','Bibliotecário 7','Manhã','9999-3007',47),(8,'B3008','Bibliotecário 8','Tarde','9999-3008',48),(9,'B3009','Bibliotecário 9','Noite','9999-3009',49),(10,'B3010','Bibliotecário 10','Manhã','9999-3010',50),(11,'B3011','Bibliotecário 11','Tarde','9999-3011',51),(12,'B3012','Bibliotecário 12','Noite','9999-3012',52),(13,'B3013','Bibliotecário 13','Manhã','9999-3013',53),(14,'B3014','Bibliotecário 14','Tarde','9999-3014',54),(15,'B3015','Bibliotecário 15','Noite','9999-3015',55),(16,'B3016','Bibliotecário 16','Manhã','9999-3016',56),(17,'B3017','Bibliotecário 17','Tarde','9999-3017',57),(18,'B3018','Bibliotecário 18','Noite','9999-3018',58),(19,'B3019','Bibliotecário 19','Manhã','9999-3019',59),(20,'B3020','Bibliotecário 20','Tarde','9999-3020',60);
/*!40000 ALTER TABLE `bibliotecario` ENABLE KEYS */;
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
