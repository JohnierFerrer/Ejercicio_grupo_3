CREATE DATABASE  IF NOT EXISTS `ejercicio_grupo_3` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ejercicio_grupo_3`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: ejercicio_grupo_3
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
  `codigo_cliente` int NOT NULL AUTO_INCREMENT,
  `nit_c` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  PRIMARY KEY (`codigo_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (2,10,'Alejandro','Torres','3123456789','Calle San Antonio #123','user1@example.com','Bogotá'),(3,11,'Laura','García','3234567890','Carrera 4 Este #456','randomemail2@gmail.com','Medellín'),(4,12,'Carlos','Rodríguez','3345678901','Avenida 15 de Mayo #789','test.email3@yahoo.com','Cali'),(5,13,'Ana','Martínez','3456789012','Calle 7 Norte #321','myemail4@hotmail.com','Barranquilla'),(6,14,'Juan','Pérez','3567890123','Carrera 10 Sur #654','example.email5@outlook.com','Cartagena'),(7,15,'Patricia','López','3678901234','Avenida de los Pájaros #987','newuser6@example.net','Bucaramanga'),(8,16,'Daniel','González','3789012345','Calle del Bosque #234','email.test7@gmail.com','Pereira'),(9,17,'María','Ramírez','3890123456','Carrera 8 Oeste #567','mytestemail8@yahoo.com','Manizales'),(10,18,'Sergio','Medina','3901234567','Avenida de las Flores #432','user.email9@hotmail.com','Villavicencio'),(11,19,'Carolina','Vargas','3012345678','Calle de los Almendros #876','random.email10@outlook.com','Santa Marta'),(12,20,'Andrés','Castro','3579138462','Carrera 12 Este #111','example.email11@example.net','Cúcuta'),(13,21,'Julia','Herrera','3125467890','Avenida del Sol #222','test.user12@gmail.com','Popayán'),(14,22,'Javier','Silva','3698045127','Calle de la Luna #333','myemail13@yahoo.com','Ibague'),(15,23,'Valentina','Duque','3987654321','Carrera 20 Norte #444','email.test14@hotmail.com','Neiva'),(16,24,'Felipe','Ríos','3789098182','Avenida de los Pinos #555','user.email15@outlook.com','Armenia'),(17,25,'Camila','Gómez','3876655432','Calle del Río #666','random.email16@example.net','Pasto'),(18,26,'Gabriel','Molina','3945123789','Carrera 5 Sur #777','test.email17@gmail.com','Montería');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coches`
--

DROP TABLE IF EXISTS `coches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coches` (
  `id` int NOT NULL AUTO_INCREMENT,
  `matricula` varchar(45) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `clientes_codigo_cliente` int NOT NULL,
  `marca_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_coche_clientes_idx` (`clientes_codigo_cliente`),
  KEY `fk_coche_marca1_idx` (`marca_id`),
  CONSTRAINT `fk_coche_clientes` FOREIGN KEY (`clientes_codigo_cliente`) REFERENCES `clientes` (`codigo_cliente`),
  CONSTRAINT `fk_coche_marca1` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coches`
--

