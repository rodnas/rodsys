-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: rodweb
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
-- Current Database: `rodweb`
--

/*!40000 DROP DATABASE IF EXISTS `rodweb`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `rodweb` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `rodweb`;

--
-- Table structure for table `core_groups`
--

DROP TABLE IF EXISTS `core_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `core_language_id` varchar(2) COLLATE utf8_bin DEFAULT 'HU',
  `core_status_id` int(11) unsigned DEFAULT 1,
  `insert_user_id` int(11) unsigned DEFAULT NULL,
  `insert_when` datetime DEFAULT NULL,
  `modify_user_id` int(11) unsigned DEFAULT NULL,
  `modify_when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_groups`
--

LOCK TABLES `core_groups` WRITE;
/*!40000 ALTER TABLE `core_groups` DISABLE KEYS */;
INSERT INTO `core_groups` VALUES (-2,'Anonymous','HU',1,NULL,NULL,1,'2022-03-05 20:39:36'),(-1,'Administrator','HU',1,NULL,NULL,NULL,NULL),(0,'Default','HU',1,NULL,NULL,NULL,NULL),(1,'Rendszergazda','HU',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `core_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_groups_permissions`
--

DROP TABLE IF EXISTS `core_groups_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_groups_permissions` (
  `core_groups_id` int(11) NOT NULL,
  `tablename` varchar(255) COLLATE utf8_bin NOT NULL,
  `permission` int(11) NOT NULL,
  PRIMARY KEY (`core_groups_id`,`tablename`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_groups_permissions`
--

LOCK TABLES `core_groups_permissions` WRITE;
/*!40000 ALTER TABLE `core_groups_permissions` DISABLE KEYS */;
INSERT INTO `core_groups_permissions` VALUES (-2,'{28288783-E3B8-4152-BB03-BA57FA6729B8}core_groups',0),(-2,'{28288783-E3B8-4152-BB03-BA57FA6729B8}core_groups_permissions',0),(-2,'{28288783-E3B8-4152-BB03-BA57FA6729B8}core_language',0),(-2,'{28288783-E3B8-4152-BB03-BA57FA6729B8}core_status',0),(-2,'{28288783-E3B8-4152-BB03-BA57FA6729B8}core_tables',0),(-2,'{28288783-E3B8-4152-BB03-BA57FA6729B8}core_tables_fields',0),(-2,'{28288783-E3B8-4152-BB03-BA57FA6729B8}core_type',0),(-2,'{28288783-E3B8-4152-BB03-BA57FA6729B8}core_users',0),(0,'{28288783-E3B8-4152-BB03-BA57FA6729B8}core_groups',0),(0,'{28288783-E3B8-4152-BB03-BA57FA6729B8}core_groups_permissions',0),(0,'{28288783-E3B8-4152-BB03-BA57FA6729B8}core_language',0),(0,'{28288783-E3B8-4152-BB03-BA57FA6729B8}core_status',0),(0,'{28288783-E3B8-4152-BB03-BA57FA6729B8}core_tables',0),(0,'{28288783-E3B8-4152-BB03-BA57FA6729B8}core_tables_fields',0),(0,'{28288783-E3B8-4152-BB03-BA57FA6729B8}core_type',0),(0,'{28288783-E3B8-4152-BB03-BA57FA6729B8}core_users',0);
/*!40000 ALTER TABLE `core_groups_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_language`
--

DROP TABLE IF EXISTS `core_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_language` (
  `id` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT 'HU',
  `image_url` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `core_status_id` int(11) DEFAULT 1,
  `insert_user_id` int(11) unsigned DEFAULT NULL,
  `insert_when` datetime DEFAULT NULL,
  `modify_user_id` int(11) unsigned DEFAULT NULL,
  `modify_when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_language`
--

LOCK TABLES `core_language` WRITE;
/*!40000 ALTER TABLE `core_language` DISABLE KEYS */;
INSERT INTO `core_language` VALUES ('HU',NULL,1,NULL,NULL,1,'2015-11-02 01:08:13'),('EN',NULL,1,1,'2015-11-02 01:07:47',NULL,NULL),('DE',NULL,1,1,'2015-11-02 01:07:59',NULL,NULL);
/*!40000 ALTER TABLE `core_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_status`
--

DROP TABLE IF EXISTS `core_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_status` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `core_language_id` varchar(2) COLLATE utf8_bin DEFAULT 'HU',
  `core_status_id` int(11) unsigned DEFAULT 1,
  `insert_user_id` int(11) unsigned NOT NULL DEFAULT 0,
  `insert_when` datetime DEFAULT NULL,
  `modify_user_id` int(11) unsigned DEFAULT NULL,
  `modify_when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_status`
--

LOCK TABLES `core_status` WRITE;
/*!40000 ALTER TABLE `core_status` DISABLE KEYS */;
INSERT INTO `core_status` VALUES (1,'Aktív','HU',1,0,NULL,NULL,NULL),(0,'Passzív','HU',1,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `core_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_tables`
--

DROP TABLE IF EXISTS `core_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_tables` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `core_language_id` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT 'HU',
  `core_status_id` int(11) unsigned DEFAULT 1,
  `insert_user_id` bigint(11) unsigned DEFAULT NULL,
  `insert_when` datetime DEFAULT current_timestamp(),
  `modify_user_id` bigint(11) unsigned DEFAULT NULL,
  `modify_when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `table_name` (`table_name`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_tables`
--

LOCK TABLES `core_tables` WRITE;
/*!40000 ALTER TABLE `core_tables` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_tables_fields`
--

DROP TABLE IF EXISTS `core_tables_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_tables_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `field_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `field_length` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_language_id` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT 'HU',
  `core_status_id` int(11) DEFAULT 1,
  `insert_user_id` bigint(11) unsigned DEFAULT NULL,
  `insert_when` datetime DEFAULT current_timestamp(),
  `modify_user_id` bigint(11) unsigned DEFAULT NULL,
  `modify_when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_tables_fields`
--

LOCK TABLES `core_tables_fields` WRITE;
/*!40000 ALTER TABLE `core_tables_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_tables_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_type`
--

DROP TABLE IF EXISTS `core_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `core_language_id` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT 'HU',
  `core_status_id` int(11) unsigned DEFAULT 1,
  `insert_user_id` bigint(11) unsigned DEFAULT NULL,
  `insert_when` datetime DEFAULT current_timestamp(),
  `modify_user_id` bigint(11) unsigned DEFAULT NULL,
  `modify_when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_type` (`field_type`) USING HASH
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_type`
--

LOCK TABLES `core_type` WRITE;
/*!40000 ALTER TABLE `core_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_users`
--

DROP TABLE IF EXISTS `core_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(40) COLLATE utf8_bin NOT NULL,
  `nickname` varchar(40) COLLATE utf8_bin NOT NULL,
  `password` varchar(40) COLLATE utf8_bin NOT NULL,
  `core_language_id` varchar(2) COLLATE utf8_bin DEFAULT 'HU',
  `core_status_id` int(11) unsigned DEFAULT 1,
  `last_login_when` datetime DEFAULT NULL,
  `activation_code` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `regmail_when` datetime DEFAULT NULL,
  `activation_when` datetime DEFAULT NULL,
  `core_groups_id` int(11) NOT NULL DEFAULT 3,
  `insert_user_id` int(11) unsigned DEFAULT NULL,
  `insert_when` datetime DEFAULT NULL,
  `modify_user_id` int(11) unsigned DEFAULT NULL,
  `modify_when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `nickname` (`nickname`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_users`
--

LOCK TABLES `core_users` WRITE;
/*!40000 ALTER TABLE `core_users` DISABLE KEYS */;
INSERT INTO `core_users` VALUES (1,'rodnas@uw.hu','rodnas','b3d97746dbb45e92dc083db205e1fd14','HU',1,NULL,NULL,NULL,NULL,-1,NULL,NULL,NULL,NULL),(2,'rodnas0204@gmail.com','admin','21232f297a57a5a743894a0e4a801fc3','HU',1,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `core_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-13  6:21:06
