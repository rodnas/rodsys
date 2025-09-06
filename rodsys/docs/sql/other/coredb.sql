-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: coredb
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
-- Current Database: `coredb`
--

/*!40000 DROP DATABASE IF EXISTS `coredb`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `coredb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `coredb`;

--
-- Table structure for table `core_tables`
--

DROP TABLE IF EXISTS `core_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_tables` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `active` int(1) unsigned NOT NULL DEFAULT 1,
  `status_id` int(10) unsigned DEFAULT 0,
  `insert_user_id` bigint(20) unsigned DEFAULT NULL,
  `insert_when` datetime DEFAULT current_timestamp(),
  `modify_user_id` bigint(20) unsigned DEFAULT NULL,
  `modify_when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `table_name` (`table_name`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_tables`
--

LOCK TABLES `core_tables` WRITE;
/*!40000 ALTER TABLE `core_tables` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_tables_bigint`
--

DROP TABLE IF EXISTS `core_tables_bigint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_tables_bigint` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `core_tables_id` bigint(20) unsigned NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `value_bigint` bigint(20) unsigned DEFAULT NULL,
  `active` int(1) unsigned NOT NULL DEFAULT 1,
  `insert_user_id` bigint(20) unsigned DEFAULT NULL,
  `insert_when` datetime DEFAULT current_timestamp(),
  `modify_user_id` bigint(20) unsigned DEFAULT NULL,
  `modify_when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_tables_bigint`
--

LOCK TABLES `core_tables_bigint` WRITE;
/*!40000 ALTER TABLE `core_tables_bigint` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_tables_bigint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_tables_datetime`
--

DROP TABLE IF EXISTS `core_tables_datetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_tables_datetime` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `core_tables_id` bigint(20) unsigned NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `value_datetime` datetime DEFAULT NULL,
  `active` int(1) unsigned NOT NULL DEFAULT 1,
  `insert_user_id` bigint(20) unsigned DEFAULT NULL,
  `insert_when` datetime DEFAULT current_timestamp(),
  `modify_user_id` bigint(20) unsigned DEFAULT NULL,
  `modify_when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_tables_datetime`
--

LOCK TABLES `core_tables_datetime` WRITE;
/*!40000 ALTER TABLE `core_tables_datetime` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_tables_datetime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_tables_double`
--

DROP TABLE IF EXISTS `core_tables_double`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_tables_double` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `core_tables_id` bigint(20) unsigned NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `value_double` double unsigned DEFAULT NULL,
  `active` int(1) unsigned NOT NULL DEFAULT 1,
  `insert_user_id` bigint(20) unsigned DEFAULT NULL,
  `insert_when` datetime DEFAULT current_timestamp(),
  `modify_user_id` bigint(20) unsigned DEFAULT NULL,
  `modify_when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_tables_double`
--

LOCK TABLES `core_tables_double` WRITE;
/*!40000 ALTER TABLE `core_tables_double` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_tables_double` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_tables_fields`
--

DROP TABLE IF EXISTS `core_tables_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_tables_fields` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `field_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `field_length` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(1) unsigned NOT NULL DEFAULT 1,
  `insert_user_id` bigint(20) unsigned DEFAULT NULL,
  `insert_when` datetime DEFAULT current_timestamp(),
  `modify_user_id` bigint(20) unsigned DEFAULT NULL,
  `modify_when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_tables_fields`
--

LOCK TABLES `core_tables_fields` WRITE;
/*!40000 ALTER TABLE `core_tables_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_tables_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_tables_float`
--

DROP TABLE IF EXISTS `core_tables_float`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_tables_float` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `core_tables_id` bigint(20) unsigned NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `value_float` float unsigned DEFAULT NULL,
  `active` int(1) unsigned NOT NULL DEFAULT 1,
  `insert_user_id` bigint(20) unsigned DEFAULT NULL,
  `insert_when` datetime DEFAULT current_timestamp(),
  `modify_user_id` bigint(20) unsigned DEFAULT NULL,
  `modify_when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_tables_float`
--

LOCK TABLES `core_tables_float` WRITE;
/*!40000 ALTER TABLE `core_tables_float` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_tables_float` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_tables_id`
--

DROP TABLE IF EXISTS `core_tables_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_tables_id` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `active` int(1) DEFAULT 1,
  `insert_user_id` bigint(20) DEFAULT NULL,
  `insert_when` datetime DEFAULT current_timestamp(),
  `modify_user_id` bigint(20) DEFAULT NULL,
  `modify_when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_tables_id`
--

LOCK TABLES `core_tables_id` WRITE;
/*!40000 ALTER TABLE `core_tables_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_tables_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_tables_int`
--

DROP TABLE IF EXISTS `core_tables_int`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_tables_int` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `core_tables_id` bigint(20) unsigned NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `value_int` int(10) unsigned DEFAULT NULL,
  `active` int(1) unsigned NOT NULL DEFAULT 1,
  `insert_user_id` bigint(20) unsigned DEFAULT NULL,
  `insert_when` datetime DEFAULT current_timestamp(),
  `modify_user_id` bigint(20) unsigned DEFAULT NULL,
  `modify_when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_tables_int`
--

LOCK TABLES `core_tables_int` WRITE;
/*!40000 ALTER TABLE `core_tables_int` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_tables_int` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_tables_text`
--

DROP TABLE IF EXISTS `core_tables_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_tables_text` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `core_tables_id` bigint(20) unsigned NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `value_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci DEFAULT NULL,
  `active` int(1) unsigned NOT NULL DEFAULT 1,
  `insert_user_id` bigint(20) unsigned DEFAULT NULL,
  `insert_when` datetime DEFAULT current_timestamp(),
  `modify_user_id` bigint(20) unsigned DEFAULT NULL,
  `modify_when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_tables_text`
--

LOCK TABLES `core_tables_text` WRITE;
/*!40000 ALTER TABLE `core_tables_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_tables_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_tables_varchar`
--

DROP TABLE IF EXISTS `core_tables_varchar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_tables_varchar` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `core_tables_id` bigint(20) unsigned NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `value_varchar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci DEFAULT NULL,
  `active` int(1) unsigned NOT NULL DEFAULT 1,
  `insert_user_id` bigint(20) unsigned DEFAULT NULL,
  `insert_when` datetime DEFAULT current_timestamp(),
  `modify_user_id` bigint(20) unsigned DEFAULT NULL,
  `modify_when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_tables_varchar`
--

LOCK TABLES `core_tables_varchar` WRITE;
/*!40000 ALTER TABLE `core_tables_varchar` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_tables_varchar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-13  6:21:05
