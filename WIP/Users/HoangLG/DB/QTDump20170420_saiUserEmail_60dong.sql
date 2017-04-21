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
-- Table structure for table `answercomment`
--

DROP TABLE IF EXISTS `answercomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answercomment` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Content` varchar(100) NOT NULL,
  `CommentId` int(11) NOT NULL,
  `CreatedUserId` int(11) NOT NULL,
  `Created` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_5hwo3aqs8qi21xt59ejuqtoxv` (`CommentId`),
  KEY `FK_ol6ir50crtdov34dn4ddu3r2w` (`CreatedUserId`),
  CONSTRAINT `FK_5hwo3aqs8qi21xt59ejuqtoxv` FOREIGN KEY (`CommentId`) REFERENCES `comment` (`Id`),
  CONSTRAINT `FK_ol6ir50crtdov34dn4ddu3r2w` FOREIGN KEY (`CreatedUserId`) REFERENCES `users` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answercomment`
--

LOCK TABLES `answercomment` WRITE;
/*!40000 ALTER TABLE `answercomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `answercomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billoflading`
--

DROP TABLE IF EXISTS `billoflading`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billoflading` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Code` varchar(20) DEFAULT NULL,
  `GoodsTypeId` int(11) NOT NULL,
  `PackagedFormId` int(11) DEFAULT NULL,
  `GoodsImage` varchar(255) DEFAULT NULL,
  `Weight` float NOT NULL,
  `Volume` float NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `Length` float NOT NULL,
  `Width` float NOT NULL,
  `Height` float NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `IsFrozen` bit(1) DEFAULT NULL,
  `IsFragile` bit(1) DEFAULT NULL,
  `Sender` varchar(50) DEFAULT NULL,
  `SenderPhoneNumber` varchar(12) DEFAULT NULL,
  `DepartureProvince` varchar(50) NOT NULL,
  `DepartureDistrict` varchar(50) NOT NULL,
  `DepartureAddress` varchar(100) NOT NULL,
  `DepartureCharacteristicPlace` varchar(100) DEFAULT NULL,
  `DepartureDate` datetime NOT NULL,
  `Receiver` varchar(50) DEFAULT NULL,
  `ReceiverPhoneNumber` varchar(12) DEFAULT NULL,
  `ArrivalProvince` varchar(50) NOT NULL,
  `ArrivalDistrict` varchar(50) NOT NULL,
  `ArrivalAddress` varchar(100) NOT NULL,
  `ArrivalCharacteristicPlace` varchar(100) DEFAULT NULL,
  `ArrivalDate` datetime NOT NULL,
  `Distance` float NOT NULL,
  `Price` float NOT NULL,
  `AuctionPeriod` datetime NOT NULL,
  `Status` int(11) NOT NULL,
  `Notification` bit(1) NOT NULL DEFAULT b'0',
  `CreatedUserId` int(11) DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Modified` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_pu6cscioeerimeowux9f7sbk6` (`GoodsTypeId`),
  KEY `FK_tcy8ldp56k0c5x7lkct6m0hhm` (`PackagedFormId`),
  KEY `FK_2pg21ptjp18qn8nv9ai4unyiv` (`CreatedUserId`),
  CONSTRAINT `FK_2pg21ptjp18qn8nv9ai4unyiv` FOREIGN KEY (`CreatedUserId`) REFERENCES `users` (`Id`),
  CONSTRAINT `FK_pu6cscioeerimeowux9f7sbk6` FOREIGN KEY (`GoodsTypeId`) REFERENCES `goodstype` (`Id`),
  CONSTRAINT `FK_tcy8ldp56k0c5x7lkct6m0hhm` FOREIGN KEY (`PackagedFormId`) REFERENCES `packagedform` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billoflading`
--

LOCK TABLES `billoflading` WRITE;
/*!40000 ALTER TABLE `billoflading` DISABLE KEYS */;
INSERT INTO `billoflading` VALUES (1,'001',1,1,NULL,10000,125,20,5,4,1,'','\0','\0','DuongLV2','01669775349','Hà Nội','Ba Vì','Thọ Xuân - Thanh Hóa','','2017-01-04 12:26:30','Trinh Dinh Quyet','01669775349','Cà Mau','Ngọc Hiển','Thôn 4 - Xuân Yên - Thọ Xuân - Thanh Hóa','','2017-01-19 12:26:30',100,10000000,'2017-01-28 12:26:30',3,'',4,'2017-01-01 12:28:56','2017-03-28 17:01:36'),(2,'002',2,2,NULL,50000,125,20,5,5,2,'','\0','\0','DuongLV','01669775349','An Giang','Châu Phú','Ba Vì - Hà Nội','','2017-01-05 12:26:30','Trinh Dinh Quyet','0964657387','Cà Mau','Cái Nước','Khu công nghệ cao Hòa Lạc - Thạch Thất - Hà Nội','','2017-01-19 12:26:30',100,10000000,'2017-01-28 12:26:30',3,'',4,'2017-01-01 12:28:56','2017-03-29 16:28:07'),(3,'003',3,3,NULL,20000,300,20,6,5,3,'','','\0','Quyet','0987876646','Hà Nam','Bình Lục','Tiền Hải - Thái Bình','','2017-01-04 12:26:30','Trinh Dinh Quyet','01677776656','An Giang','Châu Phú','Hoàng Mai - Nghệ An','','2017-01-19 12:26:30',200,2000000,'2017-01-28 12:26:30',3,'',1,'2017-01-02 12:28:56','2017-03-28 10:34:37'),(4,'004',4,4,NULL,15000,20,50,6,6,2,'','','\0','Quyet','01669775349','An Giang','Châu Phú','Thọ Xuân - Thanh Hóa','','2017-01-05 12:26:30','Le Van Duong','01677776656','An Giang','Châu Phú','Thôn 4 - Xuân Yên - Thọ Xuân - Thanh Hóa','','2017-01-20 12:26:30',170,2500000,'2017-01-28 12:26:30',3,'',1,'2017-01-01 12:28:56','2017-03-28 10:43:51'),(5,'005',5,5,NULL,2000,90,100,6,4,1,'','','\0','Hoang','01669775349','Hà Nội','Ba Vì','Ba Vì - Hà Nội','','2017-01-04 12:26:30','Trinh Dinh Quyet','0964657387','Thanh Hóa','Thọ Xuân','Từ Sơn - Bắc Ninh','','2017-01-19 12:26:30',50,200000,'2017-01-28 12:26:30',3,'',1,'2017-01-02 12:28:56','2017-03-28 10:34:48'),(6,'006',6,6,NULL,1000,80,20,8,5,3,'','','\0','Hoang','0987876646','An Giang','Sơn Động','Thọ Xuân - Thanh Hóa','','2017-01-05 12:26:30','Le Van Duong','01669775349','Thái Bình','Tiền Hải','Khu công nghệ cao Hòa Lạc - Thạch Thất - Hà Nội','','2017-01-20 12:26:30',50,10000000,'2017-01-28 12:26:30',3,'',1,'2017-01-01 12:28:56','2017-03-28 10:34:53'),(7,'007',7,7,NULL,2500,200,100,8,6,2,'','','\0','Quyet','0987876646','Hà Nam','Bình Lục','Tiền Hải - Thái Bình','','2017-01-05 12:26:30','Trinh Dinh Quyet','01677776656','Hà Giang','Yên Minh','Hoàng Mai - Nghệ An','','2017-01-19 12:26:30',50,20000000,'2017-01-28 12:26:30',3,'',1,'2017-01-02 12:28:56','2017-03-28 10:34:58'),(8,'q12',8,8,NULL,1000,200,50,8,7,1,'','','\0','Quyet','0987876646','Hà Nam','Bình Lục','Ba Vì - Hà Nội','','2017-01-04 12:26:30','Le Van Duong','0977006602','Hà Nội','Yên Minh','Thôn 4 - Xuân Yên - Thọ Xuân - Thanh Hóa','','2017-01-30 12:26:30',100,25000000,'2017-01-28 12:26:30',3,'',1,'2017-01-01 12:28:56','2017-03-28 10:35:03'),(9,'q13',9,1,NULL,500,150,20,3,6,3,'','','\0','Quyet','0987876646','Hà Nội','Ba Vì','Thọ Xuân - Thanh Hóa','','2017-01-06 12:26:30','Trinh Dinh Quyet','0964657387','Thanh Hóa','Thọ Xuân','Từ Sơn - Bắc Ninh','','2017-01-20 12:26:30',100,50000000,'2017-01-28 12:26:30',3,'',1,'2017-01-01 12:28:56','2017-03-28 10:35:09'),(10,'q14',10,2,NULL,1200,200,100,20,5,2,'','','\0','Quyet','0987876646','Hà Nội','Ba Vì','Tiền Hải - Thái Bình','','2017-01-04 12:26:30','Le Van Duong','01669775349','Thái Bình','Tiền Hải','Khu công nghệ cao Hòa Lạc - Thạch Thất - Hà Nội','','2017-01-19 12:26:30',50,10000000,'2017-01-28 12:26:30',3,'',1,'2017-01-02 12:28:56','2017-03-28 10:35:14'),(11,'a12',11,3,NULL,1200,150,50,20,4,1,'','','\0','Hoang','0999888777','Hà Nam','Bình Lục','Ba Vì - Hà Nội','','2017-01-05 12:26:30','Trinh Dinh Quyet','01677776656','Hà Giang','Yên Minh','Hoàng Mai - Nghệ An','','2017-01-30 12:26:30',100,20000000,'2017-01-28 12:26:30',3,'',1,'2017-01-02 12:28:56','2017-03-28 10:35:19'),(12,'a23',12,4,NULL,1200,150,100,12,5,3,'','','\0','Quyet','0987876646','Hà Nội','Ba Vì','Thọ Xuân - Thanh Hóa','','2017-01-04 12:26:30','Le Van Duong','0977006602','Hà Nội','Yên Minh','Thôn 4 - Xuân Yên - Thọ Xuân - Thanh Hóa','','2017-01-20 12:26:30',50,25000000,'2017-01-28 12:26:30',5,'',1,'2017-01-01 12:28:56','2017-03-28 10:35:24'),(13,'a34',13,5,NULL,4000,200,100,12,6,2,'','','\0','Hoang','0999888777','Hà Nam','Bình Lục','Tiền Hải - Thái Bình','','2017-01-05 12:26:30','Trinh Dinh Quyet','0964657387','Thanh Hóa','Thọ Xuân','Từ Sơn - Bắc Ninh','','2017-01-19 12:26:30',50,50000000,'2017-01-28 12:26:30',4,'',1,'2017-01-02 12:28:56','2017-03-28 10:35:28'),(14,'a35',1,6,NULL,500,200,100,12,7,1,'','','\0','Hoang','0999888777','Hà Nội','Ba Vì','Ba Vì - Hà Nội','','2017-02-04 10:20:46','Le Van Duong','01669775349','Thái Bình','Tiền Hải','Khu công nghệ cao Hòa Lạc - Thạch Thất - Hà Nội','','2017-02-28 10:20:46',50,10000000,'2017-02-28 12:26:30',3,'',1,'2017-02-01 10:21:46','2017-03-28 10:35:33'),(15,'a36',2,7,NULL,5000,200,50,12,3,3,'','','\0','Hoang','0987876646','Hà Nam','Bình Lục','Thọ Xuân - Thanh Hóa','','2017-02-06 10:20:46','Trinh Dinh Quyet','01677776656','Hà Giang','Yên Minh','Hoàng Mai - Nghệ An','','2017-02-28 10:20:46',50,20000000,'2017-02-28 12:26:30',3,'',1,'2017-02-01 10:21:46','2017-03-28 10:35:38'),(16,'a37',3,8,NULL,6000,200,20,12,3,2,'','','\0','Hoang','0999888777','Hà Nam','Bình Lục','Tiền Hải - Thái Bình','','2017-02-04 10:20:46','Le Van Duong','0977006602','Hà Nội','Yên Minh','Thôn 4 - Xuân Yên - Thọ Xuân - Thanh Hóa','','2017-02-19 10:20:46',100,25000000,'2017-02-28 12:26:30',3,'',1,'2017-02-02 10:21:46','2017-03-28 10:35:43'),(17,'a38',4,1,NULL,23000,100,100,12,4,1,'','','\0','Quyet','0999888777','Hà Nội','Ba Đình','Ba Vì - Hà Nội','','2017-02-05 10:20:46','Trinh Dinh Quyet','0964657387','Thanh Hóa','Thọ Xuân','Từ Sơn - Bắc Ninh','','2017-02-28 10:20:46',200,50000000,'2017-02-28 12:26:30',3,'',1,'2017-02-01 10:21:46','2017-03-28 10:35:48'),(18,'a39',5,2,NULL,12000,150,50,10,5,3,'','','\0','Quyet','0987876646','Hà Nam','Bình Lục','Thọ Xuân - Thanh Hóa','','2017-02-04 10:20:46','Le Van Duong','01669775349','Thái Bình','Tiền Hải','Khu công nghệ cao Hòa Lạc - Thạch Thất - Hà Nội','','2017-02-19 10:20:46',200,10000000,'2017-02-28 12:26:30',3,'',1,'2017-02-02 10:21:46','2017-03-28 10:35:54'),(19,'a40',6,3,NULL,22000,100,100,9,6,2,'','','\0','Hoang','0999888777','Hà Nội','Ba Đình','Tiền Hải - Thái Bình','','2017-02-05 10:20:46','Trinh Dinh Quyet','01677776656','Hà Giang','Yên Minh','Hoàng Mai - Nghệ An','','2017-02-28 10:20:46',50,50000000,'2017-02-28 12:26:30',3,'',1,'2017-02-01 10:21:46','2017-03-28 10:35:59'),(20,'a41',7,4,NULL,2000,150,20,12,7,1,'','','\0','Quyet','0999888777','Hà Nam','Bình Lục','Ba Vì - Hà Nội','','2017-02-05 10:20:46','Le Van Duong','0977006602','Hà Nội','Yên Minh','Thôn 4 - Xuân Yên - Thọ Xuân - Thanh Hóa','','2017-02-28 10:20:46',100,50000000,'2017-02-28 12:26:30',3,'',1,'2017-02-01 10:21:46','2017-03-28 10:36:05'),(21,'a42',8,5,NULL,2000,150,100,6,2,3,'','','\0','Hoang','0987876646','Hà Nam','Bình Lục','Thọ Xuân - Thanh Hóa','','2017-02-06 10:20:46','Le Van Duong','0964657387','Thanh Hóa','Thọ Xuân','Từ Sơn - Bắc Ninh','','2017-02-28 10:20:46',50,50000000,'2017-02-28 12:26:30',3,'',1,'2017-02-01 10:21:46','2017-03-28 10:36:10'),(22,'a43',9,6,NULL,12000,200,50,8,4,2,'','','\0','Hoang','0999888777','Hà Nội','Ba Đình','Tiền Hải - Thái Bình','','2017-02-05 10:20:46','Le Van Duong','01669775349','Thái Bình','Tiền Hải','Khu công nghệ cao Hòa Lạc - Thạch Thất - Hà Nội','','2017-02-19 10:20:46',170,10000000,'2017-02-28 12:26:30',3,'',1,'2017-02-02 10:21:46','2017-03-28 10:36:14'),(23,'a44',10,7,NULL,8000,200,20,7,3,1,'','','\0','Hoang','0999888777','Hà Nam','Bình Lục','Ba Vì - Hà Nội','','2017-02-04 10:20:46','Trinh Dinh Quyet','01677776656','Hà Giang','Yên Minh','Hoàng Mai - Nghệ An','','2017-02-28 10:20:46',200,20000000,'2017-02-28 12:26:30',4,'',1,'2017-02-01 10:21:46','2017-03-28 10:36:19'),(24,'a45',11,8,NULL,9000,200,100,6,2,3,'','','\0','Quyet','0987876646','Hà Nam','Bình Lục','Thọ Xuân - Thanh Hóa','','2017-02-06 10:20:46','Trinh Dinh Quyet','0977006602','Hà Nội','Yên Minh','Thôn 4 - Xuân Yên - Thọ Xuân - Thanh Hóa','','2017-02-28 10:20:46',170,20000000,'2017-02-28 12:26:30',6,'',1,'2017-02-01 10:21:46','2017-03-28 10:36:24'),(25,'a45',12,1,NULL,9000,150,100,10,6,2,'','\0','\0','Quyet','0999888777','Hà Nội','Ba Đình','Tiền Hải - Thái Bình','','2017-02-04 10:20:46','Le Van Duong','0964657387','Thanh Hóa','Thọ Xuân','Từ Sơn - Bắc Ninh','','2017-02-19 10:20:46',100,10000000,'2017-02-28 12:26:30',6,'',1,'2017-02-02 10:21:46','2017-03-28 11:11:34'),(26,'a46',13,2,NULL,7000,150,50,5,4,2,'','\0','','Hoang','0999888777','Bắc Kạn','Ba Bể','Ba Vì - Hà Nội','','2017-02-06 10:20:46','Le Van Duong','01669775349','Thái Bình','Tiền Hải','Khu công nghệ cao Hòa Lạc - Thạch Thất - Hà Nội','','2017-02-28 10:20:46',170,50000000,'2017-02-28 12:26:30',4,'',1,'2017-02-01 10:21:46','2017-03-28 11:43:28'),(27,'a48',1,3,NULL,8000,200,100,9,5,1,'','\0','\0','Quyet','0987876646','Hà Nội','Ba Đình','Thọ Xuân - Thanh Hóa','','2017-03-06 11:17:47','Trinh Dinh Quyet','01677776656','Hà Nam','Duy Tiên','Hoàng Mai - Nghệ An','','2017-03-20 11:17:47',170,20000000,'2017-03-28 11:20:47',3,'',1,'2017-03-01 11:18:49','2017-03-28 11:21:41'),(28,'s12',2,4,NULL,8000,150,20,8,6,1,'','\0','\0','Hoang','0999888777','Hà Nội','Ba Vì','Tiền Hải - Thái Bình','','2017-03-04 11:43:59','Trinh Dinh Quyet','0977006602','Hà Nội','Sơn Tây','Thôn 4 - Xuân Yên - Thọ Xuân - Thanh Hóa','','2017-03-28 11:17:47',100,20000000,'2017-03-28 11:45:59',3,'',1,'2017-03-01 11:18:49','2017-03-28 11:46:50'),(29,'s13',3,5,NULL,9000,200,100,8,7,2,'','\0','\0','Quyet','0999888777','Hà Nam','Phủ Lý','Ba Vì - Hà Nội','','2017-03-06 17:52:06','Le Van Duong','0964657387','Thanh Hóa','Thọ Xuân','Từ Sơn - Bắc Ninh','','2017-03-19 11:17:47',123,10000000,'2017-03-28 11:20:47',3,'',1,'2017-03-03 11:18:49','2017-03-28 18:53:27'),(30,'s14',4,6,NULL,10000,150,20,8,8,3,'','\0','\0','Tuan','0987876646','Hà Nội','Ba Đình','Thọ Xuân - Thanh Hóa','','2017-03-05 17:52:06','Le Van Duong','01669775349','Thái Bình','Tiền Hải','Khu công nghệ cao Hòa Lạc - Thạch Thất - Hà Nội','','2017-03-28 11:17:47',123,50000000,'2017-03-28 11:20:47',3,'',1,'2017-03-01 11:18:49','2017-03-28 18:53:32'),(31,'s15',5,7,NULL,30000,200,50,10,2,2,'','\0','\0','Tuan','0981828383','Hà Nam','Phủ Lý','Tiền Hải - Thái Bình','','2017-03-04 17:52:06','Trinh Dinh Quyet','01677776656','Hà Nội','Sóc Sơn','Hoàng Mai - Nghệ An','','2017-03-19 11:17:47',123,20000000,'2017-03-28 11:20:47',3,'',1,'2017-03-01 11:18:49','2017-03-28 18:53:35'),(32,'s16',6,8,NULL,1000,200,100,4,3,1,'','\0','\0','Quyet','0999888777','Hà Nội','Ba Đình','Ba Vì - Hà Nội','','2017-03-05 17:52:06','Trinh Dinh Quyet','0977006602','Hà Nội','Sóc Sơn','Thôn 4 - Xuân Yên - Thọ Xuân - Thanh Hóa','','2017-03-20 11:17:47',123,20000000,'2017-03-28 11:20:47',3,'',1,'2017-03-03 11:18:49','2017-03-28 18:53:38'),(33,'009',7,1,NULL,2000,150,50,4,4,1,'','\0','\0','Tuan','0987876646','Hà Nam','Phủ Lý','Thọ Xuân - Thanh Hóa','','2017-03-04 17:52:06','Dang Le Tuan','0964657387','Thanh Hóa','Thọ Xuân','Từ Sơn - Bắc Ninh','','2017-03-19 11:17:47',123,10000000,'2017-03-28 11:20:47',3,'',1,'2017-03-01 11:18:49','2017-03-28 18:53:41'),(34,'009',8,2,NULL,3000,150,20,10,5,2,'','\0','\0','Hoang','0981828383','Hà Nội','Ba Đình','Tiền Hải - Thái Bình','','2017-03-05 17:52:06','Dang Le Tuan','01669775349','Thái Bình','Tiền Hải','Khu công nghệ cao Hòa Lạc - Thạch Thất - Hà Nội','','2017-03-28 11:17:47',100,50000000,'2017-03-28 11:20:47',3,'',1,'2017-03-01 11:18:49','2017-03-28 18:53:44'),(35,'009',9,3,NULL,4000,100,100,12,6,3,'','\0','\0','Quyet','0999888777','Hà Nam','Phủ Lý','Ba Vì - Hà Nội','','2017-03-06 17:52:06','Trinh Dinh Quyet','01677776656','Hà Nội','Sóc Sơn','Hoàng Mai - Nghệ An','','2017-03-20 11:17:47',123,20000000,'2017-03-28 11:20:47',4,'',1,'2017-03-02 11:18:49','2017-03-28 18:53:48'),(36,'009',10,4,NULL,5000,150,50,12,7,2,'','\0','\0','Tuan','0987876646','Hà Nội','Ba Đình','Thọ Xuân - Thanh Hóa','','2017-03-04 17:52:06','Trinh Dinh Quyet','0977006602','Hà Nội','Sóc Sơn','Thôn 4 - Xuân Yên - Thọ Xuân - Thanh Hóa','','2017-03-20 11:17:47',100,20000000,'2017-03-28 11:20:47',3,'',1,'2017-03-01 11:18:49','2017-03-28 18:53:51'),(37,'0012',11,5,NULL,6000,200,20,10,4,3,'','\0','\0','Hoang','0981828383','Hà Nam','Bình Lục','Tiền Hải - Thái Bình','','2017-03-06 17:53:28','Dang Le Tuan','0964657387','Thanh Hóa','Thọ Xuân','Từ Sơn - Bắc Ninh','','2017-03-19 11:17:47',170,10000000,'2017-03-28 11:20:47',4,'',1,'2017-03-28 11:18:49','2017-03-28 17:57:47'),(38,'0012',12,6,NULL,8000,200,44,10,5,2,'','\0','\0','Quyet','0999888777','Hà Nội','Ba Đình','Ba Vì - Hà Nội','','2017-03-04 17:53:28','Le Van Duong','01669775349','Thái Bình','Tiền Hải','Khu công nghệ cao Hòa Lạc - Thạch Thất - Hà Nội','','2017-03-28 11:17:47',170,50000000,'2017-03-28 11:20:47',4,'',1,'2017-03-02 11:18:49','2017-03-28 17:57:51'),(39,'0012',13,7,NULL,3200,200,100,10,6,2,'','\0','\0','Tuan','0987876646','Hà Nam','Ba Đình','Thọ Xuân - Thanh Hóa','','2017-03-05 17:53:28','Trinh Dinh Quyet','01677776656','Hà Nội','Cầu Giấy','Hoàng Mai - Nghệ An','','2017-03-19 11:17:47',210,20000000,'2017-03-28 11:20:47',4,'',1,'2017-03-01 11:18:49','2017-03-28 17:57:54'),(40,'0012',1,8,NULL,4300,100,20,20,2,1,'','\0','\0','Hoang','0981828383','Hà Nội','Bình Lục','Tiền Hải - Thái Bình','','2017-04-28 11:17:47','Trinh Dinh Quyet','0977006602','Hà Nội','Cầu Giấy','Thôn 4 - Xuân Yên - Thọ Xuân - Thanh Hóa','','2017-04-28 11:17:47',12,20000000,'2017-04-12 11:17:47',4,'',1,'2017-03-03 11:18:49','2017-03-28 17:57:57'),(41,'0012',2,1,NULL,4000,272,44,10,3,2,'','\0','\0','Quyet','0999888777','Hà Nội','Ba Vì','Ba Vì - Hà Nội','','2017-04-04 11:17:47','Dang Le Tuan','0964657387','Thanh Hóa','Thọ Xuân','Từ Sơn - Bắc Ninh','','2017-04-28 11:17:47',100,10000000,'2017-04-10 11:17:47',3,'',1,'2017-04-02 17:55:28','2017-03-28 17:58:01'),(42,'0012',3,2,NULL,5000,100,50,8,4,2,'','\0','\0','Hoang','0987876646','Hà Nam','Bình Lục','Thọ Xuân - Thanh Hóa','','2017-04-04 11:17:47','Le Van Duong','01669775349','Thái Bình','Tiền Hải','Khu công nghệ cao Hòa Lạc - Thạch Thất - Hà Nội','','2017-04-19 11:17:47',170,50000000,'2017-04-12 11:17:47',3,'',1,'2017-04-01 17:55:28','2017-03-28 17:58:04'),(43,'0012',4,3,NULL,6000,200,44,8,5,2,'','\0','\0','Tuan','0981828383','Bắc Giang','Sơn Động','Tiền Hải - Thái Bình','','2017-04-05 11:17:47','Trinh Dinh Quyet','01677776656','Hà Nội','Cầu Giấy','Hoàng Mai - Nghệ An','','2017-04-28 11:17:47',170,20000000,'2017-04-10 11:17:47',3,'',1,'2017-04-03 17:55:28','2017-03-28 17:58:07'),(44,'0012',5,4,NULL,7000,272,20,10,6,2,'','\0','\0','Quyet','0999888777','Hà Nam','Bình Lục','Ba Vì - Hà Nội','','2017-04-04 11:17:47','Trinh Dinh Quyet','0977006602','Hà Nội','Cầu Giấy','Thôn 4 - Xuân Yên - Thọ Xuân - Thanh Hóa','','2017-04-28 11:17:47',100,20000000,'2017-04-12 11:17:47',3,'',1,'2017-04-01 17:55:28','2017-03-28 17:58:10'),(45,'0012',6,5,NULL,5400,200,44,5,1,2,'','\0','\0','Tuan','0987876646','Bắc Giang','Sơn Động','Thọ Xuân - Thanh Hóa','','2017-04-05 17:53:28','Dang Le Tuan','0964657387','Thanh Hóa','Thọ Xuân','Từ Sơn - Bắc Ninh','','2017-04-19 11:17:47',170,10000000,'2017-04-10 11:17:47',3,'',1,'2017-04-03 17:55:28','2017-03-28 17:58:14'),(46,'0012',7,6,NULL,6500,272,50,6,2,2,'','\0','\0','Hoang','0981828383','Hà Nam','Bình Lục','Tiền Hải - Thái Bình','','2017-04-05 17:53:28','Le Van Duong','01669775349','Thái Bình','Tiền Hải','Khu công nghệ cao Hòa Lạc - Thạch Thất - Hà Nội','','2017-04-28 11:17:47',200,50000000,'2017-04-12 11:17:47',3,'',1,'2017-04-02 17:55:28','2017-03-28 17:58:17'),(47,'0012',8,7,NULL,7600,200,44,10,3,3,'','\0','\0','Quyet','0999888777','Bắc Giang','Bình Lục','Ba Vì - Hà Nội','','2017-04-04 17:53:28','Trinh Dinh Quyet','01677776656','Hà Nội','Cầu Giấy','Hoàng Mai - Nghệ An','','2017-04-28 11:17:47',50,20000000,'2017-04-12 11:17:47',3,'',1,'2017-04-01 17:55:28','2017-03-28 17:58:22'),(48,'001',9,8,NULL,8000,150,100,12,5,1,'','','\0','Tuan','0987876646','Hà Nam','Bình Lục','Thọ Xuân - Thanh Hóa','','2017-04-04 17:53:28','Trinh Dinh Quyet','0977006602','Hà Nội','Đăk Đoa','Thôn 4 - Xuân Yên - Thọ Xuân - Thanh Hóa','','2017-04-19 11:17:47',200,20000000,'2017-04-10 11:17:47',3,'',1,'2017-04-02 17:55:28','2017-03-30 00:04:39'),(49,'001',10,1,NULL,8000,200,20,6,6,1,'','','\0','Tuan','0999888777','Bắc Giang','Sơn Động','Tiền Hải - Thái Bình','','2017-04-05 17:53:28','Dang Le Tuan','0964657387','Thanh Hóa','Thọ Xuân','Từ Sơn - Bắc Ninh','','2017-04-19 11:17:47',50,10000000,'2017-04-10 11:17:47',3,'',1,'2017-04-01 17:55:28','2017-03-30 00:04:43'),(50,'001',11,2,NULL,9000,50,100,9,4,2,'','','\0','Hoang','0981828383','Hà Nam','Bình Lục','Ba Vì - Hà Nội','','2017-04-04 17:53:28','Le Van Duong','01669775349','Thái Bình','Tiền Hải','Khu công nghệ cao Hòa Lạc - Thạch Thất - Hà Nội','','2017-04-20 11:17:47',200,50000000,'2017-04-12 11:17:47',4,'',1,'2017-04-28 17:55:28','2017-03-30 00:04:46'),(51,'001',12,3,NULL,1000,200,50,8,5,2,'','','\0','Quyet','0987876646','Bắc Giang','Sơn Động','Thọ Xuân - Thanh Hóa','','2017-04-05 17:53:28','Trinh Dinh Quyet','01677776656','Gia Lai','Đăk Đoa','Hoàng Mai - Nghệ An','','2017-04-28 11:17:47',50,20000000,'2017-04-10 11:17:47',4,'',1,'2017-04-01 17:55:28','2017-03-30 00:04:50'),(52,'001',13,4,NULL,22000,50,20,9,6,3,'','','\0','Tuan','0981828383','Hà Nam','Kim Bảng','Tiền Hải - Thái Bình','','2017-04-04 17:53:28','Trinh Dinh Quyet','0977006602','Hà Nội','Đăk Đoa','Thôn 4 - Xuân Yên - Thọ Xuân - Thanh Hóa','','2017-04-20 11:17:47',170,20000000,'2017-04-10 11:17:47',4,'',1,'2017-02-01 22:32:02','2017-03-30 00:04:53'),(53,'001',1,5,NULL,3000,200,100,8,7,3,'','','\0','Quyet','0981828383','Hà Nam','Kim Bảng','Ba Vì - Hà Nội','','2017-04-05 17:53:28','Dang Le Tuan','0964657387','Thanh Hóa','Thọ Xuân','Hoàng Mai - Nghệ An','','2017-04-28 11:17:47',210,10000000,'2017-04-12 11:17:47',4,'',1,'2017-03-02 22:32:02','2017-03-30 00:04:56'),(54,'001',2,6,NULL,12000,100,50,6,4,3,'','','\0','Quyet','0987876646','Bắc Giang','Sơn Động','Thọ Xuân - Thanh Hóa','','2017-05-04 22:30:33','Le Van Duong','01669775349','Thái Bình','Tiền Hải','Khu công nghệ cao Hòa Lạc - Thạch Thất - Hà Nội','','2017-05-19 22:30:33',100,50000000,'2017-05-10 22:30:33',1,'',1,'2017-04-03 22:32:03','2017-03-30 00:04:59'),(55,'001',3,7,NULL,21000,200,100,4,3,3,'','','\0','Quyet','0981828383','Hà Nam','Kim Bảng','Tiền Hải - Thái Bình','','2017-05-05 22:30:33','Trinh Dinh Quyet','01677776656','Gia Lai','Đăk Đoa','Hoàng Mai - Nghệ An','','2017-05-19 22:30:33',100,20000000,'2017-05-12 22:30:33',1,'',1,'2017-05-02 22:32:04','2017-03-30 00:05:02'),(56,'001',4,8,NULL,3200,100,20,4,2,2,'','','\0','Hoang','0987876646','Hà Nam','Kim Bảng','Ba Vì - Hà Nội','','2017-05-05 22:30:33','Trinh Dinh Quyet','0977006602','Hà Nội','Đăk Đoa','Thôn 4 - Xuân Yên - Thọ Xuân - Thanh Hóa','','2017-05-20 22:30:33',100,20000000,'2017-05-10 22:30:33',1,'',1,'2017-01-02 22:32:05','2017-03-30 00:05:05'),(57,'001',5,8,NULL,9500,200,50,4,3,2,'','','\0','Hoang','0981828383','Bắc Giang','Sơn Động','Thọ Xuân - Thanh Hóa','','2017-05-04 10:17:10','Dang Le Tuan','0964657387','Thanh Hóa','Thọ Xuân','Hoàng Mai - Nghệ An','','2017-05-19 22:30:33',50,10000000,'2017-05-12 22:30:33',1,'',1,'2017-02-28 22:32:06','2017-03-30 00:05:09'),(58,'001',6,1,NULL,1200,100,100,2,4,1,'','','\0','Quyet','0987876646','Hà Nam','Kim Bảng','Tiền Hải - Thái Bình','','2017-05-05 10:17:10','Le Van Duong','01669775349','Thái Bình','Tiền Hải','Khu công nghệ cao Hòa Lạc - Thạch Thất - Hà Nội','','2017-05-30 22:30:33',210,50000000,'2017-05-10 22:30:33',1,'',1,'2017-03-01 22:32:06','2017-03-28 22:38:03'),(59,'9999',7,2,NULL,13000,100,50,1,2,2,'','\0','\0','quyet','0981828383','Bắc Giang','Sơn Động','Ba Vì - Hà Nội','','2017-05-04 10:17:10','Trinh Dinh Quyet','01677776656','Cao Bằng','Thông Nông','Hoàng Mai - Nghệ An','','2017-05-19 22:30:33',50,20000000,'2017-05-12 22:30:33',1,'',1,'2017-04-01 22:49:01','2017-03-28 23:00:52'),(60,'8888',8,3,NULL,14000,200,50,3,5,3,'','\0','\0','Quyet','01669775349','Hà Nội','Ba Vì','Thọ Xuân - Thanh Hóa','','2017-05-05 10:17:10','Trinh Dinh Quyet','0964657387','Hà Nội','Phú Tân','Thôn 4 - Xuân Yên - Thọ Xuân - Thanh Hóa','','2017-05-19 22:30:33',200,20000000,'2017-05-12 22:59:20',1,'',1,'2017-05-02 22:50:47','2017-03-28 23:00:56'),(61,'001',9,4,NULL,4200,100,100,7,4,3,'','\0','\0','Quyết','0986666333','Bắc Giang','Sơn Động','Tiền Hải - Thái Bình','','2017-04-05 17:53:28','Minh','0987666444','Thanh Hóa','Thọ Xuân','Khu công nghệ cao Hòa Lạc - Thạch Thất - Hà Nội','','2017-05-19 22:30:33',170,10000000,'2017-05-10 22:59:20',1,'',1,'2017-01-03 10:18:40','2017-03-28 10:29:26'),(62,'001',10,5,NULL,5300,100,100,7,3,3,'','\0','\0','Quyết','0986666333','An Giang','Châu Phú','Ba Vì - Hà Nội','','2017-05-05 10:17:10','Le Van Duong','01669775349','Thái Bình','Tiền Hải','Hoàng Mai - Nghệ An','','2017-05-19 22:30:33',170,50000000,'2017-05-12 22:59:20',1,'',1,'2017-02-02 10:18:41','2017-03-28 10:29:31'),(63,'1231223',11,6,NULL,9500,200,20,5,4,2,'','','','DuongLV','01669775349','Bắc Giang','Bắc Giang','Thọ Xuân - Thanh Hóa','','2017-05-05 10:17:10','DuongLV','01677776656','Cà Mau','Bắc Quang','Khu công nghệ cao Hòa Lạc - Thạch Thất - Hà Nội','','2017-05-19 22:30:33',100,20000000,'2017-05-10 22:59:20',1,'',3,'2017-03-01 00:47:30','2017-04-07 22:04:24'),(112,'qtd52',10,1,NULL,1000,8,200,2,2,2,'','','\0','quyet','0964657374','Bắc Giang','Tân Yên','Thạch Hòa','','2017-04-05 21:58:43','hoang','0976767474','Bình Định','Tuy Phước','Thạch Thất','','2017-04-30 21:58:43',12,4500000,'2017-04-10 22:10:00',3,'',4,'2017-04-19 22:03:20','2017-04-19 22:18:30');
/*!40000 ALTER TABLE `billoflading` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrierauction`
--

