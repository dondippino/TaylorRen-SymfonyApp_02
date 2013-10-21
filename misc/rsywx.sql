-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: rsywx_test
-- ------------------------------------------------------
-- Server version	5.6.12-log

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
-- Table structure for table `book_article`
--

DROP TABLE IF EXISTS `book_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_article` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `datein` date NOT NULL,
  `uri` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_article`
--

LOCK TABLES `book_article` WRITE;
/*!40000 ALTER TABLE `book_article` DISABLE KEYS */;
INSERT INTO `book_article` VALUES (1,'Article A','2013-10-21','localhost');
/*!40000 ALTER TABLE `book_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_book`
--

DROP TABLE IF EXISTS `book_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_book` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `place` int(11) DEFAULT NULL,
  `publisher` int(11) DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `region` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `copyrighter` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `translated` tinyint(1) NOT NULL,
  `purchdate` date NOT NULL,
  `price` double NOT NULL,
  `pubdate` date NOT NULL,
  `printdate` date NOT NULL,
  `ver` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `deco` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `kword` int(11) NOT NULL,
  `page` int(11) NOT NULL,
  `isbn` varchar(17) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `intro` longtext COLLATE utf8_unicode_ci NOT NULL,
  `instock` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D278E839741D53CD` (`place`),
  KEY `IDX_D278E8399CE8D546` (`publisher`),
  CONSTRAINT `fk_place` FOREIGN KEY (`place`) REFERENCES `book_place` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_publisher` FOREIGN KEY (`publisher`) REFERENCES `book_publisher` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_book`
--

