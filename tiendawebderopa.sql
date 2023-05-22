-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: respaldo2
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `categoria_productos`
--

DROP TABLE IF EXISTS `categoria_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_productos` (
  `id_cp` int NOT NULL AUTO_INCREMENT,
  `id_cate` int NOT NULL,
  `id` int NOT NULL,
  PRIMARY KEY (`id_cp`),
  KEY `id_cate` (`id_cate`),
  KEY `id` (`id`),
  CONSTRAINT `categoria_productos_ibfk_1` FOREIGN KEY (`id_cate`) REFERENCES `categorias` (`id_cate`),
  CONSTRAINT `categoria_productos_ibfk_2` FOREIGN KEY (`id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_productos`
--

LOCK TABLES `categoria_productos` WRITE;
/*!40000 ALTER TABLE `categoria_productos` DISABLE KEYS */;
INSERT INTO `categoria_productos` VALUES (1,8,2),(2,8,3),(3,11,1),(4,7,2),(5,7,1),(6,7,3),(7,8,4),(8,7,5),(9,7,4),(10,11,7),(11,7,7),(12,7,8),(13,8,8),(14,7,9),(15,9,9),(16,7,10),(17,9,10),(18,8,11),(19,7,11),(20,7,12),(21,11,12),(22,7,13),(23,11,13),(24,7,14),(25,10,14),(26,7,15),(27,10,15),(28,1,16),(29,2,16),(30,1,17),(31,2,17),(32,1,18),(33,2,18),(34,1,19),(35,3,19),(36,1,20),(37,3,20),(38,1,21),(39,10,21),(42,1,23),(43,4,23),(44,14,24),(45,16,24),(46,14,25),(47,16,25),(48,14,26),(49,16,26),(50,14,27),(51,16,27),(52,14,28),(53,17,28),(54,14,29),(55,17,29),(56,14,30),(57,16,30),(58,14,31),(59,16,31),(60,18,32),(61,20,32),(62,18,33),(63,20,33),(64,18,34),(65,20,34),(66,18,35),(67,20,35),(68,18,36),(69,21,36),(70,18,37),(71,21,37),(72,18,38),(73,21,38),(74,18,39),(75,21,39),(76,7,40),(77,8,40),(78,7,41),(79,8,41),(80,7,42),(81,11,42),(82,7,43),(83,11,43),(84,7,44),(85,11,44),(86,7,45),(87,11,45),(88,7,46),(89,9,46),(90,7,47),(91,9,47),(92,7,48),(93,9,48),(94,7,49),(95,9,49),(96,7,50),(97,9,50),(98,7,51),(99,9,51),(100,7,52),(101,10,52),(102,7,53),(103,10,53),(104,7,54),(105,10,54),(106,7,55),(107,10,55),(108,7,56),(109,10,56),(110,7,57),(111,10,57),(112,1,58),(113,2,58),(114,1,59),(115,2,59),(116,1,60),(117,2,60),(118,1,61),(119,2,61),(120,1,62),(121,2,62),(124,1,64),(125,3,64),(126,1,65),(127,3,65),(128,1,66),(129,3,66),(130,1,67),(131,3,67),(132,1,68),(133,3,68),(134,1,69),(135,3,69),(136,1,70),(137,4,70),(138,1,71),(139,4,71),(140,1,72),(141,4,72),(142,1,73),(143,4,73),(144,1,74),(145,4,74),(146,1,75),(147,4,75),(148,1,76),(149,4,76),(150,14,77),(151,16,77),(152,14,78),(153,16,78),(154,14,79),(155,17,79),(156,14,80),(157,17,80),(158,14,81),(159,16,81),(160,14,82),(161,17,82),(162,14,83),(163,17,83),(164,14,84),(165,17,84),(166,14,85),(167,17,85),(168,14,86),(169,16,86),(170,14,87),(171,17,87),(172,14,88),(173,17,88),(174,14,89),(175,17,89),(176,14,90),(177,17,90),(178,14,91),(179,17,91),(180,14,92),(181,7,1),(182,18,93),(183,21,93),(184,18,94),(185,21,94),(186,18,95),(187,21,95),(188,18,96),(189,20,96),(190,18,97),(191,21,97),(192,18,98),(193,21,98),(194,18,99),(195,20,99),(196,18,100),(197,21,100),(198,18,101),(199,20,101),(200,18,102),(201,20,102),(202,18,103),(203,21,103),(204,18,104),(205,21,104),(206,18,105),(207,21,105),(208,18,106),(209,21,106),(210,18,107),(211,20,107),(214,18,108),(215,20,108);
/*!40000 ALTER TABLE `categoria_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_cate` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(80) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_cate`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Mujeres','Mujeres'),(2,'tops','Tops'),(3,'PantalonesM','Pantalones'),(4,'Vestidos','Vestidos'),(5,'ZapatosM','Zapatos'),(6,'AccesoriosM',NULL),(7,'Hombres','Hombres'),(8,'Camisas','Camisas'),(9,'Sueteres','Sueteres'),(10,'Chaquetas','Chaquetas'),(11,'PantalonesH','Pantalones'),(12,'ZapatosH',''),(13,'AccesoriosH',NULL),(14,'Niñas','Niñas'),(15,'BebesM','Bebés'),(16,'5-10M','5-10 años'),(17,'11-15M','11-15 años'),(18,'Niños','Niños'),(19,'BebesH','Bebés'),(20,'5-10H','5-10 años'),(21,'11-15H','11-15 años'),(22,'Deportivo',''),(23,'Casual',NULL),(24,'Formal',NULL);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_c` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `direccion` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `password` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cedula` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sexo` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_corre` int NOT NULL,
  `id_dis` int NOT NULL,
  `imagen` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_c`),
  KEY `clientes_ibfk_1` (`id_dis`),
  KEY `clientes_ibfk_1_idx` (`id_corre`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`id_dis`) REFERENCES `distritos` (`id_dis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('7','7','7','7','2021-06-21 19:53:07','2021-06-21 19:53:07','1','7',NULL,'7','Masculino','7',1,1,'images/avatar.jpg'),('8','8','8','7','2021-06-21 19:53:38','2021-06-21 19:53:38','1','8',NULL,'8','Masculino','8',1,1,'images/CYMERA_20200320_142305-01.jpeg'),('a','a','a','a','2021-06-21 17:56:04','2021-06-21 17:56:04','1','a',NULL,'a','Masculino','a',1,1,'images/Free_Sample_By_Wix.jpg'),('adolf@hotmail.com','Adolfo','6980-7410','ave - 5ta norte','2021-07-24 13:44:33','2021-07-24 13:44:33','1','e79efc4520fbd4b25c3660f5b088bd388c6c61e3',NULL,'5-700-1000','','Guerra',1,1,'images/avatar.jpg'),('albert@gmail.com','Alberto','6670-2311','ave - 5ta sur','2021-07-24 13:53:59','2021-07-24 13:53:59','1','178dc8a9d4cb37a5f1b26a29cc3cb8db31279c42',NULL,'4-2000-700','Masculino','Rivera',11,4,'images/avatar.jpg'),('dongato@gmail.com','edgar','6523-1014','7mo fresco','2023-05-21 11:51:07','2023-05-21 11:51:07','1','3624db883007efa198232b3aa774a54360ed3f26',NULL,'5-414','Masculino','valenzuela',6,2,'images/avatar.jpg'),('ha@hotmail.com','a','4587-1254','mhfngfjv','2021-07-22 00:21:45','2021-07-22 00:21:45','1','7c4a8d09ca3762af61e59520943dc26494f8941b',NULL,'a','Masculino','a',2,2,'images/natasha-balashova-blbn1111.jpg'),('hayley003@hotmail.com','Hayley','9547-8654','Ave Este 4th entrada','2021-07-16 18:08:27','2021-07-16 18:08:27','1','7c4a8d09ca3762af61e59520943dc26494f8941b',NULL,'7-985-5648','Femenino','Palacios',3,1,'images/78-785827_user-profile-avatar-login-account-male-user-icon.jpg'),('helenh@gmail.com','Helena','7784-9854','1234567','2021-06-19 16:20:34','2021-06-19 16:20:34','1','Ave-Ros',NULL,'54-87-987','Femenino','Roblez',4,1,'../login2/perfiles/prueba.JPG'),('johnmar@hotmail.com','jhonny','6365-9858','Ave-CTR','2021-06-22 14:10:11','2021-06-22 14:10:11','1','123',NULL,'8-7459-857','Masculino','Suarez',4,1,'images/avatar.jpg'),('jon@gmail.com','Jhony','6875-8745','Ave - Ruiz','2021-07-16 19:15:31','2021-07-16 19:15:31','1','7c4a8d09ca3762af61e59520943dc26494f8941b',NULL,'4-87-885','Masculino','Suarez',3,1,'images/78-785827_user-profile-avatar-login-account-male-user-icon.jpg'),('m','m','m','m','2021-06-21 19:31:19','2021-06-21 19:31:19','1','m',NULL,'m','Masculino','m',1,1,'images/linkedin_profile_image.png'),('nino@hotmail.com','nino','6641-1700','ave-1ra norte','2021-07-24 11:04:27','2021-07-24 11:04:27','1','190796e30a85c4a38d57615c1ab2775b52d9df3f',NULL,'4-700-000','Masculino','perez',11,4,'images/descarga (1).jpg'),('p','p','p','p','2021-06-21 19:43:35','2021-06-21 19:43:35','1','p',NULL,'p','Masculino','p',4,1,'images/pinterest_profile_image.png'),('sara@gmail.com','sara','8770-8720','ave - 5ta sur','2021-07-24 11:29:42','2021-07-24 11:29:42','1','ca95f8c04c0d168653f956d0ee135807a1152d40',NULL,'3-8888-1000','Femenino','casasola',7,3,'images/avatar.jpg'),('w','w','w','w','2021-06-21 17:58:49','2021-06-21 17:58:49','1','w',NULL,'w','Masculino','w',1,1,'images/20200927_230843-01.jpeg'),('z','z','z','z','2021-06-21 18:25:38','2021-06-21 18:25:38','1','z',NULL,'z','Masculino','z',1,1,'images/avatar.jpeg');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corregimientos`
--

DROP TABLE IF EXISTS `corregimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corregimientos` (
  `id_corre` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  `id_dis` int NOT NULL,
  PRIMARY KEY (`id_corre`),
  KEY `id_dis` (`id_dis`),
  CONSTRAINT `corregimientos_ibfk_1` FOREIGN KEY (`id_dis`) REFERENCES `distritos` (`id_dis`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corregimientos`
--

LOCK TABLES `corregimientos` WRITE;
/*!40000 ALTER TABLE `corregimientos` DISABLE KEYS */;
INSERT INTO `corregimientos` VALUES (1,'Alanje',1),(2,'Baco',2),(3,'Divala',1),(4,'Palo Grande',1),(5,'El tejar',1),(6,'Puerto Armuelles',2),(7,'David',3),(8,'San Carlos',3),(9,'Cochea',3),(10,'La Concepión',4),(11,'La Estrella',4),(12,'Santa Cruz',5),(13,'Río Sereno',5);
/*!40000 ALTER TABLE `corregimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distritos`
--

DROP TABLE IF EXISTS `distritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distritos` (
  `id_dis` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_dis`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distritos`
--

LOCK TABLES `distritos` WRITE;
/*!40000 ALTER TABLE `distritos` DISABLE KEYS */;
INSERT INTO `distritos` VALUES (1,'Alanje'),(2,'Baru'),(3,'David'),(4,'Bugaba'),(5,'Renacimiento');
/*!40000 ALTER TABLE `distritos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_detalles`
--

DROP TABLE IF EXISTS `orden_detalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orden_detalles` (
  `id_od` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `cantidad` int NOT NULL,
  `talla` varchar(6) NOT NULL,
  `id_o` int NOT NULL,
  PRIMARY KEY (`id_od`),
  KEY `id_o` (`id_o`),
  KEY `id_product` (`id_product`),
  CONSTRAINT `orden_detalles_ibfk_1` FOREIGN KEY (`id_o`) REFERENCES `ordenes` (`id_o`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_detalles`
--

LOCK TABLES `orden_detalles` WRITE;
/*!40000 ALTER TABLE `orden_detalles` DISABLE KEYS */;
INSERT INTO `orden_detalles` VALUES (1,2,1,'L',9),(2,1,2,'M',9),(3,1,1,'M',10),(4,3,1,'L',11),(5,7,1,'S',11),(6,1,3,'S',11),(7,2,2,'S',11),(8,2,2,'L',12),(9,2,1,'S',13),(10,50,1,'M',13),(11,17,2,'M',13),(12,41,1,'S',14),(13,2,2,'L',15),(14,3,2,'S',16),(15,4,1,'M',17),(16,20,2,'S',17);
/*!40000 ALTER TABLE `orden_detalles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes`
--

DROP TABLE IF EXISTS `ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenes` (
  `id_o` int NOT NULL AUTO_INCREMENT,
  `total_price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `id_c` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_o`),
  KEY `id_c` (`id_c`),
  CONSTRAINT `ordenes_ibfk_1` FOREIGN KEY (`id_c`) REFERENCES `clientes` (`id_c`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes`
--

LOCK TABLES `ordenes` WRITE;
/*!40000 ALTER TABLE `ordenes` DISABLE KEYS */;
INSERT INTO `ordenes` VALUES (9,30.97,'2021-06-19 23:50:37','2021-06-19 23:50:37','1','helenh@gmail.com'),(10,10.99,'2021-06-20 23:04:31','2021-06-20 23:04:31','1','helenh@gmail.com'),(11,78.93,'2021-06-21 20:11:48','2021-06-21 20:11:48','1','helenh@gmail.com'),(12,17.98,'2021-06-22 19:56:06','2021-06-22 19:56:06','1','8'),(13,94.84,'2021-07-17 01:35:26','2021-07-17 01:35:27','1','hayley003@hotmail.com'),(14,29.99,'2021-07-17 03:08:03','2021-07-17 03:08:03','1','jon@gmail.com'),(15,17.98,'2021-07-23 21:51:24','2021-07-23 21:51:24','1','ha@hotmail.com'),(16,19.98,'2021-07-24 07:26:16','2021-07-24 07:26:16','1','ha@hotmail.com'),(17,61.89,'2021-07-24 18:10:30','2021-07-24 18:10:30','1','nino@hotmail.com');
/*!40000 ALTER TABLE `ordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `stock` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `foto` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Pantalón verde','De Tela',10.99,'2021-05-29 19:58:53','2021-05-29 19:58:53','1','4','../proyectoF/productos3/fotos1/pantalonesverdes.JPG'),(2,'Camisa Natural Issue','De Tela -  Naranja',8.99,'2021-05-29 20:00:10','2021-05-29 20:00:10','1','6','../proyectoF/productos3/fotos1/naranja.PNG'),(3,'Camisa Carven','De Seda - Morado',9.99,'2021-05-29 20:10:10','2021-05-29 20:10:10','1','8','../proyectoF/productos3/fotos1/morada.JPG'),(4,'Camisa ORG','Mangas Cortas - Blanco',15.99,'2021-05-29 20:16:39','2021-05-29 20:16:39','1','6','../proyectoF/productos3/fotos1/org.jpg'),(5,'Camisa Roja','De algodón ',13.99,'2021-05-30 22:31:02','2021-05-30 22:31:02','1','1','../proyectoF/productos3/fotos1/rojo.jpg'),(6,'Pantalón Rojo','De Jeans',17.99,'2021-06-16 20:54:36','2021-06-16 20:54:36','1','0','../productos3/fotos1/rojoj.jpg'),(7,'Pantalón Rojo','De Jeans',17.99,'2021-06-16 20:57:49','2021-06-16 20:57:49','1','7','../proyectoF/productos3/fotos1/rojoj.JPG'),(8,'Camisa Carven','Manga Larga - Azul marino',39.99,'2021-06-28 21:41:43','2021-06-28 21:41:43','1','5','../proyectoF/productos3/fotos1/camisaazul.jpg'),(9,'Suéter Calvin Klein','Manga Larga - Negro',40.00,'2021-06-28 22:46:28','2021-06-28 22:46:28','1','4','../proyectoF/productos3/fotos1/sueternegro.jpg'),(10,'Suéter Lacoste','Manga Corta - Amarillo',75.00,'2021-06-28 23:15:30','2021-06-28 23:15:30','1','5','../proyectoF/productos3/fotos1/lacosteamarillo.jpg'),(11,'Camisa Givenchy','De Seda - Con rayas rojas y azules  ',29.99,'2021-06-29 18:19:23','2021-06-29 18:19:23','1','20','../proyectoF/productos3/fotos1/camisarosa.jpg'),(12,'Pantalón Carven','De Bota Recta - Crema',36.99,'2021-06-29 19:04:16','2021-06-29 19:04:16','1','10','../proyectoF/productos3/fotos1/caqui.jpg'),(13,'Pantalón Izod','De Tela - Azul Marino',49.95,'2021-06-29 19:14:07','2021-06-29 19:14:07','1','10','../proyectoF/productos3/fotos1/izodazul.jpg'),(14,'Abrigo Juvenil','De Algodón - Color Negro',27.99,'2021-06-29 19:37:33','2021-06-29 19:37:33','1','15','../proyectoF/productos3/fotos1/AbrigoJuvenil.jpg'),(15,'Jacket Juvenil','De Cuero - Color Negro',49.95,'2021-06-29 19:51:45','2021-06-29 19:51:45','1','30','../proyectoF/productos3/fotos1/jacketnegro.jpg'),(16,'Top FCO','De Algodón - Color Blanco',39.95,'2021-06-29 22:32:30','2021-06-29 22:32:30','1','25','../proyectoF/productos3/fotos1/topblanco.png'),(17,'Top SL','De Algodón - Rojo Estampado',29.95,'2021-06-29 22:45:59','2021-06-29 22:45:59','1','20','../proyectoF/productos3/fotos1/estampadorojo.png'),(18,'Top Choies','Estampado Floral negro',13.70,'2021-06-29 23:04:43','2021-06-29 23:04:43','1','12','../proyectoF/productos3/fotos1/choies.jpg'),(19,'Pantalón Celebrity Pink','Con Tela elástica - Color Negro',29.95,'2021-06-29 23:22:48','2021-06-29 23:22:48','1','15','../proyectoF/productos3/fotos1/pantalonesnegro.jpg'),(20,'Pantalón Goldie','De Jeans - Color Amarillo',22.95,'2021-06-29 23:35:59','2021-06-29 23:35:59','1','1','../proyectoF/productos3/fotos1/amarillopants.jpg'),(21,'Jacket Request','De Cuero - Color Negro',17.49,'2021-06-30 21:02:28','2021-06-30 21:02:28','1','40','../proyectoF/productos3/fotos1/jackblackdama.jpg'),(22,'Suéter Bonage','De Algodón - Color Blanco',19.99,'2021-06-30 21:16:33','2021-06-30 21:16:33','1','13','../proyectoF/productos3/fotos1/sueterbonage.jpg'),(23,'Vestido Moonkara','Rojo Estampado',24.99,'2021-06-30 21:23:32','2021-06-30 21:23:32','1','18','../proyectoF/productos3/fotos1/VestidoCorto.jpg'),(24,'Vestido Bonnie','De Jeans - Con Rayas rosa',24.99,'2021-06-30 21:38:56','2021-06-30 21:38:56','1','15','../proyectoF/productos3/fotos1/Bonnie.jpg'),(25,'Vestido Bonnie Jeans','De Seda - Color Rosa',32.99,'2021-06-30 21:46:14','2021-06-30 21:46:14','1','10','../proyectoF/productos3/fotos1/Bonnierosa.jpg'),(26,'Suéter Wonder Woman','De Algodón - Manga Corta',6.99,'2021-06-30 21:52:10','2021-06-30 21:52:10','1','4','../proyectoF/productos3/fotos1/Wonder.jpg'),(27,'Suéter Coloritta','De Algodón - Manga Larga ',9.99,'2021-06-30 22:10:25','2021-06-30 22:10:25','1','15','../proyectoF/productos3/fotos1/Coloritta.jpg'),(28,'Pantalón De Niña Habitual','De Lino - Negro',9.95,'2021-07-01 12:31:19','2021-07-01 12:31:19','1','10','../proyectoF/productos3/fotos1/pantninas.png'),(29,'Pantalón De Niña Carters','De Flores - Color Blanco',12.95,'2021-07-01 12:39:18','2021-07-01 12:39:18','1','19','../proyectoF/productos3/fotos1/shortsflores.png'),(30,'Pantalón de niña Levi\'s Kids','Cierre de Botón - De Elastano',19.95,'2021-07-01 13:38:49','2021-07-01 13:38:49','1','6','../proyectoF/productos3/fotos1/girlslevis.jpg'),(31,'Falda de niña DENIM REPUBLIC','de algodón - Diseño A Cuadros',19.95,'2021-07-01 13:51:47','2021-07-01 13:51:47','1','7','../proyectoF/productos3/fotos1/faldacuadros.jpg'),(32,'Camisa de niño OSHKOSH','De Popelina - Con cuadros rojos',16.95,'2021-07-01 14:49:27','2021-07-01 14:49:27','1','20','../proyectoF/productos3/fotos1/OSHKOSH.jpg'),(33,'Camisa de niño CARTERS','De Lino - Con rayas azules',14.95,'2021-07-01 14:58:13','2021-07-01 14:58:13','1','5','../proyectoF/productos3/fotos1/azulrayado.jpg'),(34,'Camisa de Niño NAUTICA','De Algodón fino - Azul Marino',39.00,'2021-07-01 15:09:06','2021-07-01 15:09:06','1','10','../proyectoF/productos3/fotos1/nauticaazul.jpg'),(35,'Suéter de Niño CARTERS','De Algodón - Color Gris',10.95,'2021-07-01 15:21:43','2021-07-01 15:21:43','1','8','../proyectoF/productos3/fotos1/T-SHIIRTDENIÑO.jpg'),(36,'Suéter de Niño NAUTICA','De Algodón - Color Rojo',22.50,'2021-07-01 15:32:48','2021-07-01 15:32:48','1','8','../proyectoF/productos3/fotos1/SueterNautica.jpg'),(37,'Suéter de Niño Oshkosh','De Algodón - De Palmeras',14.95,'2021-07-01 15:41:52','2021-07-01 15:41:52','1','8','../proyectoF/productos3/fotos1/DePalmeras.jpg'),(38,'Pantalón Denim Republic','De Jeans - Azul Claro',9.95,'2021-07-01 15:51:42','2021-07-01 15:51:42','1','8','../proyectoF/productos3/fotos1/Jeans-Azulclaro.jpg'),(39,'Pantalón De Niño Levis','De Jeans - Color Azul Oscuro',39.95,'2021-07-01 16:01:13','2021-07-01 16:01:13','1','8','../proyectoF/productos3/fotos1/levisdenino.png'),(40,'Camisa Only & Sons','Manga Larga Juvenil - De rayas, Blanco',23.99,'2021-07-05 22:59:09','2021-07-05 22:59:09','1','10','../proyectoF/productos3/fotos1/Sons.jpg'),(41,'Camisa Natural Issue','Manga Larga - Azul',29.99,'2021-07-05 23:11:39','2021-07-05 23:11:39','1','10','../proyectoF/productos3/fotos1/Issueazul.jpg'),(42,'Pantalón Oleg Cassini ','De Vestir - Color Gris',49.99,'2021-07-06 19:36:17','2021-07-06 19:36:17','1','10','../proyectoF/productos3/fotos1/vintage.jpg'),(43,'Pantalón Oleg Cassini','Te Tela - Negro',21.99,'2021-07-06 20:20:26','2021-07-06 20:20:26','1','10','../proyectoF/productos3/fotos1/marrones.jpg'),(44,'Pantalón Banana REPUBLIC ','De Jeans - Azul Marino/Indigo',23.00,'2021-07-06 20:31:04','2021-07-06 20:31:04','1','10','../proyectoF/productos3/fotos1/indigo.jpg'),(45,'Pantalón Banana Republic Factory ','De Tela - Negro',27.30,'2021-07-06 20:42:22','2021-07-06 20:42:22','1','10','../proyectoF/productos3/fotos1/Factory.jpg'),(46,'Suéter Polo Ralph Lauren','Manga Larga - negro',9.63,'2021-07-06 21:53:54','2021-07-06 21:53:54','1','10','../proyectoF/productos3/fotos1/polonegro.jpg'),(47,'Suéter Polo','De Algodón - Con rayas, azul',24.99,'2021-07-06 22:02:10','2021-07-06 22:02:10','1','10','../proyectoF/productos3/fotos1/polorayado.jpg'),(48,'Suéter polo ','De Algodón - Gris',4.99,'2021-07-06 22:10:59','2021-07-06 22:10:59','1','10','../proyectoF/productos3/fotos1/pologris.jpg'),(49,'Suéter Lacoste','De Rayas - De Algodón, Rojo',10.50,'2021-07-06 22:19:47','2021-07-06 22:19:47','1','10','../proyectoF/productos3/fotos1/Suéter.jpg'),(50,'Suéter Jersey','De Algodón - Con cuello en V, Rojo',25.95,'2021-07-06 22:28:29','2021-07-06 22:28:29','1','10','../proyectoF/productos3/fotos1/violetasueter.jpg'),(51,'Suéter CARVEN','De Lana - Beige con Negro',7.13,'2021-07-06 22:38:29','2021-07-06 22:38:29','1','10','../proyectoF/productos3/fotos1/CARVEBeige.jpg'),(52,'Chaqueta Tommy Hilfiger','De Algodón - Azul Marino/Blanco/Rojo',55.99,'2021-07-07 21:43:28','2021-07-07 21:43:28','1','5','../proyectoF/productos3/fotos1/Taslan.jpg'),(53,'Chaqueta Tommy Hilfiger','Azul Marino - Azul',59.85,'2021-07-07 21:49:38','2021-07-07 21:49:38','1','5','../proyectoF/productos3/fotos1/Bombardero.jpg'),(54,'Chaqueta Tommy Jeans','De Nylon Acolchado - Blanco',13.95,'2021-07-07 22:04:11','2021-07-07 22:04:11','1','5','../proyectoF/productos3/fotos1/TommyJeans.jpg'),(55,'Chaqueta Soft Shell','De Nylon - Azul y Blanco',9.99,'2021-07-07 22:21:17','2021-07-07 22:21:17','1','5','../proyectoF/productos3/fotos1/Letterman.jpg'),(56,'Chaqueta Bayport','De Cuero - Crema',24.99,'2021-07-07 22:33:07','2021-07-07 22:33:07','1','5','../proyectoF/productos3/fotos1/bayport.jpg'),(57,'Jacket Polo Ralph Lauren','Negro - con Botón de Bolsillo',19.95,'2021-07-07 22:41:54','2021-07-07 22:41:54','1','5','../proyectoF/productos3/fotos1/BotónBolsillo.jpg'),(58,'Top Newlook','Stretch Top Corto - De Encaje Marfil',11.25,'2021-07-07 22:58:43','2021-07-07 22:58:43','1','5','../proyectoF/productos3/fotos1/ENCAJE.jpg'),(59,'Top Kimono','De Seda - Negro con flores estampadas',20.67,'2021-07-08 19:57:01','2021-07-08 19:57:01','1','5','../proyectoF/productos3/fotos1/topfloral.jpg'),(60,'Top Class','De Lino - Negro con encajes',14.95,'2021-07-08 20:11:56','2021-07-08 20:11:56','1','5','../proyectoF/productos3/fotos1/topclass.jpg'),(61,'Top River Island','De encaje hippie - Blanco Gitano',6.87,'2021-07-08 20:30:11','2021-07-08 20:30:11','1','5','../proyectoF/productos3/fotos1/blancogitano.jpg'),(62,'Top Bardot','De Seda - De rayas azul y blanco',19.93,'2021-07-08 20:46:07','2021-07-08 20:46:07','1','5','../proyectoF/productos3/fotos1/bardot.jpg'),(63,'Suéter Para Mujer Lacoste','De Algodón - Con cremallera',7.99,'2021-07-08 21:48:24','2021-07-08 21:48:24','1','5','../proyectoF/productos3/fotos1/amarillomujer.jpg'),(64,'Pantalón de dama Levis','De Jeans - Shaping Super Skinny',7.99,'2021-07-08 22:17:09','2021-07-08 22:17:09','1','5','../proyectoF/productos3/fotos1/levisdama.jpg'),(65,'Pantalón Vaqueros Mujer','De Algodón - Con Elastáno ',9.95,'2021-07-08 22:35:44','2021-07-08 22:35:44','1','5','../proyectoF/productos3/fotos1/Levis501.jpg'),(66,'Pantalón GRACE KARIN','De Poliéster con Elastano - De Cierre con Cinturón',9.99,'2021-07-08 22:45:23','2021-07-08 22:45:23','1','5','../proyectoF/productos3/fotos1/capri.jpg'),(67,'Pantalón Only','De Elastano - Con Cierre de Botón',21.99,'2021-07-08 22:57:15','2021-07-08 22:57:15','1','5','../proyectoF/productos3/fotos1/OnlyOnlnew.jpg'),(68,'Pantalón Onlpoptrash','De Poliamida - Cierre con cordón',13.99,'2021-07-08 23:07:18','2021-07-08 23:07:18','1','5','../proyectoF/productos3/fotos1/only-onlpoptrash-easy-new-sporty-pnt-noos-pantalones.jpg'),(69,'Pantalón Tomwell','De Cintura Media - Slim Fit',15.69,'2021-07-08 23:17:27','2021-07-08 23:17:27','1','6','../proyectoF/productos3/fotos1/tomwellazul.jpg'),(70,'Vestido Only Onlmay','De Algodón - De Rayas negras',16.79,'2021-07-08 23:30:24','2021-07-08 23:30:24','1','6','../proyectoF/productos3/fotos1/dressnoss.jpg'),(71,'Vestido Fossen Casual','Cuello en V - Estampado a Rayas',14.64,'2021-07-09 13:13:55','2021-07-09 13:13:55','1','7','../proyectoF/productos3/fotos1/fossen.jpg'),(72,'Vestido Only Onlmay Life','De Algodón - Sin Cierre',26.49,'2021-07-09 13:22:24','2021-07-09 13:22:24','1','7','../proyectoF/productos3/fotos1/onlmay_life_cap_sleeves_frill_dress_noos.jpg'),(73,'Vestido TRUTH & FABLE','De Poliéster - Escote en V',67.75,'2021-07-09 13:28:22','2021-07-09 13:28:22','1','7','../proyectoF/productos3/fotos1/MarcaAmazon.jpg'),(74,'Vestido TRUTH & FABLE Asimétrico','De Poliéster - Sin manga',47.50,'2021-07-09 13:35:09','2021-07-09 13:35:09','1','5','../proyectoF/productos3/fotos1/Asimétrico.jpg'),(75,'Vestido TRUTH & FABLE Midi','De Poliéster - Negro de flores estampado',54.80,'2021-07-09 13:46:46','2021-07-09 13:46:46','1','5','../proyectoF/productos3/fotos1/midi.png'),(76,'Vestido Vero Moda','Cierre con Botón - Estilo de cuello Clásico',39.99,'2021-07-09 13:55:16','2021-07-09 13:55:16','1','5','../proyectoF/productos3/fotos1/veromoda.jpg'),(77,'Vestido de Niñas YWLINK','Mezcla de algodón - Con Cordones y lunares',7.99,'2021-07-09 14:21:16','2021-07-09 14:21:16','1','5','../proyectoF/productos3/fotos1/lunaresvestido.jpg'),(78,'Vestido VIKITA','De Algodón - Con Cinturón dorado',22.99,'2021-07-09 15:15:48','2021-07-09 15:15:48','1','5','../proyectoF/productos3/fotos1/vestidosvikita.jpg'),(79,'Vestido GRACE KARIN','Con Cinturón Fino - Color Negro',18.99,'2021-07-09 15:43:56','2021-07-09 15:43:56','1','5','../proyectoF/productos3/fotos1/GRACEKARINVestido.jpg'),(80,'Vestido Sunny Fashion','De Poliéster y Algodón - Color negro',16.99,'2021-07-09 15:56:11','2021-07-09 15:56:11','1','5','../proyectoF/productos3/fotos1/Corbatademoño.jpg'),(81,'Vestido K-youth','De Tipo cóctel - Con Estampado',16.99,'2021-07-09 16:04:30','2021-07-09 16:04:30','1','8','../proyectoF/productos3/fotos1/Kyouth.jpg'),(82,'Pantalón Denim Desire','De Elastano - De Cintura alta',13.99,'2021-07-09 16:48:51','2021-07-09 16:48:51','1','5','../proyectoF/productos3/fotos1/KIDSMEDIUMINDIGO.jpg'),(83,'Pantalón Desigual Denim','Cierre de Hebilla - Color Azul',33.46,'2021-07-09 16:58:00','2021-07-09 16:58:00','1','5','../proyectoF/productos3/fotos1/desigualdenim.jpg'),(84,'Pantalón jeans Levis Kids','De Cintura Alta - Night Bird',12.95,'2021-07-09 17:08:34','2021-07-09 17:08:34','1','8','../proyectoF/productos3/fotos1/KIDS-314691-K6T-NIGHT-BIRD_1.jpg'),(85,'Pantalón NAME IT Jeans','Azul (Dark Blue Denim) - De Viscosa',18.99,'2021-07-09 17:28:03','2021-07-09 17:28:03','1','5','../proyectoF/productos3/fotos1/NAMEITJeans.jpg'),(86,'Pantalón KAPORAL','De Algodón y Elastano - Cierre con Cremallera',20.28,'2021-07-09 17:36:05','2021-07-09 17:36:05','0','5','../proyectoF/productos3/fotos1/KAPORAL.jpg'),(87,'Suéter Lacoste Cooler','De Lana - Con Diseño de rombos',29.95,'2021-07-09 17:55:19','2021-07-09 17:55:19','1','5','../proyectoF/productos3/fotos1/rombossueter.jpg'),(88,'Suéter Lacoste Jumper','De Algodón - De Rayas Original',13.76,'2021-07-09 18:15:44','2021-07-09 18:15:44','1','5','../proyectoF/productos3/fotos1/Jumper.jpg'),(89,'Suéter Ralph LAUREN','Con cuello en V - De Algodón',26.56,'2021-07-09 18:42:42','2021-07-09 18:42:42','1','2','../proyectoF/productos3/fotos1/sueterralph.jpg'),(90,'Suéter Old Navy','Estilo Cardigan ',46.10,'2021-07-09 19:14:36','2021-07-09 19:14:36','1','5','../proyectoF/productos3/fotos1/Cardigan.png'),(91,'Suéter Hope & Henry','100% Algodón orgánico - Sin adornos',81.24,'2021-07-09 21:19:55','2021-07-09 21:19:55','1','7','../proyectoF/productos3/fotos1/hopeyhenry.jpg'),(92,'Suéter Tstars','100% acrílico - Multicolor',20.35,'2021-07-09 21:28:35','2021-07-09 21:28:35','1','5','../proyectoF/productos3/fotos1/trexsueter.jpg'),(93,'Suéter Marvel Black Panther','100 % Otras fibras - Color azul',7.84,'2021-07-09 21:41:22','2021-07-09 21:41:22','1','5','../proyectoF/productos3/fotos1/MarvelSuéter.jpg'),(94,'Suéter Tommy Hilfiger','Color Navy Blazer - Cierre de Pull on',25.14,'2021-07-09 21:53:07','2021-07-09 21:53:07','1','5','../proyectoF/productos3/fotos1/CasualSweater.jpg'),(95,'Suéter Nautica','De Algodón y poliéster',11.85,'2021-07-09 22:02:40','2021-07-09 22:02:40','1','5','../proyectoF/productos3/fotos1/denautica.jpg'),(96,'Suéter Tstars de Navidad de Papá Noel','100% acrílico - Multicolor',23.65,'2021-07-09 22:12:25','2021-07-09 22:12:25','1','5','../proyectoF/productos3/fotos1/sueterpapanoel.jpg'),(97,'Suéter GAP','De Corte Recto',9.00,'2021-07-09 22:24:05','2021-07-09 22:24:05','1','5','../proyectoF/productos3/fotos1/gapsueter.jpg'),(98,'Camisa Columbia Bahama ','100 % Nylon - Lima oscuro',22.46,'2021-07-12 19:53:42','2021-07-12 19:53:42','1','5','../proyectoF/productos3/fotos1/limacolumbia.jpg'),(99,'Camisa Columbia Sportswear','Algodón - Con ventilación en la parte trasera',25.00,'2021-07-12 20:00:47','2021-07-12 20:00:47','1','5','../proyectoF/productos3/fotos1/columbiacrema.jpg'),(100,'Camisa Columbia Tamiami','De Nylon - Aqua Brillante',40.35,'2021-07-12 20:09:17','2021-07-12 20:09:17','1','5','../proyectoF/productos3/fotos1/ColumbiaTamiami.jpg'),(101,'Camisa Freebily de Cuadros','De Algodón - De Cuello Solapa Clásico',16.39,'2021-07-12 21:06:31','2021-07-12 21:06:31','1','5','../proyectoF/productos3/fotos1/freebley.jpg'),(102,'Camisa Hatley Button','100% Algodón - De Puños con botones',15.99,'2021-07-12 21:16:18','2021-07-12 21:16:18','1','5','../proyectoF/productos3/fotos1/Hatley.jpg'),(103,'Pantalón Jack & Jones para Niños','De Algodón Elástico - Mezclilla Azul',29.99,'2021-07-12 21:36:14','2021-07-12 21:36:14','1','5','../proyectoF/productos3/fotos1/descarga.jpg'),(104,'Pantalón NAME IT para Niños','Short - De Algodón Orgánico',10.39,'2021-07-12 21:46:04','2021-07-12 21:46:04','1','5','../proyectoF/productos3/fotos1/vaqueros-cortos-para-ninos-name-it--1620385575.jpg'),(105,'Pantalón United Colors of Benetton','Con elástico - Cordón en la cintura',8.29,'2021-07-12 21:59:17','2021-07-12 21:59:17','0','5','../proyectoF/productos3/fotos1/BenettonJeans.png'),(106,'Pantalón Jeans Jack & Jones','5-pocket jeans - Skinny',20.95,'2021-07-12 22:10:25','2021-07-12 22:10:25','1','5','../proyectoF/productos3/fotos1/5-pocketjeans.jpg'),(107,'Pantalón Pepe Jeans para Niños','Vaqueros de tiro bajo - Estilo 5 bolsillos',49.05,'2021-07-12 22:39:32','2021-07-12 22:39:32','1','5','../proyectoF/productos3/fotos1/pepejeans.jpg'),(108,'Simple Joys by Carters Pantalón','De Mezclilla ligera - De Cordón ajustable',20.25,'2021-07-12 23:27:21','2021-07-12 23:27:21','1','5','../proyectoF/productos3/fotos1/1822.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `talla_productos`
--

DROP TABLE IF EXISTS `talla_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `talla_productos` (
  `id_tp` int NOT NULL AUTO_INCREMENT,
  `id_talla` int NOT NULL,
  `id` int NOT NULL,
  PRIMARY KEY (`id_tp`),
  KEY `id_talla` (`id_talla`),
  KEY `id` (`id`),
  CONSTRAINT `talla_productos_ibfk_1` FOREIGN KEY (`id_talla`) REFERENCES `tallas` (`id_talla`),
  CONSTRAINT `talla_productos_ibfk_2` FOREIGN KEY (`id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talla_productos`
--

LOCK TABLES `talla_productos` WRITE;
/*!40000 ALTER TABLE `talla_productos` DISABLE KEYS */;
INSERT INTO `talla_productos` VALUES (1,1,1),(2,2,1),(3,1,2),(4,2,2),(5,3,2),(6,3,3),(7,1,3),(8,3,7),(9,1,7),(10,2,8),(11,1,9),(12,2,9),(13,1,8),(14,1,10),(15,2,10),(16,1,11),(17,3,11),(18,2,12),(19,3,12),(20,1,13),(21,2,13),(22,2,14),(23,3,14),(24,1,15),(25,2,15),(26,1,16),(27,3,16),(28,1,17),(29,2,17),(30,1,18),(31,3,18),(32,1,19),(33,3,19),(34,1,20),(35,3,20),(36,1,21),(37,2,21),(40,1,23),(41,3,23),(42,1,24),(43,3,24),(44,2,25),(45,3,25),(46,1,26),(47,3,26),(48,1,27),(49,2,27),(50,1,28),(51,2,28),(52,1,29),(53,2,29),(54,1,30),(55,2,30),(56,2,31),(57,3,31),(58,1,32),(59,2,32),(60,1,33),(61,3,33),(62,2,34),(63,1,34),(64,1,35),(65,3,35),(66,1,36),(67,3,36),(68,1,37),(69,2,37),(70,1,38),(71,3,38),(72,1,39),(73,2,39),(74,2,40),(75,3,40),(76,1,41),(77,3,41),(78,2,42),(79,3,42),(80,1,43),(81,3,43),(82,1,44),(83,2,44),(84,1,45),(85,2,45),(86,1,46),(87,3,46),(88,1,47),(89,2,47),(90,1,48),(91,2,48),(92,1,49),(93,2,49),(94,1,50),(95,2,50),(96,1,51),(97,3,51),(98,1,52),(99,3,52),(100,1,53),(101,3,53),(102,1,54),(103,2,54),(104,1,55),(105,2,55),(106,1,56),(107,2,56),(108,1,57),(109,3,57),(110,3,58),(111,2,58),(112,1,59),(113,2,59),(114,1,60),(115,3,60),(116,1,61),(117,1,1),(118,2,61),(119,1,62),(120,3,62),(123,1,64),(124,3,64),(125,1,65),(126,3,65),(127,1,66),(128,3,66),(129,1,67),(130,2,67),(131,1,68),(132,2,68),(133,3,69),(134,2,69),(135,1,70),(136,2,70),(137,1,71),(138,3,71),(139,1,72),(140,2,72),(141,1,73),(142,3,73),(143,1,74),(144,3,74),(145,1,75),(146,3,75),(147,1,76),(148,2,76),(149,1,77),(150,2,77),(151,1,78),(152,3,78),(153,1,79),(154,2,79),(155,1,80),(156,2,80),(157,1,81),(158,2,81),(159,1,82),(160,2,82),(161,1,83),(162,2,1),(163,3,83),(164,1,84),(165,2,84),(166,2,85),(167,1,85),(168,1,86),(169,2,86),(170,1,87),(171,2,87),(172,1,88),(173,2,88),(174,1,89),(175,2,89),(176,1,90),(177,3,90),(178,1,91),(179,2,91),(180,1,92),(181,2,92),(182,1,93),(183,2,93),(184,1,94),(185,2,94),(186,1,95),(187,3,95),(188,1,96),(189,2,96),(190,1,97),(191,2,97),(192,1,98),(193,2,1),(194,1,99),(195,2,99),(196,1,100),(197,2,100),(198,1,101),(199,2,101),(200,1,102),(201,2,102),(202,1,103),(203,2,103),(204,1,104),(205,2,104),(206,1,105),(207,2,105),(208,1,106),(209,2,106),(210,1,107),(211,2,107),(214,1,108),(215,3,108),(216,3,4),(217,2,4),(218,1,4);
/*!40000 ALTER TABLE `talla_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tallas`
--

DROP TABLE IF EXISTS `tallas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tallas` (
  `id_talla` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(80) NOT NULL,
  PRIMARY KEY (`id_talla`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tallas`
--

LOCK TABLES `tallas` WRITE;
/*!40000 ALTER TABLE `tallas` DISABLE KEYS */;
INSERT INTO `tallas` VALUES (1,'S'),(2,'M'),(3,'L'),(4,'XL');
/*!40000 ALTER TABLE `tallas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-22  0:36:28
