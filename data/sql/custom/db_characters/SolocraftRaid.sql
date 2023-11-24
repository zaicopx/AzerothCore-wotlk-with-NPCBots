-- Structure for table custom_solocraft_character_stats
CREATE TABLE IF NOT EXISTS `custom_solocraftraid_character_stats` (
  `GUID` bigint unsigned NOT NULL,
  `Health` float NOT NULL DEFAULT '2.5',
  PRIMARY KEY (`GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- Data exporting was unselected.