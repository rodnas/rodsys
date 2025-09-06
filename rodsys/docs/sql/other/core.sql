DROP TABLE IF EXISTS `core_tables`;
CREATE TABLE IF NOT EXISTS `core_tables` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `active` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `insert_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `insert_when` datetime NOT NULL,
  `modify_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `modify_when` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `table_name` (`table_name`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `core_tables_fields`;
CREATE TABLE IF NOT EXISTS `core_tables_fields` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `field_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `active` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `insert_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `insert_when` datetime NOT NULL,
  `modify_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `modify_when` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `core_tables_id`;
CREATE TABLE `core_table_id` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `active` int(1) DEFAULT 1,
  `insert_user_id` bigint(20) DEFAULT NULL,
  `insert_when` datetime DEFAULT current_timestamp(),
  `modify_user_id` bigint(20) DEFAULT NULL,
  `modify_when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `core_tables_varchar`;
CREATE TABLE IF NOT EXISTS `core_tables_varchar` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `core_tables_id` bigint(20) UNSIGNED NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `active` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `insert_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `insert_when` datetime NOT NULL,
  `modify_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `modify_when` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `core_tables_text`;
CREATE TABLE IF NOT EXISTS `core_tables_text` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `core_tables_id` bigint(20) UNSIGNED NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci DEFAULT NULL,
  `active` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `insert_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `insert_when` datetime NOT NULL,
  `modify_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `modify_when` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `core_tables_int`;
CREATE TABLE IF NOT EXISTS `core_tables_int` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `core_tables_id` bigint(20) UNSIGNED NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `value` int(10) UNSIGNED DEFAULT NULL,
  `active` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `insert_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `insert_when` datetime NOT NULL,
  `modify_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `modify_when` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `core_tables_bigint`;
CREATE TABLE IF NOT EXISTS `core_tables_bigint` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `core_tables_id` bigint(20) UNSIGNED NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `value` bigint(20) UNSIGNED DEFAULT NULL,
  `active` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `insert_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `insert_when` datetime NOT NULL,
  `modify_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `modify_when` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `core_tables_datetime`;
CREATE TABLE IF NOT EXISTS `core_tables_datetime` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `core_tables_id` bigint(20) UNSIGNED NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `value` datetime NOT NULL,
  `active` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `insert_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `insert_when` datetime NOT NULL,
  `modify_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `modify_when` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