LOCK TABLES `coches` WRITE;
/*!40000 ALTER TABLE `coches` DISABLE KEYS */;
INSERT INTO `coches` VALUES (10,'ABC-123','Toyota Corolla','Plateado','Toyota',2,31),(11,'XYZ-456','Honda Civic','Rojo','Honda',4,33),(12,'DEF-789','Ford Focus','Azul','Ford',6,35),(13,'GHI-101','Chevrolet Malibu','Blanco','Chevrolet',8,37),(14,'JKL-202','Volkswagen Golf','Negro','Volkswagen',10,39),(15,'MNO-303','Nissan Sentra','Gris','Nissan',12,41),(16,'PQR-404','Hyundai Elantra','Dorado','Hyundai',14,43),(17,'STU-505','Mazda CX-5','Verde','Mazda',16,45),(18,'VWX-606','Kia Optima','Gris','Kia',18,30),(19,'YZA-707','Subaru Outback','Blanco','Subaru',3,32),(20,'BCD-808','Honda Accord','Rojo','Honda',5,34),(21,'EFG-909','Toyota Camry','Dorado','Toyota',7,36),(22,'HIJ-010','Ford Fusion','Rojo','Ford',9,38),(23,'KLM-111','Chevrolet Impala','Negro','Chevrolet',11,40),(24,'NOP-212','Volkswagen Passat','Plata','Volkswagen',13,42),(25,'QRS-313','Hyundai Sonata','Azul','Hyundai',15,44),(26,'TUV-414','Nissan Altima','Blanco','Nissan',17,46);
/*!40000 ALTER TABLE `coches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo_m` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `marca` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (30,'10','2013','Toyota'),(31,'11','2014','Honda'),(32,'12','2015','Ford'),(33,'13','2016','Chevrolet'),(34,'14','2017','Volkswagen'),(35,'15','2018','Nissan'),(36,'16','2019','Hyundai'),(37,'17','2020','Mazda'),(38,'18','2021','Kia'),(39,'19','2022','Subaru'),(40,'20','2023','Honda'),(41,'21','2024','Toyota'),(42,'22','2013','Ford'),(43,'23','2014','Chevrolet'),(44,'24','2015','Volkswagen'),(45,'25','2016','Hyundai'),(46,'26','2017','Nissan');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `precio_venta` int NOT NULL,
  `metodo_pago` varchar(45) NOT NULL,
  `fecha_venta` date NOT NULL,
  `clientes_codigo_cliente` int NOT NULL,
  `coche_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ventas_clientes1_idx` (`clientes_codigo_cliente`),
  KEY `fk_ventas_coche1_idx` (`coche_id`),
  CONSTRAINT `fk_ventas_clientes1` FOREIGN KEY (`clientes_codigo_cliente`) REFERENCES `clientes` (`codigo_cliente`),
  CONSTRAINT `fk_ventas_coche1` FOREIGN KEY (`coche_id`) REFERENCES `coches` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (50,20000,'Transferencia Bancaria','2023-04-10',2,10),(51,15200,'Efectivo','2023-05-15',3,11),(52,13000,'Cheque','2023-06-20',4,12),(53,12000,'Transferencia Bancaria','2023-07-05',5,13),(54,21500,'Efectivo','2023-08-12',6,14),(55,12400,'Cheque','2023-09-25',7,15),(56,21000,'Transferencia Bancaria','2023-10-08',8,16),(57,20000,'Efectivo','2023-11-15',9,17),(58,10000,'Cheque','2023-12-02',10,18),(59,5000,'Transferencia Bancaria','2024-01-18',11,19),(60,10000,'Efectivo','2024-02-07',12,20),(61,28000,'Cheque','2024-03-12',13,21),(62,19000,'Transferencia Bancaria','2024-04-24',14,22),(63,20000,'Efectivo','2024-05-09',15,23),(64,30000,'Cheque','2024-06-20',16,24),(65,12000,'Transferencia Bancaria','2024-07-05',17,25),(66,10000,'Efectivo','2024-08-18',18,26);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ejercicio_grupo_3'
--
/*!50003 DROP PROCEDURE IF EXISTS `addClientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addClientes`(
in _nit_c int,
in _nombre varchar(45),
in _apellido varchar(45),
in _telefono varchar(45),
in _direccion varchar(45),
in _email varchar(45),
in _ciudad varchar(45)
)
begin
insert into clientes(
nit_c,
nombre,
apellido,
telefono,
direccion,
email,
ciudad
)values(
_nit_c,
_nombre,
_apellido,
_telefono,
_direccion,
_email,
_ciudad);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscar_cliente_coche_venta_por_fecha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_cliente_coche_venta_por_fecha`(
in _fecha date)
begin
select *
from clientes, coches, ventas
where
clientes.codigo_cliente = coches.clientes_codigo_cliente and
clientes.codigo_cliente = ventas.clientes_codigo_cliente and
ventas.fecha_venta = _fecha;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscar_correo_por_like` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_correo_por_like`(
in _correo varchar(45)
)
begin
select * from clientes
where email like concat("%",_correo,"%");
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `clientes_no_ventas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `clientes_no_ventas`(
in fechaI date,
in fechaF date)
begin
select *
from clientes
where clientes.codigo_cliente not in (
select clientes_codigo_cliente from ventas
where fecha_venta between fechaI and fechaF);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cliente_coche_venta_rango_fecha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cliente_coche_venta_rango_fecha`(
in fechaI date,
in fechaF date)
begin 
select *
from clientes, coches, ventas
where 
clientes.codigo_cliente = coches.clientes_codigo_cliente and
clientes.codigo_cliente = ventas.clientes_codigo_cliente and
ventas.fecha_venta between fechaI and fechaF
order by ventas.fecha_venta asc;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `suma_ventas_clientes_por_rango_fecha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `suma_ventas_clientes_por_rango_fecha`(
in fechaI date,
in fechaF date)
begin
select clientes.codigo_cliente, clientes.nombre, sum(ventas.precio_venta), count(ventas.clientes_codigo_cliente), avg(ventas.precio_venta)
from clientes, ventas
where
clientes.codigo_cliente = ventas.clientes_codigo_cliente and
ventas.fecha_venta between fechaI and FechaF
group by clientes.codigo_cliente
order by sum(ventas.precio_venta) desc;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `suma_ventas_clientes_por_rango_fecha_numero` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `suma_ventas_clientes_por_rango_fecha_numero`(
in fechaI date,
in fechaF date,
in numero_ventas int)
begin
select clientes.codigo_cliente, clientes.nombre, sum(ventas.precio_venta), count(ventas.clientes_codigo_cliente), avg(ventas.precio_venta)
from clientes, ventas
where
clientes.codigo_cliente = ventas.clientes_codigo_cliente and
ventas.fecha_venta between fechaI and FechaF
group by clientes.codigo_cliente
having count(ventas.clientes_codigo_cliente) >= numero_ventas
order by sum(ventas.precio_venta) desc;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-13 13:42:25