DROP TABLE IF EXISTS `carrierauction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrierauction` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `BillOfLadingId` int(11) DEFAULT NULL,
  `CarrierId` int(11) DEFAULT NULL,
  `AuctionDate` datetime NOT NULL,
  `Modified` datetime DEFAULT NULL,
  `AuctionPrice` float NOT NULL,
  `Status` int(11) NOT NULL,
  `notification` bit(1) NOT NULL DEFAULT b'0',
  `Note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_lwg47jsbqk5mq3q471gabv65c` (`BillOfLadingId`),
  KEY `FK_44vhii4xejepilpl0nyv9obay` (`CarrierId`),
  CONSTRAINT `FK_44vhii4xejepilpl0nyv9obay` FOREIGN KEY (`CarrierId`) REFERENCES `users` (`Id`),
  CONSTRAINT `FK_lwg47jsbqk5mq3q471gabv65c` FOREIGN KEY (`BillOfLadingId`) REFERENCES `billoflading` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrierauction`
--

LOCK TABLES `carrierauction` WRITE;
/*!40000 ALTER TABLE `carrierauction` DISABLE KEYS */;
INSERT INTO `carrierauction` VALUES (1,1,5,'2017-01-04 10:20:46','2017-01-29 23:34:31',1000000,2,'',NULL),(2,2,2,'2017-01-04 17:40:19','2017-01-29 23:34:31',1000000,2,'',NULL),(3,3,2,'2017-01-04 17:40:19','2017-01-29 23:34:31',1000000,2,'',NULL),(4,4,2,'2017-01-04 17:40:19','2017-01-29 23:34:31',1000000,2,'',NULL),(5,5,2,'2017-01-04 17:40:19','2017-01-29 23:34:31',1000000,2,'',NULL),(6,6,2,'2017-01-04 17:40:19','2017-01-29 23:34:31',1000000,2,'',NULL),(7,7,5,'2017-01-05 17:40:19','2017-01-29 23:34:31',1000000,2,'',NULL),(8,8,5,'2017-01-04 17:40:19','2017-01-29 23:34:31',1000000,2,'',NULL),(9,9,2,'2017-01-04 17:40:19','2017-01-29 23:34:31',1000000,2,'',NULL),(10,10,2,'2017-01-05 17:40:19','2017-01-29 23:34:31',1000000,2,'',NULL),(11,14,5,'2017-01-04 17:40:19','2017-01-29 23:34:31',1000000,2,'',NULL),(12,15,2,'2017-02-17 10:20:46','2017-03-28 10:36:19',1500000,2,'',NULL),(13,16,2,'2017-02-04 10:20:46','2017-03-28 10:36:19',1500000,2,'',NULL),(14,17,2,'2017-02-04 10:20:46','2017-03-28 10:36:19',1500000,2,'',NULL),(15,18,2,'2017-02-03 10:20:46','2017-03-28 10:36:19',1500000,2,'',NULL),(16,19,5,'2017-02-04 10:20:46','2017-03-28 10:36:19',1500000,2,'',NULL),(17,20,5,'2017-02-05 10:20:46','2017-03-28 10:36:19',1500000,2,'',NULL),(18,21,5,'2017-02-04 10:20:46','2017-03-28 10:36:19',1200000,2,'',NULL),(19,22,5,'2017-02-04 10:20:46','2017-03-28 10:36:19',1500000,2,'',NULL),(20,23,5,'2017-02-12 10:20:46','2017-03-28 10:36:19',1500000,2,'',NULL),(21,27,2,'2017-03-04 11:17:47','2017-03-28 10:36:19',2000000,2,'',NULL),(22,28,2,'2017-03-04 11:17:47','2017-03-28 10:36:19',2000000,2,'',NULL),(23,29,2,'2017-03-04 11:17:47','2017-03-28 10:36:19',2000000,2,'',NULL),(24,30,2,'2017-03-03 11:17:47','2017-03-28 10:36:19',2000000,2,'',NULL),(25,31,5,'2017-03-05 11:17:47','2017-03-28 10:36:19',2000000,2,'',NULL),(26,32,5,'2017-03-05 11:17:47','2017-03-28 10:36:19',2000000,2,'',NULL),(27,33,5,'2017-03-05 11:17:47','2017-03-28 10:36:19',2000000,2,'',NULL),(28,34,2,'2017-03-04 11:17:47','2017-03-28 10:36:19',2000000,2,'',NULL),(29,36,2,'2017-03-05 11:17:47','2017-03-28 11:17:47',2000000,2,'',NULL),(30,41,2,'2017-04-07 11:17:47','2017-04-17 00:51:28',2000000,2,'',NULL),(31,42,2,'2017-04-05 11:17:47','2017-04-28 11:17:47',2000000,2,'',NULL),(32,43,2,'2017-04-07 11:17:47','2017-04-28 11:17:47',2000000,2,'',NULL),(33,44,2,'2017-04-04 11:17:47','2017-04-28 11:17:47',2000000,2,'',NULL),(34,45,2,'2017-04-05 11:17:47','2017-04-28 11:17:47',2000000,2,'',NULL),(35,46,5,'2017-04-04 11:17:47','2017-04-28 11:17:47',2000000,2,'',NULL),(36,47,5,'2017-04-05 11:17:47','2017-04-28 11:17:47',2000000,2,'',NULL),(37,48,5,'2017-04-04 11:17:47','2017-04-28 11:17:47',3000000,2,'',NULL),(38,49,5,'2017-04-05 11:17:47','2017-04-28 11:17:47',3000000,2,'',NULL),(39,50,2,'2017-04-05 11:17:47','2017-04-28 11:17:47',3000000,2,'',NULL),(41,54,2,'2017-05-07 22:30:33','2017-05-30 22:30:33',3000000,1,'',NULL),(42,55,2,'2017-05-05 22:30:33','2017-05-30 22:30:33',3000000,1,'',NULL),(43,56,2,'2017-05-05 22:30:33','2017-05-30 22:30:33',3000000,1,'',NULL),(44,57,2,'2017-05-05 22:30:33','2017-05-30 22:30:33',3000000,1,'',NULL),(45,58,2,'2017-05-07 22:30:33','2017-05-30 22:30:33',3000000,1,'',NULL),(46,59,2,'2017-05-07 22:30:33','2017-05-30 22:30:33',3000000,1,'',NULL),(48,112,2,'2017-04-04 22:04:57','2017-04-19 22:23:33',4500000,4,'',NULL),(49,112,5,'2017-04-04 22:05:27','2017-04-19 22:28:35',3000000,3,'',NULL);
/*!40000 ALTER TABLE `carrierauction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Content` varchar(100) NOT NULL,
  `BillOfLadingId` int(11) NOT NULL,
  `CreatedUserId` int(11) NOT NULL,
  `Created` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_emucxutlq4rtm07k3ptixavao` (`BillOfLadingId`),
  KEY `FK_f0ynkwxydlr8oq3y0ia3ovodp` (`CreatedUserId`),
  CONSTRAINT `FK_emucxutlq4rtm07k3ptixavao` FOREIGN KEY (`BillOfLadingId`) REFERENCES `billoflading` (`Id`),
  CONSTRAINT `FK_f0ynkwxydlr8oq3y0ia3ovodp` FOREIGN KEY (`CreatedUserId`) REFERENCES `users` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'ABC',2,4,'2017-04-16 21:30:18');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `TaxCode` varchar(20) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `PhoneNumber` varchar(11) DEFAULT NULL,
  `Fax` varchar(20) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'DuongLV','1234567890','duong@gmail.com','0123456789','1-111-111-111','Ha Noi'),(2,'111112','01929394954','quyettdse013@fpt.edu.vn','0988888444','123-123-1234-123','sdsdfdsf');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `district` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Code` varchar(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Type` varchar(200) DEFAULT NULL,
  `ProvinceCode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UK_fi9q53bwdngwdwoxdiqgtdncv` (`Code`),
  KEY `DISTRICT_CODE_INDEX` (`Code`),
  KEY `FK_hucb17vny5k3xvckw7nbemutr` (`ProvinceCode`),
  CONSTRAINT `FK_hucb17vny5k3xvckw7nbemutr` FOREIGN KEY (`ProvinceCode`) REFERENCES `province` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=698 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES (1,'001','Ba Đình','Quận','01'),(2,'002','Hoàn Kiếm','Quận','01'),(3,'003','Tây Hồ','Quận','01'),(4,'004','Long Biên','Quận','01'),(5,'005','Cầu Giấy','Quận','01'),(6,'006','Đống Đa','Quận','01'),(7,'007','Hai Bà Trưng','Quận','01'),(8,'008','Hoàng Mai','Quận','01'),(9,'009','Thanh Xuân','Quận','01'),(10,'268','Hà Đông','Quận','01'),(11,'269','Sơn Tây','Thị Xã','01'),(12,'016','Sóc Sơn','Huyện','01'),(13,'017','Đông Anh','Huyện','01'),(14,'018','Gia Lâm','Huyện','01'),(15,'019','Từ Liêm','Huyện','01'),(16,'020','Thanh Trì','Huyện','01'),(17,'250','Mê Linh','Huyện','01'),(18,'271','Ba Vì','Huyện','01'),(19,'272','Phúc Thọ','Huyện','01'),(20,'273','Đan Phượng','Huyện','01'),(21,'274','Hoài Đức','Huyện','01'),(22,'275','Quốc Oai','Huyện','01'),(23,'276','Thạch Thất','Huyện','01'),(24,'277','Chương Mỹ','Huyện','01'),(25,'278','Thanh Oai','Huyện','01'),(26,'279','Thường Tín','Huyện','01'),(27,'280','Phú Xuyên','Huyện','01'),(28,'281','Ứng Hòa','Huyện','01'),(29,'282','Mỹ Đức','Huyện','01'),(30,'024','Hà Giang','Thị Xã','02'),(31,'026','Đồng Văn','Huyện','02'),(32,'027','Mèo Vạc','Huyện','02'),(33,'028','Yên Minh','Huyện','02'),(34,'029','Quản Bạ','Huyện','02'),(35,'030','Vị Xuyên','Huyện','02'),(36,'031','Bắc Mê','Huyện','02'),(37,'032','Hoàng Su Phì','Huyện','02'),(38,'033','Xín Mần','Huyện','02'),(39,'034','Bắc Quang','Huyện','02'),(40,'035','Quang Bình','Huyện','02'),(41,'040','Cao Bằng','Thị Xã','04'),(42,'042','Bảo Lâm','Huyện','04'),(43,'043','Bảo Lạc','Huyện','04'),(44,'044','Thông Nông','Huyện','04'),(45,'045','Hà Quảng','Huyện','04'),(46,'046','Trà Lĩnh','Huyện','04'),(47,'047','Trùng Khánh','Huyện','04'),(48,'048','Hạ Lang','Huyện','04'),(49,'049','Quảng Uyên','Huyện','04'),(50,'050','Phục Hoà','Huyện','04'),(51,'051','Hoà An','Huyện','04'),(52,'052','Nguyên Bình','Huyện','04'),(53,'053','Thạch An','Huyện','04'),(54,'058','Bắc Kạn','Thị Xã','06'),(55,'060','Pác Nặm','Huyện','06'),(56,'061','Ba Bể','Huyện','06'),(57,'062','Ngân Sơn','Huyện','06'),(58,'063','Bạch Thông','Huyện','06'),(59,'064','Chợ Đồn','Huyện','06'),(60,'065','Chợ Mới','Huyện','06'),(61,'066','Na Rì','Huyện','06'),(62,'070','Tuyên Quang','Thị Xã','08'),(63,'072','Nà Hang','Huyện','08'),(64,'073','Chiêm Hóa','Huyện','08'),(65,'074','Hàm Yên','Huyện','08'),(66,'075','Yên Sơn','Huyện','08'),(67,'076','Sơn Dương','Huyện','08'),(68,'080','Lào Cai','Thành Phố','10'),(69,'082','Bát Xát','Huyện','10'),(70,'083','Mường Khương','Huyện','10'),(71,'084','Si Ma Cai','Huyện','10'),(72,'085','Bắc Hà','Huyện','10'),(73,'086','Bảo Thắng','Huyện','10'),(74,'087','Bảo Yên','Huyện','10'),(75,'088','Sa Pa','Huyện','10'),(76,'089','Văn Bàn','Huyện','10'),(77,'094','Điện Biên Phủ','Thành Phố','11'),(78,'095','Mường Lay','Thị Xã','11'),(79,'096','Mường Nhé','Huyện','11'),(80,'097','Mường Chà','Huyện','11'),(81,'098','Tủa Chùa','Huyện','11'),(82,'099','Tuần Giáo','Huyện','11'),(83,'100','Điện Biên','Huyện','11'),(84,'101','Điện Biên Đông','Huyện','11'),(85,'102','Mường Ảng','Huyện','11'),(86,'104','Lai Châu','Thị Xã','12'),(87,'106','Tam Đường','Huyện','12'),(88,'107','Mường Tè','Huyện','12'),(89,'108','Sìn Hồ','Huyện','12'),(90,'109','Phong Thổ','Huyện','12'),(91,'110','Than Uyên','Huyện','12'),(92,'111','Tân Uyên','Huyện','12'),(93,'116','Sơn La','Thành Phố','14'),(94,'118','Quỳnh Nhai','Huyện','14'),(95,'119','Thuận Châu','Huyện','14'),(96,'120','Mường La','Huyện','14'),(97,'121','Bắc Yên','Huyện','14'),(98,'122','Phù Yên','Huyện','14'),(99,'123','Mộc Châu','Huyện','14'),(100,'124','Yên Châu','Huyện','14'),(101,'125','Mai Sơn','Huyện','14'),(102,'126','Sông Mã','Huyện','14'),(103,'127','Sốp Cộp','Huyện','14'),(104,'132','Yên Bái','Thành Phố','15'),(105,'133','Nghĩa Lộ','Thị Xã','15'),(106,'135','Lục Yên','Huyện','15'),(107,'136','Văn Yên','Huyện','15'),(108,'137','Mù Cang Chải','Huyện','15'),(109,'138','Trấn Yên','Huyện','15'),(110,'139','Trạm Tấu','Huyện','15'),(111,'140','Văn Chấn','Huyện','15'),(112,'141','Yên Bình','Huyện','15'),(113,'148','Hòa Bình','Thành Phố','17'),(114,'150','Đà Bắc','Huyện','17'),(115,'151','Kỳ Sơn','Huyện','17'),(116,'152','Lương Sơn','Huyện','17'),(117,'153','Kim Bôi','Huyện','17'),(118,'154','Cao Phong','Huyện','17'),(119,'155','Tân Lạc','Huyện','17'),(120,'156','Mai Châu','Huyện','17'),(121,'157','Lạc Sơn','Huyện','17'),(122,'158','Yên Thủy','Huyện','17'),(123,'159','Lạc Thủy','Huyện','17'),(124,'164','Thái Nguyên','Thành Phố','19'),(125,'165','Sông Công','Thị Xã','19'),(126,'167','Định Hóa','Huyện','19'),(127,'168','Phú Lương','Huyện','19'),(128,'169','Đồng Hỷ','Huyện','19'),(129,'170','Võ Nhai','Huyện','19'),(130,'171','Đại Từ','Huyện','19'),(131,'172','Phổ Yên','Huyện','19'),(132,'173','Phú Bình','Huyện','19'),(133,'178','Lạng Sơn','Thành Phố','20'),(134,'180','Tràng Định','Huyện','20'),(135,'181','Bình Gia','Huyện','20'),(136,'182','Văn Lãng','Huyện','20'),(137,'183','Cao Lộc','Huyện','20'),(138,'184','Văn Quan','Huyện','20'),(139,'185','Bắc Sơn','Huyện','20'),(140,'186','Hữu Lũng','Huyện','20'),(141,'187','Chi Lăng','Huyện','20'),(142,'188','Lộc Bình','Huyện','20'),(143,'189','Đình Lập','Huyện','20'),(144,'193','Hạ Long','Thành Phố','22'),(145,'194','Móng Cái','Thành Phố','22'),(146,'195','Cẩm Phả','Thị Xã','22'),(147,'196','Uông Bí','Thị Xã','22'),(148,'198','Bình Liêu','Huyện','22'),(149,'199','Tiên Yên','Huyện','22'),(150,'200','Đầm Hà','Huyện','22'),(151,'201','Hải Hà','Huyện','22'),(152,'202','Ba Chẽ','Huyện','22'),(153,'203','Vân Đồn','Huyện','22'),(154,'204','Hoành Bồ','Huyện','22'),(155,'205','Đông Triều','Huyện','22'),(156,'206','Yên Hưng','Huyện','22'),(157,'207','Cô Tô','Huyện','22'),(158,'213','Bắc Giang','Thành Phố','24'),(159,'215','Yên Thế','Huyện','24'),(160,'216','Tân Yên','Huyện','24'),(161,'217','Lạng Giang','Huyện','24'),(162,'218','Lục Nam','Huyện','24'),(163,'219','Lục Ngạn','Huyện','24'),(164,'220','Sơn Động','Huyện','24'),(165,'221','Yên Dũng','Huyện','24'),(166,'222','Việt Yên','Huyện','24'),(167,'223','Hiệp Hòa','Huyện','24'),(168,'227','Việt Trì','Thành Phố','25'),(169,'228','Phú Thọ','Thị Xã','25'),(170,'230','Đoan Hùng','Huyện','25'),(171,'231','Hạ Hoà','Huyện','25'),(172,'232','Thanh Ba','Huyện','25'),(173,'233','Phù Ninh','Huyện','25'),(174,'234','Yên Lập','Huyện','25'),(175,'235','Cẩm Khê','Huyện','25'),(176,'236','Tam Nông','Huyện','25'),(177,'237','Lâm Thao','Huyện','25'),(178,'238','Thanh Sơn','Huyện','25'),(179,'239','Thanh Thuỷ','Huyện','25'),(180,'240','Tân Sơn','Huyện','25'),(181,'243','Vĩnh Yên','Thành Phố','26'),(182,'244','Phúc Yên','Thị Xã','26'),(183,'246','Lập Thạch','Huyện','26'),(184,'247','Tam Dương','Huyện','26'),(185,'248','Tam Đảo','Huyện','26'),(186,'249','Bình Xuyên','Huyện','26'),(187,'251','Yên Lạc','Huyện','26'),(188,'252','Vĩnh Tường','Huyện','26'),(189,'253','Sông Lô','Huyện','26'),(190,'256','Bắc Ninh','Thành Phố','27'),(191,'261','Từ Sơn','Thị Xã','27'),(192,'258','Yên Phong','Huyện','27'),(193,'259','Quế Võ','Huyện','27'),(194,'260','Tiên Du','Huyện','27'),(195,'262','Thuận Thành','Huyện','27'),(196,'263','Gia Bình','Huyện','27'),(197,'264','Lương Tài','Huyện','27'),(198,'288','Hải Dương','Thành Phố','30'),(199,'290','Chí Linh','Huyện','30'),(200,'291','Nam Sách','Huyện','30'),(201,'292','Kinh Môn','Huyện','30'),(202,'293','Kim Thành','Huyện','30'),(203,'294','Thanh Hà','Huyện','30'),(204,'295','Cẩm Giàng','Huyện','30'),(205,'296','Bình Giang','Huyện','30'),(206,'297','Gia Lộc','Huyện','30'),(207,'298','Tứ Kỳ','Huyện','30'),(208,'299','Ninh Giang','Huyện','30'),(209,'300','Thanh Miện','Huyện','30'),(210,'303','Hồng Bàng','Quận','31'),(211,'304','Ngô Quyền','Quận','31'),(212,'305','Lê Chân','Quận','31'),(213,'306','Hải An','Quận','31'),(214,'307','Kiến An','Quận','31'),(215,'308','Đồ Sơn','Quận','31'),(216,'309','Kinh Dương','Quận','31'),(217,'311','Thuỷ Nguyên','Huyện','31'),(218,'312','An Dương','Huyện','31'),(219,'313','An Lão','Huyện','31'),(220,'314','Kiến Thụy','Huyện','31'),(221,'315','Tiên Lãng','Huyện','31'),(222,'316','Vĩnh Bảo','Huyện','31'),(223,'317','Cát Hải','Huyện','31'),(224,'318','Bạch Long Vĩ','Huyện','31'),(225,'323','Hưng Yên','Thành Phố','33'),(226,'325','Văn Lâm','Huyện','33'),(227,'326','Văn Giang','Huyện','33'),(228,'327','Yên Mỹ','Huyện','33'),(229,'328','Mỹ Hào','Huyện','33'),(230,'329','Ân Thi','Huyện','33'),(231,'330','Khoái Châu','Huyện','33'),(232,'331','Kim Động','Huyện','33'),(233,'332','Tiên Lữ','Huyện','33'),(234,'333','Phù Cừ','Huyện','33'),(235,'336','Thái Bình','Thành Phố','34'),(236,'338','Quỳnh Phụ','Huyện','34'),(237,'339','Hưng Hà','Huyện','34'),(238,'340','Đông Hưng','Huyện','34'),(239,'341','Thái Thụy','Huyện','34'),(240,'342','Tiền Hải','Huyện','34'),(241,'343','Kiến Xương','Huyện','34'),(242,'344','Vũ Thư','Huyện','34'),(243,'347','Phủ Lý','Thành Phố','35'),(244,'349','Duy Tiên','Huyện','35'),(245,'350','Kim Bảng','Huyện','35'),(246,'351','Thanh Liêm','Huyện','35'),(247,'352','Bình Lục','Huyện','35'),(248,'353','Lý Nhân','Huyện','35'),(249,'356','Nam Định','Thành Phố','36'),(250,'358','Mỹ Lộc','Huyện','36'),(251,'359','Vụ Bản','Huyện','36'),(252,'360','Ý Yên','Huyện','36'),(253,'361','Nghĩa Hưng','Huyện','36'),(254,'362','Nam Trực','Huyện','36'),(255,'363','Trực Ninh','Huyện','36'),(256,'364','Xuân Trường','Huyện','36'),(257,'365','Giao Thủy','Huyện','36'),(258,'366','Hải Hậu','Huyện','36'),(259,'369','Ninh Bình','Thành Phố','37'),(260,'370','Tam Điệp','Thị Xã','37'),(261,'372','Nho Quan','Huyện','37'),(262,'373','Gia Viễn','Huyện','37'),(263,'374','Hoa Lư','Huyện','37'),(264,'375','Yên Khánh','Huyện','37'),(265,'376','Kim Sơn','Huyện','37'),(266,'377','Yên Mô','Huyện','37'),(267,'380','Thanh Hóa','Thành Phố','38'),(268,'381','Bỉm Sơn','Thị Xã','38'),(269,'382','Sầm Sơn','Thị Xã','38'),(270,'384','Mường Lát','Huyện','38'),(271,'385','Quan Hóa','Huyện','38'),(272,'386','Bá Thước','Huyện','38'),(273,'387','Quan Sơn','Huyện','38'),(274,'388','Lang Chánh','Huyện','38'),(275,'389','Ngọc Lặc','Huyện','38'),(276,'390','Cẩm Thủy','Huyện','38'),(277,'391','Thạch Thành','Huyện','38'),(278,'392','Hà Trung','Huyện','38'),(279,'393','Vĩnh Lộc','Huyện','38'),(280,'394','Yên Định','Huyện','38'),(281,'395','Thọ Xuân','Huyện','38'),(282,'396','Thường Xuân','Huyện','38'),(283,'397','Triệu Sơn','Huyện','38'),(284,'398','Thiệu Hoá','Huyện','38'),(285,'399','Hoằng Hóa','Huyện','38'),(286,'400','Hậu Lộc','Huyện','38'),(287,'401','Nga Sơn','Huyện','38'),(288,'402','Như Xuân','Huyện','38'),(289,'403','Như Thanh','Huyện','38'),(290,'404','Nông Cống','Huyện','38'),(291,'405','Đông Sơn','Huyện','38'),(292,'406','Quảng Xương','Huyện','38'),(293,'407','Tĩnh Gia','Huyện','38'),(294,'412','Vinh','Thành Phố','40'),(295,'413','Cửa Lò','Thị Xã','40'),(296,'414','Thái Hoà','Thị Xã','40'),(297,'415','Quế Phong','Huyện','40'),(298,'416','Quỳ Châu','Huyện','40'),(299,'417','Kỳ Sơn','Huyện','40'),(300,'418','Tương Dương','Huyện','40'),(301,'419','Nghĩa Đàn','Huyện','40'),(302,'420','Quỳ Hợp','Huyện','40'),(303,'421','Quỳnh Lưu','Huyện','40'),(304,'422','Con Cuông','Huyện','40'),(305,'423','Tân Kỳ','Huyện','40'),(306,'424','Anh Sơn','Huyện','40'),(307,'425','Diễn Châu','Huyện','40'),(308,'426','Yên Thành','Huyện','40'),(309,'427','Đô Lương','Huyện','40'),(310,'428','Thanh Chương','Huyện','40'),(311,'429','Nghi Lộc','Huyện','40'),(312,'430','Nam Đàn','Huyện','40'),(313,'431','Hưng Nguyên','Huyện','40'),(314,'436','Hà Tĩnh','Thành Phố','42'),(315,'437','Hồng Lĩnh','Thị Xã','42'),(316,'439','Hương Sơn','Huyện','42'),(317,'440','Đức Thọ','Huyện','42'),(318,'441','Vũ Quang','Huyện','42'),(319,'442','Nghi Xuân','Huyện','42'),(320,'443','Can Lộc','Huyện','42'),(321,'444','Hương Khê','Huyện','42'),(322,'445','Thạch Hà','Huyện','42'),(323,'446','Cẩm Xuyên','Huyện','42'),(324,'447','Kỳ Anh','Huyện','42'),(325,'448','Lộc Hà','Huyện','42'),(326,'450','Đồng Hới','Thành Phố','44'),(327,'452','Minh Hóa','Huyện','44'),(328,'453','Tuyên Hóa','Huyện','44'),(329,'454','Quảng Trạch','Huyện','44'),(330,'455','Bố Trạch','Huyện','44'),(331,'456','Quảng Ninh','Huyện','44'),(332,'457','Lệ Thủy','Huyện','44'),(333,'461','Đông Hà','Thành Phố','45'),(334,'462','Quảng Trị','Thị Xã','45'),(335,'464','Vĩnh Linh','Huyện','45'),(336,'465','Hướng Hóa','Huyện','45'),(337,'466','Gio Linh','Huyện','45'),(338,'467','Đa Krông','Huyện','45'),(339,'468','Cam Lộ','Huyện','45'),(340,'469','Triệu Phong','Huyện','45'),(341,'470','Hải Lăng','Huyện','45'),(342,'471','Cồn Cỏ','Huyện','45'),(343,'474','Huế','Thành Phố','46'),(344,'476','Phong Điền','Huyện','46'),(345,'477','Quảng Điền','Huyện','46'),(346,'478','Phú Vang','Huyện','46'),(347,'479','Hương Thủy','Huyện','46'),(348,'480','Hương Trà','Huyện','46'),(349,'481','A Lưới','Huyện','46'),(350,'482','Phú Lộc','Huyện','46'),(351,'483','Nam Đông','Huyện','46'),(352,'490','Liên Chiểu','Quận','48'),(353,'491','Thanh Khê','Quận','48'),(354,'492','Hải Châu','Quận','48'),(355,'493','Sơn Trà','Quận','48'),(356,'494','Ngũ Hành Sơn','Quận','48'),(357,'495','Cẩm Lệ','Quận','48'),(358,'497','Hoà Vang','Huyện','48'),(359,'498','Hoàng Sa','Huyện','48'),(360,'502','Tam Kỳ','Thành Phố','49'),(361,'503','Hội An','Thành Phố','49'),(362,'504','Tây Giang','Huyện','49'),(363,'505','Đông Giang','Huyện','49'),(364,'506','Đại Lộc','Huyện','49'),(365,'507','Điện Bàn','Huyện','49'),(366,'508','Duy Xuyên','Huyện','49'),(367,'509','Quế Sơn','Huyện','49'),(368,'510','Nam Giang','Huyện','49'),(369,'511','Phước Sơn','Huyện','49'),(370,'512','Hiệp Đức','Huyện','49'),(371,'513','Thăng Bình','Huyện','49'),(372,'514','Tiên Phước','Huyện','49'),(373,'515','Bắc Trà My','Huyện','49'),(374,'516','Nam Trà My','Huyện','49'),(375,'517','Núi Thành','Huyện','49'),(376,'518','Phú Ninh','Huyện','49'),(377,'519','Nông Sơn','Huyện','49'),(378,'522','Quảng Ngãi','Thành Phố','51'),(379,'524','Bình Sơn','Huyện','51'),(380,'525','Trà Bồng','Huyện','51'),(381,'526','Tây Trà','Huyện','51'),(382,'527','Sơn Tịnh','Huyện','51'),(383,'528','Tư Nghĩa','Huyện','51'),(384,'529','Sơn Hà','Huyện','51'),(385,'530','Sơn Tây','Huyện','51'),(386,'531','Minh Long','Huyện','51'),(387,'532','Nghĩa Hành','Huyện','51'),(388,'533','Mộ Đức','Huyện','51'),(389,'534','Đức Phổ','Huyện','51'),(390,'535','Ba Tơ','Huyện','51'),(391,'536','Lý Sơn','Huyện','51'),(392,'540','Qui Nhơn','Thành Phố','52'),(393,'542','An Lão','Huyện','52'),(394,'543','Hoài Nhơn','Huyện','52'),(395,'544','Hoài Ân','Huyện','52'),(396,'545','Phù Mỹ','Huyện','52'),(397,'546','Vĩnh Thạnh','Huyện','52'),(398,'547','Tây Sơn','Huyện','52'),(399,'548','Phù Cát','Huyện','52'),(400,'549','An Nhơn','Huyện','52'),(401,'550','Tuy Phước','Huyện','52'),(402,'551','Vân Canh','Huyện','52'),(403,'555','Tuy Hòa','Thành Phố','54'),(404,'557','Sông Cầu','Thị Xã','54'),(405,'558','Đồng Xuân','Huyện','54'),(406,'559','Tuy An','Huyện','54'),(407,'560','Sơn Hòa','Huyện','54'),(408,'561','Sông Hinh','Huyện','54'),(409,'562','Tây Hoà','Huyện','54'),(410,'563','Phú Hoà','Huyện','54'),(411,'564','Đông Hoà','Huyện','54'),(412,'568','Nha Trang','Thành Phố','56'),(413,'569','Cam Ranh','Thị Xã','56'),(414,'570','Cam Lâm','Huyện','56'),(415,'571','Vạn Ninh','Huyện','56'),(416,'572','Ninh Hòa','Huyện','56'),(417,'573','Khánh Vĩnh','Huyện','56'),(418,'574','Diên Khánh','Huyện','56'),(419,'575','Khánh Sơn','Huyện','56'),(420,'576','Trường Sa','Huyện','56'),(421,'582','Phan Rang-Tháp Chàm','Thành Phố','58'),(422,'584','Bác Ái','Huyện','58'),(423,'585','Ninh Sơn','Huyện','58'),(424,'586','Ninh Hải','Huyện','58'),(425,'587','Ninh Phước','Huyện','58'),(426,'588','Thuận Bắc','Huyện','58'),(427,'589','Thuận Nam','Huyện','58'),(428,'593','Phan Thiết','Thành Phố','60'),(429,'594','La Gi','Thị Xã','60'),(430,'595','Tuy Phong','Huyện','60'),(431,'596','Bắc Bình','Huyện','60'),(432,'597','Hàm Thuận Bắc','Huyện','60'),(433,'598','Hàm Thuận Nam','Huyện','60'),(434,'599','Tánh Linh','Huyện','60'),(435,'600','Đức Linh','Huyện','60'),(436,'601','Hàm Tân','Huyện','60'),(437,'602','Phú Quí','Huyện','60'),(438,'608','Kon Tum','Thành Phố','62'),(439,'610','Đắk Glei','Huyện','62'),(440,'611','Ngọc Hồi','Huyện','62'),(441,'612','Đắk Tô','Huyện','62'),(442,'613','Kon Plông','Huyện','62'),(443,'614','Kon Rẫy','Huyện','62'),(444,'615','Đắk Hà','Huyện','62'),(445,'616','Sa Thầy','Huyện','62'),(446,'617','Tu Mơ Rông','Huyện','62'),(447,'622','Pleiku','Thành Phố','64'),(448,'623','An Khê','Thị Xã','64'),(449,'624','Ayun Pa','Thị Xã','64'),(450,'625','Kbang','Huyện','64'),(451,'626','Đăk Đoa','Huyện','64'),(452,'627','Chư Păh','Huyện','64'),(453,'628','Ia Grai','Huyện','64'),(454,'629','Mang Yang','Huyện','64'),(455,'630','Kông Chro','Huyện','64'),(456,'631','Đức Cơ','Huyện','64'),(457,'632','Chư Prông','Huyện','64'),(458,'633','Chư Sê','Huyện','64'),(459,'634','Đăk Pơ','Huyện','64'),(460,'635','Ia Pa','Huyện','64'),(461,'637','Krông Pa','Huyện','64'),(462,'638','Phú Thiện','Huyện','64'),(463,'639','Chư Pưh','Huyện','64'),(464,'643','Buôn Ma Thuột','Thành Phố','66'),(465,'644','Buôn Hồ','Thị Xã','66'),(466,'645','Ea H\'leo','Huyện','66'),(467,'646','Ea Súp','Huyện','66'),(468,'647','Buôn Đôn','Huyện','66'),(469,'648','Cư M\'gar','Huyện','66'),(470,'649','Krông Búk','Huyện','66'),(471,'650','Krông Năng','Huyện','66'),(472,'651','Ea Kar','Huyện','66'),(473,'652','M\'đrắk','Huyện','66'),(474,'653','Krông Bông','Huyện','66'),(475,'654','Krông Pắc','Huyện','66'),(476,'655','Krông A Na','Huyện','66'),(477,'656','Lắk','Huyện','66'),(478,'657','Cư Kuin','Huyện','66'),(479,'660','Gia Nghĩa','Thị Xã','67'),(480,'661','Đắk Glong','Huyện','67'),(481,'662','Cư Jút','Huyện','67'),(482,'663','Đắk Mil','Huyện','67'),(483,'664','Krông Nô','Huyện','67'),(484,'665','Đắk Song','Huyện','67'),(485,'666','Đắk R\'lấp','Huyện','67'),(486,'667','Tuy Đức','Huyện','67'),(487,'672','Đà Lạt','Thành Phố','68'),(488,'673','Bảo Lộc','Thị Xã','68'),(489,'674','Đam Rông','Huyện','68'),(490,'675','Lạc Dương','Huyện','68'),(491,'676','Lâm Hà','Huyện','68'),(492,'677','Đơn Dương','Huyện','68'),(493,'678','Đức Trọng','Huyện','68'),(494,'679','Di Linh','Huyện','68'),(495,'680','Bảo Lâm','Huyện','68'),(496,'681','Đạ Huoai','Huyện','68'),(497,'682','Đạ Tẻh','Huyện','68'),(498,'683','Cát Tiên','Huyện','68'),(499,'689','Đồng Xoài','Thị Xã','70'),(500,'688','Phước Long','Thị Xã','70'),(501,'690','Bình Long','Thị Xã','70'),(502,'691','Bù Gia Mập','Huyện','70'),(503,'692','Lộc Ninh','Huyện','70'),(504,'693','Bù Đốp','Huyện','70'),(505,'694','Hớn Quản','Huyện','70'),(506,'695','Đồng Phù','Huyện','70'),(507,'696','Bù Đăng','Huyện','70'),(508,'697','Chơn Thành','Huyện','70'),(509,'703','Tây Ninh','Thị Xã','72'),(510,'705','Tân Biên','Huyện','72'),(511,'706','Tân Châu','Huyện','72'),(512,'707','Dương Minh Châu','Huyện','72'),(513,'708','Châu Thành','Huyện','72'),(514,'709','Hòa Thành','Huyện','72'),(515,'710','Gò Dầu','Huyện','72'),(516,'711','Bến Cầu','Huyện','72'),(517,'712','Trảng Bàng','Huyện','72'),(518,'718','Thủ Dầu Một','Thị Xã','74'),(519,'720','Dầu Tiếng','Huyện','74'),(520,'721','Bến Cát','Huyện','74'),(521,'722','Phú Giáo','Huyện','74'),(522,'723','Tân Uyên','Huyện','74'),(523,'724','Dĩ An','Huyện','74'),(524,'725','Thuận An','Huyện','74'),(525,'731','Biên Hòa','Thành Phố','75'),(526,'732','Long Khánh','Thị Xã','75'),(527,'734','Tân Phú','Huyện','75'),(528,'735','Vĩnh Cửu','Huyện','75'),(529,'736','Định Quán','Huyện','75'),(530,'737','Trảng Bom','Huyện','75'),(531,'738','Thống Nhất','Huyện','75'),(532,'739','Cẩm Mỹ','Huyện','75'),(533,'740','Long Thành','Huyện','75'),(534,'741','Xuân Lộc','Huyện','75'),(535,'742','Nhơn Trạch','Huyện','75'),(536,'747','Vũng Tầu','Thành Phố','77'),(537,'748','Bà Rịa','Thị Xã','77'),(538,'750','Châu Đức','Huyện','77'),(539,'751','Xuyên Mộc','Huyện','77'),(540,'752','Long Điền','Huyện','77'),(541,'753','Đất Đỏ','Huyện','77'),(542,'754','Tân Thành','Huyện','77'),(543,'755','Côn Đảo','Huyện','77'),(544,'760','1','Quận','79'),(545,'761','12','Quận','79'),(546,'762','Thủ Đức','Quận','79'),(547,'763','9','Quận','79'),(548,'764','Gò Vấp','Quận','79'),(549,'765','Bình Thạnh','Quận','79'),(550,'766','Tân Bình','Quận','79'),(551,'767','Tân Phú','Quận','79'),(552,'768','Phú Nhuận','Quận','79'),(553,'769','2','Quận','79'),(554,'770','3','Quận','79'),(555,'771','10','Quận','79'),(556,'772','11','Quận','79'),(557,'773','4','Quận','79'),(558,'774','5','Quận','79'),(559,'775','6','Quận','79'),(560,'776','8','Quận','79'),(561,'777','Bình Tân','Quận','79'),(562,'778','7','Quận','79'),(563,'783','Củ Chi','Huyện','79'),(564,'784','Hóc Môn','Huyện','79'),(565,'785','Bình Chánh','Huyện','79'),(566,'786','Nhà Bè','Huyện','79'),(567,'787','Cần Giờ','Huyện','79'),(568,'794','Tân An','Thành Phố','80'),(569,'796','Tân Hưng','Huyện','80'),(570,'797','Vĩnh Hưng','Huyện','80'),(571,'798','Mộc Hóa','Huyện','80'),(572,'799','Tân Thạnh','Huyện','80'),(573,'800','Thạnh Hóa','Huyện','80'),(574,'801','Đức Huệ','Huyện','80'),(575,'802','Đức Hòa','Huyện','80'),(576,'803','Bến Lức','Huyện','80'),(577,'804','Thủ Thừa','Huyện','80'),(578,'805','Tân Trụ','Huyện','80'),(579,'806','Cần Đước','Huyện','80'),(580,'807','Cần Giuộc','Huyện','80'),(581,'808','Châu Thành','Huyện','80'),(582,'815','Mỹ Tho','Thành Phố','82'),(583,'816','Gò Công','Thị Xã','82'),(584,'818','Tân Phước','Huyện','82'),(585,'819','Cái Bè','Huyện','82'),(586,'820','Cai Lậy','Huyện','82'),(587,'821','Châu Thành','Huyện','82'),(588,'822','Chợ Gạo','Huyện','82'),(589,'823','Gò Công Tây','Huyện','82'),(590,'824','Gò Công Đông','Huyện','82'),(591,'825','Tân Phú Đông','Huyện','82'),(592,'829','Bến Tre','Thành Phố','83'),(593,'831','Châu Thành','Huyện','83'),(594,'832','Chợ Lách','Huyện','83'),(595,'833','Mỏ Cày Nam','Huyện','83'),(596,'834','Giồng Trôm','Huyện','83'),(597,'835','Bình Đại','Huyện','83'),(598,'836','Ba Tri','Huyện','83'),(599,'837','Thạnh Phú','Huyện','83'),(600,'838','Mỏ Cày Bắc','Huyện','83'),(601,'842','Trà Vinh','Thị Xã','84'),(602,'844','Càng Long','Huyện','84'),(603,'845','Cầu Kè','Huyện','84'),(604,'846','Tiểu Cần','Huyện','84'),(605,'847','Châu Thành','Huyện','84'),(606,'848','Cầu Ngang','Huyện','84'),(607,'849','Trà Cú','Huyện','84'),(608,'850','Duyên Hải','Huyện','84'),(609,'855','Vĩnh Long','Thành Phố','86'),(610,'857','Long Hồ','Huyện','86'),(611,'858','Mang Thít','Huyện','86'),(612,'859','Vũng Liêm','Huyện','86'),(613,'860','Tam Bình','Huyện','86'),(614,'861','Bình Minh','Huyện','86'),(615,'862','Trà Ôn','Huyện','86'),(616,'863','Bình Tân','Huyện','86'),(617,'866','Cao Lãnh','Thành Phố','87'),(618,'867','Sa Đéc','Thị Xã','87'),(619,'868','Hồng Ngự','Thị Xã','87'),(620,'869','Tân Hồng','Huyện','87'),(621,'870','Hồng Ngự','Huyện','87'),(622,'871','Tam Nông','Huyện','87'),(623,'872','Tháp Mười','Huyện','87'),(624,'873','Cao Lãnh','Huyện','87'),(625,'874','Thanh Bình','Huyện','87'),(626,'875','Lấp Vò','Huyện','87'),(627,'876','Lai Vung','Huyện','87'),(628,'877','Châu Thành','Huyện','87'),(629,'883','Long Xuyên','Thành Phố','89'),(630,'884','Châu Đốc','Thị Xã','89'),(631,'886','An Phú','Huyện','89'),(632,'887','Tân Châu','Thị Xã','89'),(633,'888','Phú Tân','Huyện','89'),(634,'889','Châu Phú','Huyện','89'),(635,'890','Tịnh Biên','Huyện','89'),(636,'891','Tri Tôn','Huyện','89'),(637,'892','Châu Thành','Huyện','89'),(638,'893','Chợ Mới','Huyện','89'),(639,'894','Thoại Sơn','Huyện','89'),(640,'899','Rạch Giá','Thành Phố','91'),(641,'900','Hà Tiên','Thị Xã','91'),(642,'902','Kiên Lương','Huyện','91'),(643,'903','Hòn Đất','Huyện','91'),(644,'904','Tân Hiệp','Huyện','91'),(645,'905','Châu Thành','Huyện','91'),(646,'906','Giồng Giềng','Huyện','91'),(647,'907','Gò Quao','Huyện','91'),(648,'908','An Biên','Huyện','91'),(649,'909','An Minh','Huyện','91'),(650,'910','Vĩnh Thuận','Huyện','91'),(651,'911','Phú Quốc','Huyện','91'),(652,'912','Kiên Hải','Huyện','91'),(653,'913','U Minh Thượng','Huyện','91'),(654,'914','Giang Thành','Huyện','91'),(655,'916','Ninh Kiều','Quận','92'),(656,'917','Ô Môn','Quận','92'),(657,'918','Bình Thuỷ','Quận','92'),(658,'919','Cái Răng','Quận','92'),(659,'923','Thốt Nốt','Quận','92'),(660,'924','Vĩnh Thạnh','Huyện','92'),(661,'925','Cờ Đỏ','Huyện','92'),(662,'926','Phong Điền','Huyện','92'),(663,'927','Thới Lai','Huyện','92'),(664,'930','Vị Thanh','Thị Xã','93'),(665,'931','Ngã Bảy','Thị Xã','93'),(666,'932','Châu Thành A','Huyện','93'),(667,'933','Châu Thành','Huyện','93'),(668,'934','Phụng Hiệp','Huyện','93'),(669,'935','Vị Thuỷ','Huyện','93'),(670,'936','Long Mỹ','Huyện','93'),(671,'941','Sóc Trăng','Thành Phố','94'),(672,'942','Châu Thành','Huyện','94'),(673,'943','Kế Sách','Huyện','94'),(674,'944','Mỹ Tú','Huyện','94'),(675,'945','Cù Lao Dung','Huyện','94'),(676,'946','Long Phú','Huyện','94'),(677,'947','Mỹ Xuyên','Huyện','94'),(678,'948','Ngã Năm','Huyện','94'),(679,'949','Thạnh Trị','Huyện','94'),(680,'950','Vĩnh Châu','Huyện','94'),(681,'951','Trần Đề','Huyện','94'),(682,'954','Bạc Liêu','Thị Xã','95'),(683,'956','Hồng Dân','Huyện','95'),(684,'957','Phước Long','Huyện','95'),(685,'958','Vĩnh Lợi','Huyện','95'),(686,'959','Giá Rai','Huyện','95'),(687,'960','Đông Hải','Huyện','95'),(688,'961','Hoà Bình','Huyện','95'),(689,'964','Cà Mau','Thành Phố','96'),(690,'966','U Minh','Huyện','96'),(691,'967','Thới Bình','Huyện','96'),(692,'968','Trần Văn Thời','Huyện','96'),(693,'969','Cái Nước','Huyện','96'),(694,'970','Đầm Dơi','Huyện','96'),(695,'971','Năm Căn','Huyện','96'),(696,'972','Phú Tân','Huyện','96'),(697,'973','Ngọc Hiển','Huyện','96');
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goodstype`
--

DROP TABLE IF EXISTS `goodstype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goodstype` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Code` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `ReferencePrice` float DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goodstype`
--

LOCK TABLES `goodstype` WRITE;
/*!40000 ALTER TABLE `goodstype` DISABLE KEYS */;
INSERT INTO `goodstype` VALUES (1,'MH001','Bàn-ghế-giường-tủ',NULL,7000),(2,'MH002','Đồ uống',NULL,4000),(3,'MH003','Động vật',NULL,3000),(4,'MH004','Hàng điện tử',NULL,4000),(5,'MH005','Hóa chất',NULL,2000),(6,'MH006','Hoa quả',NULL,8000),(7,'MH007','Kim loại - nguyên liệu',NULL,12000),(8,'MH008','Máy móc - cơ khí',NULL,36000),(9,'MH009','Sức khỏe - làm đẹp',NULL,9000),(10,'MH010','Thể thao',NULL,14000),(11,'MH011','Thực phẩm khô',NULL,10000),(12,'MH012','Thực phẩm tươi',NULL,10000),(13,'MH013','Văn phòng phẩm',NULL,10000),(14,'MH014','Vật liệu xây dựng',NULL,10000);
/*!40000 ALTER TABLE `goodstype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operationfee`
--

DROP TABLE IF EXISTS `operationfee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operationfee` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Code` varchar(10) NOT NULL,
  `FeeName` varchar(50) NOT NULL,
  `Type` bit(1) NOT NULL,
  `Fee` float DEFAULT NULL,
  `Percent` float DEFAULT NULL,
  `Description` longtext,
  `Status` int(11) NOT NULL,
  `Modified` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operationfee`
--

LOCK TABLES `operationfee` WRITE;
/*!40000 ALTER TABLE `operationfee` DISABLE KEYS */;
INSERT INTO `operationfee` VALUES (1,'F001','Phí đăng vận đơn','',10000,NULL,'Phí khi chủ hàng đăng vận đơn.',1,NULL,'2017-03-15 15:18:18'),(2,'F002','Phí đấu thầu','',10000,NULL,'Phí khi chủ xe đấu thầu vận đơn.',0,'2017-03-27 20:39:26','2017-03-15 15:19:01'),(3,'C001','Tiền cọc đăng vận đơn','\0',NULL,10,'Tiền cọc khi chủ hàng đăng vận đơn. Tính theo 10% giá trần.',1,NULL,'2017-03-15 15:20:09'),(4,'C002','Tiền cọc đặt thầu','\0',NULL,10,'Tiền cọc khi chủ xe đặt thầu vận đơn. Tính theo 10% tiền đặt thầu.',1,'2017-03-15 15:21:31','2017-03-15 15:21:20'),(5,'F002','Phí đấu thầu','',10000,NULL,'Phí khi chủ xe đấu thầu vận đơn 2.',1,'2017-03-27 20:39:26','2017-03-27 20:39:26'),(6,'XXX','DuongLV','',10000,NULL,'DuongLV Test',1,'2017-03-31 01:15:00','2017-03-31 01:15:00');
/*!40000 ALTER TABLE `operationfee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packagedform`
--

DROP TABLE IF EXISTS `packagedform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packagedform` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Code` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packagedform`
--

LOCK TABLES `packagedform` WRITE;
/*!40000 ALTER TABLE `packagedform` DISABLE KEYS */;
INSERT INTO `packagedform` VALUES (1,'F001','Bao bì',NULL),(2,'F002','Bưu kiện',NULL),(3,'F003','Bưu phẩm',NULL),(4,'F004','Chai - lọ - thùng chứa',NULL),(5,'F005','Container',NULL),(6,'F006','Thùng cát tông',NULL),(7,'F007','Thùng gỗ',NULL),(8,'F008','Cuộn',NULL),(9,'F009','Bó',NULL);
/*!40000 ALTER TABLE `packagedform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentdetail`
--

DROP TABLE IF EXISTS `paymentdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paymentdetail` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Amounts` float NOT NULL,
  `PaymentDate` datetime DEFAULT NULL,
  `Type` bit(1) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Balance` float DEFAULT NULL,
  `BillOfLadingId` int(11) DEFAULT NULL,
  `UserId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_bk0iydnymq3fompu5mujeyou4` (`UserId`),
  CONSTRAINT `FK_bk0iydnymq3fompu5mujeyou4` FOREIGN KEY (`UserId`) REFERENCES `usersaccount` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentdetail`
