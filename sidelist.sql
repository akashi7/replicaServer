-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: sidelist
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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdat` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edited` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topicid` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (2,'yes my friend','12/8/2020, 12:04:57 AM','akashi',NULL,'2'),(11,'hhhh nibgo ukibibona x mwana  ','12/23/2020, 8:39:27 PM','kakashi',NULL,'6'),(12,'infact very dangerous it can cause serious harm','12/23/2020, 8:49:48 PM','kakashi','12/23/2020, 8:50:18 PM','2'),(13,'Of course yes','12/23/2020, 11:22:30 PM','kingk',NULL,'8'),(14,'mumbarize wallah','12/23/2020, 11:23:16 PM','kingk','12/23/2020, 11:23:34 PM','6'),(15,' hhhh reka yee ngaho c','12/23/2020, 11:25:27 PM','kingk','12/23/2020, 11:25:56 PM','7'),(16,'visited 4 😂😂','12/23/2020, 11:29:38 PM','akashi','12/23/2020, 11:45:40 PM','9');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forums`
--

DROP TABLE IF EXISTS `forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forums` (
  `id` int NOT NULL AUTO_INCREMENT,
  `topic` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `edited` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `content` varchar(150) DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forums`
--

LOCK TABLES `forums` WRITE;
/*!40000 ALTER TABLE `forums` DISABLE KEYS */;
INSERT INTO `forums` VALUES (2,'Does covid-19 kill many people\nand how many?','kingk','12/23/2020, 11:27:03 PM',NULL,NULL,NULL),(4,'are there beautifull girls in india ','akashi',NULL,'12/21/2020, 7:01:47 PM','was wondering if there are beautifully girl in india because recently found none hhh',NULL),(5,'is Kigaki great','akashi',NULL,'12/21/2020, 8:53:38 PM','Wondering if Kigali is Good                  any reviews yet\n',NULL),(6,'girls in city','akashi',NULL,'12/23/2020, 8:35:49 PM','girls these days are though ',NULL),(7,'just for fun','kakashi','12/23/2020, 8:55:56 PM','12/23/2020, 8:37:26 PM','just wanted to test it hhh',NULL),(8,'Jesus is the Lord','kakashi',NULL,'12/23/2020, 10:52:20 PM','Yes i\'m telling you his Groly',NULL),(9,'How many country you guys visited','kingk',NULL,'12/23/2020, 11:28:18 PM','was curious to know me i visted 2 country',NULL);
/*!40000 ALTER TABLE `forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_username` varchar(50) DEFAULT NULL,
  `receiver_username` varchar(50) DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `createdat` varchar(80) DEFAULT NULL,
  `sendermessages` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (15,'kingk','akashi','yy','12/19/2020, 11:22:15 PM','yy'),(16,'kingk','akashi','bro','12/19/2020, 11:23:57 PM','bro'),(17,'kingk','akashi','vp x','12/19/2020, 11:27:52 PM','vp x'),(18,'akashi','kingk','ngo','12/19/2020, 11:32:12 PM','ngo'),(19,'akashi','kingk','bite x','12/19/2020, 11:35:08 PM','bite x');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `topicid` varchar(100) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `topic` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,'akashi',NULL,'3','akashi','top movies please'),(2,'akashi',NULL,'2','kingk','Does covid-19 kill many people'),(3,'akashi',NULL,'1','akashi','Recommendation of top Series'),(4,'akashi',NULL,'3','akashi','top movies please'),(5,'kakashi',NULL,'3','akashi','top movies please'),(6,'akashi',NULL,'3','akashi','top movies please'),(7,'akashi',NULL,'3','akashi','top movies please'),(8,'akashi',NULL,'1','akashi','Recommendation of top Series'),(9,'kakashi',NULL,'3','akashi','top movies please'),(10,'kakashi',NULL,'3','akashi','top movies please'),(11,'kakashi',NULL,'6','akashi','girls in city'),(12,'kakashi',NULL,'2','kingk','Does covid-19 kill many people'),(13,'kingk',NULL,'8','kakashi','Jesus is the Lord'),(14,'kingk',NULL,'6','akashi','girls in city'),(15,'kingk',NULL,'7','kakashi','just for fun'),(16,'akashi',NULL,'9','kingk','How many country you guys visited');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receiver_messages`
--

DROP TABLE IF EXISTS `receiver_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receiver_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_username` varchar(50) DEFAULT NULL,
  `receiver_username` varchar(50) DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `createdat` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receiver_messages`
--

LOCK TABLES `receiver_messages` WRITE;
/*!40000 ALTER TABLE `receiver_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `receiver_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `fname` varchar(10) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `isadmin` varchar(10) DEFAULT NULL,
  `isreporter` varchar(10) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'akashi','akashi','kabuto','akashi@gmail.com','http://res.cloudinary.com/akashi/image/upload/v1608576595/hhjbyjz4bbuixb0uqu8p.jpg',NULL,NULL,'$2a$08$PTCQZR33wyguwuKo5tKyAuS7LJHUw4GXo7ERchUjD/2PuGc6O35by'),(3,'reporter','reporter','reporter','reporter@gmail.com',NULL,NULL,'1','$2a$08$DZCEvGoa1Igebiz3U9BFWuTA0ykaD05zMKN1YU3I29JdHhTcHjkvK'),(4,'admin','admin','admin','admin@gmail.com',NULL,'1',NULL,'$2a$08$8AMrVJJDlNgkHwSH/G.B9efAvW/bOYIBMblzGfLKHFN1tntD6jBfC'),(5,'kingk','nseko','kabuto christian','christiannseko@gmail.com',NULL,NULL,NULL,'$2a$08$IcfGE35gO.7CodtU85lTmenqaufDFr5krxgUegSM9RNt8/4vwobXi'),(7,'kakashi','nseko','kabuto christian','nseko@gmail.com',NULL,NULL,NULL,'$2a$08$xeygNFY6vSzK2jWTWwjPbOzDAldRYnFoZgzpzRi1ET7tAJYbfX5Li');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-27 23:28:33
