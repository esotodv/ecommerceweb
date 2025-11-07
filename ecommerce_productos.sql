-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ecommerce
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(120) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `url_imagen` varchar(255) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `id_categoria` int(11) DEFAULT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp(),
  `actualizado_en` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_producto`),
  KEY `idx_productos_nombre` (`nombre`),
  KEY `idx_prod_categoria` (`id_categoria`),
  CONSTRAINT `fk_productos_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria_productos` (`id_categoria`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (5,'Banda Intralox Serie 900','Tipo: Flush Grid, 12\"',1800.00,50,'/PG21.0/proyecto/public/images/Productos/bandas/banda s900.png',1,1,'2025-11-06 05:27:49','2025-11-06 05:27:49'),(6,'Banda Intralox Serie 900','Tipo: Friction Top',2500.00,190,'/PG21.0/proyecto/public/images/Productos/bandas/banda s900frictiontop.png',1,1,'2025-11-06 05:32:00','2025-11-06 05:32:00'),(7,'Banda Intralox Serie 1100','Tipo: Flush Grid special ',1550.00,80,'/PG21.0/proyecto/public/images/Productos/bandas/banda s1100.png',1,1,'2025-11-06 05:36:18','2025-11-06 05:36:18'),(8,'Banda Intralox Serie 1100','Banda Flat top , Ancho: 12\"',1200.00,8,'/PG21.0/proyecto/public/images/Productos/bandas/banda s1100flattop.png',1,1,'2025-11-06 05:49:04','2025-11-06 06:07:13'),(9,'Banda Intralox Serie 1100','Banda Flush Grid Open Grid , Ancho: 10\"',1100.00,8,'/PG21.0/proyecto/public/images/Productos/bandas/banda s1100.png',1,1,'2025-11-06 06:08:33','2025-11-06 06:08:33'),(10,'Banda Intralox Serie 2400','Banda Flush Grid , Ancho: 20\"',4600.00,8,'/PG21.0/proyecto/public/images/Productos/bandas/banda s2400.png',1,1,'2025-11-06 06:13:38','2025-11-06 06:13:38'),(11,'Banda Intralox Serie 2400 16\"','Banda Flush Grid Open Grid , Ancho: 16\"',5000.00,85,'/PG21.0/proyecto/public/images/Productos/bandas/banda s2400.png',1,1,'2025-11-06 06:14:47','2025-11-06 06:14:47'),(12,'Banda Intralox Serie 400 10\"','Banda insert roller , Ancho: 10\"',1400.00,85,'/PG21.0/proyecto/public/images/Productos/bandas/banda s400.png',1,1,'2025-11-06 06:20:52','2025-11-06 06:20:52'),(13,'Engranaje S900 6.1\" Acetal','Eje redondo 1\" , Ancho: 6.1\"',350.00,87,'/PG21.0/proyecto/public/images/Productos/engranajes/engranaje s900.png',1,2,'2025-11-06 06:25:50','2025-11-06 06:25:50'),(14,'Engranaje S560 3.1\" Polipropileno','Eje Cuadrado 1.5\" , Ancho: 1.5\"',200.00,87,'/PG21.0/proyecto/public/images/Productos/engranajes/engranaje s560.png',1,2,'2025-11-06 06:27:41','2025-11-06 06:27:41'),(15,'Engranaje S1100 3.1\" Acetal','Eje redondo 2\" , Ancho: 3.1\"',478.00,87,'/PG21.0/proyecto/public/images/Productos/engranajes/engranaje s1100.png',1,2,'2025-11-06 06:36:02','2025-11-06 06:36:02'),(16,'Engranaje S1400 6.1\" Acetal','Eje Cuadrado 1.5\" , Ancho: 6.1\"',688.00,87,'/PG21.0/proyecto/public/images/Productos/engranajes/engranaje s1400.png',1,2,'2025-11-06 06:38:05','2025-11-06 06:38:05'),(17,'Engranaje S2400 5.1\" Acetal','Eje cuadrado 1.5\" , Ancho: 5.1\"',700.00,87,'/PG21.0/proyecto/public/images/Productos/engranajes/engranaje s2400.png',1,2,'2025-11-06 06:39:06','2025-11-06 06:39:06'),(18,'Engranaje S4000 4.1\" Nylon','Eje cuadrado 1.5\" , Ancho: 4.1\"',1200.00,87,'/PG21.0/proyecto/public/images/Productos/engranajes/engranaje s4000.png',1,2,'2025-11-06 06:41:57','2025-11-06 06:41:57'),(19,'Anillos de retencion Uso Rudo 1\" Acero','Eje cuadrado 1\" , Ancho: 2\"',650.00,87,'/PG21.0/proyecto/public/images/Productos/anillosretencion/anilloderetencion.png',1,4,'2025-11-06 06:46:09','2025-11-06 06:46:09'),(20,'Anillos de retencion Uso Rudo 1.5\" Acero','Eje cuadrado 1.5\" , Ancho: 3\"',750.00,87,'/PG21.0/proyecto/public/images/Productos/anillosretencion/anilloderetencion.png',1,4,'2025-11-06 06:50:03','2025-11-06 06:50:03'),(21,'Anillos de retencion Uso Rudo 2\" Acero','Eje cuadrado 2\" , Ancho: 4\"',850.00,87,'/PG21.0/proyecto/public/images/Productos/anillosretencion/anilloderetencion.png',1,4,'2025-11-06 06:50:03','2025-11-06 06:50:03'),(22,'Anillos de retencion Uso Rudo 2.5\" Acero','Eje cuadrado 2.5\" , Ancho: 5\"',950.00,87,'/PG21.0/proyecto/public/images/Productos/anillosretencion/anilloderetencion.png',1,4,'2025-11-06 06:50:03','2025-11-06 06:50:03'),(23,'Anillos de retencion Uso Rudo 3\" Acero','Eje cuadrado 3\" , Ancho: 6.1\"',980.00,87,'/PG21.0/proyecto/public/images/Productos/anillosretencion/anilloderetencion.png',1,4,'2025-11-06 06:50:03','2025-11-06 06:50:03'),(24,'Anillos de retencion Uso Rudo 3.5\" Acero','Eje cuadrado 3.5\" , Ancho: 7.1\"',1100.00,87,'/PG21.0/proyecto/public/images/Productos/anillosretencion/anilloderetencion.png',1,4,'2025-11-06 06:50:03','2025-11-06 06:50:03'),(26,'Guia Plana 3 MTS\" UHMW',' Ancho: 1\"',375.00,87,'/PG21.0/proyecto/public/images/Productos/guiasuhmw/guiauhmw.png',1,5,'2025-11-06 06:57:38','2025-11-06 06:57:38'),(27,'Guia J 3 MTS\" UHMW',' Ancho: 1.5\"',455.00,87,'/PG21.0/proyecto/public/images/Productos/guiasuhmw/guiauhmw.png',1,5,'2025-11-06 06:58:40','2025-11-06 06:58:40'),(28,'Guia L 3 MTS\" UHMW',' Ancho: 1 1/4\"',250.00,87,'/PG21.0/proyecto/public/images/Productos/guiasuhmw/guiauhmw.png',1,5,'2025-11-06 06:59:21','2025-11-06 06:59:21');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-06 20:46:07
