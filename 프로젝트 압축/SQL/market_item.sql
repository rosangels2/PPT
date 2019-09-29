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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `item` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `category_no` int(11) NOT NULL,
  `seller_id` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `information` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `commend` int(11) NOT NULL DEFAULT '0',
  `comment` int(11) NOT NULL DEFAULT '0',
  `valid` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'I',
  PRIMARY KEY (`no`),
  KEY `fk_item_category1_idx` (`category_no`),
  CONSTRAINT `fk_item_category1` FOREIGN KEY (`category_no`) REFERENCES `category` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (22,1,'z11111111','배틀그라운드 데스크탑',880000,NULL,'/2019/09/20/35635b36-a1df-4b61-9232-873923eb24a3_데스크탑.jpg','2019-09-20 17:11:25',0,0,'I'),(23,1,'z11111111','배그 최상옵 데스크탑',1200000,NULL,'/2019/09/20/2efdbdc0-026e-4384-b61e-462d5a8f43db_데스크탑.png','2019-09-20 17:15:39',0,0,'I'),(26,2,'z11111111','배그 노트북',1200000,NULL,'/2019/09/21/126ab5ac-6aa4-4c55-aa6b-9122416af0be_노트북.jpg','2019-09-21 13:26:43',0,0,'I'),(27,2,'z11111111','LG 신상 노트북',1000000,NULL,'/2019/09/21/a0ca494f-278c-442a-a5c4-23d630b8af89_노트북1.jpg','2019-09-21 13:28:15',0,0,'I'),(28,3,'z11111111','삼성 외장하드',100000,NULL,'/2019/09/21/ac8913d2-1c40-478b-909e-729a20931590_외장하드.jpg','2019-09-21 13:33:57',0,0,'I'),(29,3,'z11111111','씨게이트 외장하드',90000,NULL,'/2019/09/21/1774e80d-c88e-4574-a0f7-23cd586b46f7_외장하드1.jpg','2019-09-21 13:34:45',0,0,'I'),(30,4,'z11111111','삼성 모니터',400000,NULL,'/2019/09/21/d7715146-20b0-4056-a6bb-e6682befdccc_모니터.jpg','2019-09-21 13:40:57',0,0,'I'),(31,4,'z11111111','LG 모니터',390000,NULL,'/2019/09/21/b86e0248-bc5c-41b9-a3f8-85e20bedcb52_모니터1.jpg','2019-09-21 13:42:55',0,0,'I'),(32,5,'z11111111','로지텍 마우스',40000,NULL,'/2019/09/21/d67f44ba-135d-4f05-8f71-a736f3405f9c_마우스.jpg','2019-09-21 13:44:05',0,0,'I'),(33,1,'z11111111','로지텍 헤드셋',50000,NULL,'/2019/09/21/6a600b8f-d8e5-4760-81b4-7122319017fc_헤드셋.jpg','2019-09-21 13:45:05',0,0,'I'),(34,6,'z11111111','LG 냉장고',3000000,NULL,'/2019/09/21/3d1e7513-c857-41af-97fd-0415c6311bd4_냉장고.jpg','2019-09-21 13:48:18',0,0,'I'),(35,6,'z11111111','삼성 인테리어 냉장고',1500000,NULL,'/2019/09/21/da84deb4-e1d7-4e06-9c06-e569c4456865_냉장고1.jpg','2019-09-21 13:50:26',0,0,'I'),(36,7,'z11111111','LG 드럼세탁기',2000000,NULL,'/2019/09/21/abb6f349-14f4-4f29-8108-7da8dfa886f4_세탁기.jpg','2019-09-21 13:51:28',0,0,'I'),(37,7,'z11111111','삼성 드럼세탁기',1500000,NULL,'/2019/09/21/954a0584-85b9-418f-9d68-24270eaa4b8f_세탁기.png','2019-09-21 13:52:25',0,0,'I'),(38,8,'z11111111','삼성 선풍기',70000,NULL,'/2019/09/21/d7a402f0-9571-43cd-a03b-72c01c5a8492_선풍기.jpg','2019-09-21 13:53:23',0,0,'I'),(39,8,'z11111111','LG 에어컨',2000000,NULL,'/2019/09/21/1553dec4-40f3-49c2-a8ad-40f842ea2f43_에어컨.jpg','2019-09-21 13:54:24',0,0,'I'),(40,9,'z11111111','삼성 고데기',35000,NULL,'/2019/09/21/badc2bab-a386-4d2a-bfe6-77e6b31c97d0_고데기.png','2019-09-21 13:55:13',0,0,'I'),(41,9,'z11111111','미샤 헤어드라이어',50000,NULL,'/2019/09/21/b57f8bcb-1ac7-4a7a-ab31-ba574db2cfc5_헤어드라이어.jpg','2019-09-21 13:55:54',0,0,'I'),(42,10,'z11111111','로지텍 스피커',50000,NULL,'/2019/09/21/cc8c76de-2daf-4d5b-ade3-6513ac368a40_스피커.jpg','2019-09-21 13:56:41',0,0,'I'),(43,10,'z11111111','다목적 오디오',200000,NULL,'/2019/09/21/25ba3ad3-757f-43db-a494-c36876ba7df2_오디오.jpg','2019-09-21 13:57:23',0,0,'I'),(44,11,'z11111111','오션블루베리',15000,NULL,'/2019/09/21/02b7e502-f613-49a0-ad9a-9dea537c46bc_블루베리.jpg','2019-09-21 13:59:03',0,0,'I'),(45,11,'z11111111','샐러드',6000,NULL,'/2019/09/21/0cc62802-1164-4543-979d-44bd2b445f74_샐러드.jpg','2019-09-21 13:59:43',0,0,'I'),(46,12,'z11111111','낙지 전골',20000,NULL,'/2019/09/21/6ae633a5-a49d-4676-9ba7-483a5199f5ff_낙지전골.jpg','2019-09-21 14:00:27',0,0,'I'),(47,12,'z11111111','뚝배기 쌀국수',3000,NULL,'/2019/09/21/6880325b-5f9c-4c74-9fe1-64f7f337817a_쌀국수.jpg','2019-09-21 14:01:08',0,0,'I'),(48,13,'z11111111','내장탕',5000,NULL,'/2019/09/21/08864cc7-7b58-47f7-af0e-009a6d619e2a_내장탕.jpg','2019-09-21 14:02:45',0,0,'I'),(49,13,'z11111111','너구리우동',1000,NULL,'/2019/09/21/ddec8d86-e207-4704-8822-d86ebc567c68_라면.jpg','2019-09-21 14:03:54',0,0,'I'),(50,14,'z11111111','원두커피',10000,NULL,'/2019/09/21/5e7e68f7-636f-406f-b924-1e18e499f812_원두커피.jpg','2019-09-21 14:06:32',0,0,'I'),(51,14,'z11111111','델몬트 오렌지 주스',4000,NULL,'/2019/09/21/62baa7cf-f2bb-4766-b7b6-6e265f74b97e_쥬스.jpg','2019-09-21 14:08:02',0,0,'I'),(52,15,'z11111111','쌀과자',5000,NULL,'/2019/09/21/b27d8c9e-76af-4e17-a103-21dc1500b3f9_쌀과자.jpg','2019-09-21 14:11:10',0,0,'I'),(53,15,'z11111111','쿠키',5000,NULL,'/2019/09/21/4671bb7b-1b39-4ca9-9a12-8e7409692ad9_쿠키.png','2019-09-21 14:11:51',0,0,'I'),(54,16,'z11111111','운동복 세트',100000,NULL,'/2019/09/21/dc91029d-4c9a-483f-a4d6-75366a292032_자전거의류.jpg','2019-09-21 14:14:46',0,0,'I'),(55,16,'z11111111','집업 상의',50000,NULL,'/2019/09/21/9458ac9e-272a-4ad2-8659-9cd1f2e2f3c9_집업.jpg','2019-09-21 14:16:04',0,0,'I'),(56,17,'z11111111','요가 매트',20000,NULL,'/2019/09/21/63df63b7-9f39-4e4e-a1a4-da456cfcc1af_매트.jpg','2019-09-21 14:17:02',0,0,'I'),(57,17,'z11111111','푸시업바',15000,NULL,'/2019/09/21/494abe60-0b68-4945-a357-03e593f0730d_푸시업바.jpg','2019-09-21 14:17:52',0,0,'I'),(58,18,'z11111111','쿨 아이스박스',100000,NULL,'/2019/09/22/777bcd55-86a5-49aa-9374-1f03e44cfee9_아이스박스.jpg','2019-09-22 13:47:10',0,0,'I'),(59,18,'z11111111','꿀잠 침낭',80000,NULL,'/2019/09/22/e38df040-fc82-4ec6-b133-331c15278851_침낭.jpg','2019-09-22 13:49:55',0,0,'I'),(60,19,'z11111111','반짝 라이트',20000,NULL,'/2019/09/22/467a7e44-ea73-40a9-8d89-169645e9f102_라이트.jpg','2019-09-22 13:50:36',0,0,'I'),(61,19,'z11111111','자전거 물받이',10000,NULL,'/2019/09/22/8c0465cf-bb64-455b-99e9-d70ed63e3f83_물받이.png','2019-09-22 13:51:26',0,0,'I'),(62,20,'z11111111','등산 배낭',70000,NULL,'/2019/09/22/ba0429f1-35b0-4956-9d3b-6d512f1257b3_배낭.jpg','2019-09-22 13:52:28',0,0,'I'),(63,20,'z11111111','등산용 지팡이',30000,NULL,'/2019/09/22/fd0d1cb4-364b-4c2e-af3a-2326a7b6c2f4_지팡이.gif','2019-09-22 13:53:20',0,0,'I'),(64,21,'z11111111','전동 드라이버',100000,NULL,'/2019/09/22/b8771dcc-b88a-4d40-9473-edbea1e17d3a_공구.jpg','2019-09-22 13:54:58',0,0,'I'),(65,21,'z11111111','자동차용 스패너',15000,NULL,'/2019/09/22/ca7efbb0-26b3-4861-bc7a-7f8199aae3cb_스패너.jpg','2019-09-22 13:56:07',0,0,'I'),(66,22,'z11111111','완전 타이어들',250000,NULL,'/2019/09/22/c8df16b5-1ecb-4d70-b9b8-070feec8df5e_타이어.png','2019-09-22 13:56:57',0,0,'I'),(67,22,'z11111111','사고 나도 안휠 휠',50000,NULL,'/2019/09/22/c1f15276-0c88-4de1-8b80-231eb388f8b3_휠.jpg','2019-09-22 13:57:45',0,0,'I'),(68,23,'z11111111','자동차 방수 스프레이',10000,NULL,'/2019/09/22/46fb1f98-89c9-43a6-8e6d-c7b15dd5c170_스프레이.jpg','2019-09-22 13:59:31',0,0,'I'),(69,23,'z11111111','자동차 왁스',20000,NULL,'/2019/09/22/aa79d06f-c713-453f-a715-a5e8c1f25196_왁스.jpg','2019-09-22 14:02:09',0,0,'I'),(70,24,'z11111111','검은 고양이',8000,NULL,'/2019/09/22/fe272fe3-d552-477e-a212-f9ebb174a465_액세서리.jpg','2019-09-22 14:03:27',0,0,'I'),(71,24,'z11111111','차량용 휴지통',7000,NULL,'/2019/09/22/f706b550-5465-440a-87ba-10085b00e839_휴지통.jpg','2019-09-22 14:04:18',0,0,'I'),(72,25,'z11111111','경제 저격',20000,NULL,'/2019/09/22/6215e57d-d068-49ca-896b-5bb4e75258a9_국내도서.jpg','2019-09-22 14:05:34',0,0,'I'),(73,25,'z11111111','레인 메이커',15000,NULL,'/2019/09/22/b0e7cacd-a031-474c-8dd9-e2257a17a34d_국내도서1.jpg','2019-09-22 14:06:10',0,0,'I'),(74,26,'z11111111','해리포터와 아이돌',40000,NULL,'/2019/09/22/77cee37e-e0f7-4cf3-94f0-7f5e543407a5_해외도서.jpg','2019-09-22 14:07:04',0,0,'I'),(75,26,'z11111111','해외 잡지',15000,NULL,'/2019/09/22/2d50553b-8972-411c-85f9-deb420917833_해외도서1.jpg','2019-09-22 14:07:46',0,0,'I'),(76,27,'z11111111','나루토 만화책 전권 세트',300000,NULL,'/2019/09/22/7d9de017-d8d4-4157-9f04-02aba72a7b89_나루토.jpg','2019-09-22 14:09:43',0,0,'I'),(77,27,'z11111111','원피스 전권 세트',500000,NULL,'/2019/09/22/a97184bb-3c06-4c8f-b79f-d5c93ac59cb8_원피스.jpg','2019-09-22 14:11:26',0,0,'I'),(78,28,'z11111111','해커스 토익',20000,NULL,'/2019/09/22/31814d2d-75e3-44a7-8b7d-bf8111d8ea8c_교재.jpg','2019-09-22 14:12:00',0,0,'I'),(79,28,'z11111111','해커스 토익',20000,NULL,'/2019/09/22/286ebf67-94f6-4749-a946-b9daf3760d4d_교재1.jpg','2019-09-22 14:12:19',0,0,'I'),(80,29,'z11111111','밥반찬 차리기',12000,NULL,'/2019/09/22/10fe5c07-f2d6-4543-8943-403e7d62d2b7_요리책.jpg','2019-09-22 14:13:04',0,0,'I'),(81,29,'z11111111','1인 가구 요리책',10000,NULL,'/2019/09/22/e9b3878f-e7f3-4708-a7ff-524a8e799199_요리책1.jpg','2019-09-22 14:13:35',0,0,'I'),(82,30,'z11111111','어학 교재',30000,NULL,'/2019/09/22/f2c81aaa-0302-485b-ab4d-382743f5a912_어학도서.jpg','2019-09-22 14:16:55',0,0,'I'),(83,30,'z11111111','어학 도서',20000,NULL,'/2019/09/22/58a91ce2-0263-41e9-8dd7-fa9bc620d7ff_어학도서1.jpg','2019-09-22 14:17:17',0,0,'I'),(84,31,'z11111111','기저귀 대용량',30000,NULL,'/2019/09/22/010d499e-0d8b-4a57-9f9c-c333ca50e3d3_기저귀.jpg','2019-09-22 14:18:06',0,0,'I'),(85,1,'z11111111','순한 기저귀',30000,NULL,'/2019/09/22/b6bb3069-8af2-46d2-85e8-78a1a894a4cb_기저귀1.jpg','2019-09-22 14:18:23',0,0,'I'),(86,32,'z11111111','목장 분유',25000,NULL,'/2019/09/22/76883032-9074-43fd-a065-a529639c92b2_분유.jpg','2019-09-22 14:19:00',0,0,'I'),(87,32,'z11111111','앱솔루트 분유',35000,NULL,'/2019/09/22/7b0c6852-5f46-416f-ad8c-045cea3b076c_분유1.jpg','2019-09-22 14:19:28',0,0,'I'),(88,33,'z11111111','악마의 레고',50000,NULL,'/2019/09/22/2d06a2b0-63f4-40c3-a955-bf1bd96978f9_레고.jpg','2019-09-22 14:20:05',0,0,'I'),(89,33,'z11111111','뽀로로 하우스',90000,NULL,'/2019/09/22/2a427255-e9b4-48ec-83d1-87383f5e8f07_뽀로로.jpg','2019-09-22 14:20:27',0,0,'I'),(90,34,'z11111111','치마 세트',70000,NULL,'/2019/09/22/b44c72b7-e9ee-4e72-adca-f7b611a0b8a4_의류.jpg','2019-09-22 14:22:03',0,0,'I'),(91,34,'z11111111','청자켓청바지',70000,NULL,'/2019/09/22/c191d896-64e0-4c76-9ae7-93ced11bc405_의류1.jpg','2019-09-22 14:22:28',0,0,'I'),(92,35,'z11111111','나이키 신발',100000,NULL,'/2019/09/22/5197d6e6-d87a-40b2-b8d5-9c73a415bed0_신발.jpg','2019-09-22 14:23:16',0,0,'I'),(93,35,'z11111111','남성용 운동화',50000,NULL,'/2019/09/22/14458c3c-2c4f-4ce9-b262-9d9b015f1f0e_신발1.jpg','2019-09-22 14:23:41',0,0,'I'),(94,36,'z11111111','헬스용 장갑',15000,NULL,'/2019/09/22/d9227800-b271-4e59-9207-ae7009f3b7f1_장갑.jpg','2019-09-22 14:24:12',0,0,'I'),(95,36,'z11111111','방한용 장갑',20000,NULL,'/2019/09/22/7bf3d7b1-036c-4eca-a707-00d4332cdb8b_장갑.png','2019-09-22 14:24:39',0,0,'I'),(96,37,'z11111111','남자 청바지',35000,NULL,'/2019/09/22/d9af40b3-ba3a-43b0-abec-6c4bf4268768_남성의류.jpg','2019-09-22 14:25:09',0,0,'I'),(97,37,'z11111111','남자 롱코트',100000,NULL,'/2019/09/22/73275112-e182-4e92-9054-7a98abddbf60_남성의류1.jpg','2019-09-22 14:25:28',0,0,'I'),(98,38,'z11111111','원피스',60000,NULL,'/2019/09/22/34cf19c4-9ec3-4225-a5e3-491fc1a58f99_여성의류.jpg','2019-09-22 14:25:59',0,0,'I'),(99,38,'z11111111','여자 청바지',40000,NULL,'/2019/09/22/1fbbab77-ed92-48fe-8bba-fa562cafc2b0_여성의류1.jpg','2019-09-22 14:26:19',0,0,'I'),(100,39,'z11111111','펭귄 가방',50000,NULL,'/2019/09/22/b9e3ff65-a62d-4516-8f72-ac588b562031_가방.jpg','2019-09-22 14:26:47',0,0,'I'),(101,39,'z11111111','구찌 가방',500000,NULL,'/2019/09/22/d2aaa2af-e05e-47f0-9c7b-a905a41404a8_가방1.jpg','2019-09-22 14:27:16',0,0,'I'),(102,40,'z11111111','남성 시계',80000,NULL,'/2019/09/22/a4efbb73-7704-4e58-bdec-c87332003c34_시계.jpg','2019-09-22 14:28:00',0,0,'I'),(103,40,'z11111111','남여공용 시계',70000,NULL,'/2019/09/22/e9b1b4f4-1180-476d-a2f0-cdcb620727bb_시계1.jpg','2019-09-22 14:28:20',0,0,'I'),(104,41,'z11111111','커플 목걸이',70000,NULL,'/2019/09/22/ee28198b-993c-43c3-aa8e-f9a9a21d0c86_목걸이.jpg','2019-09-22 14:28:51',0,0,'I'),(105,41,'z11111111','다이아 반지',300000,NULL,'/2019/09/22/52fe7dd4-a8b4-4647-863b-5e0619f0907a_반지.jpg','2019-09-22 14:29:15',0,0,'I'),(106,42,'z11111111','입생로랑 화장품 세트',400000,NULL,'/2019/09/22/e725f70a-4600-4727-9758-cd3d4efb0a2c_화장품.jpg','2019-09-22 14:30:05',0,0,'I'),(107,42,'z11111111','스킨케어 세트',150000,NULL,'/2019/09/22/65fed992-cdec-45d9-8400-37322a92deb0_화장품1.jpg','2019-09-22 14:30:27',0,0,'I'),(108,43,'z11111111','여성 향수',70000,NULL,'/2019/09/22/490c42e7-849f-414c-8846-4045dfdc78e5_향수.jpg','2019-09-22 14:30:59',0,0,'I'),(109,43,'z11111111','남성용 향수',70000,NULL,'/2019/09/22/8789e3fa-9219-4f0c-9a52-b424313606dc_향수1.jpg','2019-09-22 14:31:26',0,0,'I'),(110,44,'z11111111','해피바스 바디로션',7000,NULL,'/2019/09/22/1e2f7a17-83f3-4994-88de-cc1bf8f57c80_바디로션.jpg','2019-09-22 14:32:00',0,0,'I'),(111,44,'z11111111','바디클렌저',15000,NULL,'/2019/09/22/96c98f1c-e0f4-4f5f-adc4-a7c44896800f_바디클렌저.jpg','2019-09-22 14:32:23',0,0,'I'),(112,47,'z11111111','헤어 왁스',15000,NULL,'/2019/09/22/612b28c3-bb05-43bb-9b85-68073eafbd2f_왁스.png','2019-09-22 14:41:30',0,0,'I'),(113,47,'z11111111','헤어 스프레이',12000,NULL,'/2019/09/22/a7e57cad-0f6b-46eb-bd1c-3af31e20b204_헤어스프레이.jpg','2019-09-22 14:41:53',0,0,'I'),(114,48,'z11111111','리빙데코 화장지',40000,NULL,'/2019/09/22/aed739eb-eecf-461a-b04b-0eb2f1ccd790_화장지.jpg','2019-09-22 14:42:50',0,0,'I'),(115,48,'z11111111','크리넥스 화장지',40000,NULL,'/2019/09/22/9c87ecac-87bf-468a-80f1-d954fabb5b89_화장지1.jpg','2019-09-22 14:43:12',0,0,'I'),(116,49,'z11111111','팬더 물티슈',30000,NULL,'/2019/09/22/7a4e3179-846b-418d-a6ab-0d034af78fbe_물티슈.jpg','2019-09-22 14:43:54',0,0,'I'),(117,49,'z11111111','순둥이 물티슈',30000,NULL,'/2019/09/22/17d440ac-ff21-4235-aea3-2bc08fc845f1_물티슈1.jpg','2019-09-22 14:44:40',0,0,'I'),(118,50,'z11111111','리얼 순면 생리대',20000,NULL,'/2019/09/22/24f58941-d099-4502-bd8a-2a6a1d1e53f3_생리대.jpg','2019-09-22 14:46:26',0,0,'I'),(119,50,'z11111111','순면 커버 생리대',25000,NULL,'/2019/09/22/e02b0565-d040-4b7a-a72a-9cdebd305f43_생리대1.jpg','2019-09-22 14:46:49',0,0,'I'),(120,51,'z11111111','스파크 세탁 세제',30000,NULL,'/2019/09/22/1f6e199c-600c-4947-bdaf-66457b6d98bb_세제.jpg','2019-09-22 14:47:21',0,0,'I'),(121,51,'z11111111','주방 세제',10000,NULL,'/2019/09/22/b096d837-bc29-4f93-bd50-43f0489cde97_주방세제.jpg','2019-09-22 14:47:46',0,0,'I'),(122,46,'z11111111','전동 면도기',35000,NULL,'/2019/09/22/c2b61111-35e7-4d6a-ac74-ed6dc0c7fc74_면도기.jpg','2019-09-22 14:54:11',0,0,'I'),(123,46,'z11111111','손톱깎이 세트',10000,NULL,'/2019/09/22/74e5d1f8-21aa-4975-b28f-388b7926c5e8_손톱깎이.jpg','2019-09-22 14:55:01',0,0,'I'),(124,52,'z11111111','펫 닭안심',15000,NULL,'/2019/09/22/eab14a02-dd25-47d5-8eb5-bfac4f077577_간식.png','2019-09-22 14:56:14',0,0,'I'),(125,52,'z11111111','치즈볼',15000,NULL,'/2019/09/22/61a13bb9-1d74-4c1e-b497-81c16c981cc7_간식1.jpg','2019-09-22 14:56:40',0,0,'I'),(126,53,'z11111111','강아지 사료',30000,NULL,'/2019/09/22/e99718e7-248d-460a-a913-f96c03034cec_사료.jpg','2019-09-22 14:57:32',0,0,'I'),(127,53,'z11111111','고양이 사료',30000,NULL,'/2019/09/22/fb266514-ae4d-4791-b269-dc4a1b7dbb75_사료1.jpg','2019-09-22 14:57:58',0,0,'I'),(128,54,'z11111111','애완동물 미용가위',30000,NULL,'/2019/09/22/010e9083-eea2-4795-b692-5cfdb59be182_가위.jpg','2019-09-22 14:59:52',0,0,'I'),(129,54,'z11111111','애완용 미용기',40000,NULL,'/2019/09/22/fc4aa80f-fd9a-4c18-8894-6b7e35539533_이발기.jpg','2019-09-22 15:00:18',0,0,'I'),(130,55,'z11111111','고양이 옷',35000,NULL,'/2019/09/22/b2053be1-a2e0-463d-bccd-df27fce55966_고양이옷.jpg','2019-09-22 15:00:55',0,0,'I'),(131,55,'z11111111','반려동물 외투',40000,NULL,'/2019/09/22/1ede24b8-4f1c-4a26-a00a-91419f35cb00_의류.jpg','2019-09-22 15:01:19',1,0,'I'),(132,56,'z11111111','반려동물 장난감 공',10000,NULL,'/2019/09/22/de04f540-ea5e-4aef-838a-3861745a3d05_장난감.jpg','2019-09-22 15:02:05',2,1,'I'),(133,56,'z11111111','고양이 장난감',25000,NULL,'/2019/09/22/07245ed3-5161-4c95-808f-07c6a73b6512_장난감1.jpg','2019-09-22 15:02:37',0,0,'I');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
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