--

LOCK TABLES `paymentdetail` WRITE;
/*!40000 ALTER TABLE `paymentdetail` DISABLE KEYS */;
INSERT INTO `paymentdetail` VALUES (1,10000,'2017-01-01 00:00:00','','Test 1 ',10000,1,3),(2,10000,'2017-01-01 00:00:00','\0','Test 12 ',10000,1,3),(3,100000,'2017-03-27 10:56:53','\0','Admin nạp tiền tài khoản.',100000,NULL,3),(4,10000,'2017-03-27 12:28:56','\0','Phí đăng vận đơn.',990000,1,4),(5,10000,'2017-03-27 12:28:56','\0','Tiền đặt cọc đăng vận đơn.',980000,NULL,4),(6,10000,'2017-03-28 21:23:52','\0','Phí đăng vận đơn.',970000,2,4),(7,10000,'2017-03-28 21:23:52','\0','Tiền đặt cọc đăng vận đơn.',960000,NULL,4),(8,10000,'2017-03-29 17:40:19','\0','Phí đấu thầu.',90000,NULL,5),(9,10000,'2017-03-29 17:40:19','\0','Tiền đặt cọc đấu thầu.',80000,NULL,5),(10,10000,'2017-03-29 17:40:48','\0','Phí đấu thầu.',90000,NULL,2),(11,9000,'2017-03-29 17:40:48','\0','Tiền đặt cọc đấu thầu.',81000,NULL,2),(12,50000,'2017-03-30 00:00:31','','Hoàn tiền đặt cọc khi đấu thầu thất bại.',150000,48,1),(13,50000,'2017-03-30 00:01:32','','Hoàn tiền đặt cọc khi đấu thầu thất bại.',200000,50,1),(14,50000,'2017-03-30 00:02:32','','Hoàn tiền đặt cọc khi đấu thầu thất bại.',250000,52,1),(15,50000,'2017-03-30 00:03:32','','Hoàn tiền đặt cọc khi đấu thầu thất bại.',300000,54,1),(16,50000,'2017-03-30 00:04:32','','Hoàn tiền đặt cọc khi đấu thầu thất bại.',350000,56,1),(17,10000,'2017-04-01 00:47:30','\0','Phí đăng vận đơn.',90000,102,3),(18,10000,'2017-04-01 00:47:30','\0','Tiền đặt cọc đăng vận đơn.',80000,NULL,3),(19,10000,'2017-04-07 22:01:27','','Hoàn tiền đặt cọc khi đấu thầu thất bại.',90000,102,3),(20,1,'2017-04-09 21:50:30','','Admin nạp tiền tài khoản.',90001,NULL,5),(21,1,'2017-04-09 21:50:36','','Admin nạp tiền tài khoản.',90002,NULL,5),(22,1,'2017-04-09 21:50:38','','Admin nạp tiền tài khoản.',90003,NULL,5),(23,11111,'2017-04-16 21:15:52','','Admin nạp tiền tài khoản.',92111,NULL,2),(24,250000,'2017-04-17 00:33:33','','Hoàn tiền đặt cọc khi đấu thầu thất bại.',600000,56,1),(25,5000000,'2017-04-17 00:34:35','','Hoàn tiền đặt cọc khi đấu thầu thất bại.',5600000,58,1),(26,5000000,'2017-04-17 00:35:35','','Hoàn tiền đặt cọc khi đấu thầu thất bại.',10600000,62,1),(27,200000,'2017-04-17 00:35:35','','Hoàn tiền đặt cọc khi đấu thầu thất bại.',290000,63,3),(28,1000000,'2017-04-17 00:38:36','','Hoàn tiền đặt cọc khi đấu thầu thất bại.',11600000,61,1),(29,200000,'2017-04-17 00:39:36','','Hoàn tiền đặt cọc khi đấu thầu thất bại.',490000,63,3),(30,1000000,'2017-04-17 00:52:37','','Hoàn tiền đặt cọc khi đấu thầu thất bại.',12600000,53,1),(31,1000000,'2017-04-17 00:53:37','','Hoàn tiền đặt cọc khi đấu thầu thất bại.',13600000,57,1),(32,1000000,'2017-04-17 00:54:38','','Hoàn tiền đặt cọc khi đấu thầu thất bại.',14600000,61,1),(33,2000000,'2017-04-17 01:04:38','','Hoàn tiền đặt cọc khi đấu thầu thất bại.',16600000,56,1),(34,2000000,'2017-04-17 01:04:38','','Hoàn tiền đặt cọc khi đấu thầu thất bại.',2490000,63,3),(35,2000000,'2017-04-17 01:05:38','','Hoàn tiền đặt cọc khi đấu thầu thất bại.',18600000,56,1),(36,5000000,'2017-04-17 01:06:38','','Hoàn tiền đặt cọc khi đấu thầu thất bại.',23600000,58,1),(37,5000000,'2017-04-17 01:07:39','','Hoàn tiền đặt cọc khi đấu thầu thất bại.',28600000,62,1),(38,10000,'2017-04-19 22:03:20','\0','Phí đăng vận đơn.',9990000,112,4),(39,450000,'2017-04-19 22:03:21','\0','Tiền đặt cọc đăng vận đơn.',9540000,NULL,4),(40,10000,'2017-04-19 22:04:57','\0','Phí đấu thầu.',9990000,NULL,2),(41,450000,'2017-04-19 22:04:58','\0','Tiền đặt cọc đấu thầu.',9540000,NULL,2),(42,10000,'2017-04-19 22:05:27','\0','Phí đấu thầu.',9990000,NULL,5),(43,300000,'2017-04-19 22:05:28','\0','Tiền đặt cọc đấu thầu.',9690000,NULL,5),(44,450000,'2017-04-19 22:10:27','','Hoàn tiền đặt cọc khi đấu thầu thất bại.',9990000,112,2),(45,450000,'2017-04-19 22:13:34','','Hoàn thành giao hàng.',9990000,NULL,4),(46,300000,'2017-04-19 22:13:35','','Hoàn thành nhận hàng.',9990000,NULL,5);
/*!40000 ALTER TABLE `paymentdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Code` varchar(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UK_6y8nfm4st5ctum2ru0mk07pfw` (`Code`),
  KEY `PROVINCE_CODE_INDEX` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (1,'01','Hà Nội','Thành Phố'),(2,'02','Hà Giang','Tỉnh'),(3,'04','Cao Bằng','Tỉnh'),(4,'06','Bắc Kạn','Tỉnh'),(5,'08','Tuyên Quang','Tỉnh'),(6,'10','Lào Cai','Tỉnh'),(7,'11','Điện Biên','Tỉnh'),(8,'12','Lai Châu','Tỉnh'),(9,'14','Sơn La','Tỉnh'),(10,'15','Yên Bái','Tỉnh'),(11,'17','Hòa Bình','Tỉnh'),(12,'19','Thái Nguyên','Tỉnh'),(13,'20','Lạng Sơn','Tỉnh'),(14,'22','Quảng Ninh','Tỉnh'),(15,'24','Bắc Giang','Tỉnh'),(16,'25','Phú Thọ','Tỉnh'),(17,'26','Vĩnh Phúc','Tỉnh'),(18,'27','Bắc Ninh','Tỉnh'),(19,'30','Hải Dương','Tỉnh'),(20,'31','Hải Phòng','Thành Phố'),(21,'33','Hưng Yên','Tỉnh'),(22,'34','Thái Bình','Tỉnh'),(23,'35','Hà Nam','Tỉnh'),(24,'36','Nam Định','Tỉnh'),(25,'37','Ninh Bình','Tỉnh'),(26,'38','Thanh Hóa','Tỉnh'),(27,'40','Nghệ An','Tỉnh'),(28,'42','Hà Tĩnh','Tỉnh'),(29,'44','Quảng Bình','Tỉnh'),(30,'45','Quảng Trị','Tỉnh'),(31,'46','Thừa Thiên Huế','Tỉnh'),(32,'48','Đà Nẵng','Thành Phố'),(33,'49','Quảng Nam','Tỉnh'),(34,'51','Quảng Ngãi','Tỉnh'),(35,'52','Bình Định','Tỉnh'),(36,'54','Phú Yên','Tỉnh'),(37,'56','Khánh Hòa','Tỉnh'),(38,'58','Ninh Thuận','Tỉnh'),(39,'60','Bình Thuận','Tỉnh'),(40,'62','Kon Tum','Tỉnh'),(41,'64','Gia Lai','Tỉnh'),(42,'66','Đắk Lắk','Tỉnh'),(43,'67','Đắk Nông','Tỉnh'),(44,'68','Lâm Đồng','Tỉnh'),(45,'70','Bình Phước','Tỉnh'),(46,'72','Tây Ninh','Tỉnh'),(47,'74','Bình Dương','Tỉnh'),(48,'75','Đồng Nai','Tỉnh'),(49,'77','Bà Rịa - Vũng Tàu','Tỉnh'),(50,'79','Hồ Chí Minh','Thành Phố'),(51,'80','Long An','Tỉnh'),(52,'82','Tiền Giang','Tỉnh'),(53,'83','Bến Tre','Tỉnh'),(54,'84','Trà Vinh','Tỉnh'),(55,'86','Vĩnh Long','Tỉnh'),(56,'87','Đồng Tháp','Tỉnh'),(57,'89','An Giang','Tỉnh'),(58,'91','Kiên Giang','Tỉnh'),(59,'92','Cần Thơ','Thành Phố'),(60,'93','Hậu Giang','Tỉnh'),(61,'94','Sóc Trăng','Tỉnh'),(62,'95','Bạc Liêu','Tỉnh'),(63,'96','Cà Mau','Tỉnh');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `ReportDate` datetime NOT NULL,
  `ReportTitle` varchar(75) NOT NULL,
  `ReportQuestion` varchar(75) DEFAULT NULL,
  `ReportSolution` varchar(200) DEFAULT NULL,
  `ReportContent` varchar(200) DEFAULT NULL,
  `ReportReply` varchar(200) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_pdjxlt3qr8nbowxhhc4a6crd0` (`UserId`),
  CONSTRAINT `FK_pdjxlt3qr8nbowxhhc4a6crd0` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,4,'2017-04-16 14:28:00','Tạo vận đơn','Không tạo được vận đơn','Cho phép chủ hàng tạo vận đơn','Khi tạo vận đơn, hệ thống không cho phép tạo vận đơn, vì số dư tài khoản không đủ.',NULL,''),(2,4,'2017-04-17 13:25:28','muốn lam lau dai','co duoc phep khong','duoc phep','muốn làm ăn lâu dài',NULL,'');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `DistrictCode` varchar(10) DEFAULT NULL,
  `IdentityCard` varchar(20) DEFAULT NULL,
  `IdentityCardPlace` varchar(100) DEFAULT NULL,
  `IdentityCardDate` date DEFAULT NULL,
  `IdentityCardImage` varchar(255) DEFAULT NULL,
  `Role` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `Created` datetime NOT NULL,
  `CompanyId` int(11) DEFAULT NULL,
  `UserAvatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_jm6l0ry56y5m9hyov6l1i2r90` (`CompanyId`),
  KEY `FK_nmnkt8uj5vn455acwin8v7b9n` (`DistrictCode`),
  CONSTRAINT `FK_jm6l0ry56y5m9hyov6l1i2r90` FOREIGN KEY (`CompanyId`) REFERENCES `company` (`Id`),
  CONSTRAINT `FK_nmnkt8uj5vn455acwin8v7b9n` FOREIGN KEY (`DistrictCode`) REFERENCES `district` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Trinh Dinh Quyet','chuhang1','b1fe920cbc381b46308243c8484f8a76','0123345678','Hoa Lac','063','123456889','TH','2017-01-01',NULL,2,1,'2017-03-27 21:10:05',NULL,NULL),(2,'Le Gia Hoang','chuxe1','b1fe920cbc381b46308243c8484f8a76','0123345678','Hoa Lac','063','123456889','TH','2017-01-01',NULL,3,1,'2017-03-27 21:10:05',NULL,NULL),(3,'Le Van Duong','admin','b1fe920cbc381b46308243c8484f8a76','0123456789','Công Liêm','001','123456789','Thanh Hóa','2017-01-01',NULL,1,1,'2017-01-01 00:00:00',1,NULL),(4,'Vu Van Quyet','chuhang2','b1fe920cbc381b46308243c8484f8a76','0123456788','Công Liêm','001','123456788','Thanh Hóa','2017-01-01',NULL,2,1,'2017-01-01 00:00:00',2,NULL),(5,'Dang Le Tuan','chuxe2','b1fe920cbc381b46308243c8484f8a76','0123345678','Hoa Lac','063','123456889','TH','2017-01-01','1490623805079_',3,1,'2017-03-27 21:10:05',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersaccount`
--

DROP TABLE IF EXISTS `usersaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersaccount` (
  `UserId` int(11) NOT NULL,
  `Balance` float NOT NULL DEFAULT '0',
  `Modified` datetime DEFAULT NULL,
  PRIMARY KEY (`UserId`),
  CONSTRAINT `FK_lr90a125e6d7iqb4w9v5fq6la` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersaccount`
--

LOCK TABLES `usersaccount` WRITE;
/*!40000 ALTER TABLE `usersaccount` DISABLE KEYS */;
INSERT INTO `usersaccount` VALUES (1,10000000,'2017-03-27 21:10:05'),(2,9990000,'2017-04-19 22:04:58'),(3,10000000,'2017-04-01 00:47:30'),(4,9990000,'2017-04-19 22:13:34'),(5,9990000,'2017-04-19 22:13:34');
/*!40000 ALTER TABLE `usersaccount` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-20 15:56:07
