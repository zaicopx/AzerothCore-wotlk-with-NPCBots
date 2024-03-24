SET @STRING_ENTRY := 11120;
DELETE FROM `acore_string` WHERE `entry` IN  (@STRING_ENTRY+0,@STRING_ENTRY+1);
INSERT INTO `acore_string` (`entry`, `content_default`) VALUES
(@STRING_ENTRY+0, 'Deine Erfahrungsrate wurde auf %g gesetzt.'),
(@STRING_ENTRY+1, 'Bitte gebe einen Wert zwischen 1 und %g an.');