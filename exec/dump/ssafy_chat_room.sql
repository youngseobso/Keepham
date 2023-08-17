-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: i9c104.p.ssafy.io    Database: ssafy
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat_room`
--

DROP TABLE IF EXISTS `chat_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_room` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '생성시간',
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '수정시간',
  `extension_number` int DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `max_people_number` int NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` bigint NOT NULL,
  `super_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `box_id` bigint DEFAULT NULL,
  `closed_at` datetime(6) DEFAULT NULL,
  `store_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `step` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FKp6aioyy5qxi978s69ya9pjlpe` (`box_id`),
  CONSTRAINT `FKp6aioyy5qxi978s69ya9pjlpe` FOREIGN KEY (`box_id`) REFERENCES `box` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=312 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_room`
--

LOCK TABLES `chat_room` WRITE;
/*!40000 ALTER TABLE `chat_room` DISABLE KEYS */;
INSERT INTO `chat_room` VALUES (290,'2023-08-17 07:52:22.251750','2023-08-17 07:53:15.524016',1,0,3,'','CLOSE',1141258,'닉네임2','테스트2',130,'2023-08-17 10:52:22.251750',NULL,0),(291,'2023-08-17 07:53:22.067657','2023-08-17 07:54:54.626448',1,0,3,'','CLOSE',1221213,'닉네임7','1231',130,'2023-08-17 10:53:22.067657',NULL,0),(292,'2023-08-17 07:55:04.290838','2023-08-17 07:57:02.238116',1,0,3,'','CLOSE',1221213,'닉네임2','123213',130,'2023-08-17 10:55:04.290838',NULL,0),(293,'2023-08-17 07:57:23.275365','2023-08-17 07:58:00.778808',1,0,3,'','CLOSE',1221213,'닉네임7','테스트트트',130,'2023-08-17 10:57:23.275365',NULL,0),(294,'2023-08-17 07:58:17.641077','2023-08-17 08:00:05.700783',1,0,3,'','CLOSE',1177404,'닉네임2','테스트중',130,'2023-08-17 10:58:17.641077',NULL,0),(295,'2023-08-17 08:01:06.984629','2023-08-17 08:07:48.734522',1,0,3,'','CLOSE',1177404,'닉네임1','412',130,'2023-08-17 11:01:06.984629',NULL,0),(296,'2023-08-17 08:07:59.236158','2023-08-17 08:09:10.469983',1,0,3,'','CLOSE',1177404,'닉네임7','ㅎㄹㅇㄴㅁㄹ',130,'2023-08-17 11:07:59.236158',NULL,0),(297,'2023-08-17 08:10:14.688399','2023-08-17 17:21:45.001239',1,0,3,'','CLOSE',1177404,'닉네임1','45124',130,'2023-08-17 11:10:14.688399',NULL,1),(298,'2023-08-17 17:22:21.075650','2023-08-17 17:25:03.985624',1,0,4,'','CLOSE',1177404,'닉네임2','test',130,'2023-08-17 20:22:21.075650',NULL,0),(299,'2023-08-17 17:25:15.781088','2023-08-17 17:28:02.048684',1,0,3,'','OPEN',1177404,'닉네임2','fdasf',130,'2023-08-17 20:25:15.781088',NULL,1),(300,'2023-08-17 17:26:38.910637','2023-08-17 17:27:39.072203',1,0,5,'','CLOSE',1030874,'닉네임5','커피 드실 분!',138,'2023-08-17 20:26:38.910637',NULL,0),(301,'2023-08-17 17:31:19.514713','2023-08-17 17:31:19.524552',1,0,5,'','OPEN',1030874,'닉네임3','커피 드실 분!',138,'2023-08-17 20:31:19.514713',NULL,0),(302,'2023-08-17 17:33:50.824565','2023-08-17 17:48:00.348177',1,0,4,'','CLOSE',306153,'닉네임6','pizza',123,'2023-08-17 20:33:50.824565',NULL,0),(303,'2023-08-17 17:40:47.870524','2023-08-17 17:42:46.877846',1,0,4,'','CLOSE',1177404,'닉네임4','ㅂㅂㅂㅂㅂㅂㅂㅂㅂ',139,'2023-08-17 20:40:47.870524',NULL,1),(304,'2023-08-17 17:43:04.161681','2023-08-17 17:43:42.286360',1,0,3,'','CLOSE',1177404,'닉네임1','qqqqqq',139,'2023-08-17 20:43:04.161681',NULL,0),(305,'2023-08-17 17:44:02.879972','2023-08-17 17:45:11.107961',1,0,3,'','OPEN',1177404,'닉네임7','ddddddd',139,'2023-08-17 20:44:02.879972',NULL,1),(306,'2023-08-17 17:46:28.302356','2023-08-17 17:47:38.562206',1,0,1234,'','CLOSE',1128473,'닉네임4','성연테스트',129,'2023-08-17 20:46:28.302356',NULL,0),(308,'2023-08-17 17:48:00.296437','2023-08-17 17:48:00.305744',1,0,3,'','OPEN',542875,'닉네임8','142412',140,'2023-08-17 20:48:00.296437',NULL,0),(309,'2023-08-17 17:48:14.252958','2023-08-17 17:50:32.511627',1,0,23,'','CLOSE',1030874,'닉네임4','tjddusxptmxm',124,'2023-08-17 20:48:14.252958',NULL,1),(310,'2023-08-17 17:48:18.938818','2023-08-17 17:52:09.051738',1,0,1,'','CLOSE',1177404,'닉네임6','123',123,'2023-08-17 20:48:18.938818',NULL,0),(311,'2023-08-17 17:52:44.336213','2023-08-17 17:52:44.346179',1,0,4,'','OPEN',1022459,'닉네임5','123함 방',123,'2023-08-17 20:52:44.336213',NULL,0);
/*!40000 ALTER TABLE `chat_room` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-17 17:52:55
