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
-- Dumping data for table `answercomment`
--

LOCK TABLES `answercomment` WRITE;
/*!40000 ALTER TABLE `answercomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `answercomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `billoflading`
--

LOCK TABLES `billoflading` WRITE;
/*!40000 ALTER TABLE `billoflading` DISABLE KEYS */;
/*!40000 ALTER TABLE `billoflading` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `carmaker`
--

LOCK TABLES `carmaker` WRITE;
/*!40000 ALTER TABLE `carmaker` DISABLE KEYS */;
/*!40000 ALTER TABLE `carmaker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `carrierauction`
--

LOCK TABLES `carrierauction` WRITE;
/*!40000 ALTER TABLE `carrierauction` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrierauction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cartype`
--

LOCK TABLES `cartype` WRITE;
/*!40000 ALTER TABLE `cartype` DISABLE KEYS */;
/*!40000 ALTER TABLE `cartype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `companyinformation`
--

LOCK TABLES `companyinformation` WRITE;
/*!40000 ALTER TABLE `companyinformation` DISABLE KEYS */;
/*!40000 ALTER TABLE `companyinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `goodstype`
--

LOCK TABLES `goodstype` WRITE;
/*!40000 ALTER TABLE `goodstype` DISABLE KEYS */;
/*!40000 ALTER TABLE `goodstype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `languagename`
--

LOCK TABLES `languagename` WRITE;
/*!40000 ALTER TABLE `languagename` DISABLE KEYS */;
/*!40000 ALTER TABLE `languagename` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `operationfee`
--

LOCK TABLES `operationfee` WRITE;
/*!40000 ALTER TABLE `operationfee` DISABLE KEYS */;
/*!40000 ALTER TABLE `operationfee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `packagedform`
--

LOCK TABLES `packagedform` WRITE;
/*!40000 ALTER TABLE `packagedform` DISABLE KEYS */;
/*!40000 ALTER TABLE `packagedform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,1,'2017-02-28 03:03:03','XXX','XXX','XXX','XXX','',''),(2,1,'2017-02-28 03:04:05','YYY','XXX','XXX','XXX','XXX','');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Nguyễn Văn A','anv1@gmail.com','123','0123456789','Ngõ Hòa Bình 6 Đại La','Hà Nội','Đống Đa','XXX','XXX','2009-02-02',2,1,'2017-03-05 22:10:03',NULL),(2,'Trần Thị B','btt1@gmail.com','456','0123456788','Mỹ Đình','Hà Nội','Cầu Giấy','YYY','YYY','0207-03-05',1,2,'2017-02-02 00:00:00',NULL);
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

-- Dump completed on 2017-03-05 20:44:30
