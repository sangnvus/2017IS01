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
  CONSTRAINT `FK_5hwo3aqs8qi21xt59ejuqtoxv` FOREIGN KEY (`CommentId`) REFERENCES `comment` (`Id`)
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
  `Code` varchar(20) NOT NULL,
  `GoodsTypeId` int(11) NOT NULL,
  `PackagedFormId` int(11) DEFAULT NULL,
  `GoodsImage` varchar(255) DEFAULT NULL,
  `Weight` float NOT NULL,
  `Volume` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `Length` float DEFAULT NULL,
  `Width` float DEFAULT NULL,
  `Height` float DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `IsFrozen` bit(1) DEFAULT NULL,
  `IsFragile` bit(1) DEFAULT NULL,
  `Sender` varchar(255) DEFAULT NULL,
  `SenderPhoneNumber` varchar(255) DEFAULT NULL,
  `DepartureProvince` varchar(255) DEFAULT NULL,
  `DepartureDistrict` varchar(255) DEFAULT NULL,
  `DepartureAddress` varchar(255) DEFAULT NULL,
  `DepartureCharacteristicPlace` varchar(255) DEFAULT NULL,
  `DepartureDate` datetime DEFAULT NULL,
  `Receiver` varchar(255) DEFAULT NULL,
  `ReceiverPhoneNumber` varchar(255) DEFAULT NULL,
  `ArrivalProvince` varchar(255) DEFAULT NULL,
  `ArrivalDistrict` varchar(255) DEFAULT NULL,
  `ArrivalAddress` varchar(255) DEFAULT NULL,
  `ArrivalCharacteristicPlace` varchar(255) DEFAULT NULL,
  `ArrivalDate` datetime DEFAULT NULL,
  `Distance` float DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `AuctionPeriod` datetime DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `CreatedUserId` int(11) DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Modified` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_pu6cscioeerimeowux9f7sbk6` (`GoodsTypeId`),
  CONSTRAINT `FK_pu6cscioeerimeowux9f7sbk6` FOREIGN KEY (`GoodsTypeId`) REFERENCES `goodstype` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billoflading`
--

LOCK TABLES `billoflading` WRITE;
/*!40000 ALTER TABLE `billoflading` DISABLE KEYS */;
/*!40000 ALTER TABLE `billoflading` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carmaker`
--

