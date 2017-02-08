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
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'MH01','Hàng điện tử','Bao bì',NULL,10,10,10,'Màn hình máy tính','\0','','Hà Nội','Từ Liêm','Số 9 Hồ Tùng Mậu','Gần siêu thị fptshop','2017-07-07 00:00:00','HCM','Quận 1','Số 1 Hoàng Hoa Thám','Gần nhà hát Quận 1','2017-07-09 00:00:00',2000,2000000,'2017-07-09 00:00:00','Màn Hình',3,'2017-01-01 00:00:00'),(2,'MH02','Kim loại - nguyên liệu','Thùng gỗ',NULL,15,10,5,'Ốc vít','\0','\0','Hải Phòng','Giang Thủy','Thôn Giang Tân - Xã Giang Mai','Gần UBND','2017-07-08 00:00:00','Phú Thọ','Thanh Thủy','Thôn Thanh Tân - Trung Thịnh','Gần cầu Đồng Quang','2017-07-10 00:00:00',500,1400000,'2017-07-10 00:00:00','Ốc vít',3,'2017-01-01 00:00:00'),(3,'MH03','Máy móc - cơ khí','Thùng cát tông',NULL,25,5,5,'Máy bơm','\0','\0','Ninh Bình','Ninh Bình','Số 9 Lê Lợi ','Gần sân vận động tỉnh','2017-07-09 00:00:00','Hải Dương','Hải Hậu','Thôn Hải tiến - Xã Hải Hưng','Gần nhà trẻ Hải Tiến','2017-07-10 00:00:00',400,1500000,'2017-07-10 00:00:00','Máy bơm',3,'2017-01-01 00:00:00');
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

-- Dump completed on 2017-02-08 11:32:22
