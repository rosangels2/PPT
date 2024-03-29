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
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `member` (
  `ID` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(13) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `point` int(11) NOT NULL DEFAULT '0',
  `bank` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `account` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `grade` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'member',
  `valid` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'I',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('z1111111','$2a$10$YFVIxVfra6csonRXz1C6N.x2.YNAkGyXaIiC7AaUa1/tFHHYzDn6e','이순신','010-0000-0000','222@222','충북 청주시 흥덕구 자전거 도로 299',0,'한국은행','444-1115-5445','member','I'),('z11111111','$2a$10$Y2ahZkxZjsbp3fHbOAqpQOE1E2dH6IfnZz9P9eP488MX.hVOC5ZRC','홍길동','010-1111-1111','2@2','충북 청주시 상당구 신선로 209',0,'국민은행','10101-20292-39','seller','I'),('z111111111','$2a$10$Iyd/pGuzFsLpAG06.4pe6.XIyyrOlvZut2Hb64Pc.4n3oCz4ugkuu','홍길동','010-2222-2222','3@3','충북 청주시 상당구 신선로 209',0,'신한은행','10101-20292-39','admin','I'),('z1111111111','$2a$10$2HoA/H2zEorCFrA2BwI6i.rzpHJ0o3G7p/3wrN5HHG0j7d1cpVIne','임꺽정','010-5633-3822','222@222','전라북도 전주시 강호동',0,'농협','54325-433-2323','deliverer','I');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-23 12:06:07
