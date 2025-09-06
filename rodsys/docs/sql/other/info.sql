CREATE TABLE `info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `infotopicID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `name` varchar(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `shortDescription` text COLLATE utf8_bin NOT NULL,
  `active` int(1) DEFAULT 1,
  `description` longtext COLLATE utf8_bin NOT NULL,
  `comment` longtext COLLATE utf8_bin DEFAULT NULL,
  `insertUserID` bigint(20) DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` bigint(20) DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

CREATE TABLE `infotopic` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_bin DEFAULT NULL,
  `active` int(1) DEFAULT 1,
  `lang_id` int(11) NOT NULL DEFAULT 0,
  `insertUserID` bigint(20) DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` bigint(20) DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `publicuse` tinyint(1) NOT NULL DEFAULT 0,
  `tree_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
