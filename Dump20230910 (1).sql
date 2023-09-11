CREATE DATABASE  IF NOT EXISTS `actividad3` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `actividad3`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: actividad3
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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `cod_cliente` int DEFAULT NULL,
  `nit_c` int DEFAULT NULL,
  `nombre` text,
  `apellido` text,
  `telefono` bigint DEFAULT NULL,
  `direccion` text,
  `email` text,
  `ciudad` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (2,10,'Alejandro Torres','Torres',3123456789,'Calle San Antonio #123','user1@example.com','Bogotá'),(3,11,'Laura García','García',3234567890,'Carrera 4 Este #456','randomemail2@gmail.com','Medellín'),(4,12,'Carlos Rodríguez','Rodríguez',3345678901,'Avenida 15 de Mayo #789','test.email3@yahoo.com','Cali'),(5,13,'Ana Martínez','Martínez',3456789012,'Calle 7 Norte #321','myemail4@hotmail.com','Barranquilla'),(6,14,'Juan Pérez','Pérez',3567890123,'Carrera 10 Sur #654','example.email5@outlook.com','Cartagena'),(7,15,'Patricia López','López',3678901234,'Avenida de los Pájaros #987','newuser6@example.net','Bucaramanga'),(8,16,'Daniel González','González',3789012345,'Calle del Bosque #234','email.test7@gmail.com','Pereira'),(9,17,'María Ramírez','Ramírez',3890123456,'Carrera 8 Oeste #567','mytestemail8@yahoo.com','Manizales'),(10,18,'Sergio Medina','Medina',3901234567,'Avenida de las Flores #432','user.email9@hotmail.com','Villavicencio'),(11,19,'Carolina Vargas','Vargas',3012345678,'Calle de los Almendros #876','random.email10@outlook.com','Santa Marta'),(12,20,'Andrés Castro','Castro',3579138462,'Carrera 12 Este #111','example.email11@example.net','Cúcuta'),(13,21,'Julia Herrera','Herrera',3125467890,'Avenida del Sol #222','test.user12@gmail.com','Popayán'),(14,22,'Javier Silva','Silva',3698045127,'Calle de la Luna #333','myemail13@yahoo.com','Ibague'),(15,23,'Valentina Duque','Duque',3987654321,'Carrera 20 Norte #444','email.test14@hotmail.com','Neiva'),(16,24,'Felipe Ríos','Ríos',3789098182,'Avenida de los Pinos #555','user.email15@outlook.com','Armenia'),(17,25,'Camila Gómez','Gómez',3876655432,'Calle del Río #666','random.email16@example.net','Pasto'),(18,26,'Gabriel Molina','Molina',3945123789,'Carrera 5 Sur #777','test.email17@gmail.com','Montería');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coches`
--

DROP TABLE IF EXISTS `coches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coches` (
  `id` int DEFAULT NULL,
  `matricula` text,
  `modelo` text,
  `color` text,
  `marca` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coches`
--

LOCK TABLES `coches` WRITE;
/*!40000 ALTER TABLE `coches` DISABLE KEYS */;
INSERT INTO `coches` VALUES (10,'ABC-123','Toyota Corolla','Plateado','Toyota'),(11,'XYZ-456','Honda Civic','Rojo','Honda'),(12,'DEF-789','Ford Focus','Azul','Ford'),(13,'GHI-101','Chevrolet Malibu','Blanco','Chevrolet'),(14,'JKL-202','Volkswagen Golf','Negro','Volkswagen'),(15,'MNO-303','Nissan Sentra','Gris','Nissan'),(16,'PQR-404','Hyundai Elantra','Dorado','Hyundai'),(17,'STU-505','Mazda CX-5','Verde','Mazda'),(18,'VWX-606','Kia Optima','Gris','Kia'),(19,'YZA-707','Subaru Outback','Blanco','Subaru'),(20,'BCD-808','Honda Accord','Rojo','Honda'),(21,'EFG-909','Toyota Camry','Dorado','Toyota'),(22,'HIJ-010','Ford Fusion','Rojo','Ford'),(23,'KLM-111','Chevrolet Impala','Negro','Chevrolet'),(24,'NOP-212','Volkswagen Passat','Plata','Volkswagen'),(25,'QRS-313','Hyundai Sonata','Azul','Hyundai'),(26,'TUV-414','Nissan Altima','Blanco','Nissan');
/*!40000 ALTER TABLE `coches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `id` int DEFAULT NULL,
  `codigo` int DEFAULT NULL,
  `descripcion` int DEFAULT NULL,
  `marca` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (30,10,2013,'Toyota'),(31,11,2014,'Honda'),(32,12,2015,'Ford'),(33,13,2016,'Chevrolet'),(34,14,2017,'Volkswagen'),(35,15,2018,'Nissan'),(36,16,2019,'Hyundai'),(37,17,2020,'Mazda'),(38,18,2021,'Kia'),(39,19,2022,'Subaru'),(40,20,2023,'Honda'),(41,21,2024,'Toyota'),(42,22,2013,'Ford'),(43,23,2014,'Chevrolet'),(44,24,2015,'Volkswagen'),(45,25,2016,'Hyundai'),(46,26,2017,'Nissan');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id` int DEFAULT NULL,
  `clientes_codigo_cliente` int DEFAULT NULL,
  `coche_id` int DEFAULT NULL,
  `precio_ventas` text,
  `metodo_pago` text,
  `fecha_venta` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (50,2,10,' $ 20.000 ','Transferencia Bancaria','10 de abril de 2023'),(51,3,11,' $ 15.200 ','Efectivo','15 de mayo de 2023'),(52,4,12,' $ 13.000 ','Cheque','20 de junio de 2023'),(53,5,13,' $ 12.000 ','Transferencia Bancaria','5 de julio de 2023'),(54,6,14,' $ 21.500 ','Efectivo','12 de agosto de 2023'),(55,7,15,' $ 12.400 ','Cheque','25 de septiembre de 2023'),(56,8,16,' $ 21.000 ','Transferencia Bancaria','8 de octubre de 2023'),(57,9,17,' $ 20.000 ','Efectivo','15 de noviembre de 2023'),(58,10,18,' $ 10.000 ','Cheque','2 de diciembre de 2023'),(59,11,19,' $ 5.000 ','Transferencia Bancaria','18 de enero de 2024'),(60,12,20,' $ 10.000 ','Efectivo','7 de febrero de 2024'),(61,13,21,' $ 28.000 ','Cheque','12 de marzo de 2024'),(62,14,22,' $ 19.000 ','Transferencia Bancaria','24 de abril de 2024'),(63,15,23,' $ 20.000 ','Efectivo','9 de mayo de 2024'),(64,16,24,' $ 30.000 ','Cheque','20 de junio de 2024'),(65,17,25,' $ 12.000 ','Transferencia Bancaria','5 de julio de 2024'),(66,18,26,' $ 10.000 ','Efectivo','18 de agosto de 2024');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'actividad3'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-10 23:25:14
