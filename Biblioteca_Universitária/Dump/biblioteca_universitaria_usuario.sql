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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuarios` int NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  PRIMARY KEY (`id_usuarios`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'aluno1','senha1','aluno'),(2,'aluno2','senha2','aluno'),(3,'aluno3','senha3','aluno'),(4,'aluno4','senha4','aluno'),(5,'aluno5','senha5','aluno'),(6,'aluno6','senha6','aluno'),(7,'aluno7','senha7','aluno'),(8,'aluno8','senha8','aluno'),(9,'aluno9','senha9','aluno'),(10,'aluno10','senha10','aluno'),(11,'aluno11','senha11','aluno'),(12,'aluno12','senha12','aluno'),(13,'aluno13','senha13','aluno'),(14,'aluno14','senha14','aluno'),(15,'aluno15','senha15','aluno'),(16,'aluno16','senha16','aluno'),(17,'aluno17','senha17','aluno'),(18,'aluno18','senha18','aluno'),(19,'aluno19','senha19','aluno'),(20,'aluno20','senha20','aluno'),(21,'prof1','senha21','professor'),(22,'prof2','senha22','professor'),(23,'prof3','senha23','professor'),(24,'prof4','senha24','professor'),(25,'prof5','senha25','professor'),(26,'prof6','senha26','professor'),(27,'prof7','senha27','professor'),(28,'prof8','senha28','professor'),(29,'prof9','senha29','professor'),(30,'prof10','senha30','professor'),(31,'prof11','senha31','professor'),(32,'prof12','senha32','professor'),(33,'prof13','senha33','professor'),(34,'prof14','senha34','professor'),(35,'prof15','senha35','professor'),(36,'prof16','senha36','professor'),(37,'prof17','senha37','professor'),(38,'prof18','senha38','professor'),(39,'prof19','senha39','professor'),(40,'prof20','senha40','professor'),(41,'biblio1','senha41','bibliotecario'),(42,'biblio2','senha42','bibliotecario'),(43,'biblio3','senha43','bibliotecario'),(44,'biblio4','senha44','bibliotecario'),(45,'biblio5','senha45','bibliotecario'),(46,'biblio6','senha46','bibliotecario'),(47,'biblio7','senha47','bibliotecario'),(48,'biblio8','senha48','bibliotecario'),(49,'biblio9','senha49','bibliotecario'),(50,'biblio10','senha50','bibliotecario'),(51,'biblio11','senha51','bibliotecario'),(52,'biblio12','senha52','bibliotecario'),(53,'biblio13','senha53','bibliotecario'),(54,'biblio14','senha54','bibliotecario'),(55,'biblio15','senha55','bibliotecario'),(56,'biblio16','senha56','bibliotecario'),(57,'biblio17','senha57','bibliotecario'),(58,'biblio18','senha58','bibliotecario'),(59,'biblio19','senha59','bibliotecario'),(60,'biblio20','senha60','bibliotecario');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
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
