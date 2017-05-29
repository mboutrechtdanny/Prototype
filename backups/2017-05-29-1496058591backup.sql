-- MySQL dump 10.13  Distrib 5.5.50, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: c9
-- ------------------------------------------------------
-- Server version	5.5.50-0ubuntu0.14.04.1

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
-- Table structure for table `aanmelding_wens`
--

DROP TABLE IF EXISTS `aanmelding_wens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aanmelding_wens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aanmelding` int(10) unsigned NOT NULL,
  `wens` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aanmelding_wens_aanmelding_foreign` (`aanmelding`),
  KEY `aanmelding_wens_wens_foreign` (`wens`),
  CONSTRAINT `aanmelding_wens_aanmelding_foreign` FOREIGN KEY (`aanmelding`) REFERENCES `aanmeldings` (`id`),
  CONSTRAINT `aanmelding_wens_wens_foreign` FOREIGN KEY (`wens`) REFERENCES `wensens` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aanmelding_wens`
--

LOCK TABLES `aanmelding_wens` WRITE;
/*!40000 ALTER TABLE `aanmelding_wens` DISABLE KEYS */;
INSERT INTO `aanmelding_wens` VALUES (10,1,1,'2016-11-02 17:27:52','2016-11-02 17:27:52'),(11,1,3,'2016-11-02 17:27:52','2016-11-02 17:27:52'),(12,1,4,'2016-11-02 17:27:52','2016-11-02 17:27:52'),(13,2,2,'2016-11-02 17:30:05','2016-11-02 17:30:05'),(14,2,5,'2016-11-02 17:30:05','2016-11-02 17:30:05'),(15,3,2,'2016-11-02 17:31:56','2016-11-02 17:31:56'),(16,3,4,'2016-11-02 17:31:56','2016-11-02 17:31:56'),(17,4,2,'2016-11-02 17:33:20','2016-11-02 17:33:20'),(18,4,4,'2016-11-02 17:33:20','2016-11-02 17:33:20'),(19,5,2,'2016-11-02 17:34:40','2016-11-02 17:34:40'),(20,6,2,'2016-11-02 19:27:06','2016-11-02 19:27:06'),(21,6,3,'2016-11-02 19:27:06','2016-11-02 19:27:06'),(22,7,5,'2016-11-02 19:28:58','2016-11-02 19:28:58'),(23,8,3,'2016-11-02 19:30:27','2016-11-02 19:30:27'),(24,9,1,'2016-11-02 19:32:17','2016-11-02 19:32:17'),(25,9,2,'2016-11-02 19:32:17','2016-11-02 19:32:17'),(26,10,5,'2016-11-02 19:34:31','2016-11-02 19:34:31'),(27,11,3,'2016-11-02 19:37:02','2016-11-02 19:37:02'),(28,11,4,'2016-11-02 19:37:02','2016-11-02 19:37:02'),(29,12,2,'2016-11-02 19:39:47','2016-11-02 19:39:47'),(30,12,4,'2016-11-02 19:39:47','2016-11-02 19:39:47'),(31,13,4,'2016-11-02 19:41:13','2016-11-02 19:41:13'),(32,14,2,'2016-11-02 19:42:37','2016-11-02 19:42:37'),(33,15,3,'2016-11-02 19:44:40','2016-11-02 19:44:40'),(34,16,2,'2016-11-02 19:46:20','2016-11-02 19:46:20'),(35,17,3,'2016-11-02 19:48:41','2016-11-02 19:48:41'),(36,17,4,'2016-11-02 19:48:41','2016-11-02 19:48:41'),(37,18,2,'2016-11-02 19:50:28','2016-11-02 19:50:28'),(38,18,3,'2016-11-02 19:50:28','2016-11-02 19:50:28'),(39,19,3,'2016-11-02 19:52:06','2016-11-02 19:52:06'),(40,20,3,'2016-11-02 19:54:31','2016-11-02 19:54:31'),(41,21,3,'2016-11-02 19:56:30','2016-11-02 19:56:30'),(42,22,2,'2016-11-02 19:59:14','2016-11-02 19:59:14'),(43,23,1,'2016-11-02 22:24:50','2016-11-02 22:24:50'),(44,23,2,'2016-11-02 22:24:50','2016-11-02 22:24:50'),(45,23,5,'2016-11-02 22:24:50','2016-11-02 22:24:50'),(46,24,1,'2016-11-03 08:49:40','2016-11-03 08:49:40'),(47,24,3,'2016-11-03 08:49:40','2016-11-03 08:49:40'),(48,25,2,'2016-11-03 10:45:55','2016-11-03 10:45:55'),(49,25,3,'2016-11-03 10:45:55','2016-11-03 10:45:55'),(50,25,4,'2016-11-03 10:45:55','2016-11-03 10:45:55'),(51,26,1,'2017-03-01 15:13:32','2017-03-01 15:13:32'),(52,26,3,'2017-03-01 15:13:32','2017-03-01 15:13:32'),(53,26,5,'2017-03-01 15:13:32','2017-03-01 15:13:32'),(54,27,1,'2017-04-28 14:43:57','2017-04-28 14:43:57'),(55,27,3,'2017-04-28 14:43:57','2017-04-28 14:43:57'),(56,28,2,'2017-05-06 15:11:04','2017-05-06 15:11:04');
/*!40000 ALTER TABLE `aanmelding_wens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aanmeldings`
--

DROP TABLE IF EXISTS `aanmeldings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aanmeldings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(10) unsigned NOT NULL,
  `slot` int(10) unsigned NOT NULL,
  `onderwerp` text COLLATE utf8_unicode_ci NOT NULL,
  `omschrijving` text COLLATE utf8_unicode_ci NOT NULL,
  `voorkeur` int(11) DEFAULT NULL,
  `deadline` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aanmeldings_user_foreign` (`user`),
  KEY `aanmeldings_slot_foreign` (`slot`),
  CONSTRAINT `aanmeldings_slot_foreign` FOREIGN KEY (`slot`) REFERENCES `slots` (`id`),
  CONSTRAINT `aanmeldings_user_foreign` FOREIGN KEY (`user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aanmeldings`
--

LOCK TABLES `aanmeldings` WRITE;
/*!40000 ALTER TABLE `aanmeldings` DISABLE KEYS */;
INSERT INTO `aanmeldings` VALUES (1,249,4,'Jquery','Jquery is een Javascript library',NULL,'0000-00-00 00:00:00','2016-11-02 17:27:51','2016-11-02 17:27:51'),(2,250,9,'Ruby On Rails','Ruby on rails is een framework voor Ruby',NULL,'0000-00-00 00:00:00','2016-11-02 17:30:05','2016-11-02 17:30:05'),(3,251,19,'PHP en Laravel','PHP is een back-end programmeertaal en Laravel is een PHP Framework',NULL,'0000-00-00 00:00:00','2016-11-02 17:31:56','2016-11-02 17:31:56'),(4,252,14,'Javascript','Javascript is een Front-end Programmeertaal',NULL,'0000-00-00 00:00:00','2016-11-02 17:33:20','2016-11-02 17:33:20'),(5,253,10,'C++ ','C++ is een back-end programmeertaal',NULL,'0000-00-00 00:00:00','2016-11-02 17:34:40','2016-11-02 17:34:40'),(6,254,24,'PHP OOP','PHP Object oriented ',NULL,'0000-00-00 00:00:00','2016-11-02 19:27:06','2016-11-02 19:27:06'),(7,255,30,'C#','C# game development',NULL,'0000-00-00 00:00:00','2016-11-02 19:28:58','2016-11-02 19:28:58'),(8,256,41,'CakePHP','CakePHP is een PHP Framework',NULL,'0000-00-00 00:00:00','2016-11-02 19:30:27','2016-11-02 19:30:27'),(9,257,54,'Linux','Linux is een Operating System',NULL,'0000-00-00 00:00:00','2016-11-02 19:32:17','2016-11-02 19:32:17'),(10,258,46,'Zend','Zend is een PHP Framework',NULL,'0000-00-00 00:00:00','2016-11-02 19:34:31','2016-11-02 19:34:31'),(11,259,43,'Wordpress','Wordpress is een populaire CMS',NULL,'0000-00-00 00:00:00','2016-11-02 19:37:02','2016-11-02 19:37:02'),(12,260,55,'ModX','ModX is een PHP CMS',NULL,'0000-00-00 00:00:00','2016-11-02 19:39:47','2016-11-02 19:39:47'),(13,261,37,'Symfony','Symfony is een PHP Framework',NULL,'0000-00-00 00:00:00','2016-11-02 19:41:13','2016-11-02 19:41:13'),(14,262,23,'Django','Django is een Python Framework',NULL,'0000-00-00 00:00:00','2016-11-02 19:42:37','2016-11-02 19:42:37'),(15,263,48,'Python','Python is een back-end programmeertaal',NULL,'0000-00-00 00:00:00','2016-11-02 19:44:40','2016-11-02 19:44:40'),(16,264,27,'Drupal','Drupal is een PHP CMS',NULL,'0000-00-00 00:00:00','2016-11-02 19:46:20','2016-11-02 19:46:20'),(17,265,71,'MongoDB','MongoDB is een NoSQL Database',NULL,'0000-00-00 00:00:00','2016-11-02 19:48:41','2016-11-02 19:48:41'),(18,266,63,'JSON','waarom je JSON moet gaan gebruiken ',NULL,'0000-00-00 00:00:00','2016-11-02 19:50:28','2016-11-02 19:50:28'),(19,267,70,'Ruby','Ruby is een populaire programmeertaal',NULL,'0000-00-00 00:00:00','2016-11-02 19:52:06','2016-11-02 19:52:06'),(20,268,58,'Java','Java is een populaire programmeertaal van Oracle',NULL,'0000-00-00 00:00:00','2016-11-02 19:54:31','2016-11-02 19:54:31'),(21,269,67,'Angular ','Angular is een front-end programmeertaal',NULL,'0000-00-00 00:00:00','2016-11-02 19:56:30','2016-11-02 19:56:30'),(22,270,64,'Git','Git is een populaire programmeertaal',NULL,'0000-00-00 00:00:00','2016-11-02 19:59:14','2016-11-02 19:59:14'),(23,272,36,'Symfony 2 met Jquery','Symfony 2 Framework met Jquery plugin',55,'0000-00-00 00:00:00','2016-11-02 22:24:50','2016-11-02 22:24:50'),(24,274,28,'PHP Laravel en Jquery','PHP Laravel en Jquery ',27,'0000-00-00 00:00:00','2016-11-03 08:49:40','2016-11-03 08:49:40'),(25,281,21,'PHP , Laravel op Windows ','PHP , Laravel op Windows ',54,'0000-00-00 00:00:00','2016-11-03 10:45:55','2016-11-03 10:45:55'),(26,285,22,'Ik ga het hebben over down ','Subbb',43,'0000-00-00 00:00:00','2017-03-01 15:13:32','2017-03-01 15:13:32'),(27,307,1,'Pepsi cola','Pepsi cola',43,'0000-00-00 00:00:00','2017-04-28 14:43:57','2017-04-28 14:43:57'),(28,317,3,'PHP','Ik ga het hebben over PHP',NULL,'0000-00-00 00:00:00','2017-05-06 15:11:04','2017-05-06 15:11:04');
/*!40000 ALTER TABLE `aanmeldings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agendas`
--

DROP TABLE IF EXISTS `agendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agendas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `agenda_naam` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agendas`
--

LOCK TABLES `agendas` WRITE;
/*!40000 ALTER TABLE `agendas` DISABLE KEYS */;
INSERT INTO `agendas` VALUES (1,'Conferentie','2016-10-18 23:54:01','2016-10-18 23:54:01');
/*!40000 ALTER TABLE `agendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bijeenkomsts`
--

DROP TABLE IF EXISTS `bijeenkomsts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bijeenkomsts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reserveringscode` int(11) NOT NULL,
  `aantal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bijeenkomsts`
--

LOCK TABLES `bijeenkomsts` WRITE;
/*!40000 ALTER TABLE `bijeenkomsts` DISABLE KEYS */;
INSERT INTO `bijeenkomsts` VALUES (1,545454,2,NULL,NULL),(2,296134,2,NULL,NULL),(3,397135,1,NULL,NULL),(4,498136,3,NULL,NULL),(5,599137,4,NULL,NULL),(6,6100138,2,NULL,NULL),(7,7101139,2,NULL,NULL),(8,8102140,2,NULL,NULL),(9,9105143,3,NULL,NULL),(10,10106144,2,NULL,NULL),(11,11107145,5,NULL,NULL),(12,12108146,5,NULL,NULL),(13,13110148,3,NULL,NULL),(14,14114152,1,NULL,NULL),(15,15116154,2,NULL,NULL),(16,16120158,2,NULL,NULL),(17,17122160,3,NULL,NULL),(18,18123161,3,NULL,NULL),(19,19124162,2,NULL,NULL),(20,20125163,2,NULL,NULL),(21,21126164,6,NULL,NULL),(22,22129167,0,NULL,NULL),(23,23132170,0,NULL,NULL),(24,24133171,0,NULL,NULL),(25,25134172,2,NULL,NULL),(26,26135173,3,NULL,NULL),(27,27138176,2,NULL,NULL),(28,28140178,2,NULL,NULL),(29,29142180,3,NULL,NULL),(30,30147185,1,NULL,NULL),(31,31148186,3,NULL,NULL),(32,32158196,150,NULL,NULL),(33,33160198,160,NULL,NULL),(34,34170208,2,NULL,NULL),(35,35171209,2,NULL,NULL),(36,36173211,3,NULL,NULL),(37,37176214,2,NULL,NULL),(38,38178216,1,NULL,NULL),(39,39179217,2,NULL,NULL),(40,40181219,2,NULL,NULL),(41,41189235,2,NULL,NULL),(42,42200247,1,NULL,NULL),(43,43214287,1,NULL,NULL);
/*!40000 ALTER TABLE `bijeenkomsts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maaltijd_types`
--

DROP TABLE IF EXISTS `maaltijd_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maaltijd_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `maaltijd_naam` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prijs` double(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maaltijd_types`
--

LOCK TABLES `maaltijd_types` WRITE;
/*!40000 ALTER TABLE `maaltijd_types` DISABLE KEYS */;
INSERT INTO `maaltijd_types` VALUES (1,'lunch',20.00),(2,'diner',30.00),(3,'allebei',50.00);
/*!40000 ALTER TABLE `maaltijd_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maaltijds`
--

DROP TABLE IF EXISTS `maaltijds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maaltijds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `maaltijd_type` int(10) unsigned NOT NULL,
  `reservering` int(10) unsigned NOT NULL,
  `maaltijdcode` int(11) NOT NULL,
  `dag` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `maaltijds_maaltijd_type_foreign` (`maaltijd_type`),
  KEY `maaltijds_reservering_foreign` (`reservering`),
  CONSTRAINT `maaltijds_maaltijd_type_foreign` FOREIGN KEY (`maaltijd_type`) REFERENCES `maaltijd_types` (`id`),
  CONSTRAINT `maaltijds_reservering_foreign` FOREIGN KEY (`reservering`) REFERENCES `reserverings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maaltijds`
--

LOCK TABLES `maaltijds` WRITE;
/*!40000 ALTER TABLE `maaltijds` DISABLE KEYS */;
INSERT INTO `maaltijds` VALUES (162,1,286,1362286,'vrijdag','2017-05-15 19:23:24','2017-05-15 19:23:24'),(163,1,286,1362286162,'vrijdag','2017-05-15 19:23:24','2017-05-15 19:23:24'),(164,1,288,1364288163,'vrijdag','2017-05-17 15:44:08','2017-05-17 15:44:08'),(165,1,288,1364288164,'vrijdag','2017-05-17 15:44:08','2017-05-17 15:44:08'),(166,1,289,1366289165,'vrijdag','2017-05-17 18:00:23','2017-05-17 18:00:23'),(167,1,289,1366289166,'vrijdag','2017-05-17 18:00:23','2017-05-17 18:00:23'),(168,1,290,1367290167,'vrijdag','2017-05-17 18:02:45','2017-05-17 18:02:45'),(169,1,290,1367290168,'vrijdag','2017-05-17 18:02:45','2017-05-17 18:02:45'),(170,1,291,1368291169,'vrijdag','2017-05-17 18:04:05','2017-05-17 18:04:05'),(171,1,291,1368291170,'vrijdag','2017-05-17 18:04:05','2017-05-17 18:04:05'),(172,1,292,1369292171,'vrijdag','2017-05-17 18:12:08','2017-05-17 18:12:08'),(173,1,292,1369292172,'vrijdag','2017-05-17 18:12:08','2017-05-17 18:12:08'),(174,1,293,1370293173,'vrijdag','2017-05-17 18:13:15','2017-05-17 18:13:15'),(175,1,293,1370293174,'vrijdag','2017-05-17 18:13:15','2017-05-17 18:13:15');
/*!40000 ALTER TABLE `maaltijds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2016_10_16_213445_create_roles_table',1),('2016_10_16_215501_create_users_table',1),('2016_10_16_215924_create_reserverings_table',1),('2016_10_16_220147_create_ticket_types_table',1),('2016_10_16_220159_create_maaltijd_types_table',1),('2016_10_16_220640_create_tickets_table',1),('2016_10_16_220648_create_maaltijds_table',1),('2016_10_16_221119_create_zaals_table',1),('2016_10_16_221240_create_statuses_table',1),('2016_10_16_221350_create_agendas_table',1),('2016_10_16_221825_create_slots_table',1),('2016_10_16_222126_create_tags_table',1),('2016_10_16_222246_create_slot_tags_table',1),('2016_10_16_222412_create_wensens_table',1),('2016_10_16_222621_create_aanmeldings_table',1),('2016_10_16_223039_create_aanmelding_wens_table',1),('2016_10_28_115321_create_bijeenkomsts_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserverings`
--

DROP TABLE IF EXISTS `reserverings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reserverings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(10) unsigned NOT NULL,
  `betaalmethode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `totale_prijs` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reserverings_user_foreign` (`user`),
  CONSTRAINT `reserverings_user_foreign` FOREIGN KEY (`user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserverings`
--

LOCK TABLES `reserverings` WRITE;
/*!40000 ALTER TABLE `reserverings` DISABLE KEYS */;
INSERT INTO `reserverings` VALUES (1,30,'IDeal',50.00,NULL,NULL),(2,31,'IDeal',50.00,NULL,NULL),(3,32,'IDeal',50.00,NULL,NULL),(4,33,'IDeal',50.00,NULL,NULL),(5,34,'IDeal',50.00,NULL,NULL),(6,35,'IDeal',50.00,NULL,NULL),(7,36,'IDeal',50.00,NULL,NULL),(8,37,'IDeal',50.00,NULL,NULL),(9,38,'IDeal',50.00,NULL,NULL),(10,39,'IDeal',50.00,NULL,NULL),(11,40,'IDeal',50.00,NULL,NULL),(12,41,'IDeal',50.00,NULL,NULL),(13,42,'IDeal',50.00,NULL,NULL),(14,44,'IDeal',50.00,NULL,NULL),(15,45,'IDeal',50.00,NULL,NULL),(16,46,'IDeal',50.00,NULL,NULL),(17,47,'IDeal',50.00,NULL,NULL),(18,49,'IDeal',50.00,NULL,NULL),(19,51,'IDeal',50.00,NULL,NULL),(20,57,'IDeal',50.00,NULL,NULL),(21,58,'IDeal',50.00,NULL,NULL),(22,60,'IDeal',50.00,NULL,NULL),(23,61,'IDeal',50.00,NULL,NULL),(24,62,'IDeal',50.00,NULL,NULL),(25,63,'IDeal',50.00,NULL,NULL),(26,64,'IDeal',50.00,NULL,NULL),(27,65,'IDeal',50.00,NULL,NULL),(28,66,'IDeal',50.00,NULL,NULL),(29,67,'IDeal',50.00,NULL,NULL),(30,68,'IDeal',50.00,NULL,NULL),(31,69,'IDeal',50.00,NULL,NULL),(32,70,'IDeal',50.00,NULL,NULL),(33,71,'IDeal',50.00,NULL,NULL),(34,72,'IDeal',50.00,NULL,NULL),(35,73,'IDeal',50.00,NULL,NULL),(36,74,'IDeal',50.00,NULL,NULL),(37,75,'IDeal',50.00,NULL,NULL),(38,76,'IDeal',50.00,NULL,NULL),(39,77,'IDeal',50.00,NULL,NULL),(40,78,'IDeal',50.00,NULL,NULL),(41,79,'IDeal',50.00,NULL,NULL),(42,80,'IDeal',50.00,NULL,NULL),(43,81,'IDeal',50.00,NULL,NULL),(44,82,'IDeal',50.00,NULL,NULL),(45,83,'IDeal',50.00,NULL,NULL),(46,84,'IDeal',50.00,NULL,NULL),(47,85,'IDeal',50.00,NULL,NULL),(48,86,'IDeal',50.00,NULL,NULL),(49,87,'IDeal',50.00,NULL,NULL),(50,88,'IDeal',50.00,NULL,NULL),(51,89,'IDeal',50.00,NULL,NULL),(52,90,'IDeal',50.00,NULL,NULL),(53,91,'IDeal',50.00,NULL,NULL),(54,92,'IDeal',50.00,NULL,NULL),(55,93,'IDeal',50.00,NULL,NULL),(56,94,'IDeal',50.00,NULL,NULL),(57,95,'IDeal',50.00,NULL,NULL),(58,96,'IDeal',50.00,NULL,NULL),(59,97,'IDeal',50.00,NULL,NULL),(60,98,'IDeal',50.00,NULL,NULL),(61,99,'IDeal',50.00,NULL,NULL),(62,100,'IDeal',50.00,NULL,NULL),(63,101,'IDeal',50.00,NULL,NULL),(64,102,'IDeal',50.00,NULL,NULL),(65,103,'IDeal',50.00,NULL,NULL),(66,104,'IDeal',50.00,NULL,NULL),(67,105,'IDeal',50.00,NULL,NULL),(68,106,'IDeal',50.00,NULL,NULL),(69,107,'IDeal',50.00,NULL,NULL),(70,108,'IDeal',50.00,NULL,NULL),(71,109,'IDeal',50.00,NULL,NULL),(72,110,'IDeal',50.00,NULL,NULL),(73,111,'IDeal',50.00,NULL,NULL),(74,112,'IDeal',50.00,NULL,NULL),(75,113,'IDeal',50.00,NULL,NULL),(76,114,'IDeal',50.00,NULL,NULL),(77,115,'IDeal',50.00,NULL,NULL),(78,116,'IDeal',50.00,NULL,NULL),(79,117,'IDeal',50.00,NULL,NULL),(80,118,'IDeal',50.00,NULL,NULL),(81,119,'IDeal',50.00,NULL,NULL),(82,120,'IDeal',50.00,NULL,NULL),(83,121,'IDeal',50.00,NULL,NULL),(84,122,'IDeal',50.00,NULL,NULL),(85,123,'IDeal',50.00,NULL,NULL),(86,124,'IDeal',50.00,NULL,NULL),(87,125,'IDeal',50.00,NULL,NULL),(88,126,'IDeal',50.00,NULL,NULL),(89,127,'IDeal',50.00,NULL,NULL),(90,128,'IDeal',50.00,NULL,NULL),(91,129,'IDeal',50.00,NULL,NULL),(92,130,'IDeal',50.00,NULL,NULL),(93,131,'IDeal',50.00,NULL,NULL),(94,132,'IDeal',50.00,NULL,NULL),(95,133,'IDeal',50.00,NULL,NULL),(96,134,'IDeal',50.00,NULL,NULL),(97,135,'IDeal',50.00,NULL,NULL),(98,136,'IDeal',50.00,NULL,NULL),(99,137,'IDeal',50.00,NULL,NULL),(100,138,'IDeal',50.00,NULL,NULL),(101,139,'IDeal',50.00,NULL,NULL),(102,140,'IDeal',50.00,NULL,NULL),(103,141,'IDeal',50.00,NULL,NULL),(104,142,'IDeal',50.00,NULL,NULL),(105,143,'IDeal',50.00,NULL,NULL),(106,144,'IDeal',50.00,NULL,NULL),(107,145,'IDeal',50.00,NULL,NULL),(108,146,'IDeal',50.00,NULL,NULL),(109,147,'IDeal',50.00,NULL,NULL),(110,148,'IDeal',50.00,NULL,NULL),(111,149,'IDeal',50.00,NULL,NULL),(112,150,'IDeal',50.00,NULL,NULL),(113,151,'IDeal',50.00,NULL,NULL),(114,152,'IDeal',50.00,NULL,NULL),(115,153,'IDeal',50.00,NULL,NULL),(116,154,'IDeal',50.00,NULL,NULL),(117,155,'IDeal',50.00,NULL,NULL),(118,156,'IDeal',50.00,NULL,NULL),(119,157,'IDeal',50.00,NULL,NULL),(120,158,'IDeal',50.00,NULL,NULL),(121,159,'IDeal',50.00,NULL,NULL),(122,160,'IDeal',50.00,NULL,NULL),(123,161,'IDeal',50.00,NULL,NULL),(124,162,'IDeal',50.00,NULL,NULL),(125,163,'IDeal',50.00,NULL,NULL),(126,164,'IDeal',50.00,NULL,NULL),(127,165,'IDeal',50.00,NULL,NULL),(128,166,'IDeal',50.00,NULL,NULL),(129,167,'IDeal',50.00,NULL,NULL),(130,168,'IDeal',50.00,NULL,NULL),(131,169,'IDeal',50.00,NULL,NULL),(132,170,'IDeal',50.00,NULL,NULL),(133,171,'IDeal',50.00,NULL,NULL),(134,172,'IDeal',50.00,NULL,NULL),(135,173,'IDeal',50.00,NULL,NULL),(136,174,'IDeal',50.00,NULL,NULL),(137,175,'IDeal',50.00,NULL,NULL),(138,176,'IDeal',50.00,NULL,NULL),(139,177,'IDeal',50.00,NULL,NULL),(140,178,'IDeal',50.00,NULL,NULL),(141,179,'IDeal',50.00,NULL,NULL),(142,180,'IDeal',50.00,NULL,NULL),(143,181,'IDeal',50.00,NULL,NULL),(144,182,'IDeal',50.00,NULL,NULL),(145,183,'IDeal',50.00,NULL,NULL),(146,184,'IDeal',50.00,NULL,NULL),(147,185,'IDeal',50.00,NULL,NULL),(148,186,'IDeal',50.00,NULL,NULL),(149,187,'IDeal',50.00,NULL,NULL),(150,188,'IDeal',50.00,NULL,NULL),(151,189,'IDeal',50.00,NULL,NULL),(152,190,'IDeal',50.00,NULL,NULL),(153,191,'IDeal',50.00,NULL,NULL),(154,192,'IDeal',50.00,NULL,NULL),(155,193,'IDeal',50.00,NULL,NULL),(156,194,'IDeal',50.00,NULL,NULL),(157,195,'IDeal',50.00,NULL,NULL),(158,196,'IDeal',50.00,NULL,NULL),(159,197,'IDeal',50.00,NULL,NULL),(160,198,'IDeal',50.00,NULL,NULL),(161,199,'IDeal',50.00,NULL,NULL),(162,200,'IDeal',50.00,NULL,NULL),(163,201,'IDeal',50.00,NULL,NULL),(164,202,'IDeal',50.00,NULL,NULL),(165,203,'IDeal',50.00,NULL,NULL),(166,204,'IDeal',50.00,NULL,NULL),(167,205,'IDeal',50.00,NULL,NULL),(168,206,'IDeal',50.00,NULL,NULL),(169,207,'IDeal',50.00,NULL,NULL),(170,208,'IDeal',50.00,NULL,NULL),(171,209,'IDeal',50.00,NULL,NULL),(172,210,'IDeal',50.00,NULL,NULL),(173,211,'IDeal',50.00,NULL,NULL),(174,212,'IDeal',50.00,NULL,NULL),(175,213,'IDeal',50.00,NULL,NULL),(176,214,'IDeal',50.00,NULL,NULL),(177,215,'IDeal',50.00,NULL,NULL),(178,216,'IDeal',50.00,NULL,NULL),(179,217,'IDeal',50.00,NULL,NULL),(180,218,'IDeal',50.00,NULL,NULL),(181,219,'IDeal',50.00,NULL,NULL),(182,228,'IDeal',50.00,NULL,NULL),(183,229,'IDeal',50.00,NULL,NULL),(184,230,'IDeal',50.00,NULL,NULL),(185,231,'IDeal',50.00,NULL,NULL),(186,232,'IDeal',50.00,NULL,NULL),(187,233,'IDeal',50.00,NULL,NULL),(188,234,'IDeal',50.00,NULL,NULL),(189,235,'IDeal',50.00,NULL,NULL),(190,237,'IDeal',50.00,NULL,NULL),(191,238,'IDeal',50.00,NULL,NULL),(192,239,'IDeal',50.00,NULL,NULL),(193,240,'IDeal',50.00,NULL,NULL),(194,241,'IDeal',50.00,NULL,NULL),(195,242,'IDeal',50.00,NULL,NULL),(196,243,'IDeal',50.00,NULL,NULL),(197,244,'IDeal',50.00,NULL,NULL),(198,245,'IDeal',50.00,NULL,NULL),(199,246,'IDeal',50.00,NULL,NULL),(200,247,'IDeal',50.00,NULL,NULL),(201,248,'IDeal',50.00,NULL,NULL),(202,271,'IDeal',50.00,NULL,NULL),(203,273,'IDeal',50.00,NULL,NULL),(204,275,'IDeal',50.00,NULL,NULL),(205,276,'IDeal',50.00,NULL,NULL),(206,277,'IDeal',50.00,NULL,NULL),(207,278,'IDeal',50.00,NULL,NULL),(208,279,'IDeal',50.00,NULL,NULL),(209,280,'IDeal',50.00,NULL,NULL),(210,282,'IDeal',50.00,NULL,NULL),(211,283,'IDeal',50.00,NULL,NULL),(212,284,'IDeal',50.00,NULL,NULL),(213,286,'IDeal',50.00,NULL,NULL),(214,287,'IDeal',50.00,NULL,NULL),(215,288,'IDeal',50.00,NULL,NULL),(216,289,'IDeal',50.00,NULL,NULL),(217,290,'IDeal',50.00,NULL,NULL),(218,291,'IDeal',50.00,NULL,NULL),(219,292,'IDeal',50.00,NULL,NULL),(220,293,'IDeal',50.00,NULL,NULL),(221,294,'IDeal',50.00,NULL,NULL),(222,295,'IDeal',50.00,NULL,NULL),(223,296,'IDeal',50.00,NULL,NULL),(224,297,'IDeal',50.00,NULL,NULL),(225,298,'IDeal',50.00,NULL,NULL),(226,299,'IDeal',50.00,NULL,NULL),(227,300,'IDeal',50.00,NULL,NULL),(228,301,'IDeal',50.00,NULL,NULL),(229,302,'IDeal',50.00,NULL,NULL),(230,303,'IDeal',50.00,NULL,NULL),(231,304,'IDeal',50.00,NULL,NULL),(232,305,'IDeal',50.00,NULL,NULL),(233,306,'IDeal',50.00,NULL,NULL),(234,308,'IDeal',50.00,NULL,NULL),(235,309,'IDeal',50.00,NULL,NULL),(236,310,'IDeal',50.00,NULL,NULL),(237,311,'IDeal',50.00,NULL,NULL),(238,312,'IDeal',50.00,NULL,NULL),(239,313,'IDeal',50.00,NULL,NULL),(240,314,'IDeal',50.00,NULL,NULL),(241,315,'IDeal',50.00,NULL,NULL),(242,316,'IDeal',50.00,NULL,NULL),(243,319,'IDeal',50.00,NULL,NULL),(244,320,'IDeal',50.00,NULL,NULL),(245,321,'IDeal',50.00,NULL,NULL),(246,322,'IDeal',50.00,NULL,NULL),(247,323,'IDeal',50.00,NULL,NULL),(248,324,'IDeal',50.00,NULL,NULL),(249,325,'IDeal',50.00,NULL,NULL),(250,326,'IDeal',50.00,NULL,NULL),(251,327,'IDeal',50.00,NULL,NULL),(252,328,'IDeal',50.00,NULL,NULL),(253,329,'IDeal',50.00,NULL,NULL),(254,330,'IDeal',50.00,NULL,NULL),(255,331,'IDeal',50.00,NULL,NULL),(256,332,'IDeal',50.00,NULL,NULL),(257,333,'IDeal',50.00,NULL,NULL),(258,334,'IDeal',50.00,NULL,NULL),(259,335,'IDeal',50.00,NULL,NULL),(260,336,'IDeal',50.00,NULL,NULL),(261,337,'IDeal',50.00,NULL,NULL),(262,338,'IDeal',50.00,NULL,NULL),(263,339,'IDeal',50.00,NULL,NULL),(264,340,'IDeal',50.00,NULL,NULL),(265,341,'IDeal',50.00,NULL,NULL),(266,342,'IDeal',50.00,NULL,NULL),(267,343,'IDeal',50.00,NULL,NULL),(268,344,'IDeal',50.00,NULL,NULL),(269,345,'IDeal',50.00,NULL,NULL),(270,346,'IDeal',50.00,NULL,NULL),(271,347,'IDeal',50.00,NULL,NULL),(272,348,'IDeal',50.00,NULL,NULL),(273,349,'IDeal',50.00,NULL,NULL),(274,350,'IDeal',50.00,NULL,NULL),(275,351,'IDeal',50.00,NULL,NULL),(276,352,'IDeal',50.00,NULL,NULL),(277,353,'IDeal',50.00,NULL,NULL),(278,354,'IDeal',50.00,NULL,NULL),(279,355,'IDeal',50.00,NULL,NULL),(280,356,'IDeal',50.00,NULL,NULL),(281,357,'IDeal',50.00,NULL,NULL),(282,358,'IDeal',50.00,NULL,NULL),(283,359,'IDeal',50.00,NULL,NULL),(284,360,'IDeal',50.00,NULL,NULL),(285,361,'IDeal',50.00,NULL,NULL),(286,362,'IDeal',50.00,NULL,NULL),(287,363,'IDeal',50.00,NULL,NULL),(288,364,'IDeal',50.00,NULL,NULL),(289,366,'IDeal',100.00,NULL,NULL),(290,367,'IDeal',130.00,NULL,NULL),(291,368,'IDeal',150.00,NULL,NULL),(292,369,'IDeal',130.00,NULL,NULL),(293,370,'IDeal',200.00,NULL,NULL);
/*!40000 ALTER TABLE `reserverings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'organisator','2016-10-17 21:25:27','2016-10-17 21:25:27'),(2,'bezoeker','2016-10-17 21:25:27','2016-10-17 21:25:27'),(3,'spreker','2016-10-17 21:25:27','2016-10-17 21:25:27');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slot_tags`
--

DROP TABLE IF EXISTS `slot_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slot_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slot` int(10) unsigned NOT NULL,
  `tag` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slot_tags_slot_foreign` (`slot`),
  KEY `slot_tags_tag_foreign` (`tag`),
  CONSTRAINT `slot_tags_slot_foreign` FOREIGN KEY (`slot`) REFERENCES `slots` (`id`),
  CONSTRAINT `slot_tags_tag_foreign` FOREIGN KEY (`tag`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slot_tags`
--

LOCK TABLES `slot_tags` WRITE;
/*!40000 ALTER TABLE `slot_tags` DISABLE KEYS */;
INSERT INTO `slot_tags` VALUES (5,56,1,'2016-10-30 19:25:09','2016-10-30 19:25:09'),(6,56,3,'2016-10-30 19:25:09','2016-10-30 19:25:09'),(7,56,5,'2016-10-30 19:25:09','2016-10-30 19:25:09'),(8,55,1,'2016-10-30 20:06:57','2016-10-30 20:06:57'),(9,55,2,'2016-10-30 20:06:57','2016-10-30 20:06:57'),(10,55,4,'2016-10-30 20:06:57','2016-10-30 20:06:57'),(11,4,4,'2016-11-02 20:00:26','2016-11-02 20:00:26'),(12,4,37,'2016-11-02 20:00:26','2016-11-02 20:00:26'),(13,4,2,'2016-11-02 20:00:26','2016-11-02 20:00:26'),(14,9,25,'2016-11-02 20:01:03','2016-11-02 20:01:03'),(15,9,29,'2016-11-02 20:01:03','2016-11-02 20:01:03'),(16,9,42,'2016-11-02 20:01:03','2016-11-02 20:01:03'),(17,19,33,'2016-11-02 20:01:30','2016-11-02 20:01:30'),(18,19,2,'2016-11-02 20:01:30','2016-11-02 20:01:30'),(19,19,29,'2016-11-02 20:01:30','2016-11-02 20:01:30'),(20,14,6,'2016-11-02 20:01:51','2016-11-02 20:01:51'),(21,14,1,'2016-11-02 20:01:51','2016-11-02 20:01:51'),(22,14,1,'2016-11-02 20:01:51','2016-11-02 20:01:51'),(23,10,6,'2016-11-02 20:03:42','2016-11-02 20:03:42'),(24,10,9,'2016-11-02 20:03:42','2016-11-02 20:03:42'),(25,10,35,'2016-11-02 20:03:42','2016-11-02 20:03:42'),(26,24,2,'2016-11-02 20:05:58','2016-11-02 20:05:58'),(27,24,33,'2016-11-02 20:05:58','2016-11-02 20:05:58'),(28,24,43,'2016-11-02 20:05:58','2016-11-02 20:05:58'),(29,30,41,'2016-11-02 20:06:23','2016-11-02 20:06:23'),(30,30,29,'2016-11-02 20:06:23','2016-11-02 20:06:23'),(31,30,43,'2016-11-02 20:06:23','2016-11-02 20:06:23'),(32,41,35,'2016-11-02 20:06:41','2016-11-02 20:06:41'),(33,41,2,'2016-11-02 20:06:41','2016-11-02 20:06:41'),(34,41,43,'2016-11-02 20:06:41','2016-11-02 20:06:41'),(35,46,36,'2016-11-02 20:07:05','2016-11-02 20:07:05'),(36,46,2,'2016-11-02 20:07:05','2016-11-02 20:07:05'),(37,46,43,'2016-11-02 20:07:05','2016-11-02 20:07:05'),(38,64,5,'2016-11-02 20:08:14','2016-11-02 20:08:14'),(39,64,29,'2016-11-02 20:08:14','2016-11-02 20:08:14'),(40,64,43,'2016-11-02 20:08:14','2016-11-02 20:08:14'),(41,58,11,'2016-11-02 20:08:35','2016-11-02 20:08:35'),(42,58,29,'2016-11-02 20:08:35','2016-11-02 20:08:35'),(43,58,43,'2016-11-02 20:08:35','2016-11-02 20:08:35'),(44,67,3,'2016-11-02 20:09:23','2016-11-02 20:09:23'),(45,67,29,'2016-11-02 20:09:23','2016-11-02 20:09:23'),(46,67,43,'2016-11-02 20:09:23','2016-11-02 20:09:23'),(47,63,40,'2016-11-02 20:09:47','2016-11-02 20:09:47'),(48,63,6,'2016-11-02 20:09:47','2016-11-02 20:09:47'),(49,63,43,'2016-11-02 20:09:47','2016-11-02 20:09:47'),(50,36,4,'2016-11-02 22:31:12','2016-11-02 22:31:12'),(51,36,29,'2016-11-02 22:31:12','2016-11-02 22:31:12'),(52,36,34,'2016-11-02 22:31:12','2016-11-02 22:31:12'),(53,28,2,'2016-11-03 08:51:55','2016-11-03 08:51:55'),(54,28,33,'2016-11-03 08:51:55','2016-11-03 08:51:55'),(55,28,4,'2016-11-03 08:51:55','2016-11-03 08:51:55'),(56,27,2,'2016-11-03 10:27:19','2016-11-03 10:27:19'),(57,27,39,'2016-11-03 10:27:19','2016-11-03 10:27:19'),(58,27,43,'2016-11-03 10:27:19','2016-11-03 10:27:19'),(59,48,12,'2016-11-03 10:28:39','2016-11-03 10:28:39'),(60,48,29,'2016-11-03 10:28:39','2016-11-03 10:28:39'),(61,48,43,'2016-11-03 10:28:39','2016-11-03 10:28:39'),(62,21,2,'2016-11-03 10:47:40','2016-11-03 10:47:40'),(63,21,33,'2016-11-03 10:47:40','2016-11-03 10:47:40'),(64,21,29,'2016-11-03 10:47:40','2016-11-03 10:47:40'),(65,22,2,'2017-03-01 15:14:28','2017-03-01 15:14:28'),(66,22,3,'2017-03-01 15:14:28','2017-03-01 15:14:28'),(67,22,4,'2017-03-01 15:14:28','2017-03-01 15:14:28'),(68,1,2,'2017-04-28 14:46:32','2017-04-28 14:46:32'),(69,1,15,'2017-04-28 14:46:32','2017-04-28 14:46:32'),(70,1,10,'2017-04-28 14:46:33','2017-04-28 14:46:33');
/*!40000 ALTER TABLE `slot_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slots`
--

DROP TABLE IF EXISTS `slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slots` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zaal` int(10) unsigned NOT NULL,
  `agenda` int(10) unsigned NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `begintijd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `eindtijd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slots_zaal_foreign` (`zaal`),
  KEY `slots_agenda_foreign` (`agenda`),
  KEY `slots_status_foreign` (`status`),
  CONSTRAINT `slots_agenda_foreign` FOREIGN KEY (`agenda`) REFERENCES `agendas` (`id`),
  CONSTRAINT `slots_status_foreign` FOREIGN KEY (`status`) REFERENCES `statuses` (`id`),
  CONSTRAINT `slots_zaal_foreign` FOREIGN KEY (`zaal`) REFERENCES `zaals` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slots`
--

LOCK TABLES `slots` WRITE;
/*!40000 ALTER TABLE `slots` DISABLE KEYS */;
INSERT INTO `slots` VALUES (1,1,1,3,'15:30','16:30','vrijdag','2016-10-19 00:14:42','2016-10-19 00:14:42'),(2,1,1,1,'16:45','17:45','vrijdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(3,1,1,2,'18:45','19:45','vrijdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(4,1,1,3,'20:00','21:00','vrijdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(5,1,1,1,'21:30','22:30','vrijdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(6,2,1,1,'15:30','16:30','vrijdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(7,2,1,1,'16:45','17:45','vrijdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(8,2,1,1,'18:45','19:45','vrijdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(9,2,1,3,'20:00','21:00','vrijdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(10,2,1,3,'21:30','22:30','vrijdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(11,3,1,1,'15:30','16:30','vrijdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(12,3,1,1,'16:45','17:45','vrijdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(13,3,1,1,'18:45','19:45','vrijdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(14,3,1,3,'20:00','21:00','vrijdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(15,3,1,1,'21:30','22:30','vrijdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(16,4,1,1,'15:30','16:30','vrijdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(17,4,1,1,'16:45','17:45','vrijdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(18,4,1,1,'18:45','19:45','vrijdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(19,4,1,3,'20:00','21:00','vrijdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(20,4,1,1,'21:30','22:30','vrijdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(21,1,1,3,'10:15','11:15','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(22,1,1,3,'11:30','12:30','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(23,1,1,2,'13:00','14:00','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(24,1,1,3,'14:15','15:30','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(25,1,1,1,'15:30','16:30','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(26,1,1,1,'16:45','17:45','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(27,1,1,3,'18:45','19:45','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(28,1,1,3,'20:00','21:00','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(29,1,1,1,'21:30','22:30','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(30,2,1,3,'10:15','11:15','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(31,2,1,1,'11:30','12:30','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(32,2,1,1,'13:00','14:00','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(33,2,1,1,'14:15','15:30','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(34,2,1,1,'15:30','16:30','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(35,2,1,1,'16:45','17:45','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(36,2,1,3,'18:45','19:45','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(37,2,1,2,'20:00','21:00','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(38,2,1,1,'21:30','22:30','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(39,3,1,1,'10:15','11:15','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(40,3,1,1,'11:30','12:30','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(41,3,1,3,'13:00','14:00','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(42,3,1,1,'14:15','15:30','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(43,3,1,2,'15:30','16:30','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(44,3,1,1,'16:45','17:45','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(45,3,1,1,'18:45','19:45','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(46,3,1,3,'20:00','21:00','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(47,3,1,1,'21:30','22:30','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(48,4,1,3,'10:15','11:15','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(49,4,1,1,'11:30','12:30','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(50,4,1,1,'13:00','14:00','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(51,4,1,1,'14:15','15:30','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(52,4,1,1,'15:30','16:30','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(53,4,1,1,'16:45','17:45','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(54,4,1,2,'18:45','19:45','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(55,4,1,2,'20:00','21:00','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(56,4,1,1,'21:30','22:30','zaterdag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(57,1,1,1,'12:15','13:15','zondag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(58,1,1,3,'13:30','14:30','zondag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(59,1,1,1,'15:00','16:00','zondag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(60,1,1,1,'16:15','17:15','zondag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(61,2,1,1,'12:15','13:15','zondag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(62,2,1,1,'13:30','14:30','zondag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(63,2,1,3,'15:00','16:00','zondag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(64,2,1,3,'16:15','17:15','zondag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(65,3,1,1,'12:15','13:15','zondag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(66,3,1,1,'13:30','14:30','zondag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(67,3,1,3,'15:00','16:00','zondag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(68,3,1,1,'16:15','17:15','zondag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(69,4,1,1,'12:15','13:15','zondag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(70,4,1,2,'13:30','14:30','zondag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(71,4,1,2,'15:00','16:00','zondag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(72,4,1,1,'16:15','17:15','zondag','2016-10-19 00:14:43','2016-10-19 00:14:43'),(73,1,1,1,'15:30','16:30','vrijdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(74,1,1,1,'16:45','17:45','vrijdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(75,1,1,1,'18:45','19:45','vrijdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(76,1,1,1,'20:00','21:00','vrijdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(77,1,1,1,'21:30','22:30','vrijdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(78,2,1,1,'15:30','16:30','vrijdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(79,2,1,1,'16:45','17:45','vrijdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(80,2,1,1,'18:45','19:45','vrijdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(81,2,1,1,'20:00','21:00','vrijdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(82,2,1,1,'21:30','22:30','vrijdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(83,3,1,1,'15:30','16:30','vrijdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(84,3,1,1,'16:45','17:45','vrijdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(85,3,1,1,'18:45','19:45','vrijdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(86,3,1,1,'20:00','21:00','vrijdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(87,3,1,1,'21:30','22:30','vrijdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(88,4,1,1,'15:30','16:30','vrijdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(89,4,1,1,'16:45','17:45','vrijdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(90,4,1,1,'18:45','19:45','vrijdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(91,4,1,1,'20:00','21:00','vrijdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(92,4,1,1,'21:30','22:30','vrijdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(93,1,1,1,'10:15','11:15','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(94,1,1,1,'11:30','12:30','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(95,1,1,1,'13:00','14:00','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(96,1,1,1,'14:15','15:30','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(97,1,1,1,'15:30','16:30','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(98,1,1,1,'16:45','17:45','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(99,1,1,1,'18:45','19:45','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(100,1,1,1,'20:00','21:00','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(101,1,1,1,'21:30','22:30','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(102,2,1,1,'10:15','11:15','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(103,2,1,1,'11:30','12:30','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(104,2,1,1,'13:00','14:00','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(105,2,1,1,'14:15','15:30','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(106,2,1,1,'15:30','16:30','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(107,2,1,1,'16:45','17:45','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(108,2,1,1,'18:45','19:45','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(109,2,1,1,'20:00','21:00','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(110,2,1,1,'21:30','22:30','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(111,3,1,1,'10:15','11:15','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(112,3,1,1,'11:30','12:30','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(113,3,1,1,'13:00','14:00','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(114,3,1,1,'14:15','15:30','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(115,3,1,1,'15:30','16:30','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(116,3,1,1,'16:45','17:45','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(117,3,1,1,'18:45','19:45','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(118,3,1,1,'20:00','21:00','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(119,3,1,1,'21:30','22:30','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(120,4,1,1,'10:15','11:15','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(121,4,1,1,'11:30','12:30','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(122,4,1,1,'13:00','14:00','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(123,4,1,1,'14:15','15:30','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(124,4,1,1,'15:30','16:30','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(125,4,1,1,'16:45','17:45','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(126,4,1,1,'18:45','19:45','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(127,4,1,1,'20:00','21:00','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(128,4,1,1,'21:30','22:30','zaterdag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(129,1,1,1,'12:15','13:15','zondag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(130,1,1,1,'13:30','14:30','zondag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(131,1,1,1,'15:00','16:00','zondag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(132,1,1,1,'16:15','17:15','zondag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(133,2,1,1,'12:15','13:15','zondag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(134,2,1,1,'13:30','14:30','zondag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(135,2,1,1,'15:00','16:00','zondag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(136,2,1,1,'16:15','17:15','zondag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(137,3,1,1,'12:15','13:15','zondag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(138,3,1,1,'13:30','14:30','zondag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(139,3,1,1,'15:00','16:00','zondag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(140,3,1,1,'16:15','17:15','zondag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(141,4,1,1,'12:15','13:15','zondag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(142,4,1,1,'13:30','14:30','zondag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(143,4,1,1,'15:00','16:00','zondag','2017-05-06 15:52:12','2017-05-06 15:52:12'),(144,4,1,1,'16:15','17:15','zondag','2017-05-06 15:52:12','2017-05-06 15:52:12');
/*!40000 ALTER TABLE `slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES (1,'vrij'),(2,'onder voorbehoud'),(3,'bezet');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag_naam` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Javascript'),(2,'PHP'),(3,'Angular'),(4,'Jquery'),(5,'Git'),(6,'Linux'),(7,'SQL'),(8,'C'),(9,'C++'),(10,'GO'),(11,'Java'),(12,'Python'),(13,'BigTable'),(14,'MariaDB'),(15,'Hack'),(16,'Erlang'),(17,'Xhp'),(18,'Haskell'),(19,'Perl'),(20,'Mysql'),(21,'PostgreSQL'),(22,'HBase'),(23,'Cassandra'),(24,'Scala'),(25,'Ruby'),(26,'ASP.NET'),(27,'Django'),(28,'MariaDB'),(29,'Windows'),(30,'OSX'),(33,'Laravel'),(34,'Symfony'),(35,'CakePHP'),(36,'Zend'),(37,'Wordpress'),(38,'Modx'),(39,'Drupal'),(40,'JSON'),(41,'C#'),(42,'MongoDB'),(43,'noTag'),(44,'C'),(45,'C++'),(46,'GO'),(47,'Java'),(48,'Python'),(49,'BigTable'),(50,'MariaDB'),(51,'Hack'),(52,'Erlang'),(53,'Xhp'),(54,'Haskell'),(55,'Perl'),(56,'Mysql'),(57,'PostgreSQL'),(58,'HBase'),(59,'Cassandra'),(60,'Scala'),(61,'Ruby'),(62,'ASP.NET'),(63,'Django'),(64,'MariaDB');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_types`
--

DROP TABLE IF EXISTS `ticket_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_naam` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prijs` double(8,2) NOT NULL,
  `aantal_beschikbaar` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_types`
--

LOCK TABLES `ticket_types` WRITE;
/*!40000 ALTER TABLE `ticket_types` DISABLE KEYS */;
INSERT INTO `ticket_types` VALUES (1,'vrijdag',45.00,247),(2,'zaterdag',60.00,249),(3,'zondag',30.00,250),(4,'weekend',80.00,0),(5,'passe-partout',100.00,0),(6,'netwerkbijeenkomst',25.00,64);
/*!40000 ALTER TABLE `ticket_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_type` int(10) unsigned NOT NULL,
  `reservering` int(10) unsigned NOT NULL,
  `ticketcode` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_ticket_type_foreign` (`ticket_type`),
  KEY `tickets_reservering_foreign` (`reservering`),
  CONSTRAINT `tickets_reservering_foreign` FOREIGN KEY (`reservering`) REFERENCES `reserverings` (`id`),
  CONSTRAINT `tickets_ticket_type_foreign` FOREIGN KEY (`ticket_type`) REFERENCES `ticket_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=610 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (591,1,285,1361285,'2017-05-15 19:21:59','2017-05-15 19:21:59'),(592,3,286,2147483647,'2017-05-15 19:23:24','2017-05-15 19:23:24'),(593,3,286,2147483647,'2017-05-15 19:23:24','2017-05-15 19:23:24'),(594,3,287,2147483647,'2017-05-16 10:46:51','2017-05-16 10:46:51'),(595,3,287,2147483647,'2017-05-16 10:46:51','2017-05-16 10:46:51'),(596,3,288,2147483647,'2017-05-17 15:44:08','2017-05-17 15:44:08'),(597,3,288,2147483647,'2017-05-17 15:44:08','2017-05-17 15:44:08'),(598,3,289,2147483647,'2017-05-17 18:00:23','2017-05-17 18:00:23'),(599,3,289,2147483647,'2017-05-17 18:00:23','2017-05-17 18:00:23'),(600,3,290,2147483647,'2017-05-17 18:02:45','2017-05-17 18:02:45'),(601,3,290,2147483647,'2017-05-17 18:02:45','2017-05-17 18:02:45'),(602,3,290,2147483647,'2017-05-17 18:02:45','2017-05-17 18:02:45'),(603,4,291,2147483647,'2017-05-17 18:04:05','2017-05-17 18:04:05'),(604,3,291,2147483647,'2017-05-17 18:04:05','2017-05-17 18:04:05'),(605,3,292,2147483647,'2017-05-17 18:12:08','2017-05-17 18:12:08'),(606,3,292,2147483647,'2017-05-17 18:12:08','2017-05-17 18:12:08'),(607,3,292,2147483647,'2017-05-17 18:12:08','2017-05-17 18:12:08'),(608,4,293,2147483647,'2017-05-17 18:13:15','2017-05-17 18:13:15'),(609,4,293,2147483647,'2017-05-17 18:13:15','2017-05-17 18:13:15');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role` int(10) unsigned NOT NULL,
  `naam` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tussenvoegsel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `achternaam` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telnummer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adres` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `woonplaats` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gebruikersnaam` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_role_foreign` (`role`),
  CONSTRAINT `users_role_foreign` FOREIGN KEY (`role`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=373 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,3,'danny','de','cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','organisator','$2y$10$4bDa7aMlzeUIU2st2vRaJu2sTap3MuDVAq/A1y8wZCtOiVjMMP90u','3gSAAbMzaeYzPSVpba16KNbPMz3Iss2S0zT2jFft7P54rlLYMYAGJyOjRjtV','2016-10-17 21:28:11','2017-03-03 14:02:35'),(17,2,'Hans','ketchup','danny','dnny.danny.nl','06853626272','Riojagaard 6','Woerden','','',NULL,'2016-10-23 13:54:01','2016-10-23 13:54:01'),(18,2,'danny','','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,'2016-10-23 14:56:56','2016-10-23 14:56:56'),(19,2,'Danny','de','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,'2016-10-23 15:04:24','2016-10-23 15:04:24'),(20,2,'Harambe','Harambe','Harambe','Harambe@harambe.nl','0685837382','Riojagaard 6','Woerden','','',NULL,'2016-10-23 15:42:38','2016-10-23 15:42:38'),(21,2,'Danny','de','Cao','danny.dc.cao@gmail.com','06854545','','','','',NULL,'2016-10-23 15:46:49','2016-10-23 15:46:49'),(22,2,'Harambe','Harambe','Daanny','Danny.dc.cao@gmail.com','06565656','Riojagaard 6','Woerden','','',NULL,'2016-10-23 15:48:35','2016-10-23 15:48:35'),(23,2,'Harambe','Harambe','Harambe','danny.dc.cao@gmail.com','0685362627','Adres','Woerden','','',NULL,'2016-10-23 15:54:30','2016-10-23 15:54:30'),(24,2,'Hasan','de','Cao','danny.dc.cao@gmail.com','0685377227','Riojagaard 6','Woerden','','',NULL,'2016-10-23 16:01:24','2016-10-23 16:01:24'),(25,2,'Harambe','Harambe','Harambe','danny.dc.cao@gmail.com','068537273','Riojagaard 6','Woerden','','',NULL,'2016-10-23 16:04:13','2016-10-23 16:04:13'),(26,1,'pokkiy','de','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(27,1,'pokkiy','de','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(28,1,'pokkiy','de','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(29,1,'Danny','de','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(30,1,'Pokkkkk','dasdnasd','ndsaudnsau','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(31,1,'Danny','de','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(32,1,'danny','de','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(33,1,'danny','de','achternaam','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(34,1,'danny','de','','danny@danny.nl','','','','','',NULL,NULL,NULL),(35,1,'danny','','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(36,1,'danny','','danny','Danny.dc.cao@gmail.com','+31685362627','Riojagaard, wd','Woerden','','',NULL,NULL,NULL),(37,1,'danny','de','danny','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(38,1,'Danny','de','cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(39,1,'Danny','de','cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(40,1,'Danny','de','cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(41,1,'Danny','de','cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(42,1,'Danny','de','cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(43,2,'Danny','de','achternaam','danny.dc.cao@gmail.com','54545454','danny','danny','','',NULL,'2016-10-24 11:04:58','2016-10-24 11:04:58'),(44,1,'Danny','dasd','dsadasd','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(45,1,'Danny','de','danny','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(46,1,'Dannt','danny','dan','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(47,1,'danny','de','achternaam','danny.dc.cao@gmail.com','danny','danny','','','',NULL,NULL,NULL),(48,2,'Ketchup','danny','de','achter@achter.nl','0685362627','Riojagaard 6','Woerden','','',NULL,'2016-10-24 11:20:49','2016-10-24 11:20:49'),(49,1,'danny','da','da','danny.dc.cao@gmail.com','da','danny','dasdasd','','',NULL,NULL,NULL),(50,2,'Danny','de','Cao','danny.dc.cao@gmail.com','danny','danny','danny','','',NULL,'2016-10-24 12:54:47','2016-10-24 12:54:47'),(51,1,'Danny','de','danny','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(52,2,'danny','de','Cao','danny.dc.cao@gmail.com','dsadsa','dsadasd','asdasdas','','',NULL,'2016-10-24 13:04:12','2016-10-24 13:04:12'),(53,2,'','','','','','','','','',NULL,'2016-10-25 22:52:26','2016-10-25 22:52:26'),(54,2,'','','','','','','','','',NULL,'2016-10-25 22:52:51','2016-10-25 22:52:51'),(55,2,'','','','','','','','','',NULL,'2016-10-25 22:53:05','2016-10-25 22:53:05'),(56,2,'','','','','','','','','',NULL,'2016-10-25 22:53:15','2016-10-25 22:53:15'),(57,1,'rwe','','','rob@rob.com','','','','','',NULL,NULL,NULL),(58,1,'Danny','Big Dick','Cao','Danzel@cao.china','0123456789','straight outta','Compton','','',NULL,NULL,NULL),(59,2,'Danny','Big Dick','Cao','Danny@cao.china','0123456789','Straight outta','Compton','','',NULL,'2016-10-26 14:55:11','2016-10-26 14:55:11'),(60,1,'Rob is de beste','','','bunky_rob@hotmail.com','','','','','',NULL,NULL,NULL),(61,1,'Rob is de beste','','','bunky_rob@hotmail.com','','','','','',NULL,NULL,NULL),(62,1,'Rob is de beste','','','bunky_rob@hotmail.com','','','','','',NULL,NULL,NULL),(63,1,'Rob is de beste','','','bunky_rob@hotmail.com','','','','','',NULL,NULL,NULL),(64,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(65,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(66,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(67,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(68,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(69,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(70,1,'Danny','de ','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(71,1,'Danny','','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(72,1,'Meme','','Queen','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(73,1,'Meme','','Queen','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(74,1,'Meme','','Queen','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(75,1,'danny','','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(76,1,'danny','','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(77,1,'Danny','de','achternaam','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(78,1,'Danny','de','achternaam','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(79,1,'danny','','Cao','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(80,1,'danny','','Cao','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(81,1,'danny','','Cao','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(82,1,'danny','','Cao','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(83,1,'Danny','de','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(84,1,'danny','','Cao','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(85,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(86,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(87,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(88,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(89,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(90,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(91,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(92,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(93,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(94,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(95,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(96,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(97,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(98,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(99,1,'Danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(100,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(101,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(102,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(103,1,'Danny','de','achternaam','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(104,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(105,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(106,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(107,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(108,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(109,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(110,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(111,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(112,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(113,1,'Danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(114,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(115,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(116,1,'Danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(117,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(118,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(119,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(120,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(121,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(122,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(123,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(124,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(125,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(126,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(127,1,'danny','','','Danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(128,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(129,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(130,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(131,1,'Danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(132,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(133,1,'Danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(134,1,'Danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(135,1,'danny','','da','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(136,1,'Danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(137,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(138,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(139,1,'Danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(140,1,'Danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(141,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(142,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(143,1,'Danny','','','Danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(144,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(145,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(146,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(147,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(148,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(149,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(150,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(151,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(152,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(153,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(154,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(155,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(156,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(157,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(158,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(159,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(160,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(161,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(162,1,'Danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(163,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(164,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(165,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(166,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(167,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(168,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(169,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(170,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(171,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(172,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(173,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(174,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(175,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(176,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(177,1,'danny','','da','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(178,1,'danny','','da','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(179,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(180,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(181,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(182,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(183,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(184,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(185,1,'danny','','da','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(186,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(187,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(188,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(189,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(190,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(191,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(192,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(193,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(194,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(195,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(196,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(197,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(198,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(199,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(200,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(201,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(202,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(203,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(204,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(205,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(206,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(207,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(208,1,'Danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(209,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(210,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(211,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(212,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(213,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(214,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(215,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(216,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(217,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(218,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(219,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(220,2,'Danny','de','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,'2016-10-30 12:51:28','2016-10-30 12:51:28'),(221,2,'Danny','de','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,'2016-10-30 18:53:10','2016-10-30 18:53:10'),(222,2,'danny','da','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,'2016-10-30 19:40:22','2016-10-30 19:40:22'),(223,2,'danny','da','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,'2016-10-30 19:40:48','2016-10-30 19:40:48'),(224,2,'danny','da','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,'2016-10-30 19:41:14','2016-10-30 19:41:14'),(225,2,'danny','da','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,'2016-10-30 19:41:25','2016-10-30 19:41:25'),(226,2,'danny','da','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,'2016-10-30 19:44:40','2016-10-30 19:44:40'),(227,2,'Danny','de','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,'2016-10-30 19:56:48','2016-10-30 19:56:48'),(228,1,'Danny','de','Cao','Danny.dc.cao@gmail.com','+31685362627','Riojagaard, wd','Woerden','','',NULL,NULL,NULL),(229,1,'danny','da','da','danny.dc.cao@gmail.com','da','danny','dasdasd','','',NULL,NULL,NULL),(230,1,'Danny','de','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(231,1,'danny','','Cao','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(232,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(233,1,'danny','','da','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(234,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(235,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(236,2,'Danny','de','Cao','danny.dc.cao@gmail.com','0685362627','adres','Woerden','','',NULL,'2016-10-31 14:27:18','2016-10-31 14:27:18'),(237,1,'danny','','danny','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(238,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(239,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(240,1,'Danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(241,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(242,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(243,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(244,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(245,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(246,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(247,1,'Danny','','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(248,1,'danny','','','Danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(249,2,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,'2016-11-02 17:27:51','2016-11-02 17:27:51'),(250,2,'Rob ','van der','Heijden','Robvandheijden@gmail.com','0685362627','Berghemstraat 6','Berghem','','',NULL,'2016-11-02 17:30:05','2016-11-02 17:30:05'),(251,2,'Roy','','Kuijper','RoyKuijper@gmail.com','0683253467','Voorbeeldstraat 10','Maarssen','','',NULL,'2016-11-02 17:31:56','2016-11-02 17:31:56'),(252,2,'Mitchell','het','Lam','Mitchell@gmail.com','0674323576','Voorbeeldweg 10','Woerden','','',NULL,'2016-11-02 17:33:20','2016-11-02 17:33:20'),(253,2,'Buster','de','Beer','Busterdebeer@gmail.com','0683275632','Beerstraat 23','Utrecht','','',NULL,'2016-11-02 17:34:40','2016-11-02 17:34:40'),(254,2,'Hans','','Solo','Hans@solo.com','0693543456','Straat 40','vieren','','',NULL,'2016-11-02 19:27:06','2016-11-02 19:27:06'),(255,2,'danzel','','Wash','Danzel@wash.nl','0682543716','Straat 4','Achterdorp','','',NULL,'2016-11-02 19:28:58','2016-11-02 19:28:58'),(256,2,'Larry','van','Boer','Larry@boer.nl','09876543','Wijngaard 20','Woerden','','',NULL,'2016-11-02 19:30:27','2016-11-02 19:30:27'),(257,2,'Perry','','oempa','Perry@oempa.nl','06987543','goudastraat 6','Gouda','','',NULL,'2016-11-02 19:32:17','2016-11-02 19:32:17'),(258,2,'Kerry','','washington','Kerry@washington.nl','09876543','Riojagaard 10','Berghem','','',NULL,'2016-11-02 19:34:31','2016-11-02 19:34:31'),(259,2,'Stephen','','King','Stephen@gmail.com','06987655','Straatje 5','Os','','',NULL,'2016-11-02 19:37:02','2016-11-02 19:37:02'),(260,2,'Doctor','Stephen','Strange','DoctorStephenStrange@gmail.com','0684362845','RIojagaard 6','Woerden','','',NULL,'2016-11-02 19:39:47','2016-11-02 19:39:47'),(261,2,'Steven','','Strange','danny.dc.cao@gmail.com','06843627','Riojagaard 6','Woerden','','',NULL,'2016-11-02 19:41:13','2016-11-02 19:41:13'),(262,2,'Marvel','','Doctor','doctor@marvel.com','0673437437','Chantiagaard 23','Woerden','','',NULL,'2016-11-02 19:42:37','2016-11-02 19:42:37'),(263,2,'Zendy','','Storm','ZendyStorm@gmail.com','068454243','Wakka 6','Wakka','','',NULL,'2016-11-02 19:44:40','2016-11-02 19:44:40'),(264,2,'Fate','','MacDonald','FateMacDonald@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,'2016-11-02 19:46:20','2016-11-02 19:46:20'),(265,2,'Nadd','','sadal','NadSadal@gmail.com','0685462627','Riojagaard 6','Woerden','','',NULL,'2016-11-02 19:48:41','2016-11-02 19:48:41'),(266,2,'Nihilus','','Malachor','Nihilus@gmail.com','06856226','Riojagaard 6','Woerden','','',NULL,'2016-11-02 19:50:28','2016-11-02 19:50:28'),(267,2,'Darth','','Play','danny.dc.cao@gmail.com','0685263626','Riojagaard 6','Woerden','','',NULL,'2016-11-02 19:52:06','2016-11-02 19:52:06'),(268,2,'Brad','','Pitt','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,'2016-11-02 19:54:31','2016-11-02 19:54:31'),(269,2,'Whoopi','','Goldberg','Whoopi@gmail.com','0685362627','quali 6','Rotterdam','','',NULL,'2016-11-02 19:56:30','2016-11-02 19:56:30'),(270,2,'Logan','','Chris','Chris@gmail.com','0698765432','Riojagaard 6','Woerden','','',NULL,'2016-11-02 19:59:14','2016-11-02 19:59:14'),(271,1,'Danny','','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(272,2,'Danny','','Cao','danny.dc.cao@gmail.com','068562526','Riojagaard 6','Woerden ','','',NULL,'2016-11-02 22:24:50','2016-11-02 22:24:50'),(273,1,'Danny','','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(274,2,'Danny','','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','','',NULL,'2016-11-03 08:49:40','2016-11-03 08:49:40'),(275,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(276,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(277,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(278,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(279,1,'danny','','','danny.dc.cao@gmail.com','','','','','',NULL,NULL,NULL),(280,1,'Danny','','Cao','Danny.dc.cao@gmail.com','31685362627','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(281,2,'Danny','','Cao','danny.dc.cao@gmail.com','068536336','Riojagaard 6','Woerden','','',NULL,'2016-11-03 10:45:55','2016-11-03 10:45:55'),(282,1,'Danny','','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$oXp.Y1bWZ9NYHcsdLRUPVOm8Gtc4T1gfN/fNVCQkf9JYjydLgm82m',NULL,NULL,NULL),(283,1,'Danny','','Cao','danny.dc.cao@gmail.com','0685362627','6, Riojagaard','Woerden','test','$2y$10$X.BQLtk1qnuUdkj6xLzf1OQFlw818WlIq92Dqojp6Qaj1LuGcRuNK',NULL,NULL,NULL),(284,1,'Danny','','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$bole7CiR4yXIdzIcwbSqB.VqV4i3raGxApx3fep.D4mWnPyCpjSqS',NULL,NULL,NULL),(285,2,'Danzel','','Ca','Danny.dc.cao@gmail.com','0685362627','Riojagaard 5','Woerden','','',NULL,'2017-03-01 15:13:32','2017-03-01 15:13:32'),(286,1,'Danny','','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerde','test','$2y$10$HvOGi/aS2uaqCtRRXlYcCeT7sRXkmQYzDvKb.6JS6.op6vG6AD2Aa',NULL,NULL,NULL),(287,1,'Danny','','Cao','danny.dc.cao@gmail.com','0685362627','6, Riojagaard','Woerden','test','$2y$10$pc5SY6w2RSP7q1ClLvKb2.Et8iYqWHncfPldQs0dInXGmKVVDBQQO',NULL,NULL,NULL),(288,1,'Danny','','Cao','danny.dc.cao@gmail.com','0685362627Riojagaard','Riojagaard 6','Woerden','','',NULL,NULL,NULL),(289,1,'Danny','','Cao','danny.dc.cao@gmail.com','0683627','Riojagaard 6','Woerden','test','$2y$10$UrH/Gh8u1SN2FaStxeLegO6Zk6ArKDmt.j1tT5lFK3UwnBFA7VS3K',NULL,NULL,NULL),(290,1,'Danny','','Cao','danny.dc.cao@gmail.com','','','','test','$2y$10$TAa5TF4RznEtxboC/itnaul2Nr6i5ku9wTPaD.tmIk9IbG6nEB7fG',NULL,NULL,NULL),(291,1,'Danny ','','Cao ','danny.dc.cao@gmail.com','0685362627','Riojagaard 6 ','Woerden','test','$2y$10$D1mUqLAKUrmV/3GORLGmFuiF9jgYh4qtJOXT4jWaHnR65HtGU4xim',NULL,NULL,NULL),(292,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$OUCx2Amm4ToD586t0S/.m.gPvflPgE/9BKvY2UqrGBenDSVHXbPfC',NULL,NULL,NULL),(293,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6 ','Woerden','test','$2y$10$2yJG0nuBfgxpBjMkDSCSdeh0.nduVe26OM0P.WDP92pUDW.b2oXpy',NULL,NULL,NULL),(294,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$kuHLsLYfmB5/8sBbt2DWoetaHkmvQYoPfOAVw.MEOoyQy9tEEW19m',NULL,NULL,NULL),(295,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$zI8CqMEROkIHDWtD9d4Oqui1c9NWX8BwaCW03nfC4ho16UQmGkWXy',NULL,NULL,NULL),(296,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$YfNn/1qXeM3JT3I/f.wwcO54zPWU96Ox/pecZgMd1oyWWM7xxuLTi',NULL,NULL,NULL),(297,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$JtD065YirhfsV4oCs0BG.OJOp7DVKozhL6qxzjLHuy1IUXgsLmo6C',NULL,NULL,NULL),(298,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$Es9b.d5N8btqz53caeEcL.Qu15S82IdZUh2iVXP2N6aEJfhLqHxXK',NULL,NULL,NULL),(299,1,'Danny','','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6 ','Woerden','test','$2y$10$.U9.hRXTHY6PVBENlScYdO4cfLtyn/pCzHGqUmYvYkVREwtAfih9a',NULL,NULL,NULL),(300,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$megjejdD/UwcVVhsziAioux9nI6W6uzJAWnOb.IZ4oJ32/xWv.H2u',NULL,NULL,NULL),(301,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685426326','Riojagaard 6','Woerden','test','$2y$10$EM2y0TLGvHVSd4ep89plb.ISUtDH18NXSO36r42YsQvXtSxwUtLeu',NULL,NULL,NULL),(302,1,'Danny','','Cao','danny.dc.cao@gmail.com','0685362627','6, Riojagaard','Woerden','test','$2y$10$0OE1A4NFa7pD0K5LUoGmwujEHPvsXU0pir0ptRvc93UZN6JoX7QO.',NULL,NULL,NULL),(303,1,'Danny','','Cao','danny.dc.cao@gmail.com','0685362627','6, Riojagaard','Woerden','test','$2y$10$NLWTk9ugvR7Nfv1MXowgQOXySKfBQQvPEFyDoPqbczNsqQGfGqyfK',NULL,NULL,NULL),(304,1,'Danny','','Cao','danny.dc.cao@gmail.com','0685362627','6, Riojagaard','Woerden','test','$2y$10$Ww9e4cvXCUZxUlrskjw/zua/zhi/NrtFpfk1ZOS5ubAmS6XIdivEm',NULL,NULL,NULL),(305,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$EMoB4AcsL.EaoJNgqIcExuoPoINmlmd5WAj.ZfGRZYbEWNMZjb09a',NULL,NULL,NULL),(306,1,'Danny','','Cao','Danny.dc.cao@gmail.com','068577457','Riojagaard 6','Woerden','test','$2y$10$RjVkha1IJ1I08.FI7G1Ow.B9kJW/OdBN.UwnQbdaQcBc9EI9F0YZm',NULL,NULL,NULL),(307,2,'Danny','','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Utrecht','','',NULL,'2017-04-28 14:43:57','2017-04-28 14:43:57'),(308,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$zyb19MH/rrQZNBgvY9yKC.FJgW4dL9SmoNnzWnoeBdoIjs.UC.ebO',NULL,NULL,NULL),(309,1,'Danny','','Cao','Danny.dc.cao@gmail.com','06853627','Riojagaard 6','Woerden','test','$2y$10$qx02NR56zz3Tk6yzG.FW/.78HuA930V1HkT56m46OvycXPwqivLxi',NULL,NULL,NULL),(310,1,'Danny','','Cao','Danny.dc.cao@gmail.com','06853627','Riojagaard 6','Woerden','test','$2y$10$rbTXlhFmWC7yAH5.WCxoHe.Td5V2XRjj3VOJ2BUcAO8zZ8doRJTT2',NULL,NULL,NULL),(311,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$TcqftKJHHvx8UBgQWogMrOLZJVft6YzcQX4cLaUSyxwwhn45cYQBu',NULL,NULL,NULL),(312,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$Omvj2beguTyGFLrtBwq3W.goGjCllOxckQWBNWQwvvM7HcDq/e7Be',NULL,NULL,NULL),(313,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$3rdednwXrKs8tI4EeeEP6uOXPsGiJn8dHZcPukzxWWalaDt5VIzX6',NULL,NULL,NULL),(314,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$rOjTZDrVoKC1.NRmsoGOf.OELJdmTvRcj1UOcZueNoCpMX45husH.',NULL,NULL,NULL),(315,1,'Danny','','Cao','Danny.dc.cao@gmail.com','','Rio','','test','$2y$10$Nux6LXnKCTheHOyMohoSn.eqF/1BlZdQRLNWI9stcQz0HUwOUlD9i',NULL,NULL,NULL),(316,1,'Danny','','Cao','Danny.dc.cao@gmail.com','','','','test','$2y$10$M6ttdzsu8MUg8PrWv7DUFOGYYfvBQewJJWk1KMGTG1T6U4cW/pBcO',NULL,NULL,NULL),(317,2,'Danny','de','Cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','null','$2y$10$DsNo1ui.ijakWaXBfWTEkuXFN0fTw7QGrqRIrL0rK95m1.BYLn8M.',NULL,'2017-05-06 15:11:04','2017-05-06 15:11:04'),(318,1,'danny','de','cao','danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','organisator','$2y$10$N0PVQkvWcvWgpouDjJ3YGuIYmas1smL3yE2SMx/Q7ePDc7s.IFddS','ioPtPXWdXOVrKOyrgjJqNwbW7YJlnry3pNv72hleBbYZbihpSV8FcXqa5QUx','2017-05-06 15:52:12','2017-05-22 21:19:39'),(319,1,'Danny','','Cao','Danny.dc.cao@gmail.com','+31685362627','Riojagaard, wd','Woerden','test','$2y$10$lVmIIjN8fO1PbpNYQKHDhOoFMgLYwhVh7yvieysy/UWH0/ljfVwSu',NULL,NULL,NULL),(320,1,'Danny','','Cao','Danny.dc.cao@gmail.com','+31685362627','Riojagaard, wd','Woerden','test','$2y$10$sh8vY0unXmeLdNKpFhaN6eQjL/xpuNwJe65jR8K2oZyeyubDtB8Ma',NULL,NULL,NULL),(321,1,'Danny','','Cao','Danny.dc.cao@gmail.com','+31685362627','Riojagaard, wd','Woerden','test','$2y$10$cRA6Sywj7N/EJcLEtQen7eSvECGjak.CJntyN6GMwAVGk2MkpTDZi',NULL,NULL,NULL),(322,1,'Rob','ICE','Maria','Danny.dc.cao@gmail.com','+31685362627','Riojagaard, wd','Woerden','test','$2y$10$wpO4eZWL.x.ltmY0qg.JROcbtdhFar8WAYasSwqdeVJcN.Gaj5G7e',NULL,NULL,NULL),(323,1,'Roy','','t\'lam','Danny.dc.cao@gmail.com','0685362627','6, Riojagaard','Woerden','test','$2y$10$ps55yxNCX6WaWNAk7/elZOQPA7rRaKL9I1A1qTjfXQe4e6vZTHCge',NULL,NULL,NULL),(324,1,'hassan','','Maria','Danny.dc.cao@gmail.com','+31685362627','Riojagaard, wd','Woerden','test','$2y$10$E0jHdj8zsuV58H3.aN99oeKTntl38dbVK2XfO0B0KM3MgIzCL0F7q',NULL,NULL,NULL),(325,1,'Pannenkoek','','Cao','Danny.dc.cao@gmail.com','+31685362627','Riojagaard, wd','Woerden','test','$2y$10$y1pPzuLTWXClhtjnSpt91uEZMcfvAfk37VZFBIKq48dyqTkyskWAe',NULL,NULL,NULL),(326,1,'Pepsi','','Cola','Pepsicola@pepsicola.com','54454954959','Riojagaard 6','Woerden','test','$2y$10$Ox5YbGclQ9SFkRJzp5f3g.ArQtME0.UZfD2zSHUh3a7txl56U/ev6',NULL,NULL,NULL),(327,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362727','Riojagaard 6','Woerden','test','$2y$10$GJWUNdI4EJcXSd0vd541COxcixAge43M7XoU0u.tNhVHXobLeMf2O',NULL,NULL,NULL),(328,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685372728','Riojagaard 6','Woerden','test','$2y$10$LtIrcQ1H1rbsXLGrNwOfZ.79K5av8wl3iIOmAZX9Fipf6R1gV3FBq',NULL,NULL,NULL),(329,1,'Hassan','','Hassan','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6 ','Woerden','test','$2y$10$kDX3wWdgmDRCIIO0H1QnCOOlFjGB3MkxffNsWOAxBVw5X315XB2lu',NULL,NULL,NULL),(330,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$A6PF4hGfZ25wsGXIljoQl.Hol.wRup171hssvuEPemQPUm2z.EWUO',NULL,NULL,NULL),(331,1,'Hassan','','Kjellberg','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$v/DUN8qrp3UfYrX6RsGWu.hJmzcIbzRu.GhbJ1nDqecYojwKMZBH6',NULL,NULL,NULL),(332,1,'Danny','','Cao','Danny.dc.cao@gmail.com','068563627','Riojagaard 6 ','Woerden','test','$2y$10$v1Nt4iuQ9NxHnsNPnX36NeEDzWVDxuDoIHM4Lru17RYSQyVI2Ll7S',NULL,NULL,NULL),(333,1,'Smint','li','Mint','Danny.dc.cao@gmail.com','','','','test','$2y$10$vtUHS8VnW58IQcBY1cpmTudToN9y5BqyNgWHlXqBbrgSKzEiq5g0q',NULL,NULL,NULL),(334,1,'Danny','','dannycao2','danny.dc.cao@gmail.com','0685362627','Riojagaard 6 ','Woerden','test','$2y$10$ByP1OcSjYPwPiRSPArBI6.4AALn0gRoAO8G8cZWA.qyA/xy6.yKyG',NULL,NULL,NULL),(335,1,'Danny','','dannycao2','danny.dc.cao@gmail.com','0685362627','Riojagaard 6 ','Woerden','test','$2y$10$/oVpJep8iHSMlGxCsAaTCufWPYnLEn3ow8yCBMmWtW965HZmNor3e',NULL,NULL,NULL),(336,1,'Danny','','dannycao2','danny.dc.cao@gmail.com','0685362627','Riojagaard 6 ','Woerden','test','$2y$10$wjDHuLowpEZSHCZw6g00xu36Xvg.Gj3vbQKzXHjSrrOSRqalfcw1W',NULL,NULL,NULL),(337,1,'Danny','','dannycao2','danny.dc.cao@gmail.com','0685362627','Riojagaard 6 ','Woerden','test','$2y$10$McgZmp1toq9eN.6jDBMGZ.surRLz8d8tFtDNe2YDmlMzM9L/R2g2G',NULL,NULL,NULL),(338,1,'Danny','','Cao','Danny.dc.cao@gmail.com','','Riojagaard, wd','','test','$2y$10$CcVTpWXVIALx6buQBhLi.uXwfiEoLf4pdW.P85OnHCbIL8o7QA5Z6',NULL,NULL,NULL),(339,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$PK6t0gSuVq6jG0P0OV186ua8j4Sa56r6yYMhEmAPK4mAofgHnGuHS',NULL,NULL,NULL),(340,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$N/05Dibx5o7VfM7llfs92.MaDH1UJTOd5R6vDH2GDCeF8E5Emd0dy',NULL,NULL,NULL),(341,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$V6zOdaKp1AlqY54OniEuqugZ8qAXPlwePWrx8qDiZrVwEirr7lw42',NULL,NULL,NULL),(342,1,'danny','','Cao','danny.dc.cao@gmail.com','06853627','Riojagaard 6','Woerden','test','$2y$10$e6CW7bAQlE/cbOb0Rpbkbuz2vj/.QUXGtWGM6W0msdSPweG6NWKOi',NULL,NULL,NULL),(343,1,'Danny','','Cao','Danny.dc.cao@gmail.com','','Riojagaard 6','Woerden','test','$2y$10$cFjr7MQd5Mj.I2jM5OUUF.2Xsss.bw9cmm0dCo6tFo8ZXX5n7gFXC',NULL,NULL,NULL),(344,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$Ekxklw5BVdWMmgRkU/gkoe5tnJkX1iRYsDa6qHUoYfZ42ANlL//wO',NULL,NULL,NULL),(345,1,'Danny','','Cao','Danny.dc.cao@gmail.com','','Riojagaard 6','Woerden','test','$2y$10$WWLpAy9qGzlM/VUK/MFfmuRILkpdIYu6uU0N7AwVXLPPt95qKR2tC',NULL,NULL,NULL),(346,1,'Danny','','Cao','Danny.dc.cao@gmail.com','','Woerden','Woerden','test','$2y$10$LFDFmNEpOjZ2qgGp4/bXdOkwVtkCu0HmKd/QtIBWXAuJiNH4.X8.O',NULL,NULL,NULL),(347,1,'hassan','','Cao','Danny.dc.cao@gmail.com','+31685362627','Riojagaard, wd','Woerden','test','$2y$10$G44xC9t8H0QcnCJO.mB3aOIWBwfhkwt.3j9La7qsRpwFpmBV83IPW',NULL,NULL,NULL),(348,1,'hassan','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$uMbfHz6rA9HFogwkk3VTBuSqT19xC0pPg30Q8RZW7vrLjMhV6Vocm',NULL,NULL,NULL),(349,1,'Danny','','Cao','Danny.dc.cao@gmail.com','06853622627','Riojagaard 6','Woerden','test','$2y$10$S3ugJTXYXYw5bmCcs1uYJ.IVHhuANOORjrRedai.IyQMLgVH3T1PK',NULL,NULL,NULL),(350,1,'Danny','','Cao','Danny.dc.cao@gmail.com','+31685362627','Riojagaard, wd','Woerden','test','$2y$10$YLnp56hlKZ2WYq3yOmFaIeCfcvVkAEnR9pHffu/u/NMCc4bHbDCTy',NULL,NULL,NULL),(351,1,'Danny','','Cao','Danny.dc.cao@gmail.com','+31685362627','Riojagaard, wd','Woerden','test','$2y$10$6qcC9C4I50bJMAqTylH4yOBgYdvACInbcDd3V8JMn0pTq1z26JOem',NULL,NULL,NULL),(352,1,'Danny','','Cao','Danny.dc.cao@gmail.com','+31685362627','Riojagaard, wd','Woerden','test','$2y$10$sYMCN64lvJwRmJv4K./sQOESl9HxJtdCdTHU5R.mr48Jn4sYOWbJe',NULL,NULL,NULL),(353,1,'Kurwa','','Cao','Danny.dc.cao@gmail.com','+31685362627','Riojagaard, wd','Woerden','test','$2y$10$gSDT/PyQ59lfcZEfaKJP9OnAN4bhl0roBlfdiT/JNXr9DzyZmdJL2',NULL,NULL,NULL),(354,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$tWJrcQr7VaEOYM2HMDLCseDvTU6ErdATqfPS3nz8UFdyxb6mUz6rS',NULL,NULL,NULL),(355,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$ai3xHtjjzV09VIBLasv/g.FO.TNNOKDR6edsMYxedEyfjaMgZsnlW',NULL,NULL,NULL),(356,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$18h.Ao3TDClZVjK58ISrc.1szOdBLlkoA2eiHAyjlyGS4mnc.6gLu',NULL,NULL,NULL),(357,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$W4YFwapviXFiQFPkog2fnegEm4dlsp1iriSrNY58ljs3P8mdYEnc.',NULL,NULL,NULL),(358,1,'Danny','','Cao','Danny.dc.cao@gmail.com','','Riojagaard, wd','','test','$2y$10$K.uc8b2fOBFPFNOJ/5r1y.h4gyErjuGROwmK2pukd6VNd09kAejgG',NULL,NULL,NULL),(359,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$V3XuvcJh1ozom4wdQoZaQexf3tEbH4d5nvRjudfQ1eeVwfJmvE0L2',NULL,NULL,NULL),(360,1,'Hassan','','El Assan','Danny.dc.cao@gmail.com','+31685362627','Riojagaard, wd','Woerden','test','$2y$10$7bZVYVnDaRVk/gz/39osa.Zo5j/RC9VAR88gzgWc1MiSdrWHAMJeS',NULL,NULL,NULL),(361,1,'Danny','','Cao','Danny.dc.cao@gmail.com','+31685362627','Riojagaard, wd','Woerden','test','$2y$10$Z4xtKNqXo/SLKLhD8CJPZ.VV.pcc62cmHMv8vAZuPAsIUNTingE/S',NULL,NULL,NULL),(362,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Woerden','Woerden','test','$2y$10$JGjiKK/z3e6rW1HFM0vJ2.giXKtA2SwgIanBkzkbqUmAPV3Ddq/iG',NULL,NULL,NULL),(363,1,'Kurwa','','Kurwa','Danny.dc.cao@gmail.com','05454544','RIojagaard 6','Woerden','test','$2y$10$r878EBF51AXTlJ.UUTILA.vsWGDxG4zwkm7DuhV9FrCnlZEoMLVlO',NULL,NULL,NULL),(364,1,'TestingMongo','','Cao','Danny.dc.cao@gmail.com','0685362627','Da','Woerden','test','$2y$10$sSnkBCxrpxklJnFww23.NunhbP4DXnxsG70GzXVfolvCKW1lRqq3u',NULL,NULL,NULL),(365,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$iZ8tlNibYBUTjjWWv63nuO1e0q.zfhZg01Blwm9.aGi7PCZjKdje.',NULL,NULL,NULL),(366,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard 6','Woerden','test','$2y$10$wTR5eW5tcxG1r9TmL9/.Nuuiw/e5X9kznsZJ1VqaH7aCPpJo6xmhe',NULL,NULL,NULL),(367,1,'Mongodb','','Cao','Danny.dc.cao@gmail.com','+31685362627','Riojagaard, wd','Woerden','test','$2y$10$zERMSr29XiLOEOFFdqkLvekdQwaSxUHVkZmiKAbjdtJwJXrW5x78C',NULL,NULL,NULL),(368,1,'Danny','','Cao','Danny.dc.cao@gmail.com','+31685362627','Riojagaard, wd','Woerden','test','$2y$10$CJzg8tegrg5SWZTVbEq3TuNfXDWsSRSDNE50sQzzFkJtc7vtS.u9u',NULL,NULL,NULL),(369,1,'Danny','','Cao','Danny.dc.cao@gmail.com','0685362627','Riojagaard, wd','Woerden','test','$2y$10$Alstn1k4nUgGwLodaFKazOj0FGrZ.W5XT3fNLr50V0aO4SSGi.HyC',NULL,NULL,NULL),(370,1,'Poke','','Cao','Danny.dc.cao@gmail.com','+31685362627','Riojagaard, wd','Woerden','test','$2y$10$WOrrMPHXcLGISLQU9Q.jwuuEeJiamLrCMcUwouOeeDYuj5dWGp8bG',NULL,NULL,NULL),(371,1,'Harrie','de','Vogel','Danny.dc.cao@gmail.com','+31685362627','Riojagaard, wd','Woerden','','',NULL,NULL,NULL),(372,1,'Harrie','de','Vogel','Danny.dc.cao@gmail.com','+31685362627','Riojagaard, wd','Woerden','','',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wensens`
--

DROP TABLE IF EXISTS `wensens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wensens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wens` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wensens`
--

LOCK TABLES `wensens` WRITE;
/*!40000 ALTER TABLE `wensens` DISABLE KEYS */;
INSERT INTO `wensens` VALUES (1,'beamer'),(2,'Computer'),(3,'Stoel'),(4,'Tafel'),(5,'Scherm');
/*!40000 ALTER TABLE `wensens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaals`
--

DROP TABLE IF EXISTS `zaals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zaalnaam` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaals`
--

LOCK TABLES `zaals` WRITE;
/*!40000 ALTER TABLE `zaals` DISABLE KEYS */;
INSERT INTO `zaals` VALUES (1,'zaal 1'),(2,'zaal 2'),(3,'zaal 3'),(4,'zaal 4');
/*!40000 ALTER TABLE `zaals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-29 11:49:51
