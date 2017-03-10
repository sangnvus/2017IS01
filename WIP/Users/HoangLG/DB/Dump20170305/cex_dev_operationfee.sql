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
-- Dumping data for table `operationfee`
--

LOCK TABLES `operationfee` WRITE;
/*!40000 ALTER TABLE `operationfee` DISABLE KEYS */;
INSERT INTO `operationfee` VALUES (72,'Tạo vận đơn','',50000,0,'Chủ hàng phải trả tiền cho hệ thống sàn giao dịch vận tải để tạo mới vận đơn.','2017-03-05 22:50:10','2017-03-05 05:15:25',NULL,'FC1'),(73,'Chủ hàng ngừng phiên đấu giá','\0',0,25,'Chủ hàng cần đền bù nếu hủy giao dịch ở trước thời điểm khớp lệnh thành công. Số tiền phạt bằng 25% giá trần mà chủ hàng đưa ra','2017-03-05 22:50:53','2017-03-06 00:00:00',NULL,'FC2'),(74,'Đấu thầu','',50000,0,'Chủ xe cần phải trả tiền cho hệ thống sàn giao dịch vận tải để tham gia vào phiên đấu thầu.','2017-03-05 22:51:32','2017-03-07 00:00:00',NULL,'FC3'),(75,'Chủ xe hủy đấu giá','\0',0,25,'Chủ xe cần phải đền bù nếu hủy giao dịch ở trước thời điểm khớp lệnh thành công.Số tiền phạt bằng 25% giá đấu thầu mà chủ xe đưa ra','2017-03-05 22:52:24','2017-03-08 00:00:00',NULL,'FC4');
/*!40000 ALTER TABLE `operationfee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-05 22:53:58