DROP TABLE IF EXISTS `carmaker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carmaker` (
  `CarMakerID` int(11) NOT NULL AUTO_INCREMENT,
  `CarMaker` varchar(20) NOT NULL,
  `CreatedBy` varchar(50) NOT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastModifiedBy` varchar(50) NOT NULL,
  `LastModifiedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CarMakerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carmaker`
--

LOCK TABLES `carmaker` WRITE;
/*!40000 ALTER TABLE `carmaker` DISABLE KEYS */;
/*!40000 ALTER TABLE `carmaker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrierauction`
--

DROP TABLE IF EXISTS `carrierauction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrierauction` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `BillOfLadingId` int(11) NOT NULL,
  `CarrierId` int(11) NOT NULL,
  `AuctionDate` datetime NOT NULL,
  `Canceled` datetime DEFAULT NULL,
  `AuctionPrice` float NOT NULL,
  `Status` int(11) DEFAULT NULL,
  `Note` varchar(255) DEFAULT NULL,
  `Modified` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrierauction`
--

LOCK TABLES `carrierauction` WRITE;
/*!40000 ALTER TABLE `carrierauction` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrierauction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartype`
--

DROP TABLE IF EXISTS `cartype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cartype` (
  `CarTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `CarMakerID` int(11) NOT NULL,
  `CarTitle` varchar(30) NOT NULL,
  `Level` varchar(4) DEFAULT NULL,
  `Status` varchar(2) DEFAULT NULL,
  `Capacity` int(11) NOT NULL,
  `CreatedBy` varchar(50) NOT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastModifiedBy` varchar(50) NOT NULL,
  `LastModifiedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CarTypeID`),
  KEY `FK_dan7q8g0rqhdyp6xbj5n5rijk` (`CarMakerID`),
  CONSTRAINT `FK_dan7q8g0rqhdyp6xbj5n5rijk` FOREIGN KEY (`CarMakerID`) REFERENCES `carmaker` (`CarMakerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartype`
--

LOCK TABLES `cartype` WRITE;
/*!40000 ALTER TABLE `cartype` DISABLE KEYS */;
/*!40000 ALTER TABLE `cartype` ENABLE KEYS */;
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
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companyinformation`
--

DROP TABLE IF EXISTS `companyinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companyinformation` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `TaxCode` varchar(10) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `PhoneNumber` varchar(11) DEFAULT NULL,
  `Fax` varchar(11) DEFAULT NULL,
  `Province` varchar(50) NOT NULL,
  `District` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companyinformation`
--

LOCK TABLES `companyinformation` WRITE;
/*!40000 ALTER TABLE `companyinformation` DISABLE KEYS */;
/*!40000 ALTER TABLE `companyinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `district` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Code` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Type` varchar(200) DEFAULT NULL,
  `ProvinceCode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
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
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goodstype`
--

LOCK TABLES `goodstype` WRITE;
/*!40000 ALTER TABLE `goodstype` DISABLE KEYS */;
/*!40000 ALTER TABLE `goodstype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language` (
  `LanguageCode` varchar(4) NOT NULL,
  `Language` varchar(20) NOT NULL,
  `CreatedBy` varchar(50) NOT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastModifiedBy` varchar(50) NOT NULL,
  `LastModifiedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`LanguageCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languagename`
--

DROP TABLE IF EXISTS `languagename`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languagename` (
  `Code` varchar(4) NOT NULL,
  `LanguageCode` varchar(4) NOT NULL,
  `LanguageName` varchar(20) NOT NULL,
  `CreatedBy` varchar(50) NOT NULL,
  `CreatedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastModifiedBy` varchar(50) NOT NULL,
  `LastModifiedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Code`,`LanguageCode`),
  CONSTRAINT `FK_4jjd5pmg7o7hckrwfok8gvncl` FOREIGN KEY (`Code`) REFERENCES `language` (`LanguageCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languagename`
--

LOCK TABLES `languagename` WRITE;
/*!40000 ALTER TABLE `languagename` DISABLE KEYS */;
/*!40000 ALTER TABLE `languagename` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operationfee`
--

DROP TABLE IF EXISTS `operationfee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operationfee` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FeeName` varchar(255) NOT NULL,
  `Fee` float DEFAULT NULL,
  `Note` varchar(255) NOT NULL,
  `CostCalculationWay` varchar(255) NOT NULL,
  `CreatedTime` datetime NOT NULL,
  `ValidityPeriodFrom` datetime NOT NULL,
  `ValidityPeriodTo` datetime NOT NULL,
  `ResponsibleParty` varchar(45) NOT NULL,
  `TimeComeUpInTransaction` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operationfee`
--

LOCK TABLES `operationfee` WRITE;
/*!40000 ALTER TABLE `operationfee` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packagedform`
--

LOCK TABLES `packagedform` WRITE;
/*!40000 ALTER TABLE `packagedform` DISABLE KEYS */;
/*!40000 ALTER TABLE `packagedform` ENABLE KEYS */;
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
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
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
  `ReportTitle` varchar(255) NOT NULL,
  `ReportQuestion` varchar(255) DEFAULT NULL,
  `ReportSolution` varchar(255) DEFAULT NULL,
  `ReportContent` varchar(255) DEFAULT NULL,
  `ReportReply` varchar(255) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,1,'2017-02-28 03:03:03','XXX','XXX','XXX','XXX','',''),(2,1,'2017-02-28 03:04:05','YYY','XXX','XXX','XXX','XXX','');
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
  `Code` varchar(20) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Province` varchar(255) DEFAULT NULL,
  `District` varchar(255) DEFAULT NULL,
  `IdentityCard` varchar(20) DEFAULT NULL,
  `IdentityCardPlace` varchar(255) DEFAULT NULL,
  `IdentityCardDate` date DEFAULT NULL,
  `Role` int(11) NOT NULL,
  `Status` bit(1) NOT NULL,
  `Created` datetime DEFAULT NULL,
  `CompanyId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'XXX','Nguyễn Văn A','anv1@gmail.com','123','0123456789','Ngõ Hòa Bình 6 Đại La','Hà Nội','Đống Đa','XXX','XXX','2009-02-26',1,'','2017-02-22 08:36:02',NULL),(2,'YYY','Trần Thị B','btt1@gmaill.com','456','0123456788','Mỹ Đình','Hà Nội','Cầu Giấy','YY','YYY','2007-03-05',2,'','2017-03-05 00:00:00',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cex_dev'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-05 19:29:13
