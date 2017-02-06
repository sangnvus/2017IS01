-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: cex_dev
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Code` varchar(20) NOT NULL,
  `GoodsType` varchar(50) NOT NULL,
  `PackagedForm` varchar(50) NOT NULL,
  `GoodsImage` varchar(50) DEFAULT NULL,
  `Weight` float NOT NULL,
  `Volume` float NOT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `IsProzen` bit(1) DEFAULT NULL,
  `IsFraile` bit(1) DEFAULT NULL,
  `DepartureProvince` varchar(255) DEFAULT NULL,
  `DepartureDistrict` varchar(255) DEFAULT NULL,
  `DepartureAddress` varchar(255) DEFAULT NULL,
  `DepartureCharacteristicPlace` varchar(255) DEFAULT NULL,
  `DepartureDate` datetime DEFAULT NULL,
  `ArrivalProvince` varchar(255) DEFAULT NULL,
  `ArrivalDistrict` varchar(255) DEFAULT NULL,
  `ArrivalAddress` varchar(255) DEFAULT NULL,
  `ArrivalCharacteristicPlace` varchar(255) DEFAULT NULL,
  `ArrivalDate` datetime DEFAULT NULL,
  `Distance` float DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `AuctionPeriod` datetime DEFAULT NULL,
  `Note` varchar(255) DEFAULT NULL,
  `CreatedUserId` int(11) DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'MH01','Hàng điện tử','Bao bì',NULL,10,10,10,'Màn hình máy tính','\0','','Hà Nội','Từ Liêm','Số 9 Hồ Tùng Mậu','Gần siêu thị fptshop','2017-07-07 00:00:00','HCM','Quận 1','Số 1 Hoàng Hoa Thám','Gần nhà hát Quận 1','2017-07-09 00:00:00',2000,2000000,'2017-07-09 00:00:00','Màn Hình',3,'2017-01-01 00:00:00');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-07  0:15:53
