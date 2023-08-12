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

-- Dumping data for table acore_world.mod_auctionhousebot: 3 rows
DELETE FROM `mod_auctionhousebot`;
/*!40000 ALTER TABLE `mod_auctionhousebot` DISABLE KEYS */;
INSERT INTO `mod_auctionhousebot` (`auctionhouse`, `name`, `minitems`, `maxitems`, `percentgreytradegoods`, `percentwhitetradegoods`, `percentgreentradegoods`, `percentbluetradegoods`, `percentpurpletradegoods`, `percentorangetradegoods`, `percentyellowtradegoods`, `percentgreyitems`, `percentwhiteitems`, `percentgreenitems`, `percentblueitems`, `percentpurpleitems`, `percentorangeitems`, `percentyellowitems`, `minpricegrey`, `maxpricegrey`, `minpricewhite`, `maxpricewhite`, `minpricegreen`, `maxpricegreen`, `minpriceblue`, `maxpriceblue`, `minpricepurple`, `maxpricepurple`, `minpriceorange`, `maxpriceorange`, `minpriceyellow`, `maxpriceyellow`, `minbidpricegrey`, `maxbidpricegrey`, `minbidpricewhite`, `maxbidpricewhite`, `minbidpricegreen`, `maxbidpricegreen`, `minbidpriceblue`, `maxbidpriceblue`, `minbidpricepurple`, `maxbidpricepurple`, `minbidpriceorange`, `maxbidpriceorange`, `minbidpriceyellow`, `maxbidpriceyellow`, `maxstackgrey`, `maxstackwhite`, `maxstackgreen`, `maxstackblue`, `maxstackpurple`, `maxstackorange`, `maxstackyellow`, `buyerpricegrey`, `buyerpricewhite`, `buyerpricegreen`, `buyerpriceblue`, `buyerpricepurple`, `buyerpriceorange`, `buyerpriceyellow`, `buyerbiddinginterval`, `buyerbidsperinterval`) VALUES
	(2, 'Alliance', 400000, 430000, 2, 18, 15, 10, 4, 1, 0, 2, 18, 15, 10, 4, 1, 0, 100, 150, 150, 250, 800, 1400, 1250, 1750, 2250, 4550, 3250, 5550, 5250, 6550, 70, 100, 70, 100, 80, 100, 75, 100, 80, 100, 80, 100, 80, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 2, 2, 3, 5, 1, 1),
	(6, 'Horde', 400000, 430000, 2, 18, 15, 10, 4, 1, 0, 2, 18, 15, 10, 4, 1, 0, 100, 150, 150, 250, 800, 1400, 1250, 1750, 2250, 4550, 3250, 5550, 5250, 6550, 70, 100, 70, 100, 80, 100, 75, 100, 80, 100, 80, 100, 80, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 2, 2, 3, 5, 1, 1),
	(7, 'Neutral', 200000, 250000, 2, 18, 15, 10, 4, 1, 0, 2, 18, 15, 10, 4, 1, 0, 100, 150, 150, 250, 800, 1400, 1250, 1750, 2250, 4550, 3250, 5550, 5250, 6550, 70, 100, 70, 100, 80, 100, 75, 100, 80, 100, 80, 100, 80, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 2, 2, 3, 5, 1, 1);
/*!40000 ALTER TABLE `mod_auctionhousebot` ENABLE KEYS */;