-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: maid_monitoring
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `beforesignup`
--

DROP TABLE IF EXISTS `beforesignup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beforesignup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phonenumber` varchar(15) DEFAULT NULL,
  `idno` varchar(300) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `profilepic` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `fullnames` varchar(200) DEFAULT NULL,
  `Idnumber` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beforesignup`
--

LOCK TABLES `beforesignup` WRITE;
/*!40000 ALTER TABLE `beforesignup` DISABLE KEYS */;
INSERT INTO `beforesignup` VALUES (11,'250781273704','5949ede2b76d4c9f94277cadba185b5b','Password123','http://res.cloudinary.com/akashi/image/upload/v1601939383/yipibvluystwbqosq87l.jpg','naruto','naruto uzumaki','5654543432343234'),(12,'250725311893','4df465cd25dd45278b745c820e88f06b','Password123','http://res.cloudinary.com/akashi/image/upload/v1601939859/zuu4i43wqnm704jsqhfu.jpg','naruto','naruto uzumaki','5654565456909098'),(13,'250781438097','e086c3d1c9624329bd8f051d0476f3dd','Password123','http://res.cloudinary.com/akashi/image/upload/v1601940020/vq6qghpy9xly0vcdmkgn.jpg','sasuke','uchiha sasuke','6765676567659098'),(14,'250781936064','32d2c13d5ec34ddf88f90c865a4c6be4','Password123','http://res.cloudinary.com/akashi/image/upload/v1601940146/dc8g8lrdekkqvullveav.jpg','sylvie','shema sylvie','6565456545654590'),(15,'250783028334','b590652427fe43569bb1a9ca1b8cd479','Password123','http://res.cloudinary.com/akashi/image/upload/v1601940424/uydejth8rt5qb3qlpw9r.jpg','george','ireene george','5454321212134356');
/*!40000 ALTER TABLE `beforesignup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employer_replies`
--

DROP TABLE IF EXISTS `employer_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employer_replies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usercode` varchar(100) DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `createdat` varchar(100) DEFAULT NULL,
  `view` varchar(100) DEFAULT 'not read',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer_replies`
--

