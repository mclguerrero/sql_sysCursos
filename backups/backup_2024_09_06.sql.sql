-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: sistemacursos
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `duracion` int NOT NULL,
  `isActivo` tinyint NOT NULL DEFAULT '1',
  `fecha_creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'Programación en Python','Curso básico de programación en Python',30,1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(2,'Introducción a JavaScript','Curso para principiantes en JavaScript',25,1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(3,'Diseño de Bases de Datos','Curso sobre modelado y diseño de bases de datos',40,1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(4,'Desarrollo Web con HTML y CSS','Curso sobre creación de páginas web con HTML y CSS',20,1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(5,'Machine Learning','Curso introductorio a Machine Learning',50,1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(6,'Desarrollo de APIs con Node.js','Curso sobre creación de APIs usando Node.js',35,1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(7,'Seguridad Informática','Curso sobre fundamentos de la seguridad informática',60,1,'2024-09-06 14:06:34','2024-09-06 14:06:34');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiantes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `nro_identificacion` varchar(10) NOT NULL,
  `email` varchar(150) NOT NULL,
  `celular` varchar(10) DEFAULT NULL,
  `isActivo` tinyint NOT NULL DEFAULT '1',
  `fecha_creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nro_identificacion` (`nro_identificacion`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes`
--

LOCK TABLES `estudiantes` WRITE;
/*!40000 ALTER TABLE `estudiantes` DISABLE KEYS */;
INSERT INTO `estudiantes` VALUES (1,'Juan','Pérez','1234567890','juan.perez@gmail.com','3001234567',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(2,'María','González','1234567891','maria.gonzalez@gmail.com','3001234568',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(3,'Carlos','Rodríguez','1234567892','carlos.rodriguez@gmail.com','3001234569',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(4,'Ana','López','1234567893','ana.lopez@gmail.com','3001234570',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(5,'Luis','Martínez','1234567894','luis.martinez@gmail.com','3001234571',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(6,'Paola','Gutiérrez','1234567895','paola.gutierrez@gmail.com','3001234572',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(7,'Miguel','Hernández','1234567896','miguel.hernandez@gmail.com','3001234573',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(8,'Sofía','Jiménez','1234567897','sofia.jimenez@gmail.com','3001234574',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(9,'Andrés','Ruiz','1234567898','andres.ruiz@gmail.com','3001234575',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(10,'Laura','Castillo','1234567899','laura.castillo@gmail.com','3001234576',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(11,'Daniel','Suarez','1234567810','daniel.suarez@gmail.com','3001234580',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(12,'Carolina','Morales','1234567811','carolina.morales@gmail.com','3001234581',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(13,'Jorge','Ramirez','1234567812','jorge.ramirez@gmail.com','3001234582',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(14,'Patricia','Rivas','1234567813','patricia.rivas@gmail.com','3001234583',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(15,'Fernando','Díaz','1234567814','fernando.diaz@gmail.com','3001234584',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(16,'Gabriela','Mejía','1234567815','gabriela.mejia@gmail.com','3001234585',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(17,'Ricardo','Vargas','1234567816','ricardo.vargas@gmail.com','3001234586',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(18,'Silvia','Quintero','1234567817','silvia.quintero@gmail.com','3001234587',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(19,'Héctor','Cruz','1234567818','hector.cruz@gmail.com','3001234588',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(20,'Mónica','Paredes','1234567819','monica.paredes@gmail.com','3001234589',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(21,'Sergio','Vega','1234567820','sergio.vega@gmail.com','3001234589',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(22,'Natalia','García','1234567821','natalia.garcia@gmail.com','3001234590',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(23,'Ricardo','Salazar','1234567822','ricardo.salazar@gmail.com','3001234591',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(24,'Verónica','Gómez','1234567823','veronica.gomez@gmail.com','3001234592',1,'2024-09-06 14:06:34','2024-09-06 14:06:34');
/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscripciones`
--

DROP TABLE IF EXISTS `inscripciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscripciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `curso_id` int NOT NULL,
  `estudiante_id` int NOT NULL,
  `fecha_inscripcion` date NOT NULL,
  `status_id` int NOT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_modificacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `curso_id` (`curso_id`),
  KEY `estudiante_id` (`estudiante_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `inscripciones_ibfk_1` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `inscripciones_ibfk_2` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `inscripciones_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `status_inscripciones` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripciones`
--

LOCK TABLES `inscripciones` WRITE;
/*!40000 ALTER TABLE `inscripciones` DISABLE KEYS */;
INSERT INTO `inscripciones` VALUES (1,1,1,'2024-07-01',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(2,1,2,'2024-07-02',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(3,1,3,'2024-07-03',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(4,1,4,'2024-07-04',2,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(5,1,5,'2024-07-05',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(6,1,6,'2024-07-06',3,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(7,1,7,'2024-07-07',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(8,1,8,'2024-07-08',3,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(9,2,1,'2024-07-10',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(10,2,2,'2024-07-11',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(11,2,4,'2024-07-12',2,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(12,2,7,'2024-07-13',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(13,2,8,'2024-07-14',2,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(14,2,9,'2024-07-15',3,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(15,2,10,'2024-07-16',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(16,3,3,'2024-07-18',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(17,3,4,'2024-07-19',2,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(18,3,5,'2024-07-20',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(19,3,7,'2024-07-21',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(20,3,8,'2024-07-22',2,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(21,3,9,'2024-07-23',2,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(22,3,10,'2024-07-24',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(23,3,11,'2024-07-25',3,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(24,4,2,'2024-07-26',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(25,4,3,'2024-07-27',2,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(26,4,4,'2024-07-28',2,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(27,4,6,'2024-07-29',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(28,4,7,'2024-07-30',1,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(29,4,8,'2024-07-31',2,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(30,4,9,'2024-08-01',3,'2024-09-06 14:06:34','2024-09-06 14:06:34'),(31,4,12,'2024-08-02',3,'2024-09-06 14:06:34','2024-09-06 14:06:34');
/*!40000 ALTER TABLE `inscripciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_inscripciones`
--

DROP TABLE IF EXISTS `status_inscripciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_inscripciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_inscripciones`
--

LOCK TABLES `status_inscripciones` WRITE;
/*!40000 ALTER TABLE `status_inscripciones` DISABLE KEYS */;
INSERT INTO `status_inscripciones` VALUES (2,'Aprobada'),(3,'Cancelada'),(1,'Pendiente');
/*!40000 ALTER TABLE `status_inscripciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-06 15:31:38
