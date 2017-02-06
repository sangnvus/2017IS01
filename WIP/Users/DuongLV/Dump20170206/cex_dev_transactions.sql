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
  `DepartureDate` date DEFAULT NULL,
  `ArrivalProvince` varchar(255) DEFAULT NULL,
  `ArrivalDistrict` varchar(255) DEFAULT NULL,
  `ArrivalAddress` varchar(255) DEFAULT NULL,
  `ArrivalCharacteristicPlace` varchar(255) DEFAULT NULL,
  `ArrivalDate` date DEFAULT NULL,
  `Distance` float DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Note` varchar(255) DEFAULT NULL,
  `CreatedUserId` int(11) DEFAULT NULL,
  `Created` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'MH01','Hàng điện tử','Bao bì',NULL,10,10,10,'Màn hình máy tính','\0','','Thanh Hóa','Nông Cống','Thôn Trầu - Công Liêm','Gần UBND','2017-07-07','HCM','Quận 1','Số 19 Lê Văn Lương','Gần Sân Vận Động Quận 1','2017-07-08',2000,2000000,'Màn hình máy tính',3,'2017-02-06'),(2,'MH02','Kim Loại - Nguyên Liệu','Bao bì',NULL,12,12,12,'Ốc vít','\0','\0','Bình Dương','Dĩ An','Số 12 Lê Văn Lương','Đối diện tòa nhà VTC','2017-07-07','Ninh Bình','Ninh Bình','Số 1 Trần Quốc Toản','Gần Siêu thị điện máy xanh','2017-07-10',1500,2000000,'Ốc vít',3,'2017-02-05'),(3,'MH03','Máy Móc - Cơ Khí','Thùng',NULL,15,15,2,'Máy bơm nước ','\0','\0','HCM','Quận 2','Số 9 Nguyễn Bỉnh Khiêm','Gần sân vận động Bỉnh Khiêm','2017-07-09','Hà Nội','Từ Liêm','Số 1 Phạm Hùng','Gần bến xe Mỹ Đình','2017-07-12',2000,3000000,'Máy bơm nước',3,'2017-02-05'),(4,'MH04','Hóa Chất','Can',NULL,15,10,5,'Dầu ăn','','\0','Quảng Nam','Đại Lộc','Thôn 9  Xã Quảng Thịnh','Gần cầu Quảng Thịnh','2017-07-10','Nhanh Trang','Khánh Hòa','Số 91 Lê Lợi','Gần UBND','2017-07-13',2000,1500000,'Dầu ăn',3,'2017-02-05');
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

-- Dump completed on 2017-02-06 22:05:50