LOCK TABLES `employer_replies` WRITE;
/*!40000 ALTER TABLE `employer_replies` DISABLE KEYS */;
INSERT INTO `employer_replies` VALUES (29,'3076','vvvv','10/23/2020, 6:53:47 PM','read');
/*!40000 ALTER TABLE `employer_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `maidcode` int DEFAULT NULL,
  `usercode` int DEFAULT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `profilepic` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (17,5008,3052,'mukabana josianne',NULL);
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `information` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usercode` varchar(20) DEFAULT NULL,
  `maidcode` varchar(20) DEFAULT NULL,
  `takenat` varchar(100) DEFAULT NULL,
  `removednat` varchar(100) DEFAULT NULL,
  `usernames` varchar(100) DEFAULT NULL,
  `maidname` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'not removed',
  `action` varchar(100) DEFAULT NULL,
  `maidremovedat` varchar(100) DEFAULT NULL,
  `mreport` varchar(10) DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information`
--

LOCK TABLES `information` WRITE;
/*!40000 ALTER TABLE `information` DISABLE KEYS */;
INSERT INTO `information` VALUES (1,'3058','5007','9/10/2020, 11:27:54 PM','9/18/2020, 11:49:00 PM',NULL,NULL,'removed','employer',NULL,NULL),(2,'3058','5010','9/10/2020, 11:40:18 PM','9/19/2020, 8:04:24 PM',NULL,NULL,'removed','employer',NULL,NULL),(3,'3058','5006','9/11/2020, 5:08:15 PM','9/12/2020, 7:44:06 PM',NULL,NULL,NULL,NULL,NULL,NULL),(4,'3058','5007','9/11/2020, 5:38:46 PM','9/18/2020, 11:49:00 PM',NULL,NULL,'removed','employer',NULL,NULL),(5,'3058','5018','9/11/2020, 5:45:04 PM','9/12/2020, 9:22:00 PM','gaju vivine','nseko kabuto christian',NULL,NULL,NULL,NULL),(6,'3058','5024','9/11/2020, 5:48:38 PM','ygygjh','gaju vivine','nseko kabuto christian',NULL,NULL,NULL,NULL),(7,'3058','5010','9/11/2020, 5:53:02 PM','9/19/2020, 8:04:24 PM','gaju vivine','jacky uwizeye','removed','employer',NULL,NULL),(8,'3058','5010','9/12/2020, 5:45:09 PM','9/19/2020, 8:04:24 PM','gaju vivine','jacky uwizeye','removed','employer',NULL,NULL),(9,'3058','5007','9/12/2020, 5:47:45 PM','9/18/2020, 11:49:00 PM','gaju vivine','musana fabrice','removed','employer',NULL,NULL),(10,'3058','5007','9/12/2020, 5:50:10 PM','9/18/2020, 11:49:00 PM','gaju vivine','musana fabrice','removed','employer',NULL,NULL),(11,'3058','5006','9/12/2020, 7:43:44 PM','9/12/2020, 7:44:06 PM','gaju vivine','clarissa ikuzwe',NULL,NULL,NULL,NULL),(12,'3058','5018','9/12/2020, 9:21:38 PM','9/12/2020, 9:22:00 PM','gaju vivine','nseko kabuto christian',NULL,NULL,NULL,NULL),(13,'3058','5007','9/13/2020, 10:37:57 AM','9/18/2020, 11:49:00 PM','gaju vivine','musana fabrice','removed','employer',NULL,NULL),(14,'3058','5007','9/13/2020, 11:02:53 AM','9/18/2020, 11:49:00 PM','gaju vivine','musana fabrice','removed','employer',NULL,NULL),(15,'3058','5028','9/13/2020, 1:41:50 PM','9/14/2020, 3:18:45 PM','gaju vivine','nseko kabuto christian','removed','employer',NULL,NULL),(16,'3058','5017','9/13/2020, 3:16:01 PM','9/13/2020, 3:16:22 PM','gaju vivine','nseko kabuto christian','removed','employer',NULL,NULL),(17,'3058','5017','9/13/2020, 3:16:01 PM','9/13/2020, 3:16:22 PM','gaju vivine','nseko kabuto christian','removed','employer',NULL,NULL),(18,'3058','5026','9/13/2020, 3:17:51 PM','9/13/2020, 3:17:59 PM','gaju vivine','nseko kabuto christian','removed','employer',NULL,NULL),(19,'3058','5016','9/14/2020, 1:47:34 PM','9/14/2020, 3:08:14 PM','gaju vivine','nseko kabuto christian','removed','employer','9/14/2020, 2:19:27 PM',NULL),(20,'3058','5016','9/14/2020, 2:03:14 PM','9/14/2020, 3:08:14 PM','gaju vivine','nseko kabuto christian','removed','employer','9/14/2020, 2:19:27 PM',NULL),(21,'3058','5013','9/14/2020, 2:22:27 PM','9/14/2020, 2:42:23 PM','gaju vivine','nseko kabuto christian','removed','employer','9/14/2020, 2:26:16 PM',NULL),(22,'3058','5025','9/14/2020, 2:28:53 PM','9/14/2020, 2:34:49 PM','gaju vivine','nseko kabuto christian','removed','employer','9/14/2020, 2:29:43 PM',NULL),(23,'3058','5010','9/14/2020, 3:14:11 PM','9/19/2020, 8:04:24 PM','gaju vivine','jacky uwizeye','removed','employer',NULL,NULL),(24,'3058','5028','9/14/2020, 3:15:34 PM','9/14/2020, 3:18:45 PM','gaju vivine','nseko kabuto christian','removed','employer',NULL,NULL),(25,'3072','5013','9/15/2020, 8:22:12 PM','9/15/2020, 11:54:55 PM','akashi chris','nseko kabuto christian','removed','employer','9/15/2020, 8:24:19 PM','no'),(26,'3072','5007','9/16/2020, 5:40:26 PM','9/16/2020, 7:05:19 PM','akashi chris','musana fabrice','removed','employer',NULL,'yes'),(27,'3072','5010','9/16/2020, 6:56:26 PM','9/16/2020, 6:57:14 PM','akashi chris','jacky uwizeye','removed','employer',NULL,'no'),(28,'3072','5007','9/16/2020, 7:04:58 PM','9/16/2020, 7:05:19 PM','akashi chris','musana fabrice','removed','employer',NULL,'no'),(29,'3058','5007','9/16/2020, 7:08:07 PM','9/18/2020, 11:49:00 PM','gaju vivine','musana fabrice','removed','employer',NULL,'no'),(30,'3058','5010','9/16/2020, 7:08:40 PM','9/19/2020, 8:04:24 PM','gaju vivine','jacky uwizeye','removed','employer',NULL,'no'),(31,'3074','5007','9/17/2020, 11:08:47 AM','9/18/2020, 11:35:12 PM','didier niyonkuru','musana fabrice','removed','employer',NULL,'yes'),(32,'3074','5010','9/17/2020, 11:10:01 AM','9/18/2020, 11:27:42 PM','didier niyonkuru','jacky uwizeye','removed','employer','9/17/2020, 11:21:17 AM','yes'),(33,'3074','5007','9/18/2020, 11:34:46 PM','9/18/2020, 11:35:12 PM','didier niyonkuru','musana fabrice','removed','employer',NULL,'yes'),(34,'3058','5007','9/18/2020, 11:47:28 PM','9/18/2020, 11:49:00 PM','gaju vivine','musana fabrice','removed','employer',NULL,'no'),(35,'3058','5010','9/19/2020, 8:04:05 PM','9/19/2020, 8:04:24 PM','gaju vivine','jacky uwizeye','removed','employer',NULL,'no'),(36,'3075','5010','9/20/2020, 2:21:50 AM','9/20/2020, 2:25:41 AM','king chris','jacky uwizeye','removed','employer',NULL,'yes'),(37,'3075','5007','9/20/2020, 3:23:10 AM','9/20/2020, 3:23:27 AM','king chris','musana fabrice','removed','employer',NULL,'yes'),(38,'3076','5010','9/20/2020, 4:10:01 PM','10/13/2020, 5:11:03 PM','alain nyiringago','jacky uwizeye','removed','employer',NULL,'yes'),(39,'3076','5007','9/20/2020, 4:14:47 PM','10/3/2020, 11:01:37 PM','alain nyiringago','musana fabrice','removed','employer','10/3/2020, 5:54:46 PM','yes'),(40,'3076','5025','9/26/2020, 11:00:54 PM','9/26/2020, 11:01:19 PM','alain nyiringago','nseko kabuto christian','removed','employer',NULL,'no'),(41,'3076','5006','9/29/2020, 5:18:15 PM','10/3/2020, 5:46:26 PM','alain nyiringago','clarissa ikuzwe','removed','employer','9/29/2020, 7:22:13 PM','no'),(42,'3076','5007','10/3/2020, 5:45:26 PM','10/3/2020, 11:01:37 PM','alain nyiringago','musana fabrice','removed','employer','10/3/2020, 5:54:46 PM','yes'),(43,'3076','5007','10/3/2020, 5:45:27 PM','10/3/2020, 11:01:37 PM','alain nyiringago','musana fabrice','removed','employer','10/3/2020, 5:54:46 PM','yes'),(44,'3076','5010','10/3/2020, 11:01:58 PM','10/13/2020, 5:11:03 PM','alain nyiringago','jacky uwizeye','removed','employer',NULL,'yes'),(45,'3076','5013','10/13/2020, 5:26:19 PM','10/16/2020, 4:06:35 PM','alain nyiringago','nseko kabuto christian','removed','employer',NULL,'no'),(46,'3076','5024','10/13/2020, 5:29:55 PM','10/16/2020, 4:08:24 PM','alain nyiringago','nseko kabuto christian','removed','employer',NULL,'yes'),(47,'3076','5026','10/13/2020, 5:31:48 PM','10/16/2020, 4:07:44 PM','alain nyiringago','nseko kabuto christian','removed','employer','10/13/2020, 6:05:00 PM','yes'),(48,'3076','5015','10/13/2020, 5:33:11 PM','10/16/2020, 4:06:49 PM','alain nyiringago','nseko kabuto christian','removed','employer',NULL,'no'),(49,'3077','5010','10/23/2020, 7:14:37 PM','10/23/2020, 7:17:53 PM','avatar aang','jacky uwizeye','removed','employer',NULL,'no');
/*!40000 ALTER TABLE `information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maid_identification`
--

DROP TABLE IF EXISTS `maid_identification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maid_identification` (
  `maidcode` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(30) NOT NULL,
  `Idnumber` varchar(200) NOT NULL,
  `phonenumber` varchar(200) NOT NULL,
  `profilepic` varchar(200) DEFAULT NULL,
  `haspayed` tinyint(1) DEFAULT NULL,
  `state` varchar(200) DEFAULT 'not taken',
  `tinnumber` varchar(200) DEFAULT NULL,
  `maidcase` varchar(200) DEFAULT 'no case',
  PRIMARY KEY (`Idnumber`),
  UNIQUE KEY `maidcode` (`maidcode`),
  UNIQUE KEY `phonenumber` (`phonenumber`)
) ENGINE=InnoDB AUTO_INCREMENT=5029 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maid_identification`
--

LOCK TABLES `maid_identification` WRITE;
/*!40000 ALTER TABLE `maid_identification` DISABLE KEYS */;
INSERT INTO `maid_identification` VALUES (5024,'nseko kabuto christian','0008887776667777','9990001231',NULL,NULL,'not taken','2237',NULL),(5007,'musana fabrice','0009998111234531','0009998876','http://res.cloudinary.com/akashi/image/upload/v1595893104/cbvumefo9hwxqcdfhtxg.jpg',NULL,'not taken',NULL,NULL),(5010,'jacky uwizeye','0009999999000876','0988000990',NULL,NULL,'not taken',NULL,NULL),(5016,'nseko kabuto christian','1114352345345651','7777129000',NULL,NULL,'not taken',NULL,NULL),(5014,'nseko kabuto christian','1123456321234560','0912347760',NULL,NULL,'not taken',NULL,NULL),(5027,'nseko kabuto christian','1232190909090431','0909890989',NULL,NULL,'not taken','8557',NULL),(5015,'nseko kabuto christian','1234321908765400','7778887789',NULL,NULL,'not taken',NULL,NULL),(5013,'nseko kabuto christian','1237776543219065','5556667899',NULL,NULL,'not taken',NULL,NULL),(5025,'nseko kabuto christian','2223212321239085','9767654389',NULL,NULL,'not taken','8993',NULL),(5026,'nseko kabuto christian','5555665453219080','8989090981',NULL,NULL,'not taken','8190',NULL),(5017,'nseko kabuto christian','5566655566556657','0910001000',NULL,NULL,'not taken',NULL,NULL),(5028,'nseko kabuto christian','5654543212348888','9098787656',NULL,NULL,'not taken','1238',NULL),(5006,'clarissa ikuzwe','5656564000888765','8888877765','http://res.cloudinary.com/akashi/image/upload/v1595892996/n92x3fdaokdo21md0juz.jpg',NULL,'not taken',NULL,'Wanted for murder if found please report to nearest  RIB office'),(5018,'nseko kabuto christian','6665554443678989','6567777567','http://res.cloudinary.com/akashi/image/upload/v1599260270/q6yjvqfxx0nbqyjn6e9n.png',NULL,'not taken','5082',NULL);
/*!40000 ALTER TABLE `maid_identification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maid_issues`
--

DROP TABLE IF EXISTS `maid_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maid_issues` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usercode` varchar(100) DEFAULT NULL,
  `userfullname` varchar(100) DEFAULT NULL,
  `maidcode` varchar(100) DEFAULT NULL,
  `maidfullname` varchar(100) DEFAULT NULL,
  `createdat` varchar(100) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `viewed` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'not seen',
  `userphone` varchar(100) DEFAULT NULL,
  `maidphone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maid_issues`
--

LOCK TABLES `maid_issues` WRITE;
/*!40000 ALTER TABLE `maid_issues` DISABLE KEYS */;
INSERT INTO `maid_issues` VALUES (16,'3074','didier niyonkuru','5007','musana fabrice','9/19/2020, 12:10:36 AM','yaraaaaaaaaaaaaaa',NULL,'seen',NULL,NULL),(18,'3075','king chris','5007','musana fabrice','10/3/2020, 5:55:46 PM','report',NULL,'seen',NULL,NULL),(19,'3076','alain nyiringago','5010','jacky uwizeye','10/3/2020, 11:02:47 PM','yaraaaa',NULL,'seen',NULL,NULL),(22,'3076','alain nyiringago','5007','musana fabrice','10/13/2020, 6:24:45 PM','yaranyibye\n',NULL,'seen','250788658619','0009998876'),(23,'3076','alain nyiringago','5024','nseko kabuto christian','10/16/2020, 4:37:35 PM','yalalalal',NULL,'seen','250788658619','9990001231');
/*!40000 ALTER TABLE `maid_issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maidbefore`
--

DROP TABLE IF EXISTS `maidbefore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maidbefore` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phonenumber` varchar(20) DEFAULT NULL,
  `idno` varchar(100) DEFAULT NULL,
  `profilepic` varchar(100) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `Idnumber` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maidbefore`
--

LOCK TABLES `maidbefore` WRITE;
/*!40000 ALTER TABLE `maidbefore` DISABLE KEYS */;
INSERT INTO `maidbefore` VALUES (1,'250781273704','7c745aff08c64483b3a4b8095788e832','http://res.cloudinary.com/akashi/image/upload/v1600567291/vgnyu807fqdp2m9nhagb.jpg','yves tuyishime','3232454343215678'),(2,'250781273704','62ea6ce2f63045d188ebccbb9d119305','http://res.cloudinary.com/akashi/image/upload/v1600568214/ckhqejnbxbrzxlg6g676.jpg','tuy chris','3434323232123456');
/*!40000 ALTER TABLE `maidbefore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_identification`
--

DROP TABLE IF EXISTS `user_identification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_identification` (
  `username` varchar(10) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `usercode` int NOT NULL AUTO_INCREMENT,
  `haspayed` tinyint(1) DEFAULT NULL,
  `isadmin` tinyint(1) DEFAULT NULL,
  `profilepic` varchar(250) DEFAULT NULL,
  `phonenumber` varchar(200) DEFAULT NULL,
  `isagent` tinyint(1) DEFAULT NULL,
  `Idnumber` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`usercode`),
  UNIQUE KEY `usercode` (`usercode`),
  UNIQUE KEY `phonenumber` (`phonenumber`)
) ENGINE=InnoDB AUTO_INCREMENT=3078 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_identification`
--

LOCK TABLES `user_identification` WRITE;
/*!40000 ALTER TABLE `user_identification` DISABLE KEYS */;
INSERT INTO `user_identification` VALUES ('admin','nseko kabuto christian','$2a$08$Csar2NTIOdovyKkrRjy4wOcfiVw/0o.30tLghWdqLwE7gLd9ynAAm',3048,1,1,'http://res.cloudinary.com/akashi/image/upload/v1595761573/xj7cejfeumwosjbdac5a.jpg','0543234560',NULL,NULL),('agent','akashi kabuto','$2a$08$7lz0eEaBWW4s7Q09xceW9.wYq2iLfYGbRsoOZwiumnVEcmVCzETh6',3049,1,NULL,NULL,'0543234561',1,NULL),('bizarre','nseko kabuto christian','$2a$08$wGyWYTO72ZSkwIjh00Sfg.p6A5m6SJFooij2Oy7bK.0dDlV9M4bYS',3063,NULL,0,NULL,'0912345671',NULL,NULL),('merea','nseko kabuto christian','$2a$08$U50Qjai94fZmxFLc7wfJ/.9WwcRzJ2Jredg7hfQF5v83YsclSpSRy',3065,NULL,0,NULL,'8900098712',NULL,NULL),('pereava','nseko kabuto christian','$2a$08$ICazq78fTHBTswdUfCh9K.oHgrXGKleNAbRxEffEUnQXp6Cf81KlW',3067,NULL,0,NULL,'0004443210',NULL,NULL),('mereava','nseko kabuto christian','$2a$08$l/wF2G1a.3y9NJbl.iWDDO3cnTdvv5U4SC6F2Wyu06uS92iAD08FS',3068,NULL,0,NULL,'9990909089',NULL,NULL),('cedric','nseko kabuto christian','$2a$08$hWKLeAoBuN4WW3kz4OaH1.fr/plLCnIibmRq7y3uB4ylK7fHgzKR2',3069,NULL,0,NULL,'7676761234',NULL,NULL),('kingd','nseko kabuto christian','$2a$08$lznkJj4t2h1hp.TSNJm66.Flg7.42GX6AfjJh9MLuitXtbuhezbvG',3070,NULL,0,NULL,'7876787600',NULL,NULL),('kingcr','nseko kabuto christian','$2a$08$trhH97W22a3mKE59aMOXleeqQSEi8wMZ5CAr0/4gF.5aeIFv8eMfu',3071,NULL,0,NULL,'8889890909',NULL,NULL),('didier','didier niyonkuru','$2a$08$f0nqCtKuj8.13TDLrvRSZOiMQir4dZMeYBNm4N9mgB7sZnkCP/dvi',3074,NULL,NULL,'http://res.cloudinary.com/akashi/image/upload/v1600333413/xffeyo1c1kymtwikiwa9.png','250781438097',NULL,NULL),('kabuto','king chris','$2a$08$kBzJmLDoy3KKHUOg1tBSsesxE2Uegb7IJ/YHfLpCoLTiwxuaFA2Z.',3075,NULL,NULL,'http://res.cloudinary.com/akashi/image/upload/v1600554632/eupkcvv8iveu627ndryh.png','250781273704',NULL,NULL),('akashi','Nseko christian','$2a$08$wje08vAKNYqcJ8uc5shoz.OClDDjUpDLIlBhtMovMrqg8Vigl/VPm',3076,NULL,NULL,'http://res.cloudinary.com/akashi/image/upload/v1600610849/pux0cswkh2xdpp8acjy7.jpg','250788658619',NULL,'1239098789890987'),('avatar','avatar aang','$2a$08$ZnOIKH545dzAlguRK3sCc.CfCXSc.Vr2HI/0GeCaTgjnvKSuSxgYa',3077,NULL,NULL,'http://res.cloudinary.com/akashi/image/upload/v1601939179/kvym7txv6gsc3blfqi08.jpg','250725311893',NULL,'1232128787678767');
/*!40000 ALTER TABLE `user_identification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_issues`
--

DROP TABLE IF EXISTS `user_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_issues` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usercode` varchar(100) DEFAULT NULL,
  `userfullname` varchar(100) DEFAULT NULL,
  `maidcode` varchar(100) DEFAULT NULL,
  `maidfullname` varchar(100) DEFAULT NULL,
  `createdat` varchar(100) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `viewed` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'not seen',
  `userphone` varchar(30) DEFAULT NULL,
  `maidphone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_issues`
--

LOCK TABLES `user_issues` WRITE;
/*!40000 ALTER TABLE `user_issues` DISABLE KEYS */;
INSERT INTO `user_issues` VALUES (18,'3074','didier niyonkuru','5007','musana fabrice','9/18/2020, 11:35:11 PM','twagiye shaaa',NULL,'seen',NULL,NULL),(27,'3076','alain nyiringago','5010','jacky uwizeye','10/13/2020, 5:11:03 PM','yes yaranyibye cyaneee.','true','seen','250788658619','0988000990');
/*!40000 ALTER TABLE `user_issues` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-27 23:27:32
