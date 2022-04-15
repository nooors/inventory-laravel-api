-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: inventory
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brand_models`
--

DROP TABLE IF EXISTS `brand_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand_models` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_models`
--

LOCK TABLES `brand_models` WRITE;
/*!40000 ALTER TABLE `brand_models` DISABLE KEYS */;
INSERT INTO `brand_models` VALUES (1,'Dogo Premium','CamisetasUnisexCategoria.png'),(3,'Jamaica','CamisetasChicaCategoria.png'),(4,'Bataly',NULL),(5,'Xtrem',NULL);
/*!40000 ALTER TABLE `brand_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Roly','ROLY-LOGO.png'),(2,'B&C','BC-LOGO.png');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Camiseta manga corta',NULL),(2,'Camiseta manga larga',NULL),(3,'Sudadera',NULL),(4,'Delantales',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `color` varchar(255) NOT NULL,
  `code` varchar(6) DEFAULT NULL,
  `order` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'Negro','000000',NULL),(2,'Blanco','ffffff',NULL),(3,'Púrpura','591252',NULL),(4,'Chocolate','36221a',NULL),(5,'Azul Denim','4d4b71',NULL),(6,'Naranja','ec6413',NULL);
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `families`
--

DROP TABLE IF EXISTS `families`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `families` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `family` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `families`
--

LOCK TABLES `families` WRITE;
/*!40000 ALTER TABLE `families` DISABLE KEYS */;
INSERT INTO `families` VALUES (1,'Mujer',NULL),(2,'Unisex',NULL),(3,'Niños',NULL),(4,'Bebé',NULL);
/*!40000 ALTER TABLE `families` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `garments`
--

DROP TABLE IF EXISTS `garments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garments` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `id_category` tinyint NOT NULL,
  `id_family` tinyint NOT NULL,
  `id_size` tinyint NOT NULL,
  `id_color` tinyint NOT NULL,
  `id_suplier` tinyint NOT NULL,
  `id_brand` tinyint(1) DEFAULT NULL,
  `id_model` tinyint NOT NULL,
  `reference` varchar(40) DEFAULT NULL,
  `quantity` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_prenda_categoria` (`id_category`),
  KEY `fk_prenda_familia` (`id_family`),
  KEY `fk_prenda_talla` (`id_size`),
  KEY `fk_prenda_color` (`id_color`),
  KEY `fk_prenda_proveedor` (`id_suplier`),
  KEY `fk_prenda_marcas` (`id_brand`),
  KEY `fk_prenda_modelos` (`id_model`),
  CONSTRAINT `fk_prenda_color` FOREIGN KEY (`id_color`) REFERENCES `colors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garments`
--

LOCK TABLES `garments` WRITE;
/*!40000 ALTER TABLE `garments` DISABLE KEYS */;
INSERT INTO `garments` VALUES (8,1,2,1,1,1,1,1,'CA6502',1,NULL),(9,1,2,2,1,1,1,1,'CA6502',1,NULL),(10,1,2,3,1,1,1,1,'CA6502',1,NULL),(11,1,2,4,1,1,1,1,'CA6502',1,NULL),(12,1,2,5,1,1,1,1,'CA6502',1,NULL),(13,1,2,6,1,1,1,1,'CA6502',1,NULL),(14,1,2,7,1,1,1,1,'CA6502',1,NULL),(15,1,2,1,2,1,1,1,'CA6502',2,NULL),(16,1,2,2,2,1,1,1,'CA6502',0,NULL),(17,1,2,3,2,1,1,1,'CA6502',2,NULL),(18,1,2,4,2,1,1,1,'CA6502',1,NULL),(19,1,2,5,2,1,1,1,'CA6502',2,NULL),(20,1,2,6,2,1,1,1,'CA6502',1,NULL),(21,1,2,7,2,1,1,1,'CA6502',2,NULL),(22,1,2,1,3,1,1,1,'CA6502',1,NULL),(23,1,2,2,3,1,1,1,'CA6502',0,NULL),(24,1,2,3,3,1,1,1,'CA6502',1,NULL),(25,1,2,4,3,1,1,1,'CA6502',3,NULL),(26,1,2,5,3,1,1,1,'CA6502',1,NULL),(27,1,2,6,3,1,1,1,'CA6502',2,NULL),(28,1,2,7,3,1,1,1,'CA6502',0,NULL),(29,1,2,1,4,1,1,1,'CA6502',3,NULL),(30,1,2,2,4,1,1,1,'CA6502',0,NULL),(31,1,2,3,4,1,1,1,'CA6502',3,NULL),(32,1,2,4,4,1,1,1,'CA6502',0,NULL),(33,1,2,5,4,1,1,1,'CA6502',0,NULL),(34,1,2,6,4,1,1,1,'CA6502',0,NULL),(35,1,2,7,4,1,1,1,'CA6502',0,NULL),(36,1,2,1,5,1,1,1,'CA6502',2,NULL),(37,1,2,2,5,1,1,1,'CA6502',0,NULL),(38,1,2,3,5,1,1,1,'CA6502',1,NULL),(39,1,2,4,5,1,1,1,'CA6502',0,NULL),(40,1,2,5,5,1,1,1,'CA6502',0,NULL),(41,1,2,6,5,1,1,1,'CA6502',0,NULL),(42,1,2,7,5,1,1,1,'CA6502',0,NULL),(43,1,1,1,1,1,1,3,'CA6627',0,NULL),(44,1,1,2,1,1,1,3,'CA6627',4,NULL),(45,1,1,3,1,1,1,3,'CA6627',0,NULL),(46,1,1,4,1,1,1,3,'CA6627',0,NULL),(47,1,1,5,1,1,1,3,'CA6627',0,NULL),(48,1,1,1,2,1,1,3,'CA6627',0,NULL),(49,1,1,2,2,1,1,3,'CA6627',0,NULL),(50,1,1,3,2,1,1,3,'CA6627',0,NULL),(51,1,1,4,2,1,1,3,'CA6627',0,NULL),(52,1,1,5,2,1,1,3,'CA6627',0,NULL),(53,1,1,1,3,1,1,3,'CA6627',2,NULL),(54,1,1,2,3,1,1,3,'CA6627',2,NULL),(55,1,1,3,3,1,1,3,'CA6627',1,NULL),(56,1,1,4,3,1,1,3,'CA6627',1,NULL),(57,1,1,5,3,1,1,3,'CA6627',1,NULL),(58,1,1,1,4,1,1,3,'CA6627',0,NULL),(59,1,1,2,4,1,1,3,'CA6627',0,NULL),(60,1,1,3,4,1,1,3,'CA6627',0,NULL),(61,1,1,4,4,1,1,3,'CA6627',0,NULL),(62,1,1,5,4,1,1,3,'CA6627',0,NULL),(63,1,1,1,5,1,1,3,'CA6627',3,NULL),(64,1,1,2,5,1,1,3,'CA6627',0,NULL),(65,1,1,3,5,1,1,3,'CA6627',0,NULL),(66,1,1,4,5,1,1,3,'CA6627',0,NULL),(67,1,1,5,5,1,1,3,'CA6627',0,NULL),(68,1,2,1,6,1,1,1,'CA65020131',1,NULL),(69,1,2,2,6,1,1,1,'CA65020131',0,NULL),(70,1,2,3,6,1,1,1,'CA65020131',0,NULL),(71,1,2,4,6,1,1,1,'CA65020131',0,NULL),(72,1,2,5,6,1,1,1,'CA65020131',0,NULL),(73,1,2,6,6,1,1,1,'CA65020131',0,NULL),(74,1,2,7,6,1,1,1,'CA65020131',0,NULL),(75,4,2,8,5,1,1,4,'DE912690143',0,NULL),(76,2,2,1,1,1,1,5,'',1,NULL),(77,2,2,2,1,1,1,5,'',0,NULL),(78,2,2,3,1,1,1,5,'',0,NULL),(79,2,2,4,1,1,1,5,'',0,NULL),(80,2,2,5,1,1,1,5,'',0,NULL),(81,1,1,1,6,1,1,3,'CA6627',0,'jamaica-naranja.png'),(82,1,1,2,6,1,1,3,'CA6627',0,'jamaica-naranja.png'),(83,1,1,3,6,1,1,3,'CA6627',0,'jamaica-naranja.png'),(84,1,1,4,6,1,1,3,'CA6627',0,'jamaica-naranja.png'),(85,1,1,5,6,1,1,3,'CA6627',0,'jamaica-naranja.png');
/*!40000 ALTER TABLE `garments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (6,'2022_04_13_162049_update_garments',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizes` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `size` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,'S'),(2,'M'),(3,'L'),(4,'XL'),(5,'2XL'),(6,'3XL'),(7,'4XL'),(8,'única');
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supliers`
--

DROP TABLE IF EXISTS `supliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supliers` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telephone` int DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supliers`
--

LOCK TABLES `supliers` WRITE;
/*!40000 ALTER TABLE `supliers` DISABLE KEYS */;
INSERT INTO `supliers` VALUES (1,'Gorfactory','pedidos.barcelona01@gorfactory.es',935440085,'Esther Fernández',NULL);
/*!40000 ALTER TABLE `supliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-15 12:09:07
