CREATE DATABASE  IF NOT EXISTS `market` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `market`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: market
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `board` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `board_no` int(11) DEFAULT NULL,
  `item_no` int(11) DEFAULT NULL,
  `writer` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `to` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `contents` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `state` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `valid` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'I',
  PRIMARY KEY (`no`),
  KEY `fk_board_member1_idx` (`writer`),
  CONSTRAINT `fk_board_member1` FOREIGN KEY (`writer`) REFERENCES `member` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (41,'배송문의',133,0,'z1111111','','20년째 택배가 안오네요','상하진 않았는지 걱정되네요','2019-09-23 10:25:16','답변완료',0,'I'),(42,'문의답변',41,133,'z11111111','z1111111',NULL,'제가 잘 보관하고 있어요~^^','2019-09-23 11:24:04',NULL,0,'I'),(43,'공지사항',NULL,NULL,'z111111111',NULL,'안내 말씀 드립니다','2019-10-30일까지 최대 50% 세일이 시작되니 많은 사랑 부탁 드립니다.','2019-09-23 11:41:36',NULL,2,'I');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-23 12:06:08
