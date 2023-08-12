SET @STRING_ENTRY := 11120;
DELETE FROM `acore_string` WHERE `entry` IN  (@STRING_ENTRY+0,@STRING_ENTRY+1);
INSERT INTO `acore_string` (`entry`, `content_default`) VALUES
(@STRING_ENTRY+0, 'Deine Erfahrungsrate wurde auf %g gesetzt.'),
(@STRING_ENTRY+1, 'Bitte gebe einen Wert zwischen 1 und %g an.');

DELETE FROM `command` WHERE `name` IN ('weekendxp rate');
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('weekendxp rate', 0, 'Syntax: weekendxp rate $value \nSet your experience rate up to the allowed value.');
