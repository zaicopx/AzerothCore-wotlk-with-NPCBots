-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table acore_world.player_xp_for_level: 79 rows
DELETE FROM `player_xp_for_level`;
/*!40000 ALTER TABLE `player_xp_for_level` DISABLE KEYS */;
INSERT INTO `player_xp_for_level` (`Level`, `Experience`) VALUES
	(1, 600),
	(2, 1400),
	(3, 2100),
	(4, 2800),
	(5, 3600),
	(6, 4500),
	(7, 5400),
	(8, 6300),
	(9, 7200),
	(10, 10200),
	(11, 12000),
	(12, 13500),
	(13, 15000),
	(14, 16400),
	(15, 17600),
	(16, 18400),
	(17, 19100),
	(18, 20000),
	(19, 21300),
	(20, 23200),
	(21, 25200),
	(22, 27300),
	(23, 29400),
	(24, 31700),
	(25, 34000),
	(26, 36400),
	(27, 38900),
	(28, 41400),
	(29, 44300),
	(30, 47400),
	(31, 50800),
	(32, 54500),
	(33, 58600),
	(34, 62800),
	(35, 67100),
	(36, 71600),
	(37, 76100),
	(38, 80800),
	(39, 85700),
	(40, 136050),
	(41, 143700),
	(42, 151500),
	(43, 159450),
	(44, 167700),
	(45, 176250),
	(46, 184900),
	(47, 193650),
	(48, 202650),
	(49, 211800),
	(50, 221250),
	(51, 230850),
	(52, 240600),
	(53, 250650),
	(54, 260850),
	(55, 271200),
	(56, 281850),
	(57, 292500),
	(58, 303450),
	(59, 314700),
	(60, 617500),
	(61, 718000),
	(62, 768000),
	(63, 812900),
	(64, 852900),
	(65, 887800),
	(66, 917600),
	(67, 942100),
	(68, 961100),
	(69, 974600),
	(70, 1904700),
	(71, 1924500),
	(72, 1944600),
	(73, 1964700),
	(74, 2126600),
	(75, 2400600),
	(76, 2640660),
	(77, 2950000),
	(78, 3245000),
	(79, 3750000);
/*!40000 ALTER TABLE `player_xp_for_level` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