LOCK TABLES `book_book` WRITE;
/*!40000 ALTER TABLE `book_book` DISABLE KEYS */;
INSERT INTO `book_book` VALUES ('00001',1,1,'A Book','Jack','China','',0,'2012-01-01',19,'2011-11-11','2011-11-11','1.1','Soft',100,100,'123456789','','a1','A book',1),('00002',1,1,'A Book','Bob','China','',0,'2012-01-01',19,'2011-11-11','2011-11-11','1.1','Soft',100,100,'123456789','','a1','A book',1),('00003',2,2,'A Book','Bob','China','',0,'2012-01-01',19,'2011-11-11','2011-11-11','1.1','Soft',100,100,'123456789','','a1','A book',1),('00004',2,2,'A Book','Bob','China','',0,'2012-01-01',19,'2011-11-11','2011-11-11','1.1','Soft',100,100,'123456789','','a1','A book',1),('00005',2,2,'A Book','Bob','China','',0,'2012-01-01',19,'2011-11-11','2011-11-11','1.1','Soft',100,100,'123456789','','a1','A Book',1),('00006',2,2,'A Book','Bob','China','',0,'2012-01-01',19,'2011-11-11','2011-11-11','1.1','Soft',100,100,'123456789','','a1','A Book',1),('00007',2,2,'A Book','Bob','China','',0,'2012-01-01',19,'2011-11-11','2011-11-11','1.1','Soft',100,100,'123456789','','a1','A Book',1),('00008',2,2,'A Book','Bob','China','',0,'2012-01-01',19,'2011-11-11','2011-11-11','1.1','Soft',100,100,'123456789','','a1','A Book',1),('00009',2,2,'A Book','Bob','China','',0,'2012-01-01',19,'2011-11-11','2011-11-11','1.1','Soft',100,100,'123456789','','a1','A Book',1),('00010',2,2,'A Book','Bob','China','',0,'2012-01-01',19,'2011-11-11','2011-11-11','1.1','Soft',100,100,'123456789','','a1','A Book',1),('00011',2,2,'A Book','Bob','China','',0,'2012-01-01',19,'2011-11-11','2011-11-11','1.1','Soft',100,100,'123456789','','a1','A Book',1),('00012',2,2,'A Book','Bob','China','',0,'2012-01-01',19,'2011-11-11','2011-11-11','1.1','Soft',100,100,'123456789','','a1','A Book',1),('00013',2,2,'A Book','Bob','China','',0,'2012-01-01',19,'2011-11-11','2011-11-11','1.1','Soft',100,100,'123456789','','a1','A Book',1),('00014',2,2,'A Book','Bob','China','',0,'2012-01-01',19,'2011-11-11','2011-11-11','1.1','Soft',100,100,'123456789','','a1','A Book',1),('00015',2,2,'A Book','Bob','China','',0,'2012-01-01',19,'2011-11-11','2011-11-11','1.1','Soft',100,100,'123456789','','a1','A Book',1),('00016',2,2,'A Book','Bob','China','',0,'2012-01-01',19,'2011-11-11','2011-11-11','1.1','Soft',100,100,'123456789','','a1','A Book',1),('00017',2,2,'A Book','Bob','China','',0,'2012-01-01',19,'2011-11-11','2011-11-11','1.1','Soft',100,100,'123456789','','a1','A Book',1),('00018',2,2,'A Book','Bob','China','',0,'2012-01-01',19,'2011-11-11','2011-11-11','1.1','Soft',100,100,'123456789','','a1','A Book',1),('00019',2,2,'A Book','Bob','China','',0,'2012-01-01',19,'2011-11-11','2011-11-11','1.1','Soft',100,100,'123456789','','a1','A Book',1),('00020',2,2,'A Book','Bob','China','',0,'2012-01-01',19,'2011-11-11','2011-11-11','1.1','Soft',100,100,'123456789','','a1','A Book',1);
/*!40000 ALTER TABLE `book_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_headline`
--

DROP TABLE IF EXISTS `book_headline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_headline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reviewtitle` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `create_at` date NOT NULL,
  `show` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F91777E436BB5955` (`bookid`),
  CONSTRAINT `book_headline_FK_1` FOREIGN KEY (`bookid`) REFERENCES `book_book` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_headline`
--

LOCK TABLES `book_headline` WRITE;
/*!40000 ALTER TABLE `book_headline` DISABLE KEYS */;
INSERT INTO `book_headline` VALUES (1,'00001','Review 1','2013-10-21',1),(2,'00002','Review 2','2013-10-21',1);
/*!40000 ALTER TABLE `book_headline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_place`
--

DROP TABLE IF EXISTS `book_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_place`
--

LOCK TABLES `book_place` WRITE;
/*!40000 ALTER TABLE `book_place` DISABLE KEYS */;
INSERT INTO `book_place` VALUES (1,'Place A'),(2,'Place B');
/*!40000 ALTER TABLE `book_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_publisher`
--

DROP TABLE IF EXISTS `book_publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_publisher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_publisher`
--

LOCK TABLES `book_publisher` WRITE;
/*!40000 ALTER TABLE `book_publisher` DISABLE KEYS */;
INSERT INTO `book_publisher` VALUES (1,'Publisher A'),(2,'Publisher B');
/*!40000 ALTER TABLE `book_publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_review`
--

DROP TABLE IF EXISTS `book_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `headlineid` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `datein` date NOT NULL,
  `URI` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `book_review_ibfk_1` (`headlineid`),
  CONSTRAINT `book_review_ibfk_1` FOREIGN KEY (`headlineid`) REFERENCES `book_headline` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_review`
--

LOCK TABLES `book_review` WRITE;
/*!40000 ALTER TABLE `book_review` DISABLE KEYS */;
INSERT INTO `book_review` VALUES (1,1,'Review Detail A','2013-10-21','localhost'),(2,1,'Review Detail B','2013-10-21','localhost'),(3,2,'Review Detail C','2013-10-21','localhost');
/*!40000 ALTER TABLE `book_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_taglist`
--

DROP TABLE IF EXISTS `book_taglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_taglist` (
  `tid` bigint(20) NOT NULL AUTO_INCREMENT,
  `bookid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `bookid` (`bookid`,`tag`),
  KEY `bookid_2` (`bookid`),
  CONSTRAINT `book_taglist_ibfk_1` FOREIGN KEY (`bookid`) REFERENCES `book_book` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4287 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_taglist`
--

LOCK TABLES `book_taglist` WRITE;
/*!40000 ALTER TABLE `book_taglist` DISABLE KEYS */;
INSERT INTO `book_taglist` VALUES (1,'00001','tag1'),(2,'00001','tag2'),(3,'00002','tag1');
/*!40000 ALTER TABLE `book_taglist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_visit`
--

DROP TABLE IF EXISTS `book_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_visit` (
  `bid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `visitwhen` bigint(20) NOT NULL,
  PRIMARY KEY (`bid`,`visitwhen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_visit`
--

LOCK TABLES `book_visit` WRITE;
/*!40000 ALTER TABLE `book_visit` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lakers`
--

DROP TABLE IF EXISTS `lakers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lakers` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `team` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `selfscore` int(11) NOT NULL,
  `oppscore` int(11) NOT NULL,
  `dateplayed` date NOT NULL,
  `winlose` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `remark` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`,`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lakers`
--

LOCK TABLES `lakers` WRITE;
/*!40000 ALTER TABLE `lakers` DISABLE KEYS */;
/*!40000 ALTER TABLE `lakers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qotd`
--

DROP TABLE IF EXISTS `qotd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qotd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quote` longtext COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qotd`
--

LOCK TABLES `qotd` WRITE;
/*!40000 ALTER TABLE `qotd` DISABLE KEYS */;
INSERT INTO `qotd` VALUES (1,'Don\'t give up!','(Unknown)');
/*!40000 ALTER TABLE `qotd` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-21 20:12:10
