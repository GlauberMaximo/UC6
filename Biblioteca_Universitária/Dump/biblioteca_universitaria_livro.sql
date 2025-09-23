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
-- Table structure for table `livro`
--

DROP TABLE IF EXISTS `livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livro` (
  `id_livros` int NOT NULL AUTO_INCREMENT,
  `ISBN` varchar(13) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `autor` varchar(100) NOT NULL,
  `editora` varchar(100) NOT NULL,
  `ano` year NOT NULL,
  `categoria` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_livros`),
  UNIQUE KEY `ISBN` (`ISBN`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro`
--

LOCK TABLES `livro` WRITE;
/*!40000 ALTER TABLE `livro` DISABLE KEYS */;
INSERT INTO `livro` VALUES (1,'978000000001','Introdução à Programação','José Silva','Editora Atlas',2018,'Tecnologia'),(2,'978000000002','Algoritmos e Estruturas de Dados','Maria Souza','Editora Atlas',2019,'Tecnologia'),(3,'978000000003','Banco de Dados Relacionais','Carlos Pereira','Editora Pearson',2020,'Tecnologia'),(4,'978000000004','Engenharia de Software','Ana Santos','Editora Pearson',2017,'Tecnologia'),(5,'978000000005','Redes de Computadores','Pedro Costa','Editora LTC',2016,'Tecnologia'),(6,'978000000006','Inteligência Artificial','Fernanda Rocha','Editora LTC',2021,'Tecnologia'),(7,'978000000007','Matemática Básica','Roberto Lima','Editora Saraiva',2015,'Matemática'),(8,'978000000008','Cálculo I','Juliana Alves','Editora Saraiva',2018,'Matemática'),(9,'978000000009','Cálculo II','Juliana Alves','Editora Saraiva',2019,'Matemática'),(10,'978000000010','Álgebra Linear','Cláudia Nunes','Editora Saraiva',2020,'Matemática'),(11,'978000000011','Direito Constitucional','Luiz Carvalho','Editora Atlas',2017,'Direito'),(12,'978000000012','Direito Penal','Renata Dias','Editora Atlas',2019,'Direito'),(13,'978000000013','Direito Civil','André Gomes','Editora Atlas',2018,'Direito'),(14,'978000000014','Processo Penal','Marcos Silva','Editora Atlas',2020,'Direito'),(15,'978000000015','Direito Administrativo','Helena Castro','Editora Atlas',2016,'Direito'),(16,'978000000016','História do Brasil','Sérgio Mendes','Editora Moderna',2015,'História'),(17,'978000000017','História Antiga','Paulo Almeida','Editora Moderna',2016,'História'),(18,'978000000018','História Contemporânea','Ricardo Lopes','Editora Moderna',2017,'História'),(19,'978000000019','História da Arte','Luciana Freitas','Editora Moderna',2018,'História'),(20,'978000000020','História Medieval','Mariana Barros','Editora Moderna',2019,'História'),(21,'978000000021','Anatomia Humana','João Farias','Editora Elsevier',2015,'Medicina'),(22,'978000000022','Fisiologia Humana','Carla Mendes','Editora Elsevier',2016,'Medicina'),(23,'978000000023','Patologia Geral','Eduardo Santos','Editora Elsevier',2017,'Medicina'),(24,'978000000024','Farmacologia','Patrícia Lima','Editora Elsevier',2018,'Medicina'),(25,'978000000025','Clínica Médica','Rodrigo Oliveira','Editora Elsevier',2019,'Medicina'),(26,'978000000026','Química Geral','Beatriz Campos','Editora Pearson',2015,'Química'),(27,'978000000027','Química Orgânica','Henrique Cardoso','Editora Pearson',2016,'Química'),(28,'978000000028','Química Inorgânica','Fernanda Costa','Editora Pearson',2017,'Química'),(29,'978000000029','Química Analítica','Lucio Andrade','Editora Pearson',2018,'Química'),(30,'978000000030','Físico-Química','Marcela Prado','Editora Pearson',2019,'Química'),(31,'978000000031','Física Mecânica','Gustavo Lopes','Editora LTC',2015,'Física'),(32,'978000000032','Física Termodinâmica','Tatiana Ferreira','Editora LTC',2016,'Física'),(33,'978000000033','Física Eletromagnetismo','Ricardo Souza','Editora LTC',2017,'Física'),(34,'978000000034','Física Moderna','Carolina Braga','Editora LTC',2018,'Física'),(35,'978000000035','Óptica e Ondas','Luana Ribeiro','Editora LTC',2019,'Física'),(36,'978000000036','Biologia Celular','Amanda Teixeira','Editora Saraiva',2015,'Biologia'),(37,'978000000037','Genética','Bruno Martins','Editora Saraiva',2016,'Biologia'),(38,'978000000038','Zoologia','Mariana Silva','Editora Saraiva',2017,'Biologia'),(39,'978000000039','Botânica','Lucas Almeida','Editora Saraiva',2018,'Biologia'),(40,'978000000040','Ecologia','Vanessa Moura','Editora Saraiva',2019,'Biologia'),(41,'978000000041','Administração Geral','Ricardo Fonseca','Editora Atlas',2015,'Administração'),(42,'978000000042','Marketing Básico','Juliana Costa','Editora Atlas',2016,'Administração'),(43,'978000000043','Gestão Financeira','Fernando Rocha','Editora Atlas',2017,'Administração'),(44,'978000000044','Recursos Humanos','Paula Martins','Editora Atlas',2018,'Administração'),(45,'978000000045','Logística Empresarial','Marcos Pereira','Editora Atlas',2019,'Administração'),(46,'978000000046','Sociologia Geral','Renato Vieira','Editora Moderna',2016,'Sociologia'),(47,'978000000047','Sociologia Contemporânea','Camila Santos','Editora Moderna',2017,'Sociologia'),(48,'978000000048','Psicologia Geral','Adriana Ribeiro','Editora Pearson',2018,'Psicologia'),(49,'978000000049','Psicologia Social','Rodrigo Cunha','Editora Pearson',2019,'Psicologia'),(50,'978000000050','Filosofia Moderna','André Carvalho','Editora Saraiva',2020,'Filosofia');
/*!40000 ALTER TABLE `livro` ENABLE KEYS */;
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
