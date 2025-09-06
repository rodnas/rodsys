DROP TABLE IF EXISTS `core_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_configs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `tpl_Name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `allrecs` int(2) unsigned DEFAULT 0,
  `ownrecs` int(2) unsigned DEFAULT 0,
  `comment` longtext COLLATE utf8_bin DEFAULT NULL,
  `language_id` varchar(2) COLLATE utf_bin DEFAULT 'hu',
  `active` int(1) unsigned DEFAULT 1,
  `insert_user_iD` bigint(20) unsigned NOT NULL DEFAULT 0,
  `insert_when` datetime DEFAULT NULL,
  `modify_user_id` bigint(20) unsigned DEFAULT NULL,
  `modify_when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `core_table_structure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_table_structure` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) COLLATE utf8_bin DEFAULT '',
  `field_name` varchar(100) COLLATE utf8_bin DEFAULT '',,
  `field_type` varchar(100) COLLATE utf8_bin DEFAULT '',,
  `comment` longtext COLLATE utf8_bin DEFAULT NULL,
  `language_id` varchar(2) COLLATE utf_bin DEFAULT 'hu',
  `active` int(1) DEFAULT 1,
  `insert_user_id` bigint(20) DEFAULT NULL,
  `insert_when` datetime DEFAULT current_timestamp(),
  `modify_user_id` bigint(20) DEFAULT NULL,
  `modify_when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `core_table_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_table_id` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) COLLATE utf8_bin DEFAULT '',
  `field_name` varchar(100) COLLATE utf8_bin DEFAULT '',,
  `core_table_structure_id` bigint(20) unsigned NOT NULL,
  `value_id` bigint(20) unsigned DEFAULT NULL,
  `language_id` varchar(2) COLLATE utf_bin DEFAULT 'hu',
  `active` int(1) DEFAULT 1,
  `insert_user_id` bigint(20) DEFAULT NULL,
  `insert_when` datetime DEFAULT current_timestamp(),
  `modify_user_id` bigint(20) DEFAULT NULL,
  `modify_when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `core_table_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_table_structure` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `core_table_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) COLLATE utf8_bin DEFAULT '',
  `field_name` varchar(100) COLLATE utf8_bin DEFAULT '',,
  `core_table_structure_id` bigint(20) unsigned NOT NULL,
  `value_longext` longtext COLLATE utf8_bin DEFAULT NULL,
  `language_id` varchar(2) COLLATE utf_bin DEFAULT 'hu',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `core_table_varchar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_table_structure` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `core_table_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) COLLATE utf8_bin DEFAULT '',
  `field_name` varchar(100) COLLATE utf8_bin DEFAULT '',,
  `core_table_structure_id` bigint(20) unsigned NOT NULL,
  `value_varchar` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `language_id` varchar(2) COLLATE utf_bin DEFAULT 'hu',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `core_table_int`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_table_int` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `core_table_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) COLLATE utf8_bin DEFAULT '',
  `field_name` varchar(100) COLLATE utf8_bin DEFAULT '',,
  `core_table_structure_id` bigint(20) unsigned NOT NULL,
  `value_int` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `language_id` varchar(2) COLLATE utf_bin DEFAULT 'hu',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `core_table_bigint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_table_bigint` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `core_table_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) COLLATE utf8_bin DEFAULT '',
  `field_name` varchar(100) COLLATE utf8_bin DEFAULT '',,
  `core_table_structure_id` bigint(20) unsigned NOT NULL,
  `value_bigint` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `language_id` varchar(2) COLLATE utf_bin DEFAULT 'hu',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

