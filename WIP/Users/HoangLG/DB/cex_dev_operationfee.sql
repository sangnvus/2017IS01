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
INSERT INTO `operationfee` VALUES (1,'Tạo vận đơn	','cố định',50000,'2016-02-03 00:00:00','2016-02-03 00:00:00',NULL,'Là chi phí mà chủ hàng phải trả cho phía hệ thống sàn giao dịch vận tải để tạo vận đơn mới trên hệ thống'),(2,'Phí bị phạt khi chủ hàng ngừng phiên đấu giá','25% giá trần chủ hàng đưa ra',0,'2016-02-03 00:00:00','2016-02-03 00:00:00',NULL,'Là chi phí mà chủ hàng cần đền bù nếu hủy giao dịch ở trước thời điểm khớp lệnh thành công, phí này giúp hạn chế việc hủy giao dịch của chủ hàng'),(3,'Đấu thầu phí','cố định',50000,'2016-02-03 00:00:00','2016-02-03 00:00:00',NULL,'Là chi phí mà chủ xe cần phải trả cho phía hệ thống sàn giao dịch vận tải để tham gia vào phiên đấu thầu'),(4,'Phí bị phạt khi chủ xe ngừng phiên đấu giá','25% giá đấu thầu mà chủ xe đưa ra',0,'2016-02-03 00:00:00','2016-02-03 00:00:00',NULL,'Là chi phí mà chủ xe cần phải đền bù nếu hủy giao dịch nếu chủ xe ngừng tham gia đấu giá ở thời điểm trước lúc khớp lệnh thành công.Phí này giúp hạn chế việc chủ xe tham gia đấu giá nhưng không thế tiếp tục phiên giao dịch');
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

-- Dump completed on 2017-03-02 23:16:20
