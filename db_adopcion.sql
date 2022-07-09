-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_adopcion
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `perro`
--

DROP TABLE IF EXISTS `perro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perro` (
  `color` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `raza` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `peso` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `tamanio` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(1000) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `sexo` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perro`
--

LOCK TABLES `perro` WRITE;
/*!40000 ALTER TABLE `perro` DISABLE KEYS */;
INSERT INTO `perro` VALUES ('Canela','Firulais','Golden Retrieve',1,'14','Mediano',34,'https://cdn.pixabay.com/photo/2016/12/13/05/15/puppy-1903313_960_720.jpg','Macho',0),('Blanco','Bebita','Maltipoo',1,'1 a 6 kilos','Pequeño',35,'https://cdn.pixabay.com/photo/2016/01/05/17/51/maltese-1123016_960_720.jpg','Hembra',0);
/*!40000 ALTER TABLE `perro` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(500) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `pass` varchar(500) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `permiso` tinyint(1) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellido` varchar(80) COLLATE utf8mb4_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (16,'admin@gmail.com','12345',1,'Admin','Love & Dog'),(17,'client@gmail.com','client12345',0,'Steve','Jimbo'),(18,'vivi@gmail.com','12345',0,'Viviana','Guanoluisa');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud`
--

DROP TABLE IF EXISTS `solicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solicitud` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_solicitud` varchar(80) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nombre` varchar(80) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellido` varchar(80) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `telefono` varchar(10) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `ciudad` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `direccion` varchar(150) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `tipo_vivienda` varchar(80) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `ocupacion` varchar(80) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `id_perro` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkidperro` (`id_perro`),
  KEY `fkidusuario` (`id_usuario`),
  CONSTRAINT `solicitud_ibfk_1` FOREIGN KEY (`id_perro`) REFERENCES `perro` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `solicitud_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud`
--

LOCK TABLES `solicitud` WRITE;
/*!40000 ALTER TABLE `solicitud` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitud` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-12 20:33:39
