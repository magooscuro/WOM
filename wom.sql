-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wom
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

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
-- Temporary table structure for view `albumcompleto`
--

DROP TABLE IF EXISTS `albumcompleto`;
/*!50001 DROP VIEW IF EXISTS `albumcompleto`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `albumcompleto` (
  `id` tinyint NOT NULL,
  `nombre` tinyint NOT NULL,
  `publicacion` tinyint NOT NULL,
  `precio` tinyint NOT NULL,
  `img` tinyint NOT NULL,
  `discografia` tinyint NOT NULL,
  `artista` tinyint NOT NULL,
  `genero` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publicacion` date NOT NULL,
  `precio` double(10,2) NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_discografia` int(10) unsigned NOT NULL,
  `id_artista` int(10) unsigned NOT NULL,
  `id_genero` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `albums_id_discografia_foreign` (`id_discografia`),
  KEY `albums_id_artista_foreign` (`id_artista`),
  KEY `albums_id_genero_foreign` (`id_genero`),
  CONSTRAINT `albums_id_artista_foreign` FOREIGN KEY (`id_artista`) REFERENCES `artistas` (`id`),
  CONSTRAINT `albums_id_discografia_foreign` FOREIGN KEY (`id_discografia`) REFERENCES `discografias` (`id`),
  CONSTRAINT `albums_id_genero_foreign` FOREIGN KEY (`id_genero`) REFERENCES `generos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'My Everything','2014-05-01',200.00,'v2CuooTfco9Wj31jXrBMstuKpNSgUu2NOJ0WEh1F.jpeg',3,4,1,'2018-05-20 09:27:07','2018-05-28 07:56:54'),(2,'Dangerous Woman','2014-05-01',100.00,'7X35kaQDkeGrZEcjvvL9l5wq3bR956wqGgUT54IM.jpeg',3,4,1,'2018-05-27 00:20:41','2018-05-28 07:55:04'),(3,'Rastam Vibration','1976-05-02',300.00,'ORDiUWuIASuSYuCqD8DJU3dEFOPR8p1to1hcwXMP.jpeg',2,3,4,'2018-05-28 07:58:58','2018-05-28 07:58:58'),(4,'Kaya','1978-05-05',254.00,'ZnMMO4TB0DAES1c0n7Ncvwwmhh2pow0IDqIJEYD0.jpeg',2,3,4,'2018-05-28 08:00:09','2018-05-28 08:00:09'),(5,'Sin Maletas','2017-05-05',150.00,'DTo7iAQRxg1LCUJAnRvNSLIboobYdS0tXqpTz2yh.jpeg',1,2,5,'2018-05-28 08:01:57','2018-05-28 08:01:57'),(6,'Estoy Vivo','1980-05-04',150.00,'blxeorByJj3rmENaLSKz3QGVKLp2MWIQ62MSKC3M.jpeg',1,1,1,'2018-05-28 08:04:57','2018-05-28 08:04:57'),(7,'Mexicano Hasta Las Pampas','2014-05-05',250.00,'2OiO9qxhE12Wjd7rwEgRG2YQlX37Y39HpoXjdWg2.jpeg',1,1,1,'2018-05-28 08:06:36','2018-05-28 08:06:36'),(8,'Tubular Bells','1973-07-05',500.00,'ModWQUhaCcfNPG8r6GNoNAHREbrv0WReOkrC8m3U.jpeg',3,5,3,'2018-05-28 08:10:01','2018-05-28 08:10:01'),(9,'Crises','1983-09-07',350.00,'846yuUNVlNhQlxcyCTCqqr5Ktd6uo1FmyMNG2Pcw.jpeg ',1,5,3,'2018-05-28 08:12:16','2018-05-28 08:12:16'),(11,'chid','2018-05-05',152.00,'8qsDQGpwOor6HGErxk4K2eE5h5IcE93L7FNJyRD7.png',2,2,3,'2018-05-28 15:07:33','2018-05-28 15:07:33');
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artistas`
--

DROP TABLE IF EXISTS `artistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artistas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inicio` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artistas`
--

LOCK TABLES `artistas` WRITE;
/*!40000 ALTER TABLE `artistas` DISABLE KEYS */;
INSERT INTO `artistas` VALUES (1,'Diego Verdaguer','Mexico','2018-05-15','2018-05-20 09:25:45','2018-05-28 07:10:40'),(2,'Charles Ans','Mexico','2008-05-01','2018-05-28 07:11:59','2018-05-28 07:11:59'),(3,'Bob Marley','Jamaica','1980-05-02','2018-05-28 07:12:23','2018-05-28 07:12:23'),(4,'Ariana Grande','Estados Unidos','2005-09-09','2018-05-28 07:12:48','2018-05-28 07:12:48'),(5,'Mike Oldfield','Estados Unidos','1985-05-05','2018-05-28 07:13:18','2018-05-28 07:13:18');
/*!40000 ALTER TABLE `artistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compras` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `total` double NOT NULL,
  `fecha` date NOT NULL,
  `id_tpago` int(10) unsigned NOT NULL,
  `id_usuario` int(10) unsigned NOT NULL,
  `id_cupon` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `compras_id_tpago_foreign` (`id_tpago`),
  KEY `compras_id_usuario_foreign` (`id_usuario`),
  KEY `compras_id_cupon_foreign` (`id_cupon`),
  CONSTRAINT `compras_id_cupon_foreign` FOREIGN KEY (`id_cupon`) REFERENCES `cupons` (`id`),
  CONSTRAINT `compras_id_tpago_foreign` FOREIGN KEY (`id_tpago`) REFERENCES `tipo_pagos` (`id`),
  CONSTRAINT `compras_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (1,1589,'2018-05-02',1,2,2,'2018-05-14 12:03:18','2018-05-14 12:31:55'),(2,1000,'2018-05-15',2,2,2,'2018-05-20 08:06:47','2018-05-20 08:06:56');
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cupons`
--

DROP TABLE IF EXISTS `cupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `porcentaje` int(11) NOT NULL,
  `vigencia` int(11) NOT NULL,
  `id_usuario` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cupons_id_usuario_foreign` (`id_usuario`),
  CONSTRAINT `cupons_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cupons`
--

LOCK TABLES `cupons` WRITE;
/*!40000 ALTER TABLE `cupons` DISABLE KEYS */;
INSERT INTO `cupons` VALUES (1,'T33',15,1,1,'2018-05-08 05:58:43','2018-05-08 05:58:43'),(2,'h5ggg',20,1,2,'2018-05-08 06:14:29','2018-05-08 06:20:35');
/*!40000 ALTER TABLE `cupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallecompra`
--

DROP TABLE IF EXISTS `detallecompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallecompra` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) NOT NULL,
  `id_album` int(10) unsigned NOT NULL,
  `id_compra` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `detallecompra_id_album_foreign` (`id_album`),
  KEY `detallecompra_id_compra_foreign` (`id_compra`),
  CONSTRAINT `detallecompra_id_album_foreign` FOREIGN KEY (`id_album`) REFERENCES `albums` (`id`),
  CONSTRAINT `detallecompra_id_compra_foreign` FOREIGN KEY (`id_compra`) REFERENCES `compras` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallecompra`
--

LOCK TABLES `detallecompra` WRITE;
/*!40000 ALTER TABLE `detallecompra` DISABLE KEYS */;
INSERT INTO `detallecompra` VALUES (1,6,1,1,'2018-05-20 09:27:27','2018-05-20 09:38:58');
/*!40000 ALTER TABLE `detallecompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discografias`
--

DROP TABLE IF EXISTS `discografias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discografias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fundacion` date NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discografias`
--

LOCK TABLES `discografias` WRITE;
/*!40000 ALTER TABLE `discografias` DISABLE KEYS */;
INSERT INTO `discografias` VALUES (1,'sony','2018-05-07','public/Discografias/3nwgazTl0ChbUD0oTAxEtqzzt6b5bduYNHzm0KmS.png','2018-05-20 09:26:26','2018-05-20 09:26:26'),(2,'Emi Music','2000-04-04','public/Discografias/DdhcsPrzsofYbjnRhe6UBcmxcsDrvMWWd8lZSYLZ.jpeg','2018-05-28 07:24:00','2018-05-28 07:24:00'),(3,'Warner Music','1999-05-05','public/Discografias/0N0jmskhLmcjnNM1dm0AKCMmqffdIT3SuqZ6AWux.png','2018-05-28 07:27:35','2018-05-28 07:27:35');
/*!40000 ALTER TABLE `discografias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `genero` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'Pop','2018-05-08 05:55:17','2018-05-08 05:55:17'),(2,'Rock','2018-05-28 07:07:58','2018-05-28 07:07:58'),(3,'Jazz','2018-05-28 07:08:20','2018-05-28 07:08:20'),(4,'Reggae','2018-05-28 07:08:32','2018-05-28 07:08:32'),(5,'Hip Hop','2018-05-28 07:08:53','2018-05-28 07:08:53');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `idUser`
--

DROP TABLE IF EXISTS `idUser`;
/*!50001 DROP VIEW IF EXISTS `idUser`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `idUser` (
  `created_at` tinyint NOT NULL,
  `user_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (33,'2014_10_12_000000_create_users_table',1),(34,'2014_10_12_100000_create_password_resets_table',1),(35,'2018_05_02_183223_create_roles_table',1),(36,'2018_05_02_183405_create_role_user_table',1),(37,'2018_05_03_022112_create_genero_table',1),(38,'2018_05_06_174452_create_artistas_table',1),(39,'2018_05_06_234725_create_tipo_pagos_table',1),(40,'2018_05_07_025302_create_discografias_table',1),(41,'2018_05_07_060738_create_albums_table',1),(42,'2018_05_07_182020_create_cupons_table',1),(43,'2018_05_08_031116_create_compras_table',2),(44,'2018_05_20_010452_create_detallecompra_table',3),(45,'2016_06_01_000001_create_oauth_auth_codes_table',4),(46,'2016_06_01_000002_create_oauth_access_tokens_table',4),(47,'2016_06_01_000003_create_oauth_refresh_tokens_table',4),(48,'2016_06_01_000004_create_oauth_clients_table',4),(49,'2016_06_01_000005_create_oauth_personal_access_clients_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('00056e4a1917c27dc8593c7ccdd6ec2c28ad6000f188864f09ddb557696f42853a90313fb5e01f4c',21,2,NULL,'[\"*\"]',0,'2018-05-29 10:15:18','2018-05-29 10:15:18','2018-06-13 05:15:18'),('009caff4a5c81f0942d48f9a7ac6f267eeb06d02167801bc21142ea9f59952f0e1c9b19faeffa2d6',21,2,NULL,'[\"*\"]',0,'2018-05-28 23:26:50','2018-05-28 23:26:50','2018-06-12 18:26:49'),('01411d645d6dd89fbe9af1e2ebc2dc3f6e2e1a511a82b602426d07b0baab2dab668f632ee5d1a18b',21,2,NULL,'[\"*\"]',0,'2018-05-27 03:20:24','2018-05-27 03:20:24','2018-06-10 22:20:23'),('033da12d497c9028305f48a245473b9182b787e502d6736d893bf361ece4410605d216216db7112f',21,2,NULL,'[\"*\"]',0,'2018-05-29 11:19:11','2018-05-29 11:19:11','2018-06-13 06:19:11'),('06254498418cfb1b0cc680885d8b75d1a1e93deac586dfe92c7404eed1e54c0ff10400d18227ebb5',29,2,NULL,'[\"*\"]',0,'2018-05-29 04:59:41','2018-05-29 04:59:41','2018-06-12 23:59:41'),('07b8c67f42a2b644a466c99fac1ec14a4616a6fc02b6e4d035ff7159b28f4acb423680b11f15e1d1',21,2,NULL,'[\"*\"]',0,'2018-05-28 14:09:57','2018-05-28 14:09:57','2018-06-12 09:09:57'),('0841660e536203f3df86282a45832b9d30e83e4abf400538d8d6c8c86882e7773bfc95324812a40d',21,2,NULL,'[\"*\"]',0,'2018-05-28 23:28:04','2018-05-28 23:28:04','2018-06-12 18:28:04'),('0c8f6b537d71888dd61b0c892186998a3be62d2da07d49fe1c003756c28b31260155a5f8d46311c9',21,2,NULL,'[\"*\"]',0,'2018-05-29 05:11:05','2018-05-29 05:11:05','2018-06-13 00:11:05'),('0f4b5cfa89d5c4e7aaae83110e2aafe7aff67a0d700aacbafefefff6e3364cb6b3f5dc313c4591dc',21,2,NULL,'[\"*\"]',0,'2018-05-28 14:28:13','2018-05-28 14:28:13','2018-06-12 09:28:13'),('11b08994b00aa6dd1aa8d1b1db611f02ba74414bda6fd6fa466f305df2b2d6974f81eb12c12661d4',21,2,NULL,'[\"*\"]',0,'2018-05-26 23:39:50','2018-05-26 23:39:50','2018-06-10 18:39:48'),('12a6b5e01e96cda8b8fb224a0b02c5492441eaf5aeccc85b52049634cec17b8c3db163ec38dbc301',21,2,NULL,'[\"*\"]',0,'2018-05-29 11:22:59','2018-05-29 11:22:59','2018-06-13 06:22:58'),('15858f1f64e4c34907365e12c1de5bf58689be1f29571fe0c60e4d2dd0d7a0c26cd5c7dc581e7c5e',29,2,NULL,'[\"*\"]',0,'2018-05-29 11:47:03','2018-05-29 11:47:03','2018-06-13 06:47:03'),('15cf10062d2e7e952b2203c4ef87ecbd0589d8354f3881f959beaa4807d7c5b268b9b8701b4eb2df',21,2,NULL,'[\"*\"]',0,'2018-05-29 11:34:02','2018-05-29 11:34:02','2018-06-13 06:34:02'),('17b3398a5f785a1f6088e2d8f42566dae46db9f23bb3a3e210c9a2cd2a2ab4810a9801f620117b70',21,2,NULL,'[\"*\"]',0,'2018-05-28 13:20:33','2018-05-28 13:20:33','2018-06-12 08:20:33'),('19a768036d80bcaa98e12dcddb9fbe5bb39f150773bcdf7e21d7c2e9d6508cddec9839a4cc02ef32',21,2,NULL,'[\"*\"]',0,'2018-05-29 11:22:54','2018-05-29 11:22:54','2018-06-13 06:22:54'),('1b3dc109f7dfbbe633d263293f6431866afc304f3ef18b65adcabc46c0e4999242dce4b9c264faf5',21,2,NULL,'[\"*\"]',0,'2018-05-29 08:02:54','2018-05-29 08:02:54','2018-06-13 03:02:54'),('1d2189ea50650e38ab57a576b567ffe876b19ff6b8531bd8e5caa5592875050521521626ba8b5d25',29,2,NULL,'[\"*\"]',0,'2018-05-29 11:38:58','2018-05-29 11:38:58','2018-06-13 06:38:58'),('1d5aaf3b7ac79754e9a5988df87a9f2bf01682277c15dfdf220e77b687222987ecf61cd39ce6b20c',21,2,NULL,'[\"*\"]',0,'2018-05-29 10:12:46','2018-05-29 10:12:46','2018-06-13 05:12:46'),('1db0ffeeb6202f4ccba2b0803c23d691c2189e7fa2c0f25cbc4c7f658646e7138922b028d85f74b9',21,2,NULL,'[\"*\"]',0,'2018-05-25 22:14:23','2018-05-25 22:14:23','2018-06-09 17:14:22'),('1e472e9d507734c227647608d69bb88a5263b0e765c65e2c9613880402e8b072c3991e62de5ad823',21,2,NULL,'[\"*\"]',0,'2018-05-28 13:28:20','2018-05-28 13:28:20','2018-06-12 08:28:20'),('1f91f8c784cddd2b7a67a81923b3ac68f9d2de59df7e9bd4af9ee21398defc4c67359bb273069f0d',21,2,NULL,'[\"*\"]',0,'2018-05-29 00:11:11','2018-05-29 00:11:11','2018-06-12 19:11:11'),('21f7117a83260645dfd004ce41a856bfce87d5eeeb9ec3149eecf457829040ba3fba60f86ecc56c5',29,2,NULL,'[\"*\"]',0,'2018-05-29 05:12:38','2018-05-29 05:12:38','2018-06-13 00:12:38'),('2d0d736e4994c5ff2d1bf1cb2adcdbaa8cf8a35c3c1a3fb055d76f75c83b7edd42330e4bce4efcd3',21,2,NULL,'[\"*\"]',0,'2018-05-28 13:57:25','2018-05-28 13:57:25','2018-06-12 08:57:24'),('30fe6b6bd2c74223679fa66f04f1466c2ced315c35118c5680f3778c3336e2c79a684e973fe7d290',21,2,NULL,'[\"*\"]',0,'2018-05-29 00:11:28','2018-05-29 00:11:28','2018-06-12 19:11:28'),('33475c8b093e74c582181906cd3bd8a3ba57d87b26cc45c9158c0fef52d8676389e3f8593af6fc96',21,2,NULL,'[\"*\"]',0,'2018-05-28 23:41:14','2018-05-28 23:41:14','2018-06-12 18:41:14'),('33617b0894e1987e569caa4bf317818339b437863fb444181f0abd710b7a4ac8e7570c632e80d504',21,2,NULL,'[\"*\"]',0,'2018-05-29 08:05:29','2018-05-29 08:05:29','2018-06-13 03:05:29'),('37e9f5df6fe6881b7eb02b9d1d6c64fa56333b7e94d7544fa8b14f2cf14132458396fcc020dcef20',21,2,NULL,'[\"*\"]',0,'2018-05-29 11:30:07','2018-05-29 11:30:07','2018-06-13 06:30:07'),('3b69d725d94d507aa5e61ab0dbdd0e2602e60e21a8f4e1e4729df20da81141c42a8f390c12869d18',21,2,NULL,'[\"*\"]',0,'2018-05-26 23:46:19','2018-05-26 23:46:19','2018-06-10 18:46:19'),('3d50de3e5e639a2bdbd20291b76f660433930eedcce2c490ee1e4b470825b19f9e662416620f4938',22,2,NULL,'[\"*\"]',0,'2018-05-26 11:12:50','2018-05-26 11:12:50','2018-06-10 06:12:49'),('3e4e4549891187e54d85b024a1a043ffa4753c99bf9977cb55281b2e75a1903478986916cc4bdc07',21,2,NULL,'[\"*\"]',0,'2018-05-28 13:25:03','2018-05-28 13:25:03','2018-06-12 08:25:03'),('40015e047949cbbca4eb67e6f1ebb60ba5b6ea03bc2ef0e08e0ab1bac4f767754748de17e298e550',21,2,NULL,'[\"*\"]',0,'2018-05-28 13:11:24','2018-05-28 13:11:24','2018-06-12 08:11:23'),('42a1848cb84a8106dd4ac58effb02c05fde005dd7170658624de1e8dc825ad09ae1314ef7975351c',21,2,NULL,'[\"*\"]',0,'2018-05-29 11:22:54','2018-05-29 11:22:54','2018-06-13 06:22:54'),('43069dece563f94b339e5bcc6ba15e83b8227565dbe22b2e78453c2f6ea4cad7b20f9f5d03bbcc16',21,2,NULL,'[\"*\"]',0,'2018-05-26 22:58:51','2018-05-26 22:58:51','2018-06-10 17:58:51'),('46c3d91c6014703fc01cb7d439c744551c9165e811619cae29e74b82fe7a4aae2e3805942c4c8281',21,2,NULL,'[\"*\"]',0,'2018-05-29 10:25:05','2018-05-29 10:25:05','2018-06-13 05:25:05'),('472cf2118491b4a08eb61358309a26f8876506f4b4c475490a67b7e90c3756f7adf7d3bc29826793',20,2,NULL,'[\"*\"]',0,'2018-05-23 10:35:16','2018-05-23 10:35:16','2018-06-07 05:35:16'),('492e126e93c5717492f184c741c80cc732e911f69e490c1de06078fd25352edc830241858564509e',21,2,NULL,'[\"*\"]',0,'2018-05-29 10:18:18','2018-05-29 10:18:18','2018-06-13 05:18:17'),('4be0b2b7e2ad5bb3b2024e0b2264c07cb803f64edda221629f885c1b9ce6b730e9bdfe11c4f812d1',21,2,NULL,'[\"*\"]',0,'2018-05-29 11:44:09','2018-05-29 11:44:09','2018-06-13 06:44:09'),('4ca96af01da7ff6cf4aef3d78926157f9a5bd946a8e75747a0e3b55ccaef2cac8ea2a1dd08ed2487',21,2,NULL,'[\"*\"]',0,'2018-05-29 09:25:23','2018-05-29 09:25:23','2018-06-13 04:25:23'),('4e9eab6dc609dbf02b1cf51ce581061959ddfe65e2cadcf4ce767907c63c5e1f0f4ffdf33c83ad04',21,2,NULL,'[\"*\"]',0,'2018-05-29 08:00:32','2018-05-29 08:00:32','2018-06-13 03:00:32'),('4fe1c60d90bd0c26636f9499fae1796cfeda292dc6b85ebcafa4c0fd2554c5ab6f911ab78874fb30',21,2,NULL,'[\"*\"]',0,'2018-05-28 15:27:56','2018-05-28 15:27:56','2018-06-12 10:27:56'),('53d653455f4f74577f56d21c0d636d533749acc2fb53f3c4f95a0a092ded54614f1d786dbe1c286c',21,2,NULL,'[\"*\"]',0,'2018-05-28 23:36:29','2018-05-28 23:36:29','2018-06-12 18:36:29'),('54cf300d070eb8582446f583a5266e03276f9e9ad43258b9f869d658504e564798b007c329909ee2',21,2,NULL,'[\"*\"]',0,'2018-05-29 10:50:43','2018-05-29 10:50:43','2018-06-13 05:50:43'),('58601d752103d5381b346183594618cbf1e02f6593af001e8ba749bc740389d109b8301a41ebf3c3',21,2,NULL,'[\"*\"]',0,'2018-05-29 05:11:57','2018-05-29 05:11:57','2018-06-13 00:11:57'),('5a24d636c342905171c569b3b3abef2ad4a2b35722368f011cd129651bb2b329ad2d72705b90a097',21,2,NULL,'[\"*\"]',0,'2018-05-29 10:51:29','2018-05-29 10:51:29','2018-06-13 05:51:29'),('5e5b6b4bf7729854678d7bf0246bb539578b24d24ad4cb691cf98c90a7782c69e42d8af01e49bcf3',29,2,NULL,'[\"*\"]',0,'2018-05-29 05:00:19','2018-05-29 05:00:19','2018-06-13 00:00:19'),('5ec3779f5afcbc5198df41393ad274b3843bc680faa3f8e3e7dc8b6165a2491fe3dbd2a28dd34702',21,2,NULL,'[\"*\"]',0,'2018-05-28 14:07:26','2018-05-28 14:07:26','2018-06-12 09:07:23'),('601b231456800351237565a08e88c46b5d245884a27f61cadb1695d5d33f36423bf3fe7abcdad7cd',21,2,NULL,'[\"*\"]',0,'2018-05-29 09:24:18','2018-05-29 09:24:18','2018-06-13 04:24:18'),('60b90a94481d52a03aa14e68483c38ebb4c2071d4525adff474784b21748bb22910005dbd090e40a',21,2,NULL,'[\"*\"]',0,'2018-05-29 11:03:21','2018-05-29 11:03:21','2018-06-13 06:03:21'),('63b215158b0744673109fa9b0d09e5424d5f56e97591fbf90141ae5ede749c3cc5b77c99e139c0e8',21,2,NULL,'[\"*\"]',0,'2018-05-28 14:03:04','2018-05-28 14:03:04','2018-06-12 09:03:04'),('66f4e275d1a383ef703521776d23f82f3b337cff891fa9dcf843573597f0cbeb1a3accb5523df6a8',21,2,NULL,'[\"*\"]',0,'2018-05-29 10:09:31','2018-05-29 10:09:31','2018-06-13 05:09:31'),('688f36f7c37ea09bd7d97ca6d1981f826254c5e93de26f5295f6df82d66c117e22b576aaae509320',21,2,NULL,'[\"*\"]',0,'2018-05-29 10:39:56','2018-05-29 10:39:56','2018-06-13 05:39:56'),('75763c2203ff036d14a5758e3c806bdfb11b1d6c8a200d5b86c8909bff2063a5d5d92a64238a3617',22,2,NULL,'[\"*\"]',1,'2018-05-26 11:57:38','2018-05-26 11:57:38','2018-06-10 06:57:38'),('757f2c489759c9bef8b44722b3b716bff2db373e471a5c257703dbdb8177f2d167bad6ac595c0f3f',21,2,NULL,'[\"*\"]',0,'2018-05-29 11:22:50','2018-05-29 11:22:50','2018-06-13 06:22:50'),('7ab5c356a07ed3edd687a2383b5b4a86e529b335abe70903115c72468ea38b57e8a8702c5ba5c5ca',21,2,NULL,'[\"*\"]',0,'2018-05-29 05:22:57','2018-05-29 05:22:57','2018-06-13 00:22:57'),('7ae74f04884886253f3753033e555d0a7070f8897fcac594afaf559aa5589bb8bbabc60ada06e485',21,2,NULL,'[\"*\"]',0,'2018-05-26 22:58:50','2018-05-26 22:58:50','2018-06-10 17:58:49'),('7b149e5de565de42a11d50cafa07c61913d64fea5337161354953a62aef41321a9d3139b62965d69',21,2,NULL,'[\"*\"]',0,'2018-05-29 11:23:17','2018-05-29 11:23:17','2018-06-13 06:23:17'),('8515612fc806e5a8d3108e3aef7c8a3eff3b0f606d852c2c6efa0c634168709ceff1750a7a19539a',21,2,NULL,'[\"*\"]',0,'2018-05-28 14:29:04','2018-05-28 14:29:04','2018-06-12 09:29:04'),('856e0a8fafcc053892cc166c42d6ff5a4032bb1a2f22f74090bc16762ec608a75b9ae72edd4a4b0c',21,2,NULL,'[\"*\"]',0,'2018-05-29 10:37:10','2018-05-29 10:37:10','2018-06-13 05:37:10'),('85ad1f1cbd207578e3f20731b8c7bfb353980fc8bedd593fef52ed4e43f2081baf67b0acca0a6523',21,2,NULL,'[\"*\"]',0,'2018-05-29 11:22:56','2018-05-29 11:22:56','2018-06-13 06:22:56'),('88153f9a118b3bcecf52d910533b55aa030e1cab25d45c09abb68fddf0f4186f9982bb260e2cbc49',21,2,NULL,'[\"*\"]',0,'2018-05-29 11:22:51','2018-05-29 11:22:51','2018-06-13 06:22:51'),('888cd0cd658ed1096ddd8b94d87e6ac2c472a723d84e34bdf704ca9f14abf4cce80fa154825ca47d',21,2,NULL,'[\"*\"]',0,'2018-05-29 10:01:47','2018-05-29 10:01:47','2018-06-13 05:01:47'),('8a88937570963bd37a1d5e32cd52a3276643c4dee61881110abce96ae889365825bd5f6a5491a332',21,2,NULL,'[\"*\"]',0,'2018-05-29 11:22:56','2018-05-29 11:22:56','2018-06-13 06:22:56'),('8aa37e78b9235d0b52e0426e4a13a2aac69a060b1aad852a0f239c66e6be356612e86eb5b25fbcf5',29,2,NULL,'[\"*\"]',0,'2018-05-29 05:00:19','2018-05-29 05:00:19','2018-06-13 00:00:19'),('9000d6ce5486cc0a1651fc8ac715627c063f3f643472abbe113806d11bb401122efac32df3edf4d8',21,2,NULL,'[\"*\"]',0,'2018-05-28 13:33:21','2018-05-28 13:33:21','2018-06-12 08:33:21'),('9a6aaacc991d08bc48d63714bbe0cb571939fe06dae8fb9605d93fb9165bdca68ebe95eb62b24822',21,2,NULL,'[\"*\"]',0,'2018-05-29 11:22:57','2018-05-29 11:22:57','2018-06-13 06:22:57'),('9d23b392a45f62c10d453654e798a6240ce38248e7f91e9be54b3521ae067e8619ad63765c0757ad',21,2,NULL,'[\"*\"]',0,'2018-05-29 10:56:01','2018-05-29 10:56:01','2018-06-13 05:56:00'),('9f4a60a7698ebfaeb0e66689bcef71b09d8b1db05ce0a47b10e09e54023f1c2d50e59ba272d276b2',21,2,NULL,'[\"*\"]',0,'2018-05-29 10:11:43','2018-05-29 10:11:43','2018-06-13 05:11:43'),('a1355c15c304840984c86d7a4f6e797fc4b9cbeaa6e7f0f15d8f51fa6bd98ca17a9d648bd4aa2ba2',21,2,NULL,'[\"*\"]',0,'2018-05-29 10:25:57','2018-05-29 10:25:57','2018-06-13 05:25:57'),('a1daeee68072bddf6d7aa088437a68660c13c6186ecd2cb4d3cacceb4eb119dd07a37230ee07cc0b',21,2,NULL,'[\"*\"]',0,'2018-05-29 10:05:58','2018-05-29 10:05:58','2018-06-13 05:05:58'),('a5e5636f09afed5eac98617b17e009539629f93f0e7f0e76bcc08642e7731c6fe184952c6e0b2ec2',21,2,NULL,'[\"*\"]',0,'2018-05-29 00:11:11','2018-05-29 00:11:11','2018-06-12 19:11:11'),('a986e1ce17d5ad238f63f2980be2d4598a7df89aa3b7f46d0036f9b5d715897ff6760412f278241e',21,2,NULL,'[\"*\"]',0,'2018-05-29 11:05:30','2018-05-29 11:05:30','2018-06-13 06:05:30'),('aac6a34504b3865d7ca99234ff1e0f6b9dc2e8062f9e5782295636385dcd013fbaa4801a8b451d30',21,2,NULL,'[\"*\"]',0,'2018-05-29 08:47:48','2018-05-29 08:47:48','2018-06-13 03:47:47'),('ab415a92043672fd7d34c219ee5cecae76b56a4e25fb77f308ce83e9a06587fc907d1df8b7e7abdb',21,2,NULL,'[\"*\"]',0,'2018-05-29 11:12:18','2018-05-29 11:12:18','2018-06-13 06:12:18'),('ac0ccf4c5b44d19c5255f5b4faffa8aac79cad8d3fa5fe5a8bd7231b3f433acc7158c77fab26c92a',21,2,NULL,'[\"*\"]',0,'2018-05-29 11:22:52','2018-05-29 11:22:52','2018-06-13 06:22:52'),('af0f22a2ab6ca7e82eff173df4313aded4b9e0470d6f9c10056423fa486f7ec864833f560fdce0c7',21,2,NULL,'[\"*\"]',0,'2018-05-29 11:37:29','2018-05-29 11:37:29','2018-06-13 06:37:29'),('b02d0c8633023cfa85c1a5969cf97e1896c49b719e32a876a267c64ce04152ba0d3300bf7aa5088b',21,2,NULL,'[\"*\"]',0,'2018-05-28 23:43:36','2018-05-28 23:43:36','2018-06-12 18:43:36'),('b0648b2513684394ecf2ac577ff8c0282abea3651be8d80c1d4be7c5296c9c3fdd603fa5c6831ea3',21,2,NULL,'[\"*\"]',0,'2018-05-29 10:48:48','2018-05-29 10:48:48','2018-06-13 05:48:48'),('b20df474ac4845fe4676918a48dd005c0bdd19e0461c8a835571d5846031c2a897088c98b3272227',21,2,NULL,'[\"*\"]',0,'2018-05-28 14:41:37','2018-05-28 14:41:37','2018-06-12 09:41:37'),('b35dfbc125c7e639b832ac155e5ddbf474ba35daa1208739b4d45510a6b864ba1fb7634da5603061',21,2,NULL,'[\"*\"]',0,'2018-05-29 08:52:08','2018-05-29 08:52:08','2018-06-13 03:52:08'),('b41e06995f48f49c52bccd387e117539fb066f30357345bc18956935db88c8549049f814a5588870',21,2,NULL,'[\"*\"]',0,'2018-05-29 11:22:48','2018-05-29 11:22:48','2018-06-13 06:22:47'),('b4eb0abdbcf426a67ed6f3d016af09eb44d25ddf58578b85f3a282caf4901774b596cc87056879ce',21,2,NULL,'[\"*\"]',0,'2018-05-29 11:22:53','2018-05-29 11:22:53','2018-06-13 06:22:53'),('b566a730d9ccbe5023d498ad9bbc73dcc8d2d62f37173e9f7b14d0e28db869f3f28057f6d20fe30b',21,2,NULL,'[\"*\"]',0,'2018-05-26 10:09:00','2018-05-26 10:09:00','2018-06-10 05:09:00'),('b5f40074befe2648ebe6a4237e168d12e46a5fd59746b1a70603c14277a4f5a388ebdf53cdcd76b3',20,2,NULL,'[\"*\"]',1,'2018-05-23 11:20:48','2018-05-23 11:20:48','2018-06-07 06:20:48'),('ba78ef6718074f1e03d773f84146a1d5ee6f7d793437bf5a28a467798f54bc0d51c2149ee3c48f7a',21,2,NULL,'[\"*\"]',0,'2018-05-29 09:18:54','2018-05-29 09:18:54','2018-06-13 04:18:54'),('bd417646ad4087d645134bfdf21e5ebd55c11341de90aefb3752bee839d8163509a68336b2902f2b',29,2,NULL,'[\"*\"]',0,'2018-05-29 04:59:09','2018-05-29 04:59:09','2018-06-12 23:59:09'),('bee146ce157ee34631822d4e43a8e305e916ea7a1e76f703ef10b6685c205e1b7460fc49da4282ea',21,2,NULL,'[\"*\"]',0,'2018-05-29 11:33:46','2018-05-29 11:33:46','2018-06-13 06:33:46'),('c43cebc101e742f824c69450f43741147e10d0aaddbb1405f50423629ba9fec1384c04942e9ad80e',20,2,NULL,'[\"*\"]',1,'2018-05-23 10:39:51','2018-05-23 10:39:51','2018-06-07 05:39:51'),('c9a10e63ef590b3da6086cfd39225554b50f896791e51cc500b9b7a7dba122d0cdd37063c363535c',21,2,NULL,'[\"*\"]',0,'2018-05-28 14:07:28','2018-05-28 14:07:28','2018-06-12 09:07:28'),('cb94248986dd9abb051f7fafcd1977bcf997856434377e3baead64dc78239e34dd5e42825d951508',1,2,NULL,'[\"*\"]',0,'2018-05-29 11:40:51','2018-05-29 11:40:51','2018-06-13 06:40:51'),('cd20defb0acc8f1c7650ede35446ea2bbd70d3f63e54a698d8b5ee91731ee24b9a5e06ce66c7b80d',21,2,NULL,'[\"*\"]',0,'2018-05-29 10:59:27','2018-05-29 10:59:27','2018-06-13 05:59:27'),('cd63400d4b3eba348071dd4124fd3cc30e46a69086810e3a162ff5943575228af1f5d2ff4f29f06a',21,2,NULL,'[\"*\"]',0,'2018-05-29 07:57:06','2018-05-29 07:57:06','2018-06-13 02:57:04'),('ce8c69142f9619c6fd9a448a7b3ec99fd8ae0f78a1b7558bb06beadd6b7c3a22080da8cf2d09ffea',21,2,NULL,'[\"*\"]',0,'2018-05-28 14:08:50','2018-05-28 14:08:50','2018-06-12 09:08:50'),('d64119ea464585060a487a6261fc82a2ec716eb7bc445ad2dcf6ea24f438d43281827dbb3fca9f79',21,2,NULL,'[\"*\"]',0,'2018-05-29 10:22:12','2018-05-29 10:22:12','2018-06-13 05:22:12'),('d66fa7d7cf4368a0e1bcce2d5d9d3abb965f57d9405de6dd92725e7d933cba8b4c30a8c76506e74e',21,2,NULL,'[\"*\"]',0,'2018-05-29 10:30:30','2018-05-29 10:30:30','2018-06-13 05:30:30'),('d847a67900dc7857172923963e5d996ca8000f8362f5804475b853695ffd9d019068a4bb8c1cc681',21,2,NULL,'[\"*\"]',0,'2018-05-28 14:25:59','2018-05-28 14:25:59','2018-06-12 09:25:58'),('dcd3fce85c40939f496a6fa261cd1e31ae525267c9dbceba8363c31f6fc94d9cea5b18a3b0158dc8',21,2,NULL,'[\"*\"]',0,'2018-05-29 09:13:32','2018-05-29 09:13:32','2018-06-13 04:13:32'),('e01a1acc57b8f69d77f4bd7de3522fbe3b9daa0cb622ec5e421018aa5057419bda866fc6c0217226',21,2,NULL,'[\"*\"]',0,'2018-05-28 14:39:49','2018-05-28 14:39:49','2018-06-12 09:39:47'),('e092cdaaba12ab8eb877232c472cd938d96adbca6600c75a1d7cb614cd7cd42192f0838d96c27895',21,2,NULL,'[\"*\"]',0,'2018-05-29 09:15:14','2018-05-29 09:15:14','2018-06-13 04:15:13'),('e4879f99ffced32f2723c3c61491998001921cb75186b6c787113a146b72ca50c11d453fa7b364dd',21,2,NULL,'[\"*\"]',0,'2018-05-29 10:46:18','2018-05-29 10:46:18','2018-06-13 05:46:18'),('e66da14861bc570cdf345306f8775f3785e78f9e0d33f99661e248ca4ba16102868366dbd8372090',21,2,NULL,'[\"*\"]',0,'2018-05-29 10:23:17','2018-05-29 10:23:17','2018-06-13 05:23:17'),('e881db84e947494c210a126b711d5e102f05ef8eec9b09cbc021008191cd4e6281ae63b344fb4aff',21,2,NULL,'[\"*\"]',0,'2018-05-29 11:22:51','2018-05-29 11:22:51','2018-06-13 06:22:51'),('e9595cd8525929377ef28f4f6c485c7bb67d9f83bc5115446108330390b1b74508e9cfc9a42f362b',20,2,NULL,'[\"*\"]',1,'2018-05-23 11:22:57','2018-05-23 11:22:57','2018-06-07 06:22:57'),('eb0fe59558b08932b554bd5059264c8823d6eab11a12a3d3446166245eba355a2839c741f84baae6',22,2,NULL,'[\"*\"]',0,'2018-05-28 03:09:52','2018-05-28 03:09:52','2018-06-11 22:09:52'),('ecfe5cedf72d44590ed66b8bafac6b80555b0792702ae19a87b2b2bc3f7b3ee73c77f2b125dcf2b3',21,2,NULL,'[\"*\"]',0,'2018-05-29 09:54:04','2018-05-29 09:54:04','2018-06-13 04:54:03'),('edd3a49f7df6ac9978fd0a843d24a0fef6936e2931bb5257cf379e1f1dea2f3b7678407ceca3d57e',21,2,NULL,'[\"*\"]',0,'2018-05-29 04:56:14','2018-05-29 04:56:14','2018-06-12 23:56:14'),('ef39fd8f6896920eecdeae5554552074ddf9a489525d89ed9ebfe5099e2ba0030a8f7771c1aa7a58',21,2,NULL,'[\"*\"]',0,'2018-05-28 15:24:29','2018-05-28 15:24:29','2018-06-12 10:24:29'),('f203bb9589ca64f218267724ac40822eb7885e7c2824c2bdf43f428e99b24b25fba2692179fe8684',21,2,NULL,'[\"*\"]',0,'2018-05-29 11:22:55','2018-05-29 11:22:55','2018-06-13 06:22:55'),('f398c2431d7259b75ba2863a67abed1788fbad8f5d2014ecb0d653840a92f1e31254722d94d969dc',21,2,NULL,'[\"*\"]',0,'2018-05-29 10:52:46','2018-05-29 10:52:46','2018-06-13 05:52:46'),('f4d4b0ba8ce5f06c00be94c49112f8e008f112e575ba22e1cdb887830d966e8bbc873c388cfc6646',21,2,NULL,'[\"*\"]',0,'2018-05-26 23:48:37','2018-05-26 23:48:37','2018-06-10 18:48:37'),('f9976594548c3ef2dd52d0d48fbe2ecc8c25b95bf5d4a465327e3a5991258f366eb8b78b19caba08',21,2,NULL,'[\"*\"]',0,'2018-05-28 15:10:07','2018-05-28 15:10:07','2018-06-12 10:10:07'),('face76f2b60feac6d8f6dce4293ed6e7236f635964e80ea32c752cdd41c12fac1ff66c1f9df2f1a5',21,2,NULL,'[\"*\"]',0,'2018-05-29 07:58:58','2018-05-29 07:58:58','2018-06-13 02:58:58');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','kSrD2aUcCRpK3Nos7mOIpPVo9QRO43aSAPKQ23RM','http://localhost',1,0,0,'2018-05-22 08:49:59','2018-05-22 08:49:59'),(2,NULL,'Laravel Password Grant Client','xxAFDjw8ACE9katErzg3OXVFvvHEzAkd4C7JAIZp','http://localhost',0,1,0,'2018-05-22 08:49:59','2018-05-22 08:49:59'),(3,NULL,'Laravel Password Grant Client','hsWwuzlxqW3Ej9CtjlF2gJtkGakWvu0gndTVsUq0','http://localhost',0,1,0,'2018-05-22 09:26:26','2018-05-22 09:26:26');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2018-05-22 08:49:59','2018-05-22 08:49:59');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` VALUES ('018c2a96fb793d0eba3657d12f8deab7fef7b024a1b830a4f180a3c31ace5ccaf720e76414209de1','88153f9a118b3bcecf52d910533b55aa030e1cab25d45c09abb68fddf0f4186f9982bb260e2cbc49',0,'2018-06-28 06:22:51'),('0484f0e94273871efe30be4a602977efd86cadd5fe2b2b276b2067e426c8ee322a908fedc12c3cda','cb94248986dd9abb051f7fafcd1977bcf997856434377e3baead64dc78239e34dd5e42825d951508',0,'2018-06-28 06:40:51'),('052bc994efeb37afbf4cd78e3e0c16d9d3aeaf26c5da3119bae4be519b6dfafc6cd691b320fa8782','edd3a49f7df6ac9978fd0a843d24a0fef6936e2931bb5257cf379e1f1dea2f3b7678407ceca3d57e',0,'2018-06-27 23:56:14'),('072b11e69f614196875258b17cf6796be03bd2ae96cd041ea055835615f9dc5c3b8969a254029dcf','5a24d636c342905171c569b3b3abef2ad4a2b35722368f011cd129651bb2b329ad2d72705b90a097',0,'2018-06-28 05:51:29'),('095a63f6a42a1a39ad489692f8b417ddfe6b4ee88eccdcd583c9669e34a2de577d6af96e68820339','1db0ffeeb6202f4ccba2b0803c23d691c2189e7fa2c0f25cbc4c7f658646e7138922b028d85f74b9',0,'2018-06-24 17:14:22'),('0e9d50c1f0aaff512bd594bde27f913c4f8c19b6501f22c4ef467c0240c2ccb11c51fa1d4571b0c0','46c3d91c6014703fc01cb7d439c744551c9165e811619cae29e74b82fe7a4aae2e3805942c4c8281',0,'2018-06-28 05:25:05'),('129662ad0bd1b84dca0febecfa090e58affe9e91a858af01f2af917fc77e670c8d54b7a78f8c4f9c','42a1848cb84a8106dd4ac58effb02c05fde005dd7170658624de1e8dc825ad09ae1314ef7975351c',0,'2018-06-28 06:22:54'),('1382fe6a33d77125bb1edb0e0d491d4a9f1d22c2b96be1030a391f0c50d48f97302b8664b70c54c8','f203bb9589ca64f218267724ac40822eb7885e7c2824c2bdf43f428e99b24b25fba2692179fe8684',0,'2018-06-28 06:22:55'),('1702fb5ffc00f3e16b937d2fdf9cb1336c895ddfc4fdc4ea21fbecb8a3fbdcac3d736ee88276f917','12a6b5e01e96cda8b8fb224a0b02c5492441eaf5aeccc85b52049634cec17b8c3db163ec38dbc301',0,'2018-06-28 06:22:59'),('1796e2ce9a84b9aaefbcf7f1007baee718aa94763ac32781d56197a7ee0c251f89ea2cd690bbfdbb','8aa37e78b9235d0b52e0426e4a13a2aac69a060b1aad852a0f239c66e6be356612e86eb5b25fbcf5',0,'2018-06-28 00:00:19'),('17ca0fff8f2a8baa3e1797256a369d5b26e0225d0dc30bcc8bd7cbfe21ccbfcfa24b7487c55742fc','3e4e4549891187e54d85b024a1a043ffa4753c99bf9977cb55281b2e75a1903478986916cc4bdc07',0,'2018-06-27 08:25:03'),('18a82d63b7297390cf8a7b1af03e603711d1b76c1795a08de7363b47408f5f5744134edb01a230a2','53d653455f4f74577f56d21c0d636d533749acc2fb53f3c4f95a0a092ded54614f1d786dbe1c286c',0,'2018-06-27 18:36:29'),('190c3736394c3a4ab3865b9b6f65ac6b2e87f82847690cfc64d0479637d7296b807629eb69889ae5','0841660e536203f3df86282a45832b9d30e83e4abf400538d8d6c8c86882e7773bfc95324812a40d',0,'2018-06-27 18:28:04'),('1d7bc55ac6deba0485ee65dcb9589395bf488732c0ad3b615f567b289d686019504b3c5cd64e7109','e9595cd8525929377ef28f4f6c485c7bb67d9f83bc5115446108330390b1b74508e9cfc9a42f362b',1,'2018-06-22 06:22:57'),('23bd6f26e384350679e509fb65c64321004534d3a8d94403356ea4d9e306c9927fa3c2204cde5197','8515612fc806e5a8d3108e3aef7c8a3eff3b0f606d852c2c6efa0c634168709ceff1750a7a19539a',0,'2018-06-27 09:29:04'),('2beb8186781d74d7140ea6549b6a657c6753aea0d9b8e03f004d064f04bbfd19a68d0fbc1787ca4a','e092cdaaba12ab8eb877232c472cd938d96adbca6600c75a1d7cb614cd7cd42192f0838d96c27895',0,'2018-06-28 04:15:14'),('2d498ba26780b8d3b599a73093cdeeb2c1b7d7c5e933da26c6c92e669b1bb721491b1ef0b7b574e4','a1355c15c304840984c86d7a4f6e797fc4b9cbeaa6e7f0f15d8f51fa6bd98ca17a9d648bd4aa2ba2',0,'2018-06-28 05:25:57'),('2f9e573f2457f926d08d625a391770fd0673b827ae74dc89208515975cafbe3c27e7063262d8925c','688f36f7c37ea09bd7d97ca6d1981f826254c5e93de26f5295f6df82d66c117e22b576aaae509320',0,'2018-06-28 05:39:56'),('358995115fc1d58b086e149e131f10f9eef9211d4eab2ee768f05c2e41d3e7de0e46e3fb51c9e46e','af0f22a2ab6ca7e82eff173df4313aded4b9e0470d6f9c10056423fa486f7ec864833f560fdce0c7',0,'2018-06-28 06:37:29'),('35f6042b58bffe4d8c4bc78c7388a6b1bac2631d834d618eb61a98bc8a8a883dc6947a9af711fa4b','ce8c69142f9619c6fd9a448a7b3ec99fd8ae0f78a1b7558bb06beadd6b7c3a22080da8cf2d09ffea',0,'2018-06-27 09:08:50'),('36f90a57bea721fdc64eb27d47fc3cf20fd2308d8602d3c42991e7ab3433ba9126050ef7127aebbc','ef39fd8f6896920eecdeae5554552074ddf9a489525d89ed9ebfe5099e2ba0030a8f7771c1aa7a58',0,'2018-06-27 10:24:29'),('375cc4976022e274353ce0e261d8ceec84a7510dd1e069c73ee06e88d5a9340a91cc66a7112d9e72','f398c2431d7259b75ba2863a67abed1788fbad8f5d2014ecb0d653840a92f1e31254722d94d969dc',0,'2018-06-28 05:52:46'),('3b44f46f1c17e3ac03dfec8980b20fd060a0eb7c0bb858c4c2f68102c06e14210460328f53841631','bd417646ad4087d645134bfdf21e5ebd55c11341de90aefb3752bee839d8163509a68336b2902f2b',0,'2018-06-27 23:59:09'),('3b5d18b090b05b274d42d44cccf7cf979065b6968a2bf702a28e1d50bd8ce906fad02ee1752382df','472cf2118491b4a08eb61358309a26f8876506f4b4c475490a67b7e90c3756f7adf7d3bc29826793',0,'2018-06-22 05:35:16'),('42e0f6716897036424e5738199ecb7b5b5d09453ec85d9c28f72853ccd1bdf0a0bc253f27104a01a','2d0d736e4994c5ff2d1bf1cb2adcdbaa8cf8a35c3c1a3fb055d76f75c83b7edd42330e4bce4efcd3',0,'2018-06-27 08:57:24'),('4649473deb23a4454552c44858d1201e7aa866edb1b4a8a4c7d7e305dfdb7c2db6c2f360250b2b67','0f4b5cfa89d5c4e7aaae83110e2aafe7aff67a0d700aacbafefefff6e3364cb6b3f5dc313c4591dc',0,'2018-06-27 09:28:13'),('4992f246d561f53397af59b094a4e6fdcda531a57bcd3b53afbf37be50ac95a0dd224cc799f17b5b','5ec3779f5afcbc5198df41393ad274b3843bc680faa3f8e3e7dc8b6165a2491fe3dbd2a28dd34702',0,'2018-06-27 09:07:23'),('4c36f5848ebc166da08a44c2aed782d658709049727f9233d7e44d743322b11beae2a5aa00be77c5','7ae74f04884886253f3753033e555d0a7070f8897fcac594afaf559aa5589bb8bbabc60ada06e485',0,'2018-06-25 17:58:49'),('4ce17a9797c342615bca80ce3c87099119ed09658efe196d6ca2c3df1d465b3b1f76d5579706d726','f4d4b0ba8ce5f06c00be94c49112f8e008f112e575ba22e1cdb887830d966e8bbc873c388cfc6646',0,'2018-06-25 18:48:37'),('4f96e1596c745979edb5c6e61b4a8a16f71e3ca9c5ff044c3e2a470214aeb1f9c8f2a865ae93cdec','06254498418cfb1b0cc680885d8b75d1a1e93deac586dfe92c7404eed1e54c0ff10400d18227ebb5',0,'2018-06-27 23:59:41'),('501b9ec27603c7ab4fff5ff73a5f72895558ecf083316f3755c6e324c8ef34caae54be233c3e0d29','4e9eab6dc609dbf02b1cf51ce581061959ddfe65e2cadcf4ce767907c63c5e1f0f4ffdf33c83ad04',0,'2018-06-28 03:00:32'),('513e72ee67898da8e520a03807cf1673f885ae15ef5640a3c4ed4190a9cd3c17b3645e05b83ad8ff','b0648b2513684394ecf2ac577ff8c0282abea3651be8d80c1d4be7c5296c9c3fdd603fa5c6831ea3',0,'2018-06-28 05:48:48'),('5161daa8debf7e63eb521655475270773a03ac757dde1c48671c7f41f508a59edaa00cf82070d5df','15858f1f64e4c34907365e12c1de5bf58689be1f29571fe0c60e4d2dd0d7a0c26cd5c7dc581e7c5e',0,'2018-06-28 06:47:03'),('55f5842fd3445a8b0e5f48764d5f061b7b27a9585ba531f057dd5b4e17d5780153aa9b0637c6a429','1b3dc109f7dfbbe633d263293f6431866afc304f3ef18b65adcabc46c0e4999242dce4b9c264faf5',0,'2018-06-28 03:02:55'),('5b965ef6d005c90f65bb35fb018be5fd3bbf2c7f9edf943693915b4479779cc73234b0dc02076e39','9a6aaacc991d08bc48d63714bbe0cb571939fe06dae8fb9605d93fb9165bdca68ebe95eb62b24822',0,'2018-06-28 06:22:57'),('5c8c0adb9deebeea21f1c4012667fd78b20b7a15a8b9c056a6c2909b229cfbc83625984756aace6d','bee146ce157ee34631822d4e43a8e305e916ea7a1e76f703ef10b6685c205e1b7460fc49da4282ea',0,'2018-06-28 06:33:46'),('607b3fe911df311b95d71694943111393aff2937252581ae59318d9609a348b4822e6b1f5ff46e99','01411d645d6dd89fbe9af1e2ebc2dc3f6e2e1a511a82b602426d07b0baab2dab668f632ee5d1a18b',0,'2018-06-25 22:20:23'),('60e9f4db64bf7e99e3f7b28414268d8b109c9f5a40f51d583c7df4e1bc4255883c9d45dfbf284aba','33475c8b093e74c582181906cd3bd8a3ba57d87b26cc45c9158c0fef52d8676389e3f8593af6fc96',0,'2018-06-27 18:41:14'),('617bd68573fee7ca2028338cd8ac3ab14906632633ff11dcb6de090e7cc023833c5e93452f57fd4a','ecfe5cedf72d44590ed66b8bafac6b80555b0792702ae19a87b2b2bc3f7b3ee73c77f2b125dcf2b3',0,'2018-06-28 04:54:04'),('61a525f6fab9bf6af3e0641c1ae48677f43316c16ab29ff4a02997476e9f51c9c8fcbb9c7f1345dc','b20df474ac4845fe4676918a48dd005c0bdd19e0461c8a835571d5846031c2a897088c98b3272227',0,'2018-06-27 09:41:37'),('62a3f3b74500e6323a7837d7c7d0d4c94589104b9232b1a5ef1152f2243e2b5f3ef87e7f6e1218c1','60b90a94481d52a03aa14e68483c38ebb4c2071d4525adff474784b21748bb22910005dbd090e40a',0,'2018-06-28 06:03:21'),('6644d923cffc123aa9640d78792ffc067eb8233e3d2163fddf77551a748fbf8d5704b688a19d512a','601b231456800351237565a08e88c46b5d245884a27f61cadb1695d5d33f36423bf3fe7abcdad7cd',0,'2018-06-28 04:24:18'),('68652d9c1c5f35979dac8505d9e38ff566bc268c2303caa44e0d256176ced664e86757089aba118f','b02d0c8633023cfa85c1a5969cf97e1896c49b719e32a876a267c64ce04152ba0d3300bf7aa5088b',0,'2018-06-27 18:43:36'),('6a8847c5645e28759e326d32e08b47ec85c42b0339511062ee828830f56b3ae3c41cdae6bd6d918c','9d23b392a45f62c10d453654e798a6240ce38248e7f91e9be54b3521ae067e8619ad63765c0757ad',0,'2018-06-28 05:56:01'),('6b5dded1826bc7eb530d64a64fee122e63cf5f892793601fd82e4a7ff65534ef1ba6f7600e5eb1d1','888cd0cd658ed1096ddd8b94d87e6ac2c472a723d84e34bdf704ca9f14abf4cce80fa154825ca47d',0,'2018-06-28 05:01:47'),('6d8099517d56f3d249367cbc2484f6a2ce5b03307b4b377978a204c1677430d2ee5f0c7f845770e2','07cb570b023e7aa54a64a4595073382945091d9817df49dca5b04cd8dfac198fd27aa1cbea318533',0,'2018-06-22 05:32:02'),('6dbfc640048458d17f5d599ff46e4a77a95569aae6def39786becaed8bbac8fff84eabecb9e57f8e','dcd3fce85c40939f496a6fa261cd1e31ae525267c9dbceba8363c31f6fc94d9cea5b18a3b0158dc8',0,'2018-06-28 04:13:32'),('6f5123e989607ae8f04ba83debfff044cd73f3ca0cb8b7d056bd91dbd667916c6563dee8fe5e96d3','712170312107fb60eae3612dc211941f9e661bf24d9b876c89dd42d3238aa23d76c7467388831c47',0,'2018-06-22 04:34:33'),('7193dfbfb4f59e5479f548db2b395dfddcb51f880644bf0f3db9e19f2a96287d40c18d057454a8eb','b4eb0abdbcf426a67ed6f3d016af09eb44d25ddf58578b85f3a282caf4901774b596cc87056879ce',0,'2018-06-28 06:22:53'),('72921bade81ee3e83b7d62388672f2c7ce1700b70bc325bd1dde8a0ad96e156f66e3da92aa2350aa','d64119ea464585060a487a6261fc82a2ec716eb7bc445ad2dcf6ea24f438d43281827dbb3fca9f79',0,'2018-06-28 05:22:12'),('75feaa2366e91c80ef6bb2e16ff3157ac5518cdeba10fd6f2fe669643c9bb7184e5948abae5381c0','f9976594548c3ef2dd52d0d48fbe2ecc8c25b95bf5d4a465327e3a5991258f366eb8b78b19caba08',0,'2018-06-27 10:10:07'),('77681e1127f82d780d0b4c9e378a3f3a0782c2bb51bd35fe5c470a64db4d60e3f4eead457d1ac851','cd20defb0acc8f1c7650ede35446ea2bbd70d3f63e54a698d8b5ee91731ee24b9a5e06ce66c7b80d',0,'2018-06-28 05:59:27'),('7b8fd8f32da885d7c17eed88f6cc0224c1ea45e253e46f0d241085b0f6cec0267cb00061420e4306','757f2c489759c9bef8b44722b3b716bff2db373e471a5c257703dbdb8177f2d167bad6ac595c0f3f',0,'2018-06-28 06:22:50'),('7de07c47d00806a9eaf3a093a015b58ed78d5b90cc235b9a81f0e27aad71a6826dd298d98d2ab725','3b69d725d94d507aa5e61ab0dbdd0e2602e60e21a8f4e1e4729df20da81141c42a8f390c12869d18',0,'2018-06-25 18:46:19'),('7f5c0b1c224a22f4c52edf877b013af9eb83893fc1b1aaf13bee41a440c5b635a1c908e091f7dad4','7ab5c356a07ed3edd687a2383b5b4a86e529b335abe70903115c72468ea38b57e8a8702c5ba5c5ca',0,'2018-06-28 00:22:57'),('81a338da747522292c3478b24495593ef77ec84934b72c84d27e0ee72e52aa9ea08a0f5dd2c57272','e01a1acc57b8f69d77f4bd7de3522fbe3b9daa0cb622ec5e421018aa5057419bda866fc6c0217226',0,'2018-06-27 09:39:48'),('8369f578a780966284768d82be7203a53f6186bc6abff3a8c926fa75e2dd70aa7afeed40a7cbaa28','a986e1ce17d5ad238f63f2980be2d4598a7df89aa3b7f46d0036f9b5d715897ff6760412f278241e',0,'2018-06-28 06:05:30'),('846493454abf67660cc75fff61d9b2dfed2511e1c4477c00b3701b949fb1f01de8b3261eacfb0c4c','4ca96af01da7ff6cf4aef3d78926157f9a5bd946a8e75747a0e3b55ccaef2cac8ea2a1dd08ed2487',0,'2018-06-28 04:25:23'),('85be69b8f442e1cc48f1238fcf33badec602a4c44b742b6fa09ad1ae2ee0c9feb8a29b2d35eb914e','e4879f99ffced32f2723c3c61491998001921cb75186b6c787113a146b72ca50c11d453fa7b364dd',0,'2018-06-28 05:46:18'),('8841bf1e27f38eb443f3fa5638b89825dc54bae5f0f99e7537c3eaaa07ab823d8397c60e81e8b90c','75763c2203ff036d14a5758e3c806bdfb11b1d6c8a200d5b86c8909bff2063a5d5d92a64238a3617',1,'2018-06-25 06:57:38'),('88b4065d817f1cb877139a4c16c217eaa769e6ba811d4c77e0b73d0dbab1f6eaaf0a86fcce2085d3','face76f2b60feac6d8f6dce4293ed6e7236f635964e80ea32c752cdd41c12fac1ff66c1f9df2f1a5',0,'2018-06-28 02:58:58'),('90a619f2ebf7483b2bf9ebc8d1d791d50c51b4497ed0a1e57723827e7245276beea613634fd05bd2','009caff4a5c81f0942d48f9a7ac6f267eeb06d02167801bc21142ea9f59952f0e1c9b19faeffa2d6',0,'2018-06-27 18:26:49'),('914ec833b358744d4d58103cd98fba789201f15e80d6f7df731f2731e77d2b5245fe3d1ee5c77665','a5e5636f09afed5eac98617b17e009539629f93f0e7f0e76bcc08642e7731c6fe184952c6e0b2ec2',0,'2018-06-27 19:11:11'),('928f0ea1d3c0c875ff17e238606e7e801e96f81e415da21612ec8117d600c90932b4ba06623cfd7f','c9a10e63ef590b3da6086cfd39225554b50f896791e51cc500b9b7a7dba122d0cdd37063c363535c',0,'2018-06-27 09:07:28'),('977fd2971aa631d3ef2f2e07572e61dc18ff717ee8758c43db0b146a288180a80cb293c23c102a5e','66f4e275d1a383ef703521776d23f82f3b337cff891fa9dcf843573597f0cbeb1a3accb5523df6a8',0,'2018-06-28 05:09:31'),('97a5cc701e660a08c0dd6ba9adc21e01f5acd27109261703ba9208ba2c75f72fdbb5bba8ca2d7773','30fe6b6bd2c74223679fa66f04f1466c2ced315c35118c5680f3778c3336e2c79a684e973fe7d290',0,'2018-06-27 19:11:28'),('9c34a1412f571e346916efb0997cce02a2f9b62d4274c6c5706d37b6860097efcffbc2b236f6bc30','8a88937570963bd37a1d5e32cd52a3276643c4dee61881110abce96ae889365825bd5f6a5491a332',0,'2018-06-28 06:22:56'),('9cbe19c3bb570282402c2193444865b2af2e4f979af243617245ff1ae3266dc27bd782dda14bd441','b41e06995f48f49c52bccd387e117539fb066f30357345bc18956935db88c8549049f814a5588870',0,'2018-06-28 06:22:48'),('9d0da30729dfbb5fbff9f65fee3fe01c30044fdc08f5a5bd92175e9d7d1cab8757a0056c97a4fa84','b566a730d9ccbe5023d498ad9bbc73dcc8d2d62f37173e9f7b14d0e28db869f3f28057f6d20fe30b',0,'2018-06-25 05:09:00'),('9d267273c0421a544cb1ced1e0e9f22b453bc946ac0d51388867e478104a295f70439cec40725ef3','1d5aaf3b7ac79754e9a5988df87a9f2bf01682277c15dfdf220e77b687222987ecf61cd39ce6b20c',0,'2018-06-28 05:12:47'),('9d5e4fe8242c7cc9d16996b065e07143ab4cab990c29983a35f3e4c268e70a52f818a79f414d0066','ac0ccf4c5b44d19c5255f5b4faffa8aac79cad8d3fa5fe5a8bd7231b3f433acc7158c77fab26c92a',0,'2018-06-28 06:22:52'),('9d6b1e2332d6082e6e976714169e40c4a234c78e5135d493a37c1ac6d4b798dfcea914dbc158ef95','a1daeee68072bddf6d7aa088437a68660c13c6186ecd2cb4d3cacceb4eb119dd07a37230ee07cc0b',0,'2018-06-28 05:05:58'),('9da2b026ce339c491c4b2d42b87abf1f266c88a1ff82b3bec52a33439b9ae83528a1709a382fe4b7','b35dfbc125c7e639b832ac155e5ddbf474ba35daa1208739b4d45510a6b864ba1fb7634da5603061',0,'2018-06-28 03:52:08'),('a03958f6fd5e033aee90e4a504207af78bbb5ee2817f11de5335c34a7c304605488e9cf9bb0ca72a','15cf10062d2e7e952b2203c4ef87ecbd0589d8354f3881f959beaa4807d7c5b268b9b8701b4eb2df',0,'2018-06-28 06:34:02'),('a0895e104589aa0001eed0fabcf72352d44b4c68212010fc4e6a7189d6cda850c0f13a71f1405a75','9000d6ce5486cc0a1651fc8ac715627c063f3f643472abbe113806d11bb401122efac32df3edf4d8',0,'2018-06-27 08:33:21'),('a12d71068f96379c173814491425dff3866f4379f3f06d85942b6036e3f737d5ce1f7a53642b9063','1f91f8c784cddd2b7a67a81923b3ac68f9d2de59df7e9bd4af9ee21398defc4c67359bb273069f0d',0,'2018-06-27 19:11:11'),('a37833cec9a5bd257a8e7135fd909962587e7659982cd3bdf1077ecb48240f304825e5816819a4a9','40015e047949cbbca4eb67e6f1ebb60ba5b6ea03bc2ef0e08e0ab1bac4f767754748de17e298e550',0,'2018-06-27 08:11:23'),('a37bb911eb76544e93d616f126b3b33338ee3df03f43d9c512c1fce4c74cf04da25c8696fee7c8b9','33617b0894e1987e569caa4bf317818339b437863fb444181f0abd710b7a4ac8e7570c632e80d504',0,'2018-06-28 03:05:29'),('a5108ff318475b03a56bacf9259c16e9d6c1023fd7bf49346b92b0466dbc9acff400d9e711614621','11b08994b00aa6dd1aa8d1b1db611f02ba74414bda6fd6fa466f305df2b2d6974f81eb12c12661d4',0,'2018-06-25 18:39:48'),('a65fa7fa1fc51f7473a8d8dd63f3d5d080c6358c9e6054cf10b02bbdecbfc6d99fca7838f3baa607','07b8c67f42a2b644a466c99fac1ec14a4616a6fc02b6e4d035ff7159b28f4acb423680b11f15e1d1',0,'2018-06-27 09:09:57'),('a72d2f8a7f27a09ec29ab64b0a9a68cb2ec4726cc8d2f3274dd8d16bb9189368c369c4d52ce29eea','21f7117a83260645dfd004ce41a856bfce87d5eeeb9ec3149eecf457829040ba3fba60f86ecc56c5',0,'2018-06-28 00:12:38'),('a74ed97081cac3d94e1698e10525794795c94ca155dbe5e8393332882c69ae1376b188205f161e83','e66da14861bc570cdf345306f8775f3785e78f9e0d33f99661e248ca4ba16102868366dbd8372090',0,'2018-06-28 05:23:17'),('a78ec03653c7b5ea3da031b09b57a0a104bbfb880fc8cd3df4fdffc1d975cb37b60f356dbd19a3d9','00056e4a1917c27dc8593c7ccdd6ec2c28ad6000f188864f09ddb557696f42853a90313fb5e01f4c',0,'2018-06-28 05:15:18'),('a908f3095672f02fc485bbd32feb75628cc91ba161e067ce36dd738bdf9074931adfea9a37badc22','85ad1f1cbd207578e3f20731b8c7bfb353980fc8bedd593fef52ed4e43f2081baf67b0acca0a6523',0,'2018-06-28 06:22:56'),('aa2d7ab8c63a4ae358b99bf7f0f73077b700a906c39d843e3509318872e4c5d3c82ec7a57214f427','54cf300d070eb8582446f583a5266e03276f9e9ad43258b9f869d658504e564798b007c329909ee2',0,'2018-06-28 05:50:43'),('ac12557b16997716f8ec7f3d6935002091d99780906b1be8302a02272be94fcf152b9be052305967','ab415a92043672fd7d34c219ee5cecae76b56a4e25fb77f308ce83e9a06587fc907d1df8b7e7abdb',0,'2018-06-28 06:12:18'),('acf640e306b5587c9bc0d911dde7d6ce68634fca74c754a18de17f51c0e98997612e2935459bb59e','d847a67900dc7857172923963e5d996ca8000f8362f5804475b853695ffd9d019068a4bb8c1cc681',0,'2018-06-27 09:25:58'),('b03bf05d2e24fe105ba0251bc6b44a21f61488cf4e0dc32ef391b1c6bfd0b5765417da9175594851','aac6a34504b3865d7ca99234ff1e0f6b9dc2e8062f9e5782295636385dcd013fbaa4801a8b451d30',0,'2018-06-28 03:47:47'),('b37c8ddeb60839416836adec4eb574249bdbd9c40d8b5f6350d5013c6eaa0b9f649790c04a9be82a','033da12d497c9028305f48a245473b9182b787e502d6736d893bf361ece4410605d216216db7112f',0,'2018-06-28 06:19:11'),('b9599cad3f6f20a21c68ad6f44c2f5a0503f23103a8f8b8b4d400e77297b2fde9f5deb308cc6e613','7b149e5de565de42a11d50cafa07c61913d64fea5337161354953a62aef41321a9d3139b62965d69',0,'2018-06-28 06:23:17'),('b9fdfd18bed4135fa3f5e61a53337bb9d758b6f0498708aaaf63810291178a6d4afa15e6430f4251','9f4a60a7698ebfaeb0e66689bcef71b09d8b1db05ce0a47b10e09e54023f1c2d50e59ba272d276b2',0,'2018-06-28 05:11:43'),('c849599b9735d626350adf2d56010776f1082fe779eaf499fd94bc651c64f9a2af92167684b34506','63b215158b0744673109fa9b0d09e5424d5f56e97591fbf90141ae5ede749c3cc5b77c99e139c0e8',0,'2018-06-27 09:03:04'),('cc5aa6e630509fbe87291af0206b9e4b8cffa65249b022b3b28b1d81c677ad7aee2f949d04db2c25','3d50de3e5e639a2bdbd20291b76f660433930eedcce2c490ee1e4b470825b19f9e662416620f4938',0,'2018-06-25 06:12:49'),('cd638fe0b4c7448ccd51073bcaf34ddedcba218441067576d07f92ca6fad66ea7c0eb575c39a5caf','eb0fe59558b08932b554bd5059264c8823d6eab11a12a3d3446166245eba355a2839c741f84baae6',0,'2018-06-26 22:09:52'),('cd8e5a4b0e68d4d7f7428f5a3ca935c2bc01bb11cbb4590ed6e902f5ca77ec6d5450fe50ddec62fc','b5f40074befe2648ebe6a4237e168d12e46a5fd59746b1a70603c14277a4f5a388ebdf53cdcd76b3',1,'2018-06-22 06:20:48'),('ce4d26047ca0434c91c0685be81b7b94b90f730968e81217ffecc7f2d6fabb5e6d9c80cec9067103','d66fa7d7cf4368a0e1bcce2d5d9d3abb965f57d9405de6dd92725e7d933cba8b4c30a8c76506e74e',0,'2018-06-28 05:30:31'),('d2717a714c2542e48c461cba39f37c44427c4fb261a0e78ae451edcf025ea99463e606f66ab48c78','1d2189ea50650e38ab57a576b567ffe876b19ff6b8531bd8e5caa5592875050521521626ba8b5d25',0,'2018-06-28 06:38:58'),('d48e5ae67c37bfeb2e3a922c4082b975557d32e7eb3300cbef7364fa553cf0b64b54de3bfce861f8','a01d9397141e0a33ed7aa76d716a86fe07d26f030dd2399b33c4c2621b6023cb73b660646bf2ef5d',0,'2018-06-22 04:42:19'),('db3fc32bb16f78b1818be46f4290225b3eacaeaf6e212e4d3891fa0a10e9ebbc5a09f93a3e4b0050','492e126e93c5717492f184c741c80cc732e911f69e490c1de06078fd25352edc830241858564509e',0,'2018-06-28 05:18:18'),('dd5a562a396ba045dc3e00c9b2dd88459b8d52026291f9d02483c23efd4fe3fe3b5c8c0179e371e1','0c8f6b537d71888dd61b0c892186998a3be62d2da07d49fe1c003756c28b31260155a5f8d46311c9',0,'2018-06-28 00:11:05'),('df9b945ba98495873d3e6db8a6b5fd3a011d0ee8ddddaacd5857a68504d7b04e6328b189ef004260','19a768036d80bcaa98e12dcddb9fbe5bb39f150773bcdf7e21d7c2e9d6508cddec9839a4cc02ef32',0,'2018-06-28 06:22:54'),('e17ffa41fee7cabc4571dbff4bffac89b615b905bd363f3ad0e2fae3415b79e512690ee6d3ed65fb','856e0a8fafcc053892cc166c42d6ff5a4032bb1a2f22f74090bc16762ec608a75b9ae72edd4a4b0c',0,'2018-06-28 05:37:10'),('e51c4907331b6d4412dcbc88ad47e40953b982a4f0ef80ea6d2bec06bb2bb719369580f9a6ec8507','4be0b2b7e2ad5bb3b2024e0b2264c07cb803f64edda221629f885c1b9ce6b730e9bdfe11c4f812d1',0,'2018-06-28 06:44:09'),('e5f126a8ccdba255906f017ee0a6bf91a511fef70657f1841ce7f77bb852ebd09da7a4cb929ad525','e881db84e947494c210a126b711d5e102f05ef8eec9b09cbc021008191cd4e6281ae63b344fb4aff',0,'2018-06-28 06:22:51'),('f099abe4eec69296b2112ec532d0966ef875b9f39e6a55c6f18c1c02119b6683631544c90408b07c','58601d752103d5381b346183594618cbf1e02f6593af001e8ba749bc740389d109b8301a41ebf3c3',0,'2018-06-28 00:11:57'),('f70a2cd84bbc88b0928179cbc42f3ec853a0490e389f978f69ec11b4a6914c82b09c0b09c3dbaf10','1e472e9d507734c227647608d69bb88a5263b0e765c65e2c9613880402e8b072c3991e62de5ad823',0,'2018-06-27 08:28:20'),('f8517fa02ceb0845ebf799de43b902064ea13cbde93bad809192370f7e30ed6214e38effa734c37d','4fe1c60d90bd0c26636f9499fae1796cfeda292dc6b85ebcafa4c0fd2554c5ab6f911ab78874fb30',0,'2018-06-27 10:27:56'),('f85e2c8fb939432f7922409aace7f3b7b908356ff0f588f2b9ccafcc9eb898165a3f4db52e6b9778','5e5b6b4bf7729854678d7bf0246bb539578b24d24ad4cb691cf98c90a7782c69e42d8af01e49bcf3',0,'2018-06-28 00:00:19'),('f9d52b26044046e6a1e3312d952cef250a8da00ce527421f57ce08e3dc58ecf57605f5fb9b2bf522','ba78ef6718074f1e03d773f84146a1d5ee6f7d793437bf5a28a467798f54bc0d51c2149ee3c48f7a',0,'2018-06-28 04:18:54'),('fa32764115647697fba3361c733cef7d52cc3980ab1ec254cf6755def1561713d30919117c12c9f7','43069dece563f94b339e5bcc6ba15e83b8227565dbe22b2e78453c2f6ea4cad7b20f9f5d03bbcc16',0,'2018-06-25 17:58:51'),('fa3c5645302752629c053cf7f7ee368a18be69294273f4b24ea696dbca1dcd2273dc73dc0a5c3dd9','c43cebc101e742f824c69450f43741147e10d0aaddbb1405f50423629ba9fec1384c04942e9ad80e',1,'2018-06-22 05:39:51'),('fe4dcaeaed8f233447c0380e11d7f6f7d800be7f5db6b78068a301fec4ef22b400d5cb31a12a4b44','17b3398a5f785a1f6088e2d8f42566dae46db9f23bb3a3e210c9a2cd2a2ab4810a9801f620117b70',0,'2018-06-27 08:20:33'),('ff026e005b22b0e25427924f084e7624c2dffff58706ed43886df82e1767bf062db3135d7a8416b5','37e9f5df6fe6881b7eb02b9d1d6c64fa56333b7e94d7544fa8b14f2cf14132458396fcc020dcef20',0,'2018-06-28 06:30:07'),('ff6cd3cd0f6dd75b365974b55b37a856d9ea6175d9f3fa04160ccd8311f196992ce4a63eaeaf6e16','cd63400d4b3eba348071dd4124fd3cc30e46a69086810e3a162ff5943575228af1f5d2ff4f29f06a',0,'2018-06-28 02:57:06');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,2,1,'2018-05-08 00:30:29','2018-05-08 00:30:29'),(2,1,2,'2018-05-08 00:30:30','2018-05-08 00:30:30'),(3,2,20,'2018-05-23 04:15:13','2018-05-23 04:15:13'),(4,2,21,'2018-05-25 22:14:22','2018-05-25 22:14:22'),(5,2,22,'2018-05-26 11:12:49','2018-05-26 11:12:49'),(6,2,25,'2018-05-28 08:24:59','2018-05-28 08:24:59'),(7,2,26,'2018-05-28 08:28:46','2018-05-28 08:28:46'),(8,2,27,'2018-05-28 08:31:47','2018-05-28 08:31:47'),(9,2,28,'2018-05-28 08:35:14','2018-05-28 08:35:14'),(10,2,29,'2018-05-29 04:59:09','2018-05-29 04:59:09');
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2018-05-08 00:30:29','2018-05-08 00:30:29'),(2,'user','User','2018-05-08 00:30:29','2018-05-08 00:30:29');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_pagos`
--

DROP TABLE IF EXISTS `tipo_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_pagos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_pagos`
--

LOCK TABLES `tipo_pagos` WRITE;
/*!40000 ALTER TABLE `tipo_pagos` DISABLE KEYS */;
INSERT INTO `tipo_pagos` VALUES (1,'Efectivo','2018-05-14 11:54:45','2018-05-14 11:54:45'),(2,'Tarjeta Credito','2018-05-14 11:54:57','2018-05-14 11:54:57');
/*!40000 ALTER TABLE `tipo_pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'User','user@example.com','$2y$10$HSZAbK83cvXT7nGZQkA8sOo9SPoBrUHlcpwUVhOa5kvsjicYVlJIO',NULL,'2018-05-08 00:30:29','2018-05-08 00:30:29'),(2,'Admin','admin@example.com','$2y$10$hzZfiBuY/IV4wauRwECaW.sDU3WhH/CvUAvxYxa/aqSvs.anE/JOW','JnMxbTqVobMnhRJumEecSBuK53HQFhQdd8A6z7VhCD8APYakO21VRRmXwVCP','2018-05-08 00:30:29','2018-05-08 00:30:29'),(20,'test','test@test.com','$2y$10$4QZOICIVncn38d2RiJutKeFj7q.HTg1NsNgm8CUYaTyhk/gWH56ia',NULL,'2018-05-23 04:15:12','2018-05-23 04:15:12'),(21,'diego','diego@gmail.com','$2y$10$OQsKsPLbHg/wyIvrjKIUPurMoX1dTXsp1gYTyw20IwAYNA9jnEfgG',NULL,'2018-05-25 22:14:21','2018-05-25 22:14:21'),(22,'elliott','elliott@gmail.com','$2y$10$tGjy363fhkwVPuMhALmOL.aMYhaogwtNGUOccfGbH0bl0kxu8c202',NULL,'2018-05-26 11:12:49','2018-05-26 11:12:49'),(23,'Elliott','j.elliottm.f@gmail.com','$2y$10$xUaudVLTXf1Svm3X5CuJr.Jaqf5ZWaxxzhSz5RIaMLJl/lY.fNf4e',NULL,'2018-05-28 08:17:41','2018-05-28 08:17:41'),(24,'Jorge','Jorge@gmail.com','$2y$10$H.5FVa0lxCsw1ZgniqrPbePQ2WHgpCVNARrGFvqGmcFlwjwS8kN2K',NULL,'2018-05-28 08:23:05','2018-05-28 08:23:05'),(25,'Meli','Meli@gmail.com','$2y$10$/6U6Rgx3wQMOgxkw2kGe9epMg99c7J/Hrhrc/duBTK3g5YE4U2am.','go0hDbqWRvUMvGN9lchGxOqBfWRKWd2mt6Fhi5oxjBF2Cu6M3ioIRLNNN3s7','2018-05-28 08:24:59','2018-05-28 08:24:59'),(26,'Piolo','Piolo@gmail.com','$2y$10$Se514IwUw2Sb6RVnav/kg.E8nwZ6m/KVFmvjzx/TbIc4U65zLUVt2','lq45oYbimdnriboIZVdxCeb5WnC0ZVupWN2x1gKfr1stSKaLgpiKuafAgygq','2018-05-28 08:28:46','2018-05-28 08:28:46'),(27,'Bombela','Bombela@gmail.com','$2y$10$IPP8Ac4gzoq7YNzx8nGLyuWZJ06hwsPcXbqMH79z8YH5VpXEUQgVO','4vqdx2e8WCKLUlCpx4KMIPlN6LpNcgQ8ANwsRqjUyQ9HUniJS5NHDbLmVLQt','2018-05-28 08:31:47','2018-05-28 08:31:47'),(28,'Pepe','Pepe@gmail.com','$2y$10$8e4yyUmZi/jcck5SXTd9iuuIX7/b.F6bVQoOnMkDX2VgyYNZoHyp2','lR6T98uHA50zN3xv3j3sDPyhspucjN8JTN1f9nCJm2IBlqseU7xAx4pKY6Gc','2018-05-28 08:35:13','2018-05-28 08:35:13'),(29,'jesus','jamayao1993@gmail.com','$2y$10$bNrIDA3zycMiHPsd.iaOf./YOTOogszMLYK.MQFQ.h2GGpDUBp8Yi',NULL,'2018-05-29 04:59:09','2018-05-29 04:59:09');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `albumcompleto`
--

/*!50001 DROP TABLE IF EXISTS `albumcompleto`*/;
/*!50001 DROP VIEW IF EXISTS `albumcompleto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `albumcompleto` AS select `albums`.`id` AS `id`,`albums`.`nombre` AS `nombre`,`albums`.`publicacion` AS `publicacion`,`albums`.`precio` AS `precio`,`albums`.`img` AS `img`,`discografias`.`nombre` AS `discografia`,`artistas`.`nombre` AS `artista`,`generos`.`genero` AS `genero` from (((`albums` join `discografias` on((`albums`.`id_discografia` = `discografias`.`id`))) join `artistas` on((`albums`.`id_artista` = `artistas`.`id`))) join `generos` on((`albums`.`id_genero` = `generos`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `idUser`
--

/*!50001 DROP TABLE IF EXISTS `idUser`*/;
/*!50001 DROP VIEW IF EXISTS `idUser`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `idUser` AS select `oauth_access_tokens`.`created_at` AS `created_at`,`oauth_access_tokens`.`user_id` AS `user_id` from `oauth_access_tokens` order by 1 desc limit 1 */;
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

-- Dump completed on 2018-05-29  1:51:10
