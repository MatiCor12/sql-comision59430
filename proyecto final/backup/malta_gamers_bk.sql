-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: malta_gamers
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `categoria_trabajadores`
--

DROP TABLE IF EXISTS `categoria_trabajadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_trabajadores` (
  `id_categoria_trabajadores` int NOT NULL AUTO_INCREMENT,
  `descripcion_tarea` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_categoria_trabajadores`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_trabajadores`
--

LOCK TABLES `categoria_trabajadores` WRITE;
/*!40000 ALTER TABLE `categoria_trabajadores` DISABLE KEYS */;
INSERT INTO `categoria_trabajadores` VALUES (1,'Ventas y Atención al Cliente'),(2,'Soporte Técnico'),(3,'Administración'),(4,'Logística y Distribución'),(5,'Marketing Digital');
/*!40000 ALTER TABLE `categoria_trabajadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_venta`
--

DROP TABLE IF EXISTS `categoria_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_venta` (
  `id_categoria_venta` int NOT NULL AUTO_INCREMENT,
  `descripcion_venta` varchar(200) DEFAULT NULL,
  `tipo_venta` varchar(200) NOT NULL,
  PRIMARY KEY (`id_categoria_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_venta`
--

LOCK TABLES `categoria_venta` WRITE;
/*!40000 ALTER TABLE `categoria_venta` DISABLE KEYS */;
INSERT INTO `categoria_venta` VALUES (1,'Venta de productos gaming','Electrónica'),(2,'Venta de accesorios','Complementos'),(3,'Venta de consolas','Tecnología'),(4,'Venta de componentes PC','Hardware'),(5,'Venta de juegos digitales','Software');
/*!40000 ALTER TABLE `categoria_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_comprador`
--

DROP TABLE IF EXISTS `cliente_comprador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_comprador` (
  `id_cliente_comprador` int NOT NULL AUTO_INCREMENT,
  `id_categoria_compra` int DEFAULT NULL,
  `nombre_cliente_comprador` varchar(100) NOT NULL,
  `email_cliente_comprador` varchar(200) NOT NULL,
  `direccion_cliente_comprador` varchar(100) NOT NULL,
  `telefono_cliente_comprador` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_cliente_comprador`),
  UNIQUE KEY `email_cliente_comprador` (`email_cliente_comprador`),
  UNIQUE KEY `direccion_cliente_comprador` (`direccion_cliente_comprador`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_comprador`
--

LOCK TABLES `cliente_comprador` WRITE;
/*!40000 ALTER TABLE `cliente_comprador` DISABLE KEYS */;
INSERT INTO `cliente_comprador` VALUES (1,1,'Javier Herrera','javier.herrera@gmail.com','Calle Las Flores 456, Lima','998765432'),(2,2,'Camila Ruiz','camila.ruiz@hotmail.com','Av. La Marina 789, Miraflores','991234567'),(3,3,'Sebastián Ortiz','sebastian.ortiz@yahoo.com','Jr. Sucre 234, San Isidro','997654321'),(4,4,'Valeria Chávez','valeria.chavez@outlook.com','Urb. Santa Patricia 567, Surco','992345678'),(5,5,'Andrés Morales','andres.morales@gmail.com','Condominio Las Palmas 890, San Borja','996543210');
/*!40000 ALTER TABLE `cliente_comprador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_vendedor`
--

DROP TABLE IF EXISTS `cliente_vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_vendedor` (
  `id_cliente_vendedor` int NOT NULL AUTO_INCREMENT,
  `nombre_cliente_vendedor` varchar(100) NOT NULL,
  `telefono_cliente_vendedor` varchar(15) NOT NULL,
  `email_cliente_vendedor` varchar(200) NOT NULL,
  PRIMARY KEY (`id_cliente_vendedor`),
  UNIQUE KEY `email_cliente_vendedor` (`email_cliente_vendedor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_vendedor`
--

LOCK TABLES `cliente_vendedor` WRITE;
/*!40000 ALTER TABLE `cliente_vendedor` DISABLE KEYS */;
INSERT INTO `cliente_vendedor` VALUES (1,'Juan Perez','987654321','juan.perez@gmail.com'),(2,'María Gonzalez','912345678','maria.gonzalez@hotmail.com'),(3,'Carlos Rodriguez','945678912','carlos.rodriguez@outlook.com'),(4,'Ana Martinez','978123456','ana.martinez@yahoo.com'),(5,'Luis Fernando','965432187','luis.fernando@gmail.com');
/*!40000 ALTER TABLE `cliente_vendedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_pedido` (
  `id_detalle_pedido` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int DEFAULT NULL,
  `id_productos_gamer` int DEFAULT NULL,
  `id_lugar_compra_venta` int DEFAULT NULL,
  `cantidad` int NOT NULL,
  `precio_unidad` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_detalle_pedido`),
  KEY `fk_const_id_pedido` (`id_pedido`),
  KEY `fk_const_id_productos_gamer` (`id_productos_gamer`),
  KEY `fk_const_id_lugar_compra_venta` (`id_lugar_compra_venta`),
  CONSTRAINT `fk_const_id_lugar_compra_venta` FOREIGN KEY (`id_lugar_compra_venta`) REFERENCES `lugar_compra_venta` (`id_lugar_compra_venta`),
  CONSTRAINT `fk_const_id_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`),
  CONSTRAINT `fk_const_id_productos_gamer` FOREIGN KEY (`id_productos_gamer`) REFERENCES `productos_gamer` (`id_productos_gamer`),
  CONSTRAINT `detalle_pedido_chk_1` CHECK ((`cantidad` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_pedido`
--

LOCK TABLES `detalle_pedido` WRITE;
/*!40000 ALTER TABLE `detalle_pedido` DISABLE KEYS */;
INSERT INTO `detalle_pedido` VALUES (1,1,1,1,1,'1200.50'),(2,2,2,2,1,'599.99'),(3,3,3,3,2,'159.99'),(4,4,4,4,1,'499.75'),(5,5,5,5,1,'249.99');
/*!40000 ALTER TABLE `detalle_pedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `calcular_total_pedido` AFTER INSERT ON `detalle_pedido` FOR EACH ROW BEGIN
    DECLARE total_actual DECIMAL(10, 2);
    SELECT SUM((precio_unitario * cantidad) - (precio_unitario * cantidad * (descuento / 100)))
    INTO total_actual
    FROM DetallePedido
    WHERE id_pedido = NEW.id_pedido;

    UPDATE pedido
    SET total = total_actual + tarifa_envio
    WHERE id_pedido = NEW.id_pedido;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `envio`
--

DROP TABLE IF EXISTS `envio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `envio` (
  `id_envio` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int DEFAULT NULL,
  `id_tarifa` int DEFAULT NULL,
  `estado_envio` varchar(100) DEFAULT NULL,
  `fecha_envio` date DEFAULT NULL,
  `fecha_recibimiento` date DEFAULT NULL,
  `numero_seguimiento` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_envio`),
  KEY `fk_constra_id_pedido` (`id_pedido`),
  KEY `fk_constra_id_tarifa` (`id_tarifa`),
  CONSTRAINT `fk_constra_id_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`),
  CONSTRAINT `fk_constra_id_tarifa` FOREIGN KEY (`id_tarifa`) REFERENCES `tarifa` (`id_tarifa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envio`
--

LOCK TABLES `envio` WRITE;
/*!40000 ALTER TABLE `envio` DISABLE KEYS */;
INSERT INTO `envio` VALUES (1,1,1,'Entregado','2024-02-16','2024-02-17','LIM-001-2024'),(2,2,2,'En Tránsito','2024-02-17',NULL,'LIM-002-2024'),(3,3,3,'Procesando','2024-02-18',NULL,'LIM-003-2024'),(4,4,4,'En Ruta','2024-02-19',NULL,'LIM-004-2024'),(5,5,5,'Entregado','2024-02-20','2024-02-21','LIM-005-2024');
/*!40000 ALTER TABLE `envio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lugar_compra_venta`
--

DROP TABLE IF EXISTS `lugar_compra_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lugar_compra_venta` (
  `id_lugar_compra_venta` int NOT NULL AUTO_INCREMENT,
  `ubicacion` varchar(200) NOT NULL,
  `encargado` varchar(100) NOT NULL,
  PRIMARY KEY (`id_lugar_compra_venta`),
  UNIQUE KEY `ubicacion` (`ubicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lugar_compra_venta`
--

LOCK TABLES `lugar_compra_venta` WRITE;
/*!40000 ALTER TABLE `lugar_compra_venta` DISABLE KEYS */;
INSERT INTO `lugar_compra_venta` VALUES (1,'Av. Los Olivos 123, Lima','Roberto Sánchez'),(2,'Centro Comercial Plaza Norte','Marcela Ríos'),(3,'Tienda Online','Carlos Mendoza'),(4,'Showroom Gamer','Laura Torres'),(5,'Local Especializado','Diego Ramírez');
/*!40000 ALTER TABLE `lugar_compra_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lugar_trabajadores`
--

DROP TABLE IF EXISTS `lugar_trabajadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lugar_trabajadores` (
  `id_lugar_trabajadores` int NOT NULL AUTO_INCREMENT,
  `id_lugar_compra_venta` int DEFAULT NULL,
  `id_trabajadores` int DEFAULT NULL,
  `fecha_inicio_trabajador` date DEFAULT NULL,
  PRIMARY KEY (`id_lugar_trabajadores`),
  KEY `fk_cons_id_lugar_compra_venta` (`id_lugar_compra_venta`),
  KEY `fk_cons_id_productos_gamer` (`id_trabajadores`),
  CONSTRAINT `fk_cons_id_lugar_compra_venta` FOREIGN KEY (`id_lugar_compra_venta`) REFERENCES `lugar_compra_venta` (`id_lugar_compra_venta`),
  CONSTRAINT `fk_cons_id_productos_gamer` FOREIGN KEY (`id_trabajadores`) REFERENCES `trabajadores` (`id_trabajadores`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lugar_trabajadores`
--

LOCK TABLES `lugar_trabajadores` WRITE;
/*!40000 ALTER TABLE `lugar_trabajadores` DISABLE KEYS */;
INSERT INTO `lugar_trabajadores` VALUES (1,1,1,'2023-01-15'),(2,2,2,'2023-02-20'),(3,3,3,'2023-03-10'),(4,4,4,'2023-04-05'),(5,5,5,'2023-05-01');
/*!40000 ALTER TABLE `lugar_trabajadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oferta`
--

DROP TABLE IF EXISTS `oferta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oferta` (
  `id_oferta` int NOT NULL AUTO_INCREMENT,
  `id_productos_gamer` int DEFAULT NULL,
  `descuento` decimal(6,2) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  PRIMARY KEY (`id_oferta`),
  KEY `fk_constr_id_productos_gamer` (`id_productos_gamer`),
  CONSTRAINT `fk_constr_id_productos_gamer` FOREIGN KEY (`id_productos_gamer`) REFERENCES `productos_gamer` (`id_productos_gamer`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oferta`
--

LOCK TABLES `oferta` WRITE;
/*!40000 ALTER TABLE `oferta` DISABLE KEYS */;
INSERT INTO `oferta` VALUES (1,1,10.00,'2024-02-15','2024-02-28'),(2,2,5.50,'2024-02-16','2024-02-29'),(3,3,15.25,'2024-02-17','2024-03-01'),(4,4,8.75,'2024-02-18','2024-03-02'),(5,5,12.50,'2024-02-19','2024-03-03');
/*!40000 ALTER TABLE `oferta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago` (
  `id_pago` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int DEFAULT NULL,
  `fecha_pago` date NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `metodo_pago` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_pago`),
  KEY `fk_constrai_id_pedido` (`id_pedido`),
  CONSTRAINT `fk_constrai_id_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
INSERT INTO `pago` VALUES (1,1,'2024-02-15',1500.50,'Tarjeta de Crédito'),(2,2,'2024-02-16',800.99,'PayPal'),(3,3,'2024-02-17',450.75,'Transferencia Bancaria'),(4,4,'2024-02-18',1200.25,'Tarjeta de Débito'),(5,5,'2024-02-19',950.60,'Efectivo');
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_estado_pedido` AFTER INSERT ON `pago` FOR EACH ROW BEGIN
    UPDATE Pedido
    SET estado = 'Pagado'
    WHERE id_pedido = NEW.id_pedido;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `pedido_actualiza_estado` AFTER INSERT ON `pago` FOR EACH ROW BEGIN
    UPDATE Pedido
    SET estado = 'Pagado'
    WHERE id_pedido = NEW.id_pedido;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `id_cliente_comprador` int DEFAULT NULL,
  `fecha_pedido` date DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `fk_constrain_id_cliente_comprador` (`id_cliente_comprador`),
  CONSTRAINT `fk_constrain_id_cliente_comprador` FOREIGN KEY (`id_cliente_comprador`) REFERENCES `cliente_comprador` (`id_cliente_comprador`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,1,'2024-02-15','Completado','1500.50'),(2,2,'2024-02-16','En Proceso','800.99'),(3,3,'2024-02-17','Pendiente','450.75'),(4,4,'2024-02-18','Enviado','1200.25'),(5,5,'2024-02-19','Confirmado','950.60');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_venta`
--

DROP TABLE IF EXISTS `producto_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto_venta` (
  `id_producto_venta` int NOT NULL AUTO_INCREMENT,
  `id_cliente_vendedor` int DEFAULT NULL,
  `id_categoria_venta` int DEFAULT NULL,
  `id_lugar_compra_venta` int DEFAULT NULL,
  `fecha_de_venta` date DEFAULT NULL,
  `detalles` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_producto_venta`),
  KEY `fk_constraint_id_cliente_vendedor` (`id_cliente_vendedor`),
  KEY `fk_constraint_id_categoria_venta` (`id_categoria_venta`),
  KEY `fk_constraint_id_lugar_compra_venta` (`id_lugar_compra_venta`),
  CONSTRAINT `fk_constraint_id_categoria_venta` FOREIGN KEY (`id_categoria_venta`) REFERENCES `categoria_venta` (`id_categoria_venta`),
  CONSTRAINT `fk_constraint_id_cliente_vendedor` FOREIGN KEY (`id_cliente_vendedor`) REFERENCES `cliente_vendedor` (`id_cliente_vendedor`),
  CONSTRAINT `fk_constraint_id_lugar_compra_venta` FOREIGN KEY (`id_lugar_compra_venta`) REFERENCES `lugar_compra_venta` (`id_lugar_compra_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_venta`
--

LOCK TABLES `producto_venta` WRITE;
/*!40000 ALTER TABLE `producto_venta` DISABLE KEYS */;
INSERT INTO `producto_venta` VALUES (1,1,1,1,'2024-02-15','Venta de tarjeta gráfica'),(2,2,2,2,'2024-02-16','Venta de accesorios gaming'),(3,3,3,3,'2024-02-17','Venta de consola PlayStation'),(4,4,4,4,'2024-02-18','Venta de componentes PC'),(5,5,5,5,'2024-02-19','Venta de juegos digitales');
/*!40000 ALTER TABLE `producto_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_gamer`
--

DROP TABLE IF EXISTS `productos_gamer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_gamer` (
  `id_productos_gamer` int NOT NULL AUTO_INCREMENT,
  `producto` varchar(200) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`id_productos_gamer`),
  CONSTRAINT `productos_gamer_chk_1` CHECK ((`stock` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_gamer`
--

LOCK TABLES `productos_gamer` WRITE;
/*!40000 ALTER TABLE `productos_gamer` DISABLE KEYS */;
INSERT INTO `productos_gamer` VALUES (1,'Nvidia GeForce RTX 3080',1200.50,'Tarjeta gráfica de alto rendimiento',10),(2,'PlayStation 5',599.99,'Consola de última generación',15),(3,'Razer Blackwidow V3',159.99,'Teclado mecánico gaming',20),(4,'Monitor Ultrawide LG 34\"',499.75,'Monitor curvo para gaming',8),(5,'Auriculares Wireless SteelSeries',249.99,'Auriculares gaming inalámbricos',12);
/*!40000 ALTER TABLE `productos_gamer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarifa`
--

DROP TABLE IF EXISTS `tarifa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarifa` (
  `id_tarifa` int NOT NULL AUTO_INCREMENT,
  `zona` varchar(100) NOT NULL,
  `costo` decimal(10,2) NOT NULL,
  `metodo_envio` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_tarifa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarifa`
--

LOCK TABLES `tarifa` WRITE;
/*!40000 ALTER TABLE `tarifa` DISABLE KEYS */;
INSERT INTO `tarifa` VALUES (1,'Lima Metropolitana',10.50,'Delivery Express'),(2,'Provincias Costa',15.75,'Envío Estándar'),(3,'Provincias Sierra',20.25,'Servicio Prioritario'),(4,'Provincias Selva',25.00,'Envío Especializado'),(5,'Lima Callao',8.75,'Delivery Rápido');
/*!40000 ALTER TABLE `tarifa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajadores`
--

DROP TABLE IF EXISTS `trabajadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trabajadores` (
  `id_trabajadores` int NOT NULL AUTO_INCREMENT,
  `nombre_trabajadores` varchar(100) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `dni` varchar(8) NOT NULL,
  PRIMARY KEY (`id_trabajadores`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajadores`
--

LOCK TABLES `trabajadores` WRITE;
/*!40000 ALTER TABLE `trabajadores` DISABLE KEYS */;
INSERT INTO `trabajadores` VALUES (1,'Pedro Ramirez','1990-05-15','45678901'),(2,'Sofia Lopez','1988-11-22','56789012'),(3,'Miguel Torres','1995-03-10','67890123'),(4,'Valentina Silva','1992-07-30','78901234'),(5,'Diego Mendoza','1987-09-18','89012345');
/*!40000 ALTER TABLE `trabajadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajadores_voluntarios`
--

DROP TABLE IF EXISTS `trabajadores_voluntarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trabajadores_voluntarios` (
  `id_trabajadores_voluntarios` int NOT NULL AUTO_INCREMENT,
  `id_categoria_trabajadores` int DEFAULT NULL,
  `id_trabajadores` int DEFAULT NULL,
  PRIMARY KEY (`id_trabajadores_voluntarios`),
  KEY `fk_c_id_categoria_trabajadores` (`id_categoria_trabajadores`),
  KEY `fk_c_id_trabajadores` (`id_trabajadores`),
  CONSTRAINT `fk_c_id_categoria_trabajadores` FOREIGN KEY (`id_categoria_trabajadores`) REFERENCES `categoria_trabajadores` (`id_categoria_trabajadores`),
  CONSTRAINT `fk_c_id_trabajadores` FOREIGN KEY (`id_trabajadores`) REFERENCES `trabajadores` (`id_trabajadores`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajadores_voluntarios`
--

LOCK TABLES `trabajadores_voluntarios` WRITE;
/*!40000 ALTER TABLE `trabajadores_voluntarios` DISABLE KEYS */;
INSERT INTO `trabajadores_voluntarios` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5);
/*!40000 ALTER TABLE `trabajadores_voluntarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_pagos_pedidos`
--

DROP TABLE IF EXISTS `vista_pagos_pedidos`;
/*!50001 DROP VIEW IF EXISTS `vista_pagos_pedidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_pagos_pedidos` AS SELECT 
 1 AS `id_pago`,
 1 AS `fecha_pago`,
 1 AS `monto`,
 1 AS `metodo_pago`,
 1 AS `id_pedido`,
 1 AS `total_pedido`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_ingresos_por_periodo`
--

DROP TABLE IF EXISTS `vw_ingresos_por_periodo`;
/*!50001 DROP VIEW IF EXISTS `vw_ingresos_por_periodo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_ingresos_por_periodo` AS SELECT 
 1 AS `año`,
 1 AS `mes`,
 1 AS `ingresos_totales`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_nuevos_clientes_periodo`
--

DROP TABLE IF EXISTS `vw_nuevos_clientes_periodo`;
/*!50001 DROP VIEW IF EXISTS `vw_nuevos_clientes_periodo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_nuevos_clientes_periodo` AS SELECT 
 1 AS `año`,
 1 AS `mes`,
 1 AS `nuevos_clientes`,
 1 AS `porcentaje_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_productos_mas_vendidos`
--

DROP TABLE IF EXISTS `vw_productos_mas_vendidos`;
/*!50001 DROP VIEW IF EXISTS `vw_productos_mas_vendidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_productos_mas_vendidos` AS SELECT 
 1 AS `producto`,
 1 AS `unidades_vendidas`,
 1 AS `total_ventas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_total_clientes`
--

DROP TABLE IF EXISTS `vw_total_clientes`;
/*!50001 DROP VIEW IF EXISTS `vw_total_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_total_clientes` AS SELECT 
 1 AS `total_clientes`,
 1 AS `clientes_con_telefono`,
 1 AS `clientes_con_email`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'malta_gamers'
--

--
-- Dumping routines for database 'malta_gamers'
--
/*!50003 DROP FUNCTION IF EXISTS `calcular_ventas_periodo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calcular_ventas_periodo`(
    fecha_inicio DATE,
    fecha_fin DATE
) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE total_ventas DECIMAL(10,2);
    
    SELECT SUM(pa.monto)
    INTO total_ventas
    FROM pedido pe
    JOIN pago pa ON pe.id_pedido = pa.id_pedido
    WHERE pe.fecha_pedido BETWEEN fecha_inicio AND fecha_fin;
    RETURN COALESCE(total_ventas, 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GenerarNumeroSeguimiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GenerarNumeroSeguimiento`(pedido INT) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    RETURN CONCAT('ENV-', pedido, '-', UNIX_TIMESTAMP());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_efectividad_oferta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_efectividad_oferta`()
BEGIN
    SELECT 
        o.id_oferta,
        pg.producto,
        o.descuento,
        o.fecha_inicio,
        o.fecha_fin,
        COUNT(DISTINCT dp.id_pedido) as pedidos_durante_oferta,
        SUM(dp.cantidad) as unidades_vendidas,
        SUM(dp.cantidad * CAST(dp.precio_unidad AS DECIMAL(10,2))) as ingreso_total,
        (SELECT AVG(ventas_diarias)
         FROM (
             SELECT COUNT(*) as ventas_diarias
             FROM detalle_pedido dp2
             JOIN pedido p2 ON dp2.id_pedido = p2.id_pedido
             WHERE dp2.id_productos_gamer = pg.id_productos_gamer
             AND p2.fecha_pedido NOT BETWEEN o.fecha_inicio AND o.fecha_fin
             GROUP BY DATE(p2.fecha_pedido)
         ) t) as promedio_ventas_diarias_normal
    FROM oferta o
    JOIN productos_gamer pg ON o.id_productos_gamer = pg.id_productos_gamer
    LEFT JOIN detalle_pedido dp ON pg.id_productos_gamer = dp.id_productos_gamer
    LEFT JOIN pedido p ON dp.id_pedido = p.id_pedido
    WHERE p.fecha_pedido BETWEEN o.fecha_inicio AND o.fecha_fin
    GROUP BY o.id_oferta
    ORDER BY unidades_vendidas DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_preferencias_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_preferencias_cliente`(
    IN id_cliente INT
)
BEGIN
    SELECT 
        pg.producto,
        pg.descripcion,
        COUNT(dp.id_detalle_pedido) as veces_comprado,
        SUM(dp.cantidad) as unidades_totales,
        SUM(dp.cantidad * CAST(dp.precio_unidad AS DECIMAL(10,2))) as gasto_total,
        MAX(p.fecha_pedido) as ultima_compra
    FROM cliente_comprador cc
    JOIN pedido p ON cc.id_cliente_comprador = p.id_cliente_comprador
    JOIN detalle_pedido dp ON p.id_pedido = dp.id_pedido
    JOIN productos_gamer pg ON dp.id_productos_gamer = pg.id_productos_gamer
    WHERE cc.id_cliente_comprador = id_cliente
    GROUP BY pg.id_productos_gamer
    ORDER BY veces_comprado DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vista_pagos_pedidos`
--

/*!50001 DROP VIEW IF EXISTS `vista_pagos_pedidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_pagos_pedidos` AS select `pa`.`id_pago` AS `id_pago`,`pa`.`fecha_pago` AS `fecha_pago`,`pa`.`monto` AS `monto`,`pa`.`metodo_pago` AS `metodo_pago`,`p`.`id_pedido` AS `id_pedido`,`p`.`total` AS `total_pedido` from (`pago` `pa` join `pedido` `p` on((`pa`.`id_pedido` = `p`.`id_pedido`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_ingresos_por_periodo`
--

/*!50001 DROP VIEW IF EXISTS `vw_ingresos_por_periodo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_ingresos_por_periodo` AS select year(`pedido`.`fecha_pedido`) AS `año`,month(`pedido`.`fecha_pedido`) AS `mes`,round(sum(cast(`pedido`.`total` as decimal(10,2))),2) AS `ingresos_totales` from `pedido` group by year(`pedido`.`fecha_pedido`),month(`pedido`.`fecha_pedido`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_nuevos_clientes_periodo`
--

/*!50001 DROP VIEW IF EXISTS `vw_nuevos_clientes_periodo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_nuevos_clientes_periodo` AS select year(`primeras_compras`.`primera_compra`) AS `año`,month(`primeras_compras`.`primera_compra`) AS `mes`,count(0) AS `nuevos_clientes`,((count(0) * 100.0) / (select count(0) from `cliente_comprador`)) AS `porcentaje_total` from (select `cc`.`id_cliente_comprador` AS `id_cliente_comprador`,min(`p`.`fecha_pedido`) AS `primera_compra` from (`cliente_comprador` `cc` left join `pedido` `p` on((`cc`.`id_cliente_comprador` = `p`.`id_cliente_comprador`))) group by `cc`.`id_cliente_comprador`) `primeras_compras` group by year(`primeras_compras`.`primera_compra`),month(`primeras_compras`.`primera_compra`) order by `año`,`mes` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_productos_mas_vendidos`
--

/*!50001 DROP VIEW IF EXISTS `vw_productos_mas_vendidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_productos_mas_vendidos` AS select `pg`.`producto` AS `producto`,sum(`dp`.`cantidad`) AS `unidades_vendidas`,round(sum((`dp`.`cantidad` * cast(`dp`.`precio_unidad` as decimal(10,2)))),2) AS `total_ventas` from (`detalle_pedido` `dp` join `productos_gamer` `pg` on((`dp`.`id_productos_gamer` = `pg`.`id_productos_gamer`))) group by `pg`.`producto` order by `unidades_vendidas` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_total_clientes`
--

/*!50001 DROP VIEW IF EXISTS `vw_total_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_total_clientes` AS select count(0) AS `total_clientes`,count(distinct `cliente_comprador`.`telefono_cliente_comprador`) AS `clientes_con_telefono`,count(distinct `cliente_comprador`.`email_cliente_comprador`) AS `clientes_con_email` from `cliente_comprador` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-27 19:31:06