-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: elfekvo
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Current Database: `elfekvo`
--

/*!40000 DROP DATABASE IF EXISTS `elfekvo`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `elfekvo` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `elfekvo`;

--
-- Table structure for table `core_config`
--

DROP TABLE IF EXISTS `core_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_config` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `systemType` enum('frontend','admin') CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `core_configsID` int unsigned DEFAULT NULL,
  `fieldName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `fieldValue` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `autoload` int unsigned DEFAULT NULL,
  `active` int unsigned DEFAULT '1',
  `core_localserverID` int unsigned DEFAULT NULL,
  `insertUserID` int unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_config`
--

LOCK TABLES `core_config` WRITE;
/*!40000 ALTER TABLE `core_config` DISABLE KEYS */;
INSERT INTO `core_config` VALUES (1,'frontend',NULL,'core_localserverID','1',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(2,'frontend',NULL,'barcodeType','0',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(3,'frontend',NULL,'maxPatientView','8',NULL,1,1,NULL,NULL,NULL,2,'2013-10-03 15:19:04'),(4,'frontend',NULL,'waitingBoxRefresh','10',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(5,'frontend',NULL,'bannerBoxRefresh','1800',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(6,'frontend',NULL,'marqueeBoxRefresh','10',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(7,'frontend',NULL,'barcodeReadTimeout','8',NULL,1,1,NULL,NULL,NULL,2,'2013-11-26 12:18:10'),(8,'frontend',NULL,'patientViewTimeout','8',NULL,1,1,NULL,NULL,NULL,2,'2013-11-26 12:18:26'),(9,'frontend',NULL,'patientViewRefresh','1',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(10,'frontend',NULL,'bannerChangeTimeout','15',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(11,'frontend',NULL,'bannerDrMaximum','6',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(12,'frontend',NULL,'marqueeDrMaximum','5',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(13,'frontend',NULL,'playAudio','1',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(14,'frontend',NULL,'cssFromFile','1',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(15,'frontend',NULL,'cssInsertRename','0',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(16,'frontend',NULL,'callUpCounterMax','1',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(17,'frontend',NULL,'dayStartClearBefore','1',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(18,'admin',10,'miniBoxZoomHeight','600px',NULL,1,1,NULL,2,'2013-09-09 13:03:11',NULL,NULL),(19,'admin',68,'boxRefresh','60',NULL,1,1,NULL,2,'2013-09-08 09:24:54',2,'2013-09-08 20:00:48'),(20,'frontend',NULL,'getBarcodeErrorAudio','<audio autoplay><source src=\"../docroot/audio/hiba.wav\" type=\"audio/wav\"></audio>',NULL,1,1,NULL,2,'2013-11-28 14:36:48',2,'2016-05-15 11:08:28'),(21,'frontend',NULL,'callUpAudio','<audio autoplay><source src=\"../docroot/audio/behivas.wav\" type=\"audio/wav\"></audio>',NULL,1,1,NULL,NULL,NULL,2,'2013-11-08 09:41:15'),(22,'frontend',NULL,'patientCallType','madmax',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(23,'frontend',NULL,'getBarcodeAudio','<audio autoplay><source src=\"../docroot/audio/kartya.wav\" type=\"audio/wav\"></audio>',NULL,1,1,NULL,2,'2013-11-08 09:10:29',2,'2013-11-08 09:40:48'),(24,'frontend',NULL,'defaultOrderTime','--:-- - --:--',NULL,1,1,NULL,2,'2013-11-19 12:25:34',NULL,NULL),(25,'frontend',NULL,'barcodeLogging','0',NULL,1,1,NULL,2,'2013-11-19 12:25:34',NULL,NULL),(26,'frontend',NULL,'doctorNameViewNo','0',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(27,'frontend',NULL,'waitingListSetup1920x1080','750<=>220<=>17<=>6',NULL,1,1,NULL,2,'2013-11-27 11:58:57',2,'2013-11-27 13:27:42'),(28,'frontend',NULL,'waitingListSetup1360x768','550<=>180<=>12<=>5',NULL,1,1,NULL,2,'2013-11-27 18:30:10',2,'2013-11-27 18:51:19'),(29,'frontend',NULL,'waitingListSetup1366x768','550<=>180<=>12<=>5',NULL,NULL,1,NULL,2,'2013-11-27 18:43:02',2,'2013-11-27 18:52:26'),(30,'frontend',NULL,'waitingListSetup1024x768','550<=>180<=>12<=>5',NULL,1,1,NULL,2,'2013-11-27 18:54:06',2,'2016-05-15 11:58:06'),(31,'frontend',NULL,'waitingListSetup1280x720','550<=>180<=>12<=>5',NULL,NULL,1,NULL,2,'2013-11-27 19:01:26',2,'2016-05-15 12:02:30');
/*!40000 ALTER TABLE `core_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_configs`
--

DROP TABLE IF EXISTS `core_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_configs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `tplName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `allrecs` int unsigned DEFAULT '0',
  `ownrecs` int unsigned DEFAULT '0',
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `active` int unsigned DEFAULT '1',
  `insertUserID` int unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_configs`
--

LOCK TABLES `core_configs` WRITE;
/*!40000 ALTER TABLE `core_configs` DISABLE KEYS */;
INSERT INTO `core_configs` VALUES (1,'core_users','Felhasználók','core_users',15,0,NULL,1,1,'2005-08-29 23:45:38',2,'2013-08-24 11:47:27'),(2,'core_users_rights','Felhasználó jogai','core_users_rights',15,0,NULL,1,1,'2005-08-29 23:46:03',2,'2013-07-30 15:50:07'),(3,'core_groups','Csoport','core_groups',15,0,NULL,1,1,'2005-08-29 23:46:31',2,'2013-08-24 11:57:35'),(4,'core_groups_rights','Csoport jogai','core_groups_rights',15,0,NULL,1,1,'2005-08-29 23:46:46',2,'2012-01-17 13:37:39'),(5,'core_lang','Nyelv','core_lang',15,0,NULL,1,1,'2005-08-29 23:48:06',2,'2010-09-24 08:57:03'),(7,'core_userstitle','Titulus','core_userstitle',15,0,NULL,1,2,'2009-07-01 10:12:24',2,'2012-03-25 13:59:07'),(8,'userslog','login/logout',NULL,15,0,NULL,1,2,'2009-08-12 20:40:21',NULL,NULL),(10,'configShare','Rendszer',NULL,15,0,NULL,1,2,'2011-03-11 22:34:24',2,'2012-03-23 23:11:47'),(83,'products','Termékek','products',8,0,NULL,1,2,'2012-02-19 20:55:58',2,'2012-03-03 18:39:38'),(17,'core_configs','Konfigurátor','core_configs',15,15,NULL,1,2,'2012-01-16 14:15:08',2,'2013-07-30 15:48:30'),(22,'core_support','Támogatás','core_support',15,0,NULL,1,2,'2012-02-29 23:12:41',2,'2013-07-30 15:48:20'),(23,'core_support_topic','Téma','core_support_topic',8,0,NULL,1,2,'2012-03-02 23:02:26',2,'2013-08-01 09:24:49'),(24,'core_support_type','Típus','core_support_type',8,0,NULL,0,2,'2012-03-02 23:09:38',2,'2016-05-03 23:16:49'),(25,'core_support_status','Állapot','core_support_status',8,0,NULL,0,2,'2012-03-02 23:10:13',2,'2016-05-03 23:16:12'),(38,'core_messagewall','Üzenőfal','core_messagewall',8,0,NULL,1,2,'2012-03-21 18:28:31',2,'2012-05-12 23:30:35'),(61,'core_support_action','Intézkedés','core_support_action',8,0,NULL,0,2,'2013-08-05 11:36:14',2,'2016-05-03 23:16:08'),(88,'admin','Admin',NULL,0,0,NULL,1,2,'2024-05-10 21:29:17',NULL,NULL),(72,'core_config','Setup','core_config',8,0,NULL,1,2,'2013-09-05 22:10:02',2,'2013-09-20 12:01:42'),(73,'core_language','Nyelv','core_language',8,0,NULL,1,2,'2013-09-23 13:12:50',NULL,NULL),(84,'products_status','Állapotok','products_status',8,0,NULL,1,2,'2016-10-03 22:57:04',NULL,NULL),(85,'products_images','Képek','products_images',8,0,NULL,1,2,'2016-10-04 06:15:06',NULL,NULL),(87,'core_themes','Arculat',NULL,8,0,NULL,1,2,'2024-05-10 17:20:09',NULL,NULL);
/*!40000 ALTER TABLE `core_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_groups`
--

DROP TABLE IF EXISTS `core_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `core_themesID` int unsigned DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `active` int unsigned DEFAULT '1',
  `insertUserID` int unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_groups`
--

LOCK TABLES `core_groups` WRITE;
/*!40000 ALTER TABLE `core_groups` DISABLE KEYS */;
INSERT INTO `core_groups` VALUES (1,1,'Vendég',NULL,1,2,'2005-08-29 21:08:54',2,'2013-07-22 23:29:48'),(2,NULL,'Supervisor',NULL,1,1,'2005-08-29 21:08:54',2,'2011-12-26 14:56:34'),(3,NULL,'Rendszergazda',NULL,1,1,'2005-08-29 21:10:02',NULL,NULL),(4,NULL,'Kiemelt Tag',NULL,1,1,'2005-08-29 21:10:55',2,'2010-10-05 12:23:21'),(5,NULL,'Tag',NULL,1,2,'2016-10-14 20:37:36',NULL,NULL);
/*!40000 ALTER TABLE `core_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_groups_config`
--

DROP TABLE IF EXISTS `core_groups_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_groups_config` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `fieldName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `fieldValue` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `autoload` int unsigned DEFAULT NULL,
  `active` int unsigned DEFAULT '1',
  `core_localserverID` int unsigned NOT NULL,
  `core_groupsID` int unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_groups_config`
--

LOCK TABLES `core_groups_config` WRITE;
/*!40000 ALTER TABLE `core_groups_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_groups_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_groups_rights`
--

DROP TABLE IF EXISTS `core_groups_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_groups_rights` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `core_groupsID` int unsigned NOT NULL DEFAULT '0',
  `core_configsID` int unsigned NOT NULL DEFAULT '0',
  `allrecs` int unsigned DEFAULT '0',
  `ownrecs` int unsigned DEFAULT '0',
  `active` int unsigned DEFAULT '1',
  `insertUserID` int unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_groups_rights`
--

LOCK TABLES `core_groups_rights` WRITE;
/*!40000 ALTER TABLE `core_groups_rights` DISABLE KEYS */;
INSERT INTO `core_groups_rights` VALUES (1,2,1,31,0,1,2,'2012-03-30 15:44:44',NULL,NULL),(2,2,2,31,0,1,2,'2012-03-30 15:45:16',NULL,NULL),(3,2,3,31,0,1,2,'2012-03-30 15:46:14',NULL,NULL),(4,2,4,31,0,1,2,'2012-03-30 15:46:27',NULL,NULL),(5,2,5,31,0,1,2,'2012-03-30 15:46:42',NULL,NULL),(7,2,7,31,0,1,2,'2012-03-30 15:47:09',NULL,NULL),(9,2,10,31,0,1,2,'2012-03-30 15:48:16',NULL,NULL),(97,2,83,31,0,1,2,'2013-09-23 13:14:02',NULL,NULL),(16,2,17,31,0,1,2,'2012-03-30 15:50:10',NULL,NULL),(129,2,88,8,0,1,2,'2024-05-10 21:32:12',NULL,NULL),(21,2,22,31,0,1,2,'2012-03-30 15:51:54',NULL,NULL),(22,2,23,31,0,1,2,'2012-03-30 15:52:07',NULL,NULL),(23,2,24,31,0,1,2,'2012-03-30 15:52:23',NULL,NULL),(24,2,25,31,0,1,2,'2012-03-30 15:52:36',NULL,NULL),(37,2,38,31,0,1,2,'2012-03-30 15:56:44',NULL,NULL),(84,2,72,31,0,1,2,'2013-09-05 22:10:29',NULL,NULL),(87,2,87,31,0,1,2,'2013-09-23 13:14:02',NULL,NULL),(98,2,84,31,0,1,2,'2016-10-03 22:57:59',NULL,NULL),(99,2,85,31,0,1,2,'2016-10-04 06:16:02',NULL,NULL),(102,3,83,15,0,1,2,'2016-10-04 08:26:55',NULL,NULL),(103,3,84,31,0,1,2,'2016-10-04 08:27:11',NULL,NULL),(104,4,83,31,0,1,2,'2016-10-14 20:22:17',NULL,NULL),(105,4,84,8,0,1,2,'2016-10-14 20:29:14',NULL,NULL),(108,6,84,8,0,1,2,'2016-10-14 20:38:37',NULL,NULL),(109,6,83,8,0,1,2,'2016-10-14 20:38:56',NULL,NULL),(110,3,1,31,0,1,2,'2016-10-16 20:58:25',NULL,NULL),(111,4,1,12,0,1,2,'2016-10-16 20:59:13',NULL,NULL),(116,1,1,0,0,1,2,'2016-10-20 21:28:46',NULL,NULL),(113,5,83,31,0,1,2,'2016-10-20 21:26:15',NULL,NULL),(114,5,84,8,0,1,2,'2016-10-20 21:26:24',NULL,NULL),(115,5,1,4,0,1,2,'2016-10-20 21:26:58',NULL,NULL),(117,1,84,0,0,1,2,'2016-10-20 21:29:11',NULL,NULL),(118,1,83,8,0,1,2,'2016-10-20 21:29:30',NULL,NULL),(120,3,7,31,0,1,2,'2024-05-10 17:14:22',NULL,NULL),(121,3,5,15,0,1,2,'2024-05-10 17:15:10',NULL,NULL),(122,3,22,31,0,1,2,'2024-05-10 17:16:05',NULL,NULL),(123,3,87,31,0,1,2,'2024-05-10 17:21:40',NULL,NULL),(124,3,3,31,0,1,2,'2024-05-10 19:22:59',NULL,NULL),(125,3,4,31,0,1,2,'2024-05-10 19:23:20',NULL,NULL),(126,3,72,31,0,1,2,'2024-05-10 19:23:50',NULL,NULL),(127,3,66,31,0,1,2,'2024-05-10 19:24:08',NULL,NULL),(128,2,73,31,0,1,2,'2024-05-10 20:38:03',NULL,NULL);
/*!40000 ALTER TABLE `core_groups_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_import`
--

DROP TABLE IF EXISTS `core_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_import` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `fileName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `errorMessage` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `active` int unsigned DEFAULT '1',
  `insertUserID` int unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_import`
--

LOCK TABLES `core_import` WRITE;
/*!40000 ALTER TABLE `core_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_lang`
--

DROP TABLE IF EXISTS `core_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_lang` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `active` int unsigned NOT NULL,
  `name` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `pictureURL` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_lang`
--

LOCK TABLES `core_lang` WRITE;
/*!40000 ALTER TABLE `core_lang` DISABLE KEYS */;
INSERT INTO `core_lang` VALUES (1,1,'HU','images/public/button/hu.gif');
/*!40000 ALTER TABLE `core_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_language`
--

DROP TABLE IF EXISTS `core_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_language` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `systemType` enum('frontend','admin') CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `core_configsID` int unsigned DEFAULT NULL,
  `fieldName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `fieldValue` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `autoload` int unsigned DEFAULT NULL,
  `active` int unsigned DEFAULT '1',
  `core_localserverID` int unsigned DEFAULT NULL,
  `insertUserID` int unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=315 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_language`
--

LOCK TABLES `core_language` WRITE;
/*!40000 ALTER TABLE `core_language` DISABLE KEYS */;
INSERT INTO `core_language` VALUES (1,'frontend',10,'labelWaitDr','ORVOS:',NULL,1,1,NULL,NULL,NULL,2,'2013-09-10 15:54:47'),(2,'frontend',NULL,'messageCardAccept','Kártya elfogadva!',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(3,'frontend',NULL,'messageComeIn','Kérem fáradjon be!',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(4,'frontend',NULL,'messageBarcodeLogged','Már be van jelentkezve!',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(5,'frontend',NULL,'messageDrNotOpen','A kártyához tartozó orvos most nem rendel!',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(6,'frontend',NULL,'messageDrNotExist','Az Ön orvosa itt nem rendel!',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(7,'frontend',NULL,'messageBadWhere','Hibás kihez megadás!',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(8,'frontend',NULL,'systemName','Váró',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(9,'frontend',NULL,'templateNotFound','Template nem tal',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(10,'frontend',NULL,'messageOpenExpired','Rendelési idő lejárt!',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(11,'frontend',NULL,'marqueeDrSeparator','--',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(12,'frontend',NULL,'marqueeMessageSeparator','**',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(13,'frontend',NULL,'cssNotFound','CSS nem található',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(14,'admin',10,'copyright','Copyright &copy; rodsys',NULL,1,1,NULL,NULL,NULL,2,'2016-05-03 17:38:21'),(15,'admin',10,'loginBoxHeaderText','Bejelentkezés',NULL,0,1,NULL,NULL,NULL,2,'2013-09-11 09:05:46'),(16,'frontend',10,'loginSealNumberLabel','PECSÉTSZÁM',NULL,0,1,NULL,NULL,NULL,2,'2013-09-11 09:07:14'),(17,'admin',10,'loginNicknameLabel','Név',NULL,0,1,NULL,NULL,NULL,2,'2013-09-11 09:09:00'),(18,'admin',10,'loginPasswordLabel','Jelszó',NULL,0,1,NULL,NULL,NULL,2,'2013-09-11 09:09:18'),(19,'frontend',10,'shortSystemName','Elfekvő Admin 1.0',NULL,1,1,NULL,NULL,NULL,2,'2016-05-03 17:37:44'),(20,'frontend',NULL,'startSelectTitle','- Kérem válasszon -',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(21,'frontend',NULL,'loginSealNumberEmpty','Nincs pecsétszám kiválasztva!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(22,'admin',NULL,'loginNicknameEmpty','Üres felhasználónév!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(23,'admin',NULL,'loginPasswordEmpty','Üres jelszó!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(24,'admin',NULL,'loginNicknameNotExist','Nincs ilyen felhasználó!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(25,'admin',NULL,'loginPasswordBad','Hibás jelszó!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(26,'frontend',NULL,'jsNotFound','js file nem található!',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(27,'frontend',NULL,'messageBadBarcode','Ismeretlen kártya formátum!',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(28,'frontend',NULL,'orderWhenTitle','Rendelési idő: ',NULL,1,1,NULL,NULL,NULL,NULL,NULL),(29,'admin',10,'nocore_whereID','Kihez',NULL,1,1,NULL,NULL,NULL,2,'2013-11-19 20:16:02'),(30,'admin',10,'loginSubmitButtonText','Belépés',NULL,1,1,NULL,2,'2013-09-09 13:51:43',2,'2013-09-11 09:06:18'),(31,'admin',10,'nocore_statusID','Állapot',NULL,0,1,NULL,NULL,NULL,2,'2013-11-19 20:14:59'),(32,'admin',10,'call','Behívás',NULL,0,1,NULL,NULL,NULL,2,'2013-11-19 19:52:29'),(33,'admin',10,'inside','Ellátás',NULL,0,1,NULL,NULL,NULL,2,'2013-11-19 20:08:35'),(34,'admin',10,'outside','Törlés',NULL,0,1,NULL,NULL,NULL,2,'2013-11-19 20:16:52'),(35,'admin',68,'title','Várakozók',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(36,'admin',69,'title','Ellátottak',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(37,'admin',64,'sealNumber','Orvos',NULL,NULL,1,NULL,2,'2013-11-20 10:20:36',2,'2013-11-20 10:21:32'),(38,'admin',70,'title','Előjegyzettek',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(39,'admin',67,'nocore_doctor','Orvos',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(40,'admin',67,'tajNumber','TAJ',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(41,'admin',67,'masterCartonNumber','Törzskarton',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(42,'admin',67,'birthDate','Születési dátum',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(43,'admin',67,'loginDate','Bejelentkezés dátum',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(44,'admin',67,'core_genderID','Neme',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(45,'admin',10,'patientID','Beteg',NULL,NULL,1,NULL,2,'2013-11-20 10:04:37',NULL,NULL),(46,'admin',67,'tajNumberEmpty','Üres TAJ!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(47,'admin',67,'masterCartonNumberEmpty','Üres Törzskarton!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(48,'admin',67,'birthDateEmpty','Üres Születési dátum!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(49,'admin',67,'loginDateEmpty','Üres Bejelentkezés dátum!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(50,'admin',67,'core_genderIDEmpty','Üres Neme!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(51,'admin',57,'nocore_doctor_order_dayID','Nap',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(52,'admin',57,'nocore_doctor_order_typeID','Típus',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(53,'admin',57,'startTime','Rendelés mettől','',0,1,NULL,NULL,NULL,2,'2014-02-10 19:51:47'),(54,'admin',57,'stopTime','Rendelés meddig',NULL,0,1,NULL,NULL,NULL,2,'2014-02-10 19:52:14'),(55,'admin',57,'barcodeStart','Vonalkód kezdés',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(56,'admin',57,'barcodeStop','Vonalkód végzés',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(57,'admin',57,'doctorIs','Orvos',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(58,'admin',57,'nurseIs','Nővér',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(59,'admin',57,'nocore_doctor_order_dayIDEmpty','Üres Nap!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(60,'admin',57,'startTimeEmpty','Üres Mettől!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(61,'admin',57,'stopTimeEmpty','Üres Meddig!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(62,'admin',10,'message','Üzenet',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(63,'admin',10,'messageEmpty','Üres Üzenet!',NULL,0,1,NULL,NULL,NULL,2,'2013-11-19 20:11:09'),(64,'admin',64,'sealNumberDeputy','Helyettes',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(65,'admin',10,'stopDate','Meddig','',0,1,NULL,NULL,NULL,2,'2013-11-19 20:24:30'),(66,'admin',64,'sealNumberEmpty','Üres Orvos!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(67,'admin',64,'sealNumberDeputyEmpty','Üres Helyettes!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(68,'admin',55,'textValue','Szöveg','',0,1,NULL,NULL,NULL,NULL,NULL),(69,'admin',10,'advertFileNameEmpty','Üres Kép!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(70,'admin',55,'textValueEmpty','Üres Szöveg!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(71,'admin',53,'sealNumber','Pecsétszám',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(72,'admin',53,'licence','Liszensz',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(73,'admin',10,'information','Információ','',0,1,NULL,NULL,NULL,2,'2013-11-19 20:36:54'),(74,'admin',53,'nurse','Nővér',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(75,'admin',53,'bannerMaximum','Banner',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(76,'admin',53,'marqueeMaximum','Fényújság',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(77,'admin',53,'statusName','Állapot',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(78,'admin',53,'sealNumberEmpty','Üres Pecsétszám!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(79,'admin',53,'licenceEmpty','Üres Liszensz!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(80,'admin',60,'nocore_clinicID','Rendelő',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(81,'admin',60,'nocore_clinicIDEmpty','Üres Rendelő!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(82,'admin',50,'sealNumber','Orvos',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(83,'admin',10,'nocore_statusIDEmpty','Üres állapot!',NULL,0,1,NULL,NULL,NULL,2,'2013-11-19 20:15:33'),(84,'admin',20,'fgcolor','Előtérszín',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(85,'admin',20,'bgcolor','Háttérszín',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(86,'admin',20,'path','Útvonal','',0,1,NULL,NULL,NULL,NULL,NULL),(313,'admin',17,'name','Modul',NULL,NULL,1,NULL,2,'2024-05-10 21:15:21',NULL,NULL),(89,'admin',17,'titleEmpty','Üres Megnevezés!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(90,'admin',3,'name','Csoport',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(91,'admin',3,'actionCount','User',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(92,'admin',10,'rightsCount','Jog',NULL,0,1,NULL,NULL,NULL,2,'2013-11-19 20:21:09'),(93,'admin',3,'nameEmpty','Üres Csoport',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(94,'admin',10,'core_groupsID','Csoport',NULL,0,1,NULL,NULL,NULL,2,'2013-11-19 20:35:33'),(95,'admin',10,'core_groupsIDEmpty','Üres Csoport!',NULL,0,1,NULL,NULL,NULL,2,'2013-11-19 20:35:41'),(96,'admin',61,'core_supportID','Támogatás',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(97,'admin',61,'downloadURL','Melléklet',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(98,'admin',61,'core_supportIDEmpty','Üres támogatás!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(99,'admin',1,'core_userstitleID','Titulus',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(100,'admin',1,'surname','Vezetéknév',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(101,'admin',1,'forename','Keresztnév','',0,1,NULL,NULL,NULL,NULL,NULL),(102,'admin',1,'nickname','Becenév',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(103,'admin',1,'password','Jelszó',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(104,'admin',1,'password2','Jelszó megerősítés',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(105,'admin',1,'oldpassword','Régi jelszó',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(106,'admin',1,'pictureURL','Kép',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(107,'admin',1,'activationWhen','Aktiválva',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(108,'admin',1,'newsletter','Hirlevél',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(109,'admin',1,'myData','Adataim',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(110,'admin',10,'passchange','Jelszóváltás',NULL,0,1,NULL,NULL,NULL,2,'2013-10-02 10:37:49'),(111,'admin',1,'registration','Regisztráció',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(112,'admin',1,'nicknameEmpty','Üres Becenév!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(113,'admin',1,'passwordEmpty','Üres Jelszó!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(114,'admin',1,'password2Empty','Üres Jelszó megerősítés!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(115,'admin',1,'passwordPassword','Hibás jelszó megerősítés!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(116,'admin',1,'passwordOldEmpty','Üres Régi jelszó!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(117,'admin',1,'surnameEmpty','Üres Vezetéknév!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(118,'admin',1,'forenameEmpty','Üres Keresznév!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(119,'admin',10,'emailEmpty','Üres Email!',NULL,0,1,NULL,NULL,NULL,2,'2013-11-19 20:01:36'),(120,'admin',10,'emailDuplicate','Már van ilyen Email!',NULL,0,1,NULL,NULL,NULL,2,'2013-11-19 20:01:56'),(121,'admin',1,'notFoundUser','Nem létező Rövidnév/Jelszó!',NULL,0,1,NULL,NULL,NULL,NULL,NULL),(122,'admin',10,'systemType','Rendszertípus',NULL,NULL,1,NULL,2,'2013-09-05 22:40:41',2,'2013-11-20 09:31:26'),(123,'admin',10,'fieldType','Típus',NULL,NULL,1,NULL,2,'2013-09-05 22:41:35',2,'2013-11-19 20:03:32'),(124,'admin',10,'fieldName','Megnevezés',NULL,NULL,1,NULL,2,'2013-09-05 22:41:59',2,'2013-11-19 20:02:54'),(125,'admin',10,'fieldValue','Érték',NULL,NULL,1,NULL,2,'2013-09-05 22:42:18',2,'2013-11-19 20:04:14'),(126,'admin',10,'autoload','Autobetöltés',NULL,NULL,1,NULL,2,'2013-09-05 22:43:07',2,'2013-11-19 19:51:40'),(127,'admin',10,'systemTypeEmpty','Üres Rendszertípus!',NULL,NULL,1,NULL,2,'2013-09-05 22:43:39',2,'2013-11-20 09:31:16'),(128,'admin',10,'fieldTypeEmpty','Üres Típus!',NULL,NULL,1,NULL,2,'2013-09-05 22:44:46',2,'2013-11-19 20:03:18'),(129,'admin',10,'fieldNameEmpty','Üres Megnevezés!',NULL,NULL,1,NULL,2,'2013-09-05 22:46:17',2,'2013-11-19 20:02:37'),(130,'admin',10,'fieldValueEmpty','Üres Érték!',NULL,NULL,1,NULL,2,'2013-09-05 22:46:41',2,'2013-11-19 20:04:03'),(131,'admin',22,'actionCount','Intézkedés',NULL,NULL,1,NULL,2,'2013-09-05 22:51:31',NULL,NULL),(132,'admin',22,'core_support_topicID','Téma',NULL,NULL,1,NULL,2,'2013-09-05 22:51:59',NULL,NULL),(133,'admin',22,'core_support_typeID','Típus',NULL,NULL,1,NULL,2,'2013-09-05 22:52:21',NULL,NULL),(134,'admin',22,'core_support_statusID','Állapot',NULL,NULL,1,NULL,2,'2013-09-05 22:52:42',NULL,NULL),(135,'admin',22,'planTime','Tervezett idő',NULL,NULL,1,NULL,2,'2013-09-05 22:53:06',NULL,NULL),(136,'admin',22,'realTime','Valós idő',NULL,NULL,1,NULL,2,'2013-09-05 22:53:26',NULL,NULL),(137,'admin',22,'comment','Megjegyzés',NULL,NULL,1,NULL,2,'2013-09-05 22:55:35',NULL,NULL),(138,'admin',22,'insertUserID','Rögzítő',NULL,NULL,1,NULL,2,'2013-09-05 22:56:01',NULL,NULL),(139,'admin',10,'nameEmpty','Üres Megnevezés!',NULL,NULL,1,NULL,2,'2013-09-05 22:56:31',2,'2013-11-19 20:50:32'),(140,'admin',22,'core_support_topicIDEmpty','Üres Téma!',NULL,NULL,1,NULL,2,'2013-09-05 22:57:05',NULL,NULL),(141,'admin',22,'core_support_statusIDEmpty','Üres Állapot!',NULL,NULL,1,NULL,2,'2013-09-05 22:57:32',NULL,NULL),(142,'admin',38,'insertName','Kitől',NULL,NULL,1,NULL,2,'2013-09-05 23:24:50',NULL,NULL),(143,'admin',38,'targetUserID','Kinek',NULL,NULL,1,NULL,2,'2013-09-05 23:25:14',2,'2013-10-07 16:06:10'),(144,'admin',38,'targetGroupID','Kiknek',NULL,NULL,1,NULL,2,'2013-09-05 23:25:44',NULL,NULL),(145,'admin',38,'subject','Tárgy',NULL,NULL,1,NULL,2,'2013-09-05 23:26:24',NULL,NULL),(146,'admin',10,'actionCount','Mennyiség',NULL,NULL,1,NULL,2,'2013-11-19 19:44:58',NULL,NULL),(147,'admin',38,'readWhen','Olvasva',NULL,NULL,1,NULL,2,'2013-09-05 23:27:12',NULL,NULL),(148,'admin',38,'copy','Válasz',NULL,NULL,1,NULL,2,'2013-09-05 23:27:37',NULL,NULL),(149,'admin',38,'answer','Válasz erre',NULL,NULL,1,NULL,2,'2013-09-05 23:27:55',NULL,NULL),(150,'admin',38,'subjectEmpty','Üres Tárgy!',NULL,NULL,1,NULL,2,'2013-09-05 23:28:23',NULL,NULL),(151,'admin',10,'viewButtonText','Megtekintés',NULL,1,1,NULL,2,'2013-09-10 12:31:44',2,'2013-09-10 12:48:34'),(152,'frontend',10,'labelWaitNurse','NŐVÉR:',NULL,1,1,NULL,2,'2013-09-10 15:54:02',2,'2013-09-19 15:08:43'),(153,'admin',10,'deleteGroup','Törlés',NULL,NULL,1,NULL,2,'2013-09-16 14:41:19',2,'2013-10-08 13:06:52'),(154,'admin',10,'topMessage','//A Honlap feltőltése folyamatban ezért 1-2 funkció még nem működik.',NULL,1,1,NULL,2,'2013-09-23 15:24:00',2,'2013-09-23 15:36:21'),(155,'admin',10,'list','List',NULL,NULL,1,NULL,2,'2013-09-23 15:48:57',NULL,NULL),(156,'admin',10,'add','Felvitel',NULL,NULL,1,NULL,2,'2013-09-23 15:49:28',2,'2016-03-04 09:05:11'),(157,'admin',10,'copy','Másolás',NULL,NULL,1,NULL,2,'2013-09-23 15:55:32',NULL,NULL),(158,'admin',10,'edit','Módosítás',NULL,NULL,1,NULL,2,'2013-09-23 15:58:07',NULL,NULL),(159,'admin',10,'view','Megtekintés',NULL,NULL,1,NULL,2,'2013-09-23 15:59:04',NULL,NULL),(160,'admin',10,'delete','Törlés',NULL,NULL,1,NULL,2,'2013-09-23 16:00:40',NULL,NULL),(161,'admin',10,'first','Első',NULL,NULL,1,NULL,2,'2013-09-23 16:02:21',2,'2013-09-23 16:04:13'),(162,'admin',10,'prev','Elöző oldal',NULL,NULL,1,NULL,2,'2013-09-23 16:05:21',NULL,NULL),(163,'admin',10,'prevItem','Elöző tétel',NULL,NULL,1,NULL,2,'2013-09-23 16:05:34',NULL,NULL),(164,'admin',10,'next','Következő oldal',NULL,NULL,1,NULL,2,'2013-09-23 16:07:58',NULL,NULL),(165,'admin',10,'nextItem','Következő tétel',NULL,NULL,1,NULL,2,'2013-09-23 16:08:12',NULL,NULL),(166,'admin',10,'last','Utolsó',NULL,NULL,1,NULL,2,'2013-09-23 16:09:14',NULL,NULL),(167,'admin',10,'layoutfull','Teljes',NULL,NULL,1,NULL,2,'2013-09-23 16:10:10',NULL,NULL),(168,'admin',10,'layoutmini','Behívó',NULL,NULL,1,NULL,2,'2013-09-23 16:10:32',NULL,NULL),(169,'admin',10,'layoutsetup','Beállítások',NULL,NULL,1,NULL,2,'2013-09-23 16:10:54',NULL,NULL),(170,'admin',10,'search','Keresés',NULL,NULL,1,NULL,2,'2013-09-23 16:12:03',NULL,NULL),(171,'admin',10,'searchOff','Összes',NULL,NULL,1,NULL,2,'2013-09-23 16:14:28',NULL,NULL),(172,'admin',10,'yes','Igen',NULL,NULL,1,NULL,2,'2013-09-23 16:15:25',NULL,NULL),(173,'admin',10,'no','Nem',NULL,NULL,1,NULL,2,'2013-09-23 16:15:37',NULL,NULL),(174,'admin',10,'save','Mentés',NULL,NULL,1,NULL,2,'2013-09-23 16:17:50',NULL,NULL),(175,'admin',10,'saveNoBack','Mentés és maradok',NULL,NULL,1,NULL,2,'2013-09-23 16:18:17',NULL,NULL),(176,'admin',10,'back','Vissza',NULL,NULL,1,NULL,2,'2013-09-23 16:18:45',NULL,NULL),(177,'admin',10,'noRecord','Nincs találat!',NULL,NULL,1,NULL,2,'2013-09-23 16:22:27',NULL,NULL),(178,'admin',10,'noRights','Nincs jogosultság!',NULL,NULL,1,NULL,2,'2013-09-23 16:23:52',NULL,NULL),(179,'admin',10,'order','Rendezettség',NULL,NULL,1,NULL,2,'2013-09-23 16:24:29',NULL,NULL),(180,'admin',10,'logout','Kijelentkezés',NULL,NULL,1,NULL,2,'2013-09-23 16:25:38',NULL,NULL),(181,'admin',10,'description','Leírás',NULL,NULL,1,NULL,2,'2013-09-23 16:26:17',NULL,NULL),(182,'admin',10,'item','Tétel',NULL,NULL,1,NULL,2,'2013-09-23 20:38:58',NULL,NULL),(183,'admin',10,'page','Oldal',NULL,NULL,1,NULL,2,'2013-09-23 20:39:58',NULL,NULL),(184,'admin',10,'myDataChange','Adataim',NULL,NULL,1,NULL,2,'2013-09-23 20:41:53',NULL,NULL),(185,'admin',10,'passwordChange','Jelszóváltás',NULL,NULL,1,NULL,2,'2013-09-23 20:42:39',NULL,NULL),(186,'admin',10,'zoomin','Kicsi',NULL,NULL,1,NULL,2,'2013-09-23 20:47:40',2,'2013-10-04 08:58:10'),(187,'admin',10,'zoomout','Nagy',NULL,NULL,1,NULL,2,'2013-09-23 20:49:22',NULL,NULL),(188,'admin',10,'zoomClose','Bezárás',NULL,NULL,1,NULL,2,'2013-09-23 20:49:42',NULL,NULL),(189,'admin',10,'itemSelect','- Kérem válasszon -',NULL,NULL,1,NULL,2,'2013-09-23 21:04:30',NULL,NULL),(190,'admin',10,'insertWhen','Rögzítve',NULL,NULL,1,NULL,2,'2013-09-23 21:11:15',NULL,NULL),(191,'admin',10,'newItem','Új tétel',NULL,NULL,1,NULL,2,'2013-09-23 21:13:35',NULL,NULL),(192,'admin',10,'topLogo','//Backend',NULL,NULL,1,NULL,2,'2013-09-23 21:23:13',2,'2013-09-23 21:29:03'),(193,'admin',10,'sec','másodperc',NULL,NULL,1,NULL,2,'2013-09-23 21:24:47',2,'2013-09-23 21:43:09'),(194,'admin',10,'system','Elfekvő Admin 1.0',NULL,NULL,1,NULL,2,'2013-09-23 22:23:12',2,'2016-05-03 17:33:57'),(195,'admin',55,'sequenceId','Sorrend',NULL,NULL,1,NULL,2,'2013-09-24 09:41:18',NULL,NULL),(196,'admin',10,'core_advert_advertiserID','Hírdető',NULL,NULL,1,NULL,2,'2013-09-24 12:57:12',2,'2013-11-19 19:54:57'),(197,'admin',10,'core_advert_zoneID','Zóna',NULL,NULL,1,NULL,2,'2013-09-24 12:59:14',2,'2013-11-19 19:56:22'),(198,'admin',10,'activateWhen','Mettől',NULL,NULL,1,NULL,2,'2013-09-24 12:59:45',2,'2013-11-19 19:49:55'),(199,'admin',10,'deactivateWhen','Meddig',NULL,NULL,1,NULL,2,'2013-09-24 12:59:58',2,'2013-11-19 19:50:07'),(200,'admin',10,'playMaxNum','Maximális lejátszás',NULL,NULL,1,NULL,2,'2013-09-24 13:01:06',2,'2013-11-19 20:19:24'),(201,'admin',10,'playCounter','Lejátszott',NULL,NULL,1,NULL,2,'2013-09-24 13:01:25',2,'2013-11-19 20:18:53'),(202,'admin',10,'clickMaxNum','Maximális klikkelés',NULL,NULL,1,NULL,2,'2013-09-24 13:01:49',2,'2013-11-19 19:54:01'),(203,'admin',10,'clickCounter','Klikkeltek',NULL,NULL,1,NULL,2,'2013-09-24 13:02:12',2,'2013-11-19 19:53:18'),(204,'admin',10,'priceMax','Maximálisan költhető',NULL,NULL,1,NULL,2,'2013-09-24 13:02:38',2,'2013-11-19 20:20:28'),(205,'admin',10,'priceActual','Elköltött',NULL,NULL,1,NULL,2,'2013-09-24 13:02:57',2,'2013-11-19 20:20:05'),(206,'admin',10,'address','Utca, házszám',NULL,NULL,1,NULL,2,'2013-09-24 13:59:15',2,'2013-11-19 20:34:36'),(207,'admin',13,'contactName','Kapcsolattartó',NULL,NULL,1,NULL,2,'2013-09-24 13:59:35',NULL,NULL),(208,'admin',13,'phone','Telefon',NULL,NULL,1,NULL,2,'2013-09-24 13:59:49',NULL,NULL),(209,'admin',13,'fax','Fax',NULL,NULL,1,NULL,2,'2013-09-24 14:00:01',2,'2013-09-24 14:00:10'),(210,'admin',13,'mobile','Mobil',NULL,NULL,1,NULL,2,'2013-09-24 14:00:25',NULL,NULL),(211,'admin',10,'email','Email',NULL,NULL,1,NULL,2,'2013-09-24 14:00:40',2,'2013-11-19 20:01:18'),(212,'admin',13,'website','Weboldal',NULL,NULL,1,NULL,2,'2013-09-24 14:00:55',NULL,NULL),(213,'admin',10,'nameDuplicate','Már van ilyen!',NULL,NULL,1,NULL,2,'2013-09-24 12:56:20',2,'2013-11-19 20:13:03'),(214,'admin',10,'advertFileName','Kép',NULL,NULL,1,NULL,2,'2013-09-24 14:17:35',NULL,NULL),(215,'admin',6,'textValue','Szöveges tartalom',NULL,NULL,1,NULL,2,'2013-09-24 14:18:08',NULL,NULL),(216,'admin',6,'jumpURL','Link',NULL,NULL,1,NULL,2,'2013-09-24 14:18:24',NULL,NULL),(217,'admin',6,'core_advert_groupID','Reklám csoport',NULL,NULL,1,NULL,2,'2013-09-24 14:19:29',NULL,NULL),(218,'admin',6,'core_advert_campaignID','Kampány',NULL,NULL,1,NULL,2,'2013-09-24 14:19:51',NULL,NULL),(219,'admin',6,'core_advert_sizeID','Méret',NULL,NULL,1,NULL,2,'2013-09-24 14:20:06',NULL,NULL),(220,'admin',6,'core_advert_sourceID','Forrás',NULL,NULL,1,NULL,2,'2013-09-24 14:20:22',NULL,NULL),(221,'admin',10,'sizeWidth','Szélesség',NULL,NULL,1,NULL,2,'2013-09-24 14:20:42',2,'2013-11-19 20:23:02'),(222,'admin',10,'sizeHeight','Magasság',NULL,NULL,1,NULL,2,'2013-09-24 14:20:57',2,'2013-11-19 20:22:45'),(223,'admin',6,'changeTime','Csere idő',NULL,NULL,1,NULL,2,'2013-09-24 14:21:20',2,'2013-11-05 09:22:53'),(224,'admin',10,'core_configsIDEmpty','Üres Modul!',NULL,NULL,1,NULL,2,'2013-09-24 14:28:51',2,'2013-11-19 19:57:16'),(225,'admin',2,'core_usersIDEmpty','Üres Felhasználó!',NULL,NULL,1,NULL,2,'2013-09-24 14:29:23',NULL,NULL),(226,'admin',2,'core_usersID','Felhasználó',NULL,NULL,1,NULL,2,'2013-09-24 14:29:53',2,'2013-09-24 14:30:40'),(227,'admin',10,'import','Import',NULL,1,1,NULL,2,'2013-09-30 10:48:03',NULL,NULL),(228,'admin',10,'fileNameEmpty','Üres Fájlnév!',NULL,NULL,1,NULL,2,'2013-09-30 11:03:52',2,'2013-11-20 08:46:27'),(229,'admin',83,'importOK','Adatok importja sikeres!',NULL,NULL,1,NULL,2,'2013-09-30 15:18:45',2,'2013-09-30 15:19:15'),(230,'admin',83,'importBAD','Adatok importja sikertelen!',NULL,NULL,1,NULL,2,'2013-09-30 15:58:52',NULL,NULL),(231,'admin',10,'fileName','Fájlnév',NULL,NULL,1,NULL,2,'2013-10-01 08:53:24',2,'2013-11-20 08:46:12'),(232,'admin',10,'core_configsID','Modul',NULL,NULL,1,NULL,2,'2013-10-01 08:55:02',2,'2013-11-19 19:57:02'),(233,'admin',10,'mydata','Adataim',NULL,NULL,1,NULL,2,'2013-10-02 08:36:01',2,'2013-10-02 08:38:17'),(234,'admin',1,'oldpasswordEmpty','Üres Régi jelszó!',NULL,NULL,1,NULL,2,'2013-10-02 09:45:25',NULL,NULL),(235,'admin',1,'oldpasswordBad','Hibás Régi jelszó!',NULL,NULL,1,NULL,2,'2013-10-02 10:28:58',NULL,NULL),(236,'admin',10,'nocore_doctorID','Orvos',NULL,1,1,NULL,2,'2013-11-19 19:35:40',NULL,NULL),(237,'admin',10,'pdf','PDF',NULL,NULL,1,NULL,2,'2013-10-09 12:27:31',NULL,NULL),(238,'admin',10,'calendarToday','Ma',NULL,NULL,1,NULL,2,'2013-10-14 15:43:12',NULL,NULL),(239,'admin',10,'nocore_patientID','Beteg',NULL,NULL,1,NULL,2,'2013-10-15 13:21:22',2,'2013-11-19 20:18:02'),(240,'admin',75,'startWhen','Mettől',NULL,NULL,1,NULL,2,'2013-10-15 13:21:55',NULL,NULL),(241,'admin',75,'stopWhen','Meddig',NULL,NULL,1,NULL,2,'2013-10-15 13:22:44',NULL,NULL),(242,'admin',10,'nocore_doctorIDEmpty','Üres Orvos!',NULL,NULL,1,NULL,2,'2013-11-19 19:35:27',NULL,NULL),(243,'admin',10,'week','Hét',NULL,NULL,1,NULL,2,'2013-10-15 14:03:51',NULL,NULL),(244,'admin',75,'nocore_reservation_typeID','Típus',NULL,NULL,1,NULL,2,'2013-10-16 09:15:46',2,'2014-02-26 13:50:02'),(245,'admin',10,'id','Azonosító',NULL,NULL,1,NULL,2,'2013-10-16 09:22:28',2,'2013-11-19 20:06:41'),(246,'admin',83,'productId','Cikkszám',NULL,NULL,1,NULL,2,'2013-11-19 20:48:14',NULL,NULL),(247,'admin',75,'title','Bejegyzés',NULL,NULL,1,NULL,2,'2013-10-16 13:09:43',2,'2013-10-16 13:13:08'),(248,'admin',10,'startDate','Mettől',NULL,NULL,1,NULL,2,'2013-10-17 08:32:02',2,'2014-02-06 08:58:36'),(249,'admin',10,'zipcode','Irányítőszám',NULL,NULL,1,NULL,2,'2013-10-21 12:07:09',2,'2013-11-19 20:25:47'),(250,'admin',10,'settlement','Település',NULL,NULL,1,NULL,2,'2013-10-21 12:07:34',2,'2013-11-19 20:22:08'),(251,'admin',53,'phone','Telefon',NULL,NULL,1,NULL,2,'2013-10-21 12:08:39',NULL,NULL),(252,'admin',10,'core_localserverIDEmpty','Üres Szerver!',NULL,NULL,1,NULL,2,'2013-11-04 20:57:08',NULL,NULL),(253,'admin',10,'min','perc',NULL,NULL,1,NULL,2,'2013-11-04 20:57:08',NULL,NULL),(254,'admin',10,'dateViewFormat','(éé-hh-nn)',NULL,NULL,1,NULL,2,'2013-11-05 08:37:40',NULL,NULL),(255,'admin',10,'piece','darab',NULL,NULL,1,NULL,2,'2013-11-05 08:40:04',NULL,NULL),(256,'admin',10,'timeViewFormat','(óó:pp:mm)',NULL,NULL,1,NULL,2,'2013-11-05 08:45:04',2,'2013-11-05 08:46:30'),(257,'admin',10,'weekly','Hét',NULL,NULL,1,NULL,2,'2013-11-06 10:36:03',2,'2014-01-27 11:45:04'),(258,'admin',10,'daily','Nap',NULL,NULL,1,NULL,2,'2013-11-06 10:36:58',2,'2014-01-27 11:44:43'),(259,'admin',53,'patientTime','Páciens/Idő',NULL,NULL,1,NULL,2,'2013-11-11 11:38:43',2,'2013-11-11 11:41:03'),(260,'admin',53,'alwaysView','Midig látható',NULL,NULL,1,NULL,2,'2013-11-19 08:55:16',NULL,NULL),(261,'admin',10,'core_localserverID','Szerver',NULL,NULL,1,NULL,2,'2013-11-19 15:57:43',NULL,NULL),(262,'admin',10,'monthly','Hónap',NULL,NULL,1,NULL,2,'2014-01-10 10:40:23',2,'2014-01-27 11:45:43'),(263,'admin',10,'journal','Napló',NULL,NULL,1,NULL,2,'2014-01-27 11:46:03',NULL,NULL),(264,'admin',10,'journal','Napló',NULL,NULL,1,NULL,2,'2014-01-27 11:46:03',NULL,NULL),(265,'admin',75,'startDateTime','Mettől',NULL,NULL,1,NULL,2,'2014-02-06 08:55:28',NULL,NULL),(266,'admin',75,'stopDateTime','Meddig',NULL,NULL,1,NULL,2,'2014-02-06 08:55:44',NULL,NULL),(267,'admin',56,'patientIDEmpty','Üres Páciens!',NULL,NULL,1,NULL,2,'2014-02-06 13:05:15',2,'2014-02-24 14:48:20'),(268,'admin',75,'nocore_patientIDEmpty','Üres Páciens!',NULL,NULL,1,NULL,2,'2014-02-06 13:05:15',NULL,NULL),(269,'admin',57,'startTimeReserve','Előjegyzés mettől',NULL,NULL,1,NULL,2,'2014-02-10 19:54:02',NULL,NULL),(270,'admin',57,'stopTimeReserve','Előjegyzés meddig',NULL,NULL,1,NULL,2,'2014-02-10 19:54:29',NULL,NULL),(271,'admin',10,'deleteReally','Valóban törlöd?',NULL,1,1,NULL,2,'2014-02-16 18:58:12',2,'2016-03-04 09:06:01'),(272,'admin',10,'day','nap',NULL,NULL,1,NULL,2,'2014-02-16 21:20:44',NULL,NULL),(273,'admin',53,'reserveDayMin','Előjegyzés Min',NULL,NULL,1,NULL,2,'2014-02-16 21:21:34',NULL,NULL),(274,'admin',53,'reserveDayMax','Előjegyzés Max',NULL,NULL,1,NULL,2,'2014-02-16 21:21:46',NULL,NULL),(275,'admin',56,'nocore_doctor_card_typeID','Kártya típus',NULL,NULL,1,NULL,2,'2014-02-24 13:38:15',NULL,NULL),(276,'admin',56,'nocore_doctor_card_typeIDEmpty','Üres kártya típus',NULL,NULL,1,NULL,2,'2014-02-24 13:38:15',2,'2014-02-24 13:43:38'),(277,'admin',NULL,'nocore_patient_statusID','Státusz',NULL,NULL,1,NULL,2,'2014-03-13 15:20:33',2,'2014-03-13 15:20:58'),(278,'admin',83,'name','Termék név',NULL,NULL,1,NULL,2,'2013-11-19 20:48:14',NULL,NULL),(279,'admin',83,'descriptionPublic','Megjegyzés',NULL,NULL,1,NULL,2,'2013-11-19 20:48:14',NULL,NULL),(280,'admin',83,'descriptionPrivate','Belső megjegyzés',NULL,NULL,1,NULL,2,'2013-11-19 20:48:14',NULL,NULL),(281,'admin',83,'storageWhere','Tárhely',NULL,NULL,1,NULL,2,'2013-11-19 20:48:14',NULL,NULL),(282,'admin',83,'quantity','Mennyiség',NULL,NULL,1,NULL,2,'2013-11-19 20:48:14',NULL,NULL),(283,'admin',83,'updateWhen','Frissítve',NULL,NULL,1,NULL,2,'2013-11-19 20:48:14',NULL,NULL),(284,'admin',83,'price','Átadási ár',NULL,NULL,1,NULL,2,'2013-11-19 20:48:14',NULL,NULL),(285,'admin',83,'makeWho','Gyártmány',NULL,NULL,1,NULL,2,'2013-11-19 20:48:14',NULL,NULL),(286,'admin',83,'makeType','Típus',NULL,NULL,1,NULL,2,'2013-11-19 20:48:14',NULL,NULL),(287,'admin',83,'products_statusID','Állapot',NULL,NULL,1,NULL,2,'2013-11-19 20:48:14',NULL,NULL),(288,'admin',83,'products_statusID','Állapot',NULL,NULL,1,NULL,2,'2016-10-03 21:11:43',NULL,NULL),(289,'admin',84,'name','Megnevezés',NULL,NULL,1,NULL,2,'2016-10-03 22:59:08',NULL,NULL),(290,'admin',1,'firmName','Cég',NULL,NULL,1,NULL,2,'2016-10-04 07:06:06',NULL,NULL),(291,'admin',1,'address','Cím',NULL,NULL,1,NULL,2,'2016-10-04 07:06:24',NULL,NULL),(292,'admin',1,'contactName','Kapcsolattartó név',NULL,NULL,1,NULL,2,'2016-10-04 07:07:43',NULL,NULL),(293,'admin',1,'contactPhone','Kapcsolattartó telefon',NULL,NULL,1,NULL,2,'2016-10-04 07:08:03',NULL,NULL),(295,'admin',83,'productIdEmpty','Üres Cikkszám!',NULL,NULL,1,NULL,2,'2016-10-04 07:28:01',NULL,NULL),(296,'admin',83,'nameEmpty','Üres Megnevezés!',NULL,NULL,1,NULL,2,'2016-10-04 07:28:42',NULL,NULL),(297,'admin',83,'products_statusIDEmpty','Üres Állapot!',NULL,NULL,1,NULL,2,'2016-10-04 07:29:17',NULL,NULL),(298,'admin',1,'nameEmpty','Üres Név!',NULL,NULL,1,NULL,2,'2016-10-04 07:47:59',NULL,NULL),(299,'admin',1,'addressEmpty','Üres Cím!',NULL,NULL,1,NULL,2,'2016-10-04 07:48:18',NULL,NULL),(300,'admin',1,'contactNameEmpty','Üres Kapcsolattartó Név!',NULL,NULL,1,NULL,2,'2016-10-04 07:49:26',NULL,NULL),(301,'admin',1,'contactPhoneEmpty','Üres Kapcsolattartó Telefon!',NULL,NULL,1,NULL,2,'2016-10-04 07:49:48',NULL,NULL),(304,'admin',83,'core_usersID','Cég',NULL,NULL,1,NULL,2,'2016-10-04 08:03:58',NULL,NULL),(305,'admin',83,'own','Saját',NULL,NULL,1,NULL,2,'2016-11-13 23:26:18',NULL,NULL),(306,'admin',87,'path','Útvonal',NULL,NULL,1,NULL,2,'2024-05-10 20:40:40',NULL,NULL),(307,'admin',87,'fgcolor','Előtér',NULL,NULL,1,NULL,2,'2024-05-10 20:41:34',NULL,NULL),(308,'admin',87,'bgcolor','Háttér',NULL,NULL,1,NULL,2,'2024-05-10 20:42:11',NULL,NULL),(309,'admin',87,'name','Megnevezés',NULL,NULL,1,NULL,2,'2024-05-10 20:42:41',NULL,NULL),(314,'admin',17,'title','Megnevezés',NULL,NULL,1,NULL,2,'2024-05-10 21:16:06',NULL,NULL),(312,'admin',17,'tplName','Template',NULL,NULL,1,NULL,2,'2024-05-10 21:12:09',NULL,NULL);
/*!40000 ALTER TABLE `core_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_messagewall`
--

DROP TABLE IF EXISTS `core_messagewall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_messagewall` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `targetUserID` int unsigned NOT NULL DEFAULT '0',
  `targetGroupID` int unsigned DEFAULT NULL,
  `subject` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `active` int unsigned DEFAULT '1',
  `core_localserverID` int unsigned DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `insertUserID` int unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  `isReadWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_messagewall`
--

LOCK TABLES `core_messagewall` WRITE;
/*!40000 ALTER TABLE `core_messagewall` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_messagewall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_support`
--

DROP TABLE IF EXISTS `core_support`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_support` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `core_configsID` int unsigned DEFAULT NULL,
  `core_support_topicID` int unsigned DEFAULT '0',
  `core_support_typeID` int unsigned DEFAULT '0',
  `planTime` int unsigned DEFAULT NULL,
  `realTime` int unsigned DEFAULT NULL,
  `active` int unsigned DEFAULT '1',
  `nocore_doctorID` int unsigned DEFAULT NULL,
  `core_localserverID` int unsigned DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `comment` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `core_support_statusID` int unsigned DEFAULT '1',
  `insertUserID` int unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  `isReadWhen` datetime DEFAULT NULL,
  `isReadUserID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_support`
--

LOCK TABLES `core_support` WRITE;
/*!40000 ALTER TABLE `core_support` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_support` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_support_action`
--

DROP TABLE IF EXISTS `core_support_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_support_action` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `core_supportID` int unsigned DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `planTime` int unsigned DEFAULT NULL,
  `realTime` int unsigned DEFAULT NULL,
  `downloadURL` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `active` int unsigned DEFAULT '1',
  `nocore_doctorID` int unsigned DEFAULT NULL,
  `core_localserverID` int unsigned DEFAULT NULL,
  `insertUserID` int unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  `isReadWhen` datetime DEFAULT NULL,
  `isReadUserID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_support_action`
--

LOCK TABLES `core_support_action` WRITE;
/*!40000 ALTER TABLE `core_support_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_support_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_support_status`
--

DROP TABLE IF EXISTS `core_support_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_support_status` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `active` int unsigned DEFAULT '1',
  `insertUserID` int unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_support_status`
--

LOCK TABLES `core_support_status` WRITE;
/*!40000 ALTER TABLE `core_support_status` DISABLE KEYS */;
INSERT INTO `core_support_status` VALUES (1,'Bejelentve',NULL,1,2,'2012-03-30 15:59:55',NULL,NULL),(2,'Folyamatban',NULL,1,2,'2012-03-30 16:00:09',NULL,NULL),(3,'Továbbítva',NULL,1,2,'2012-03-30 16:00:22',NULL,NULL),(4,'Javítva',NULL,1,2,'2012-03-30 16:00:31',NULL,NULL),(5,'Javítva és értesítve',NULL,1,2,'2012-03-30 16:01:07',NULL,NULL),(6,'Lezárva',NULL,1,2,'2012-03-30 16:01:22',NULL,NULL),(7,'Tervezett',NULL,1,2,'2012-03-30 16:01:33',NULL,NULL),(8,'Törölve',NULL,1,2,'2012-03-30 16:01:42',NULL,NULL);
/*!40000 ALTER TABLE `core_support_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_support_topic`
--

DROP TABLE IF EXISTS `core_support_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_support_topic` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `active` int unsigned DEFAULT '1',
  `insertUserID` int unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_support_topic`
--

LOCK TABLES `core_support_topic` WRITE;
/*!40000 ALTER TABLE `core_support_topic` DISABLE KEYS */;
INSERT INTO `core_support_topic` VALUES (1,'Hiba',NULL,1,2,'2012-03-30 15:58:36',NULL,NULL),(2,'Bővítés',NULL,1,2,'2012-03-30 15:59:12',NULL,NULL),(3,'Módosítás',NULL,1,2,'2012-03-30 15:59:24',NULL,NULL),(4,'Érdeklődés',NULL,1,2,'2013-08-02 12:39:17',NULL,NULL);
/*!40000 ALTER TABLE `core_support_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_support_type`
--

DROP TABLE IF EXISTS `core_support_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_support_type` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `active` int unsigned DEFAULT '1',
  `insertUserID` int unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_support_type`
--

LOCK TABLES `core_support_type` WRITE;
/*!40000 ALTER TABLE `core_support_type` DISABLE KEYS */;
INSERT INTO `core_support_type` VALUES (1,'Frontend',NULL,1,2,'2012-03-30 16:02:10',NULL,NULL),(2,'Admin',NULL,1,2,'2012-03-30 16:02:18',NULL,NULL);
/*!40000 ALTER TABLE `core_support_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_themes`
--

DROP TABLE IF EXISTS `core_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_themes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `CSSFile` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `path` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `bgcolor` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `fgcolor` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `active` int unsigned DEFAULT '1',
  `insertUserID` int unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  `isReadWhen` datetime DEFAULT NULL,
  `isReadUserID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_themes`
--

LOCK TABLES `core_themes` WRITE;
/*!40000 ALTER TABLE `core_themes` DISABLE KEYS */;
INSERT INTO `core_themes` VALUES (1,'black',NULL,'edgablack','#000000','#FFFFFF',NULL,1,2,'2010-09-24 00:41:33',2,'2010-09-27 14:08:51','2010-09-24 00:41:33',2),(2,'white',NULL,'edgawhite','#FFFFFF','#000000',NULL,1,2,'2010-09-24 00:41:53',2,'2010-09-27 14:16:18','2010-09-24 00:41:53',2),(3,'silver',NULL,'edgasilver','#C0C0C0','#000000',NULL,1,2,'2010-09-24 00:42:20',2,'2010-09-27 14:17:10','2010-09-24 00:42:20',2),(4,'gray',NULL,'edgagray','#808080','#FFFFFF',NULL,1,2,'2010-09-24 00:55:14',2,'2010-09-27 14:18:47','2010-09-24 00:55:14',2),(5,'maroon',NULL,'edgamaroon','#800000','#FFFFFF',NULL,1,2,'2010-09-24 00:55:45',2,'2010-09-27 14:18:30','2010-09-24 00:55:45',2),(6,'purple',NULL,'edgapurple','#800080','#FFFFFF',NULL,1,2,'2010-09-24 00:55:57',2,'2010-09-27 14:19:23','2010-09-24 00:55:57',2),(7,'fuchsia',NULL,'edgafuchsia','#FF00FF','#FFFFFF',NULL,1,2,'2010-09-26 14:09:10',2,'2010-09-27 14:21:51','2010-09-26 14:09:10',2),(8,'green',NULL,'edgagreen','#008000','#FFFFFF',NULL,1,2,'2010-09-26 14:09:41',2,'2010-09-27 14:22:20','2010-09-26 14:09:41',2),(9,'lime',NULL,'edgalime','#00FF00','#000000',NULL,1,2,'2010-09-26 14:21:39',2,'2010-09-27 14:23:00','2010-09-26 14:21:39',2),(10,'olive','admin/themes/edgaolive/css/admin.css','edgaolive','#808000','#FFFFFF',NULL,1,2,'2010-09-26 15:20:25',2,'2010-09-27 14:23:30','2010-09-26 15:20:25',2),(11,'yellow',NULL,'edgayellow','#FFFF00','#000000',NULL,1,2,'2010-09-26 22:24:13',2,'2010-09-27 14:24:10','2010-09-26 22:24:13',2),(12,'navy',NULL,'edganavy','#000080','#FFFFFF',NULL,1,2,'2010-09-26 23:22:00',2,'2010-09-27 14:24:54','2010-09-26 23:22:00',2),(13,'blue',NULL,'edgablue','#0000FF','#FFFFFF',NULL,1,2,'2010-09-27 13:12:59',2,'2010-09-27 14:25:26','2010-09-27 13:12:59',2),(14,'teal',NULL,'edgateal','#008080','#FFFFFF',NULL,1,2,'2010-09-27 14:54:08',NULL,NULL,'2010-09-27 14:54:08',2),(15,'aqua',NULL,'edgaaqua','#00FFFF','#000000',NULL,1,2,'2010-09-27 16:26:35',NULL,NULL,'2010-09-27 16:26:35',2),(16,'orange',NULL,'edgaorange','#FFA500','#000000',NULL,1,2,'2010-09-27 17:09:27',2,'2013-09-02 12:43:53','2010-09-27 17:09:27',2);
/*!40000 ALTER TABLE `core_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_users`
--

DROP TABLE IF EXISTS `core_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `core_userstitleID` int unsigned DEFAULT NULL,
  `surname` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `forename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `nickname` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `email` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `firmName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `contactName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `contactPhone` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `active` int unsigned DEFAULT '1',
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `lastLoginWhen` datetime DEFAULT NULL,
  `lastLogoutWhen` datetime DEFAULT NULL,
  `activationCode` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `regmailWhen` datetime DEFAULT NULL,
  `activationWhen` datetime DEFAULT NULL,
  `core_groupsID` int unsigned NOT NULL DEFAULT '3',
  `pictureURL` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `newsletter` int DEFAULT '0',
  `insertUserID` int unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  `isReadWhen` datetime DEFAULT NULL,
  `isReadUserID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `nickname` (`nickname`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_users`
--

LOCK TABLES `core_users` WRITE;
/*!40000 ALTER TABLE `core_users` DISABLE KEYS */;
INSERT INTO `core_users` VALUES (1,NULL,NULL,NULL,'Guest','','','','','','',1,NULL,NULL,'2024-05-17 09:48:36',NULL,NULL,NULL,1,NULL,0,NULL,NULL,2,'2012-01-24 11:06:15','2006-03-28 23:38:24',2),(2,NULL,'Szabó','Sándor','SzSanyi','phoenix','rodnas@uw.hu','Első','Első','Első','Első',1,NULL,'2013-09-02 13:09:13','2024-06-06 11:59:13',NULL,NULL,NULL,2,NULL,0,NULL,'2005-02-19 09:00:00',2,'2013-11-04 10:14:52','2009-06-03 09:01:09',2),(3,NULL,'Bereczki','György','GyuriAdmin','GyuriAdmin','bereczki@hegyalja.hu','Admin','Admin','Admin','11111',1,NULL,NULL,'2016-11-05 17:09:05',NULL,NULL,NULL,3,NULL,0,2,'2016-10-04 08:17:11',NULL,NULL,'2016-10-04 08:17:11',2),(4,NULL,'Bereczki','György','GyuriVIP','GyuriVIP','bereczkitag@hegyalja.hu','GyuriVIP','GyuriVIP','GyuriVIP','2222222',1,NULL,NULL,'2016-11-14 21:56:49',NULL,NULL,NULL,4,NULL,0,2,'2016-10-14 20:35:23',NULL,NULL,'2016-10-14 20:35:23',2),(5,NULL,'Bereczki','György','GyuriTag','GyuriTag','bereczkivevo@hegyalja.hu','GyuriTag','GyuriTag','GyuriTag','333333',1,NULL,NULL,'2016-11-15 21:40:49',NULL,NULL,NULL,5,NULL,0,2,'2016-10-14 20:40:05',NULL,NULL,'2016-10-14 20:40:05',2);
/*!40000 ALTER TABLE `core_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_users_config`
--

DROP TABLE IF EXISTS `core_users_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_users_config` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `fieldName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `fieldValue` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `autoload` int unsigned DEFAULT NULL,
  `active` int unsigned DEFAULT '1',
  `core_localserverID` int unsigned NOT NULL,
  `core_usersID` int unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_users_config`
--

LOCK TABLES `core_users_config` WRITE;
/*!40000 ALTER TABLE `core_users_config` DISABLE KEYS */;
INSERT INTO `core_users_config` VALUES (13,'themes','8',NULL,1,0,2,'2024-05-17 11:23:25','2024-06-06 11:59:13'),(12,'modulSelect','products',NULL,1,0,2,'2024-05-17 11:23:20','2025-08-09 16:46:44'),(11,'modulSelect','products',NULL,1,0,1,'2024-05-17 11:02:45','2025-06-01 11:16:05');
/*!40000 ALTER TABLE `core_users_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_users_rights`
--

DROP TABLE IF EXISTS `core_users_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_users_rights` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `core_usersID` int unsigned NOT NULL DEFAULT '0',
  `core_configsID` int unsigned NOT NULL DEFAULT '0',
  `allrecs` int unsigned DEFAULT '0',
  `ownrecs` int unsigned DEFAULT '0',
  `core_localserverID` int unsigned DEFAULT NULL,
  `active` int unsigned DEFAULT '1',
  `insertUserID` int unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_users_rights`
--

LOCK TABLES `core_users_rights` WRITE;
/*!40000 ALTER TABLE `core_users_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_users_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_userslog`
--

DROP TABLE IF EXISTS `core_userslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_userslog` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `usersID` int unsigned DEFAULT NULL,
  `modul` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `actionWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_userslog`
--

LOCK TABLES `core_userslog` WRITE;
/*!40000 ALTER TABLE `core_userslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_userslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_userstitle`
--

DROP TABLE IF EXISTS `core_userstitle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_userstitle` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `active` int unsigned DEFAULT '1',
  `insertUserID` int unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_userstitle`
--

LOCK TABLES `core_userstitle` WRITE;
/*!40000 ALTER TABLE `core_userstitle` DISABLE KEYS */;
INSERT INTO `core_userstitle` VALUES (1,'dr',NULL,1,2,'2013-07-26 08:48:39',NULL,NULL);
/*!40000 ALTER TABLE `core_userstitle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `productId` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `descriptionPublic` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `descriptionPrivate` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `storageWhere` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `updateWhen` datetime DEFAULT NULL,
  `price` bigint unsigned DEFAULT NULL,
  `makeWho` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `makeType` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `products_statusID` int unsigned DEFAULT '1',
  `active` int unsigned DEFAULT '1',
  `insertUserID` int unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `productId` (`productId`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `storageWhere` (`storageWhere`),
  FULLTEXT KEY `makeWho` (`makeWho`),
  FULLTEXT KEY `makeType` (`makeType`)
) ENGINE=MyISAM AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'87654333','Fék',NULL,NULL,NULL,1,'2016-10-27 15:06:13',NULL,NULL,NULL,1,1,3,'2016-10-27 15:06:13',NULL,NULL),(2,'876543333','Fék2',NULL,NULL,NULL,1,'2016-10-27 15:07:53',NULL,NULL,NULL,1,1,3,'2016-10-27 15:07:53',NULL,NULL),(3,'221144','Keret',NULL,NULL,NULL,1,'2016-10-27 15:10:47',NULL,NULL,NULL,1,1,3,'2016-10-27 15:10:47',NULL,NULL),(6,'999988','Tengely',NULL,NULL,NULL,NULL,'2016-11-14 20:35:56',NULL,NULL,NULL,1,1,4,'2016-11-14 20:35:56',NULL,NULL),(255,'87654333','Fék','','','',1,'2016-11-21 22:04:59',0,'','',0,1,5,'2016-11-21 22:04:59',2,'2024-05-10 20:21:51');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_images`
--

DROP TABLE IF EXISTS `products_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `productsID` bigint unsigned NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `active` int unsigned DEFAULT '1',
  `insertUserID` int unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_images`
--

LOCK TABLES `products_images` WRITE;
/*!40000 ALTER TABLE `products_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_status`
--

DROP TABLE IF EXISTS `products_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_status` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `active` int unsigned DEFAULT '1',
  `insertUserID` int unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_status`
--

LOCK TABLES `products_status` WRITE;
/*!40000 ALTER TABLE `products_status` DISABLE KEYS */;
INSERT INTO `products_status` VALUES (1,'Normál','használt',1,0,NULL,NULL,NULL),(2,'Hibátlan, eredeti csomagolás',NULL,1,5,'2016-10-15 18:49:28',NULL,NULL),(3,'Sérült csomagolás',NULL,1,3,'2016-10-27 09:14:46',NULL,NULL),(4,'Normál',NULL,1,3,'2016-11-05 17:06:31',NULL,NULL);
/*!40000 ALTER TABLE `products_status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 20:34:57
