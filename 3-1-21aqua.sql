-- MySQL dump 10.17  Distrib 10.3.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: kmmaquatechropkt1
-- ------------------------------------------------------
-- Server version	10.3.25-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `advanced_salaries`
--

DROP TABLE IF EXISTS `advanced_salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advanced_salaries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `advanced_salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advanced_salaries`
--

LOCK TABLES `advanced_salaries` WRITE;
/*!40000 ALTER TABLE `advanced_salaries` DISABLE KEYS */;
INSERT INTO `advanced_salaries` VALUES (1,1,'december','2020','100000','2021-01-01 21:02:28','2021-01-01 22:06:48'),(2,2,'december','2020','10000','2021-01-01 21:06:55','2021-01-01 21:06:55'),(3,1,'january','2021','1500','2021-01-02 10:19:00','2021-01-02 10:19:00'),(4,7,'january','2021','1000','2021-01-02 10:20:21','2021-01-02 10:20:21'),(5,7,'february','2021','10000','2021-01-02 12:23:37','2021-01-02 12:23:37');
/*!40000 ALTER TABLE `advanced_salaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendances`
--

DROP TABLE IF EXISTS `attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendances` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `attendance` tinyint(4) NOT NULL,
  `date` date NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendances`
--

LOCK TABLES `attendances` WRITE;
/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
INSERT INTO `attendances` VALUES (1,1,1,'2021-01-01','january','2021','2021-01-01 20:12:40','2021-01-01 20:12:40'),(2,2,1,'2021-01-01','january','2021','2021-01-01 20:12:40','2021-01-01 20:12:40'),(3,6,1,'2021-01-01','january','2021','2021-01-01 20:12:40','2021-01-01 20:12:40'),(4,7,1,'2021-01-01','january','2021','2021-01-01 20:12:40','2021-01-01 20:12:40'),(5,8,1,'2021-01-01','january','2021','2021-01-01 20:12:40','2021-01-01 20:12:40'),(6,9,1,'2021-01-01','january','2021','2021-01-01 20:12:40','2021-01-01 20:12:40'),(7,12,1,'2021-01-01','january','2021','2021-01-01 20:12:40','2021-01-01 20:12:40'),(8,13,1,'2021-01-01','january','2021','2021-01-01 20:12:40','2021-01-01 20:12:40'),(9,14,0,'2021-01-01','january','2021','2021-01-01 20:12:40','2021-01-01 20:38:24'),(10,15,0,'2021-01-01','january','2021','2021-01-01 20:12:40','2021-01-01 20:35:54'),(11,18,0,'2021-01-01','january','2021','2021-01-01 20:12:40','2021-01-01 20:12:40'),(20,1,1,'2021-01-02','january','2021','2021-01-02 10:23:00','2021-01-02 10:23:00'),(21,2,0,'2021-01-02','january','2021','2021-01-02 10:23:00','2021-01-02 10:23:00'),(22,6,0,'2021-01-02','january','2021','2021-01-02 10:23:00','2021-01-02 10:23:00'),(23,7,1,'2021-01-02','january','2021','2021-01-02 10:23:00','2021-01-02 10:23:00'),(24,8,0,'2021-01-02','january','2021','2021-01-02 10:23:00','2021-01-02 10:23:00'),(25,9,1,'2021-01-02','january','2021','2021-01-02 10:23:00','2021-01-02 10:23:00'),(26,12,0,'2021-01-02','january','2021','2021-01-02 10:23:00','2021-01-02 10:23:00'),(27,15,1,'2021-01-02','january','2021','2021-01-02 10:23:00','2021-01-02 10:23:00');
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landmark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_tin` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (18,'kkk','12345','9000088888','ssss','pksgroups005@gmail.com','wwww',NULL,666,'2020-12-31 11:25:45',NULL,1),(19,'THARIK12','304059078','9384906362','kambur','tharik@gmail.com',NULL,NULL,NULL,'2020-12-31 12:02:41','2021-01-02 11:31:02',1),(20,'anwar23','000010000200012','3849207678','KAMBUR','anwar@gmail.com',NULL,NULL,NULL,'2020-12-31 12:13:34','2021-01-02 11:30:24',1),(21,'ANWAR','ANWARAASIF','9323184520','KAMBUR','anwar@gmail.com',NULL,NULL,NULL,'2020-12-31 12:15:15',NULL,1),(22,'MUSRAF ALI','musraftharik','9384906362','kambur','muarafaienul@gmail.com',NULL,NULL,NULL,'2020-12-31 12:16:16',NULL,1),(23,'THARIK','musrafaslam','9087345619','kambur','tharik24@gmail.com',NULL,NULL,NULL,'2020-12-31 12:17:16',NULL,1),(25,'AMEER','anwarameer','9384906263','kambur','ameer@gmail.com',NULL,NULL,NULL,'2020-12-31 12:19:46',NULL,1),(26,'Muthzamil','musraftamil','9384906263','kambur','muthzmil@gmail.com',NULL,NULL,NULL,'2020-12-31 12:21:06',NULL,1),(27,'Hussain','musrafhussain','9384906263','kambur','hussian@gmail.com',NULL,NULL,NULL,'2020-12-31 12:22:31',NULL,1),(30,'kkk2','123113','7777778888','dddddd','pksgroups005@gmail.com','ssssssss',NULL,666,'2020-12-31 12:49:51',NULL,1),(31,'ALLAM','72181','8362890219','kambur','allam@gmail.com',NULL,NULL,NULL,'2020-12-31 13:24:22','2021-01-01 11:22:59',1),(32,'qwqwqwqw','aaaaa','1234567893','kambur','qwqwqwqw@gmailcom',NULL,NULL,NULL,'2020-12-31 15:18:08',NULL,1),(33,'kkkggg','123123','7777778888','dddddd','pksgroups005@gmail.com','ssssssssf',NULL,666,'2020-12-31 15:21:26',NULL,1),(34,'lolol','wwww','9384906362','kambur','lolol',NULL,NULL,NULL,'2020-12-31 15:21:33',NULL,1),(36,'Zebronics','2','9854392310','kambur','zebronics@gmail.com',NULL,NULL,NULL,'2020-12-31 16:32:15','2020-12-31 22:01:11',1),(39,'ABCD','0','9123457901','kambur','abcd@gmail.com',NULL,NULL,NULL,'2021-01-01 10:47:43','2021-01-01 10:49:46',1),(40,'lkmusf','909012','7823124568','kambur','lkmusf@gmail.com',NULL,NULL,NULL,'2021-01-01 12:25:38',NULL,1),(41,'{}{}{}{}{}{}{}{}{}{}','<><><><><><><>','9384906362','kambur','{}{}{}{}{}{}{}{}{}',NULL,NULL,NULL,'2021-01-01 12:28:39',NULL,1),(42,'were','pqrasd','0909090909','kambur','were@gmail.com',NULL,NULL,NULL,'2021-01-01 12:32:09',NULL,1),(43,'what','what','8989898089','kambur','what@gmail.comm',NULL,NULL,NULL,'2021-01-01 12:36:38',NULL,1),(44,'was','was','0000000009','kambur','was@gamil.comm',NULL,NULL,NULL,'2021-01-01 12:39:47',NULL,1),(45,'then','then','6060606060','kambur','was@@@gamiil.com',NULL,NULL,NULL,'2021-01-01 12:40:55',NULL,1),(46,'qerer','qerer','0934213909','asasasasasas','++==++==++==',NULL,NULL,NULL,'2021-01-01 12:44:32',NULL,1),(50,'sdsdsdsd','ssdsdsdsd','6767676768','kambam','sdsdsd@gmailcom',NULL,NULL,NULL,'2021-01-01 12:59:26','2021-01-01 13:01:12',1);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `expenses_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `party_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalamount` double NOT NULL,
  `paidamount` double NOT NULL,
  `dueamount` double NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `expenses_created_by_foreign` (`created_by`),
  KEY `expenses_modified_by_foreign` (`modified_by`),
  CONSTRAINT `expenses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`username`) ON UPDATE CASCADE,
  CONSTRAINT `expenses_modified_by_foreign` FOREIGN KEY (`modified_by`) REFERENCES `users` (`username`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (1,'Rent Expenses','House Owner',50000,5000,45000,'home','admin','admin','2017-07-20 09:01:44','2017-07-20 09:01:57'),(2,'Bill payment','Subusu',4000,4000,0,'Internet','admin','admin','2017-10-28 14:52:48','2020-12-31 12:34:15'),(3,'Computer','Aslam',20000,20000,0,'qqqq','admin','admin','2020-12-31 12:37:28','2020-12-31 12:38:02'),(6,'handwash','assam',500,450,50,'www','musrafaslam',NULL,'2020-12-31 13:59:15','2020-12-31 13:59:15'),(7,'Rent Expenses','MUSRAF',500,400,100,'aquatech','admin','admin','2021-01-01 11:36:48','2021-01-01 11:38:07');
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expensestitles`
--

DROP TABLE IF EXISTS `expensestitles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expensestitles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expensestitles`
--

LOCK TABLES `expensestitles` WRITE;
/*!40000 ALTER TABLE `expensestitles` DISABLE KEYS */;
INSERT INTO `expensestitles` VALUES (1,'Consumable Expenses','2017-07-20 09:00:46','2017-07-20 09:00:46'),(2,'Rent Expenses','2017-07-20 09:00:58','2017-07-20 09:00:58'),(3,'Bill payment','2017-10-28 14:52:16','2017-10-28 14:52:16'),(4,'Computer','2020-12-31 12:36:34','2020-12-31 12:36:34'),(5,'handwash','2020-12-31 12:40:09','2020-12-31 12:40:09');
/*!40000 ALTER TABLE `expensestitles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gst`
--

DROP TABLE IF EXISTS `gst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gst` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gst` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gst`
--

LOCK TABLES `gst` WRITE;
/*!40000 ALTER TABLE `gst` DISABLE KEYS */;
INSERT INTO `gst` VALUES (4,'7',1,'2020-12-31 10:59:54','2020-12-31 10:59:54'),(5,'12',1,'2020-12-31 11:09:34','2020-12-31 11:09:34'),(6,'4',1,'2020-12-31 11:09:57','2020-12-31 11:09:57'),(8,'3',1,'2020-12-31 11:21:55','2020-12-31 11:21:55'),(9,'1',1,'2020-12-31 11:27:47','2020-12-31 11:27:47'),(10,'2',1,'2020-12-31 11:37:53','2020-12-31 11:37:53'),(11,'0',1,'2020-12-31 11:38:45','2020-12-31 11:38:45'),(12,'18',1,'2020-12-31 11:38:50','2020-12-31 11:38:50'),(13,'5',1,'2021-01-01 11:20:01','2021-01-01 11:20:01'),(14,'10',1,'2021-01-01 11:20:09','2021-01-01 11:20:09'),(15,'8',1,'2021-01-01 11:20:21','2021-01-01 11:20:21');
/*!40000 ALTER TABLE `gst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoicenos`
--

DROP TABLE IF EXISTS `invoicenos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoicenos` (
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal` double NOT NULL,
  `gst_total` double NOT NULL,
  `grand_total` double NOT NULL,
  `discount_amt` double NOT NULL,
  `paid_amt` double NOT NULL,
  `due_amt` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoicenos`
--

LOCK TABLES `invoicenos` WRITE;
/*!40000 ALTER TABLE `invoicenos` DISABLE KEYS */;
INSERT INTO `invoicenos` VALUES (NULL,'333','INV-001',300132,15002.64,315134.64,500,50000,264634.64,'2020-12-25 17:50:59','2020-12-25 17:50:59'),(NULL,'333','INV-002',300132,15002.64,315134.64,422,50000,264712.64,'2020-12-26 14:09:16','2020-12-26 14:09:16'),(NULL,'334','INV-003',100000,5000,105000,2000,100000,3000,'2020-12-26 14:21:11','2020-12-26 14:21:11'),(NULL,'334','INV-004',100000,5000,105000,0,105000,0,'2020-12-26 16:36:21','2020-12-26 16:36:21'),(NULL,'12345','INV-005',60,3,63,0,63,0,'2020-12-31 11:28:06','2020-12-31 11:28:06'),(NULL,'304059','INV-006',120,6,126,5,126,0,'2020-12-31 12:05:08','2020-12-31 12:05:08'),(NULL,'123112','INV-007',40,2,42,2,4,36,'2020-12-31 12:45:11','2020-12-31 12:45:11'),(NULL,'musrafhussain','INV-008',60,3,63,5,63,-5,'2020-12-31 12:51:49','2020-12-31 12:51:49'),(NULL,'anwar','INV-009',60,3,63,1,63,-1,'2020-12-31 12:53:46','2020-12-31 12:53:46'),(NULL,'000120','INV-010',2400,48,2448,3,2448,-3,'2020-12-31 12:55:09','2020-12-31 12:55:09'),(NULL,'anwarameer','INV-011',250,7.5,257.5,0,257.5,0,'2020-12-31 13:04:37','2020-12-31 13:04:37'),(NULL,'musraftamil','INV-012',3200,64,3264,5,3264,-5,'2020-12-31 13:05:29','2020-12-31 13:05:29'),(NULL,'anwarassif','INV-013',120000,6000,126000,3,126000,-3,'2020-12-31 13:06:27','2020-12-31 13:06:27'),(NULL,'12345','INV-014',600,30,630,0,630,0,'2020-12-31 13:20:18','2020-12-31 13:20:18'),(NULL,'304059','INV-015',600,30,630,2,630,-2,'2020-12-31 13:21:31','2020-12-31 13:21:31'),(NULL,'musrafhussain','INV-016',620,21,641,2,641,-2,'2020-12-31 15:15:17','2020-12-31 15:15:17'),(NULL,'musrafhussain','INV-017',500,15,515,2,515,-2,'2020-12-31 15:16:19','2020-12-31 15:16:19'),(NULL,'12345','INV-018',200,10,210,5,210,-5,'2020-12-31 15:17:11','2020-12-31 15:17:11'),(NULL,'aaaaa','INV-019',8000,160,8160,5,8160,-5,'2020-12-31 15:18:52','2020-12-31 15:18:52'),(NULL,'aaaaa','INV-020',500,15,515,2,515,-2,'2020-12-31 15:19:45','2020-12-31 15:19:45'),(NULL,'wwww','INV-021',600,18,618,2,618,-2,'2020-12-31 15:22:28','2020-12-31 15:22:28'),(NULL,'123123','INV-022',620,19,639,5,1000,-366,'2020-12-31 15:23:18','2020-12-31 15:23:18'),(NULL,'123123','INV-023',620,19,639,5,639,-5,'2020-12-31 15:49:45','2020-12-31 15:49:45'),(NULL,'12345','INV-024',600,18,618,2,618,-2,'2020-12-31 15:51:55','2020-12-31 15:51:55'),(NULL,'12345','INV-025',240000,12000,252000,5,252000,-5,'2020-12-31 15:53:33','2020-12-31 15:53:33'),(NULL,'jhlkjsadffg','INV-026',40000,2000,42000,2,42000,-2,'2020-12-31 15:55:45','2020-12-31 15:55:45'),(NULL,'123123','INV-027',20,1,21,1,100,-80,'2020-12-31 16:32:07','2020-12-31 16:32:07'),(NULL,'000120','INV-028',200000,10000,210000,5,210000,-5,'2020-12-31 16:34:43','2020-12-31 16:34:43'),(NULL,'000120','INV-029',200000,10000,210000,5,210000,-5,'2020-12-31 16:39:00','2020-12-31 16:39:00'),(NULL,'000120','INV-030',200000,10000,210000,10,210000,-10,'2020-12-31 16:39:29','2020-12-31 16:39:29'),(NULL,'123123','INV-031',200020,10001,210021,0,21000,189021,'2020-12-31 16:51:02','2020-12-31 16:51:02'),(NULL,'123123','INV-032',200020,10001,210021,0,200000,10021,'2020-12-31 16:53:47','2020-12-31 16:53:47'),(NULL,'304059','INV-033',40000,2000,42000,2,42000,-2,'2020-12-31 16:59:26','2020-12-31 16:59:26'),(NULL,'12321','INV-034',40000,2000,42000,200,50000,-8200,'2020-12-31 19:00:11','2020-12-31 19:00:11'),(NULL,'anwar','INV-035',20000,1000,21000,3,21000,-3,'2021-01-01 10:43:28','2021-01-01 10:43:28'),(NULL,'7218','INV-036',1000,20,1020,5,1020,-5,'2021-01-01 10:56:06','2021-01-01 10:56:06'),(NULL,'72181','INV-037',80,5.6,85.6,2,85.6,-2,'2021-01-01 11:24:18','2021-01-01 11:24:18'),(NULL,'091209','INV-038',200,10,210,5,210,-5,'2021-01-01 12:23:00','2021-01-01 12:23:00'),(NULL,'091209','INV-039',400,20,420,2,420,-2,'2021-01-01 12:24:16','2021-01-01 12:24:16'),(NULL,'909012','INV-040',400,20,420,5,420,-5,'2021-01-01 12:26:13','2021-01-01 12:26:13'),(NULL,'<><><><><><>','INV-041',600,30,630,2,630,-2,'2021-01-01 12:29:22','2021-01-01 12:29:22'),(NULL,'were','INV-042',300,15,315,0,315,0,'2021-01-01 12:30:42','2021-01-01 12:30:42'),(NULL,'pqrasd','INV-043',10000,600,10600,10,10600,-10,'2021-01-01 12:32:53','2021-01-01 12:32:53'),(NULL,'what','INV-044',600,30,630,5,630,-5,'2021-01-01 12:37:11','2021-01-01 12:37:11'),(NULL,'then','INV-045',60,3,63,1,63,-1,'2021-01-01 12:41:21','2021-01-01 12:41:21'),(NULL,'qerer','INV-046',800,56,856,5,856,-5,'2021-01-02 10:29:36','2021-01-02 10:29:36'),(NULL,'then','INV-047',12000,600,12600,10,12600,-10,'2021-01-02 10:30:11','2021-01-02 10:30:11'),(NULL,'was','INV-048',400,20,420,10,420,-10,'2021-01-02 10:30:39','2021-01-02 10:30:39'),(NULL,'what','INV-049',400,20,420,2,420,-2,'2021-01-02 10:31:21','2021-01-02 10:31:21'),(NULL,'pqrasd','INV-050',360,18,378,2,378,-2,'2021-01-02 10:32:17','2021-01-02 10:32:17'),(NULL,'then','INV-051',60,3,63,0,100,-37,'2021-01-02 11:33:42','2021-01-02 11:33:42'),(NULL,'304059078','INV-052',160,8,168,2,1,165,'2021-01-02 11:34:20','2021-01-02 11:34:20'),(NULL,'musrafhussain','INV-053',40000,2000,42000,5,42000,-5,'2021-01-02 12:44:49','2021-01-02 12:44:49'),(NULL,'12321','INV-054',60,3,63,0,63,0,'2021-01-02 14:57:36','2021-01-02 14:57:36'),(NULL,'musrafhussain','INV-055',120,6,126,0,126,0,'2021-01-02 15:00:38','2021-01-02 15:00:38'),(NULL,'anwar','INV-056',20000,1000,21000,5,21000,-5,'2021-01-02 15:06:50','2021-01-02 15:06:50'),(NULL,'12321','INV-057',1000,50,1050,2,1050,-2,'2021-01-02 15:07:39','2021-01-02 15:07:39'),(NULL,'musrafhussain','INV-058',20,1,21,0,21,0,'2021-01-02 15:26:31','2021-01-02 15:26:31');
/*!40000 ALTER TABLE `invoicenos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoiceprofiles`
--

DROP TABLE IF EXISTS `invoiceprofiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoiceprofiles` (
  `id` int(10) unsigned NOT NULL,
  `serialPrefix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialNumberStart` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoiceNotes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoiceTerms` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoiceprofiles`
--

LOCK TABLES `invoiceprofiles` WRITE;
/*!40000 ALTER TABLE `invoiceprofiles` DISABLE KEYS */;
INSERT INTO `invoiceprofiles` VALUES (1,'INV-','001','pppppppppppppppp','ppppppffffffffffffffff',NULL,'2020-11-26 08:27:06');
/*!40000 ALTER TABLE `invoiceprofiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials`
--

DROP TABLE IF EXISTS `materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `material_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials`
--

LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
INSERT INTO `materials` VALUES (15,NULL,'WO-20201231006',NULL,NULL,NULL,NULL,NULL,'2020-12-31 13:40:40',NULL),(16,NULL,'WO-20201231004',NULL,NULL,NULL,NULL,NULL,'2020-12-31 13:41:43',NULL),(17,'filter','WO-20201231002',NULL,'2','500','2020-12-31','2021-01-10','2020-12-31 13:50:23',NULL),(18,NULL,'WO-20201231001',NULL,NULL,NULL,NULL,NULL,'2020-12-31 13:53:41',NULL),(19,NULL,'WO-20201231003',NULL,NULL,NULL,NULL,NULL,'2020-12-31 14:02:12',NULL),(20,NULL,'WO-20201231008',NULL,NULL,NULL,NULL,NULL,'2020-12-31 15:04:01',NULL),(21,'filter','WO-20201231010',NULL,'1','500','2020-12-31','2021-01-10','2020-12-31 15:36:39',NULL),(22,NULL,'WO-20201231005',NULL,NULL,NULL,NULL,NULL,'2020-12-31 15:47:58',NULL),(23,NULL,'WO-20201231009',NULL,NULL,NULL,NULL,NULL,'2020-12-31 20:07:39',NULL),(24,NULL,'WO-20201231007',NULL,NULL,NULL,NULL,NULL,'2020-12-31 20:09:28',NULL),(25,'filter','WO-20201231011',NULL,'1','500','2020-12-31','2021-01-10','2020-12-31 23:23:16',NULL),(26,'bolt','WO-20201231011',NULL,'1','400',NULL,NULL,'2020-12-31 23:23:16',NULL),(27,'filter','WO-20201231012',NULL,'1','500','2020-12-31','2021-01-10','2020-12-31 23:33:50',NULL),(28,'bolt','WO-20201231012',NULL,'1','4000',NULL,NULL,'2020-12-31 23:33:50',NULL),(29,'filter','WO-20201231013','000120','1','500','2020-12-31','2021-01-07','2020-12-31 23:36:48',NULL),(30,'sss','WO-20210101016','000120',NULL,'200',NULL,NULL,'2021-01-01 11:30:34',NULL),(31,'computer','WO-20210101015','musraftamil','1','1000','2020-12-30','2021-01-15','2021-01-01 11:44:15',NULL),(32,'Drinks','WO-20210101017','musrafhussain','2','20',NULL,NULL,'2021-01-01 11:49:40',NULL),(33,'Drinks','WO-20210102019','then',NULL,'20','2021-01-01','2021-01-10','2021-01-02 10:37:53',NULL),(34,'Drinks','WO-20210102020','was',NULL,'20','2021-01-01','2021-01-10','2021-01-02 10:50:03',NULL),(35,'computer','WO-20210101018','musrafhussain',NULL,'3000','2021-01-01','2021-05-15','2021-01-02 10:51:39',NULL),(36,'computer','WO-20210102021','what','2','700','2021-01-01','2021-09-01','2021-01-02 11:15:31',NULL),(37,'computer','WO-20210102022','what','1','5000','2021-01-01','2021-08-03','2021-01-02 12:38:24',NULL),(38,'computer','WO-20210102023','then','2','7000','2021-01-02','2022-01-20','2021-01-02 12:40:57',NULL),(39,NULL,'WO-20210102024','musrafhussain',NULL,NULL,NULL,NULL,'2021-01-02 16:10:31',NULL);
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',2),(3,'2017_05_28_124228_create_roles_table',3),(4,'2017_05_28_124417_create_user_roles_table',4),(5,'2017_05_28_124654_create_permissions_table',5),(6,'2017_05_28_124806_create_role_permissions_table',6),(7,'2017_05_28_125406_create_modules_table',7),(8,'2017_05_28_125428_create_role_modules_table',8),(9,'2017_06_07_103849_create_productcategories_table',9),(10,'2017_06_07_103917_create_products_table',10),(11,'2017_06_09_071114_create_sales_table',11),(12,'2017_06_26_093722_create_expenses_table',12),(13,'2017_07_06_132245_create_salescarts_table',13),(14,'2017_07_06_141913_create_expensestitles_table',14),(15,'2017_07_07_125933_create_purchases_table',15),(17,'2017_07_17_084213_create_transactions_table',16),(18,'2020_12_23_202925_create_Servicetypes_table',17),(19,'2020_12_23_215804_create_clients_table',18),(20,'2020_12_23_222549_create_customers_table',19),(21,'2020_12_24_084635_add_status_to_customers_table',20),(22,'2020_12_24_221516_add_gst_and_customer_id_to_salescarts_table',21),(23,'2020_12_03_180128_create_gst_table',22),(24,'2020_12_24_232842_add_gst_percent_to_products_table',23),(25,'2020_12_25_225520_create_invoicenos_table',24),(26,'2020_12_25_232853_add_customer_id_to_sales_table',25),(27,'2020_12_26_213846_add_warenty_end_to_salescarts_table',26),(28,'2020_12_26_213939_add_warenty_end_to_sales_table',26),(29,'2020_12_27_155851_create_serviceorders_table',27),(30,'2020_12_28_055528_add_product_id_to_serviceorders_table',28),(31,'2020_12_29_045005_create_materials_table',29),(32,'2020_12_29_010151_create_serviceorders_table',30),(33,'2020_12_31_224327_add_customer_id_to_materials_table',31),(34,'2020_11_29_192146_create_advanced_salaries_table',32),(35,'2020_12_05_114912_create_salaries_table',33),(36,'2021_01_01_223039_add_salary_to_users_table',34);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_key` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_url` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_rank` int(11) NOT NULL,
  `view_sidebar` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `modules_name_unique` (`name`),
  UNIQUE KEY `modules_module_key_unique` (`module_key`),
  UNIQUE KEY `modules_module_url_unique` (`module_url`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'Dashboard','dashboard','dashboard-panel','fa fa-home',1,1,'2017-06-21 12:30:00','2021-01-02 15:14:25'),(2,'User Management','user_management','user-list','fa fa-user',2,1,'2017-06-05 22:44:05','2021-01-02 15:16:13'),(3,'Module Management','module_management','module-list','fa fa-signal',3,1,'2017-06-06 19:38:48','2021-01-02 12:10:55'),(4,'Role Management','role_management','role-list','fa fa-eye',5,1,'2017-06-06 19:55:09','2021-01-02 12:09:16'),(5,'Permission Management','permission_management','permission-list','fa fa-refresh',4,1,'2017-06-06 22:27:01','2021-01-02 12:10:47'),(6,'Productcategory MGMT','productcategory_mgmt','productcategory-list','fa fa-flag',6,1,'2017-06-07 18:09:49','2021-01-02 12:20:42'),(7,'Product Management','product_management','product-list','fa fa-product-hunt',7,1,'2017-06-07 18:11:25','2021-01-02 14:24:41'),(8,'Sales Management','sales_management','sales-create','fa fa-shopping-cart',9,1,'2017-06-08 19:37:53','2021-01-02 12:11:26'),(10,'Expenses Management','expenses_management','expenses-list','fa fa-usd',13,1,'2017-06-22 18:52:09','2021-01-02 14:25:31'),(14,'Purchase Management','purchase_management','purchase-list','fa fa-list',10,1,'2017-07-07 01:23:47','2021-01-02 14:29:56'),(15,'Bank Transaction','bank_transaction','transaction-list','fa fa-dashboard',16,1,'2017-07-15 23:41:04','2021-01-01 23:50:47'),(16,'Service Order','service_order','serviceorder-list','fa fa-dashboard',11,1,'2020-12-23 10:17:04','2021-01-02 13:16:28'),(17,'Customer Management','customer_key','customer-list','fa fa-dashboard',8,1,'2020-12-23 16:48:05','2021-01-02 14:25:58'),(18,'Setting','setting_key','setting-create','fa fa-dashboard',20,1,'2020-12-25 16:45:50','2021-01-02 12:13:42'),(19,'Service Order Task','order-task','order_task','fa fa-dashboard',12,1,'2020-12-28 02:43:34','2021-01-02 14:31:44'),(20,'All Reports','report_management','report-list','fa fa-dashboard',15,1,'2021-01-01 10:56:56','2021-01-02 12:10:05'),(21,'Attendance','attendance_management','attendance_create','fa fa-dashboard',17,1,'2021-01-01 19:52:39','2021-01-02 12:20:54'),(22,'Advance Salary','advancesalary_management','advancesalary-create','fa fa-dashboard',18,1,'2021-01-01 21:00:07','2021-01-02 15:31:07'),(23,'Salary','salary_management','salary-index','fa fa-dashboard',19,1,'2021-01-01 23:12:29','2021-01-02 00:12:44');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`),
  UNIQUE KEY `permissions_permission_key_unique` (`permission_key`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'Create New User','user-register','2017-06-06 21:12:20','2017-06-06 21:12:20'),(2,'Module Create','module-create','2017-06-07 23:18:50','2017-06-07 23:18:50'),(3,'Module View','module-list','2017-06-07 23:19:11','2017-06-07 23:19:11'),(4,'Module Delete','module-delete','2017-06-07 23:19:26','2017-06-07 23:19:26'),(5,'Module Edit','module-edit','2017-06-07 23:19:43','2017-06-07 23:19:43'),(6,'Role View','role-list','2017-06-07 23:20:39','2017-06-07 23:20:39'),(7,'Role Create','role-create','2017-06-07 23:20:52','2017-06-07 23:20:52'),(8,'Permission Asign','permission-asign','2017-06-07 23:21:16','2017-06-07 23:32:14'),(9,'Permission Create','permission-create','2017-06-07 23:21:48','2017-06-07 23:21:48'),(10,'Permission Views','permission-list','2017-06-07 23:22:07','2017-06-07 23:22:07'),(11,'Permission Edit','permission-edit','2017-06-07 23:22:46','2017-06-07 23:22:46'),(12,'Permission Delete','permission-delete','2017-06-07 23:23:18','2017-06-07 23:23:18'),(13,'Productcategory View','productcategory-list','2017-06-07 23:33:40','2017-06-07 23:33:40'),(14,'Product Category Create','productcategory-create','2017-06-07 23:34:38','2017-06-07 23:34:38'),(15,'Product Category Edit','productcategory-edit','2017-06-07 23:35:00','2017-06-07 23:35:00'),(16,'Product Category Delete','productcategory-delete','2017-06-07 23:35:21','2017-06-07 23:35:21'),(17,'Product View','product-list','2017-06-07 23:39:33','2017-06-07 23:39:33'),(18,'Product Create','product-create','2017-06-07 23:39:50','2017-06-07 23:39:50'),(19,'Product Edit','product-edit','2017-06-07 23:40:06','2017-06-07 23:40:06'),(20,'Product Delete','product-delete','2017-06-07 23:40:45','2017-06-07 23:40:45'),(25,'Sales view','sales-list','2017-07-16 23:57:39','2017-07-16 23:57:39'),(26,'Make/Create Sales','sales-create','2017-07-16 23:59:43','2017-07-16 23:59:43'),(30,'Purchase view','purchase-list','2017-07-17 00:24:38','2017-07-17 00:24:38'),(31,'Make new Purchase','purchase-create','2017-07-17 00:25:03','2017-07-17 00:25:03'),(32,'purchase Update/Confirm Dueamount','purchase-update','2017-07-17 00:25:41','2017-07-17 00:25:41'),(33,'Expenses View','expenses-list','2017-07-17 00:30:32','2017-07-17 00:30:32'),(34,'Expenses Create','expenses-create','2017-07-17 00:31:24','2017-07-17 00:31:24'),(35,'Expenses Edit','expenses-edit','2017-07-17 00:31:43','2017-07-17 00:31:43'),(36,'Expenses Delete','expenses-delete','2017-07-17 00:32:04','2017-07-17 00:32:04'),(37,'Expenses Heading Create','expenses-heading','2017-07-17 00:33:34','2017-07-17 00:33:34'),(45,'User Password Change','password-change','2017-07-17 00:54:08','2017-07-17 00:54:08'),(46,'Transcation/Bank view','transaction-list','2017-07-17 22:30:39','2017-07-17 22:30:39'),(47,'Transaction remaining Deposite update','transaction-update','2017-07-17 22:31:56','2017-07-17 22:31:56'),(48,'Transaction Entry','transaction-create','2017-07-17 22:32:23','2017-07-17 22:32:23'),(49,'Serviceorder-create','serviceorder-create','2020-12-26 14:29:02','2020-12-26 14:29:02'),(50,'User View','user-list','2021-01-02 00:03:44','2021-01-02 00:03:44'),(51,'User Edit','user-edit','2021-01-02 00:05:33','2021-01-02 00:05:33'),(52,'User Delete','user-delete','2021-01-02 07:41:03','2021-01-02 07:41:03'),(53,'Role Delete','role-delete','2021-01-02 07:50:21','2021-01-02 07:50:21'),(54,'Customer View','customer-list','2021-01-02 07:54:22','2021-01-02 07:54:22'),(55,'Customer Create','customer-create','2021-01-02 07:55:24','2021-01-02 07:55:24'),(56,'Customer Edit','customer-edit','2021-01-02 07:55:59','2021-01-02 07:55:59'),(57,'Customer Delete','customer-delete','2021-01-02 07:57:02','2021-01-02 07:57:02'),(58,'Service Order View','serviceorder-list','2021-01-02 08:03:34','2021-01-02 08:03:34'),(59,'Service Type Create','servicetype-create','2021-01-02 08:04:58','2021-01-02 08:04:58'),(60,'Service Type View','servicetype-list','2021-01-02 08:05:34','2021-01-02 08:05:34'),(61,'Service Type Delete','servicetype-delete','2021-01-02 08:06:37','2021-01-02 08:06:37'),(62,'Service Order Task','order_task','2021-01-02 08:08:16','2021-01-02 08:08:16'),(63,'Service Order Status Update','workorder-taskupdate','2021-01-02 08:10:50','2021-01-02 08:10:50'),(64,'All Reports View','report-list','2021-01-02 08:12:49','2021-01-02 08:12:49'),(65,'Sales Report View','sales-report','2021-01-02 08:14:38','2021-01-02 08:14:38'),(66,'Attendance Create','attendance_create','2021-01-02 08:16:32','2021-01-02 08:16:32'),(67,'Attendance View','attendance-index','2021-01-02 08:17:02','2021-01-02 08:17:02'),(68,'Attendance Show','attendance-show','2021-01-02 08:17:30','2021-01-02 08:17:30'),(69,'Attendance Edit','attendance-edit','2021-01-02 08:18:04','2021-01-02 08:18:04'),(70,'Attendance Delete','attendance-destroy','2021-01-02 08:18:55','2021-01-02 08:18:55'),(71,'Advance Salary Create','advancesalary-create','2021-01-02 08:19:40','2021-01-02 08:19:40'),(72,'Advance Salary View','advsalary-index','2021-01-02 08:20:06','2021-01-02 08:20:06'),(73,'Advance Salary Show','advsalary-show','2021-01-02 08:20:30','2021-01-02 08:20:30'),(74,'Advance Salary Edit','advsalary-edit','2021-01-02 08:20:56','2021-01-02 08:20:56'),(75,'Advance Salary Delete','advsalary-destroy','2021-01-02 08:21:34','2021-01-02 08:21:34'),(76,'Salary View','salary-index','2021-01-02 08:22:42','2021-01-02 08:22:42'),(77,'GST Create','gst-create','2021-01-02 10:21:59','2021-01-02 10:21:59'),(78,'GST View','user-view','2021-01-02 10:22:19','2021-01-02 10:22:19'),(79,'GST Edit','gst-edit','2021-01-02 10:22:38','2021-01-02 10:22:38'),(80,'GST Delete','gst-delete','2021-01-02 10:23:13','2021-01-02 10:23:13'),(81,'Sales Carts Create','salescarts-create','2021-01-02 11:29:11','2021-01-02 11:29:11');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcategories`
--

DROP TABLE IF EXISTS `productcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `productcategories_slug_unique` (`slug`),
  KEY `productcategories_created_by_foreign` (`created_by`),
  KEY `productcategories_modified_by_foreign` (`modified_by`),
  CONSTRAINT `productcategories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`username`) ON UPDATE CASCADE,
  CONSTRAINT `productcategories_modified_by_foreign` FOREIGN KEY (`modified_by`) REFERENCES `users` (`username`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcategories`
--

LOCK TABLES `productcategories` WRITE;
/*!40000 ALTER TABLE `productcategories` DISABLE KEYS */;
INSERT INTO `productcategories` VALUES (10,'Beverages','beverages',1,'admin','admin12345','2020-12-31 10:09:17','2021-01-02 12:22:07'),(11,'Personal Care','personal-care',1,'admin','admin','2020-12-31 10:10:46','2020-12-31 10:53:12'),(12,'Food Items','food-items',1,'admin','admin','2020-12-31 10:12:13','2020-12-31 10:53:25'),(13,'Baby product','baby-product',1,'admin','admin','2020-12-31 10:12:44','2020-12-31 10:53:27'),(14,'Health product','health-product',1,'admin','admin','2020-12-31 10:13:17','2020-12-31 10:53:30'),(15,'Computer','computer',1,'admin','admin','2020-12-31 10:13:31','2020-12-31 10:53:33'),(21,'Vegetables','vegetables',1,'admin','admin','2021-01-01 11:07:27','2021-01-01 11:07:31'),(22,'Tools','tools',1,'admin',NULL,'2021-01-02 15:38:14','2021-01-02 15:38:14');
/*!40000 ALTER TABLE `productcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `productcategory_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `price` double NOT NULL,
  `gst_percent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_code_unique` (`code`),
  KEY `products_productcategory_id_foreign` (`productcategory_id`),
  KEY `products_created_by_foreign` (`created_by`),
  KEY `products_modified_by_foreign` (`modified_by`),
  CONSTRAINT `products_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`username`) ON UPDATE CASCADE,
  CONSTRAINT `products_modified_by_foreign` FOREIGN KEY (`modified_by`) REFERENCES `users` (`username`) ON UPDATE CASCADE,
  CONSTRAINT `products_productcategory_id_foreign` FOREIGN KEY (`productcategory_id`) REFERENCES `productcategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (22,11,'www','110',70,70,2000,'5',1,'admin','admin','2020-12-31 11:03:21','2021-01-02 15:37:18'),(23,10,'Cool drinks-Coco cola','1212',130,80,60,'5',1,'admin','admin','2020-12-31 11:03:49','2021-01-02 15:00:11'),(24,12,'buiscuts','1213',1000,858,20,'5',1,'admin','admin','2020-12-31 11:04:38','2021-01-02 15:25:56'),(25,13,'baby shirt','12124',1000,993,800,'2',1,'admin','admin','2020-12-31 11:05:41','2020-12-31 15:19:18'),(26,13,'baby shirt2','121215',2000,1987,1000,'5',1,'admin','admin','2020-12-31 11:06:30','2021-01-02 15:07:00'),(27,14,'Energy Drink','1210',500,489,80,'7',1,'admin','admin','2020-12-31 11:07:03','2021-01-02 10:29:17'),(31,15,'Zebronics','10101',200,175,20000,'5',1,'admin','admin','2020-12-31 11:25:10','2021-01-02 15:03:34'),(34,13,'baby shirt2','qweds',60,59,1000,'2',1,'admin','admin','2020-12-31 11:45:37','2021-01-02 16:01:01'),(35,15,'C.P.U','09',10,0,1000,'6',1,'admin',NULL,'2021-01-01 11:26:33','2021-01-01 12:32:39'),(36,15,'Hup','26',10,10,10,'0',1,'admin',NULL,'2021-01-02 14:39:55','2021-01-02 14:39:55'),(37,22,'Hup','1',10,10,1000,'0',1,'admin',NULL,'2021-01-02 15:38:51','2021-01-02 15:38:51'),(38,22,'Jack','2',50,50,10,'0',1,'admin',NULL,'2021-01-02 15:39:23','2021-01-02 15:39:23'),(39,22,'Cat Wire 5, Cat Wire 6','3',40,40,600,'2',1,'admin',NULL,'2021-01-02 15:43:25','2021-01-02 15:43:25');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `party_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalamount` double NOT NULL,
  `paidamount` double NOT NULL,
  `dueamount` double NOT NULL,
  `status` enum('vat','pan','normal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchases_created_by_foreign` (`created_by`),
  KEY `purchases_modified_by_foreign` (`modified_by`),
  CONSTRAINT `purchases_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`username`) ON UPDATE CASCADE,
  CONSTRAINT `purchases_modified_by_foreign` FOREIGN KEY (`modified_by`) REFERENCES `users` (`username`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` VALUES (5,'musraf','Aslam',100,100,0,'pan','2020-12-31','admin',NULL,'2020-12-31 12:25:37','2020-12-31 12:25:37'),(6,'Aslam','musraf',500,500,0,'vat','2020-12-31','admin',NULL,'2020-12-31 12:26:14','2020-12-31 12:27:06'),(7,'Tharik','asam',1000,1000,0,'pan','2020-12-31','admin',NULL,'2020-12-31 12:26:50','2020-12-31 12:27:09'),(8,'musraf','assam',300,300,0,'normal','2020-12-31','admin',NULL,'2020-12-31 12:44:48','2020-12-31 12:46:33'),(9,'computer','Aslam',1000,1000,0,'vat','2021-01-01','admin',NULL,'2021-01-01 11:39:48','2021-01-02 10:34:12');
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_modules`
--

DROP TABLE IF EXISTS `role_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `module_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_modules_role_id_foreign` (`role_id`),
  KEY `role_modules_module_id_foreign` (`module_id`),
  CONSTRAINT `role_modules_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_modules_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_modules`
--

LOCK TABLES `role_modules` WRITE;
/*!40000 ALTER TABLE `role_modules` DISABLE KEYS */;
INSERT INTO `role_modules` VALUES (126,1,15,'2021-01-01 23:50:47','2021-01-01 23:50:47'),(127,2,15,'2021-01-01 23:50:47','2021-01-01 23:50:47'),(136,1,23,'2021-01-02 00:12:44','2021-01-02 00:12:44'),(160,1,4,'2021-01-02 12:09:16','2021-01-02 12:09:16'),(167,1,20,'2021-01-02 12:10:05','2021-01-02 12:10:05'),(168,2,20,'2021-01-02 12:10:05','2021-01-02 12:10:05'),(173,1,5,'2021-01-02 12:10:47','2021-01-02 12:10:47'),(174,2,5,'2021-01-02 12:10:47','2021-01-02 12:10:47'),(175,1,3,'2021-01-02 12:10:55','2021-01-02 12:10:55'),(180,1,8,'2021-01-02 12:11:26','2021-01-02 12:11:26'),(181,2,8,'2021-01-02 12:11:26','2021-01-02 12:11:26'),(184,1,6,'2021-01-02 12:20:42','2021-01-02 12:20:42'),(185,2,6,'2021-01-02 12:20:42','2021-01-02 12:20:42'),(186,14,6,'2021-01-02 12:20:42','2021-01-02 12:20:42'),(190,1,21,'2021-01-02 12:20:54','2021-01-02 12:20:54'),(191,2,21,'2021-01-02 12:20:54','2021-01-02 12:20:54'),(192,14,21,'2021-01-02 12:20:54','2021-01-02 12:20:54'),(215,1,16,'2021-01-02 13:16:28','2021-01-02 13:16:28'),(216,2,16,'2021-01-02 13:16:28','2021-01-02 13:16:28'),(233,1,7,'2021-01-02 14:24:41','2021-01-02 14:24:41'),(234,2,7,'2021-01-02 14:24:41','2021-01-02 14:24:41'),(235,1,10,'2021-01-02 14:25:31','2021-01-02 14:25:31'),(236,2,10,'2021-01-02 14:25:31','2021-01-02 14:25:31'),(239,1,14,'2021-01-02 14:29:56','2021-01-02 14:29:56'),(240,2,14,'2021-01-02 14:29:56','2021-01-02 14:29:56'),(241,1,19,'2021-01-02 14:31:44','2021-01-02 14:31:44'),(242,2,19,'2021-01-02 14:31:44','2021-01-02 14:31:44'),(248,2,1,'2021-01-02 15:14:25','2021-01-02 15:14:25'),(249,1,1,'2021-01-02 15:14:25','2021-01-02 15:14:25'),(250,2,2,'2021-01-02 15:16:13','2021-01-02 15:16:13'),(251,1,2,'2021-01-02 15:16:13','2021-01-02 15:16:13'),(252,1,22,'2021-01-02 15:31:07','2021-01-02 15:31:07'),(253,2,22,'2021-01-02 15:31:07','2021-01-02 15:31:07'),(254,14,22,'2021-01-02 15:31:07','2021-01-02 15:31:07');
/*!40000 ALTER TABLE `role_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permissions`
--

DROP TABLE IF EXISTS `role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_permissions_role_id_foreign` (`role_id`),
  KEY `role_permissions_permission_id_foreign` (`permission_id`),
  CONSTRAINT `role_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3384 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permissions`
--

LOCK TABLES `role_permissions` WRITE;
/*!40000 ALTER TABLE `role_permissions` DISABLE KEYS */;
INSERT INTO `role_permissions` VALUES (2973,2,1,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2974,2,2,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2975,2,3,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2976,2,4,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2977,2,5,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2978,2,6,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2979,2,7,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2980,2,8,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2981,2,9,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2982,2,10,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2983,2,11,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2984,2,12,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2985,2,13,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2986,2,14,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2987,2,15,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2988,2,16,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2989,2,17,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2990,2,18,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2991,2,19,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2992,2,20,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2993,2,25,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2994,2,26,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2995,2,30,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2996,2,31,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2997,2,32,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2998,2,33,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(2999,2,34,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3000,2,35,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3001,2,36,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3002,2,37,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3003,2,45,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3004,2,46,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3005,2,47,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3006,2,48,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3007,2,49,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3008,2,50,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3009,2,51,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3010,2,52,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3011,2,53,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3012,2,54,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3013,2,55,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3014,2,56,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3015,2,57,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3016,2,58,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3017,2,59,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3018,2,60,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3019,2,61,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3020,2,62,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3021,2,63,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3022,2,64,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3023,2,65,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3024,2,66,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3025,2,67,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3026,2,68,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3027,2,69,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3028,2,70,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3029,2,71,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3030,2,72,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3031,2,73,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3032,2,74,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3033,2,75,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3034,2,76,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3035,2,77,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3036,2,78,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3037,2,79,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3038,2,80,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3039,2,81,'2021-01-02 12:06:28','2021-01-02 12:06:28'),(3133,14,1,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3134,14,2,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3135,14,3,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3136,14,4,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3137,14,5,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3138,14,6,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3139,14,7,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3140,14,8,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3141,14,9,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3142,14,10,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3143,14,11,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3144,14,12,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3145,14,13,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3146,14,14,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3147,14,15,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3148,14,16,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3149,14,17,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3150,14,18,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3151,14,19,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3152,14,20,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3153,14,25,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3154,14,26,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3155,14,30,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3156,14,31,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3157,14,32,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3158,14,33,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3159,14,34,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3160,14,35,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3161,14,36,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3162,14,37,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3163,14,45,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3164,14,46,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3165,14,47,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3166,14,48,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3167,14,49,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3168,14,50,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3169,14,51,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3170,14,52,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3171,14,53,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3172,14,54,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3173,14,55,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3174,14,56,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3175,14,57,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3176,14,58,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3177,14,59,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3178,14,60,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3179,14,61,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3180,14,62,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3181,14,63,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3182,14,64,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3183,14,65,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3184,14,66,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3185,14,67,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3186,14,68,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3187,14,69,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3188,14,70,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3189,14,71,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3190,14,72,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3191,14,73,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3192,14,74,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3193,14,75,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3194,14,76,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3195,14,77,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3196,14,78,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3197,14,79,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3198,14,80,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3199,14,81,'2021-01-02 12:22:51','2021-01-02 12:22:51'),(3300,15,1,'2021-01-02 14:23:57','2021-01-02 14:23:57'),(3301,15,5,'2021-01-02 14:23:57','2021-01-02 14:23:57'),(3302,15,13,'2021-01-02 14:23:57','2021-01-02 14:23:57'),(3303,15,17,'2021-01-02 14:23:57','2021-01-02 14:23:57'),(3304,15,30,'2021-01-02 14:23:57','2021-01-02 14:23:57'),(3305,15,33,'2021-01-02 14:23:57','2021-01-02 14:23:57'),(3306,15,49,'2021-01-02 14:23:57','2021-01-02 14:23:57'),(3307,15,50,'2021-01-02 14:23:57','2021-01-02 14:23:57'),(3308,15,51,'2021-01-02 14:23:57','2021-01-02 14:23:57'),(3309,15,52,'2021-01-02 14:23:57','2021-01-02 14:23:57'),(3310,15,54,'2021-01-02 14:23:57','2021-01-02 14:23:57'),(3311,15,58,'2021-01-02 14:23:57','2021-01-02 14:23:57'),(3312,15,59,'2021-01-02 14:23:57','2021-01-02 14:23:57'),(3313,15,60,'2021-01-02 14:23:57','2021-01-02 14:23:57'),(3314,15,61,'2021-01-02 14:23:57','2021-01-02 14:23:57'),(3315,15,62,'2021-01-02 14:23:57','2021-01-02 14:23:57'),(3316,15,63,'2021-01-02 14:23:57','2021-01-02 14:23:57'),(3317,1,1,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3318,1,2,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3319,1,3,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3320,1,4,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3321,1,5,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3322,1,6,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3323,1,7,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3324,1,8,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3325,1,9,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3326,1,10,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3327,1,11,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3328,1,12,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3329,1,13,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3330,1,14,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3331,1,15,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3332,1,16,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3333,1,17,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3334,1,18,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3335,1,19,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3336,1,20,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3337,1,25,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3338,1,26,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3339,1,30,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3340,1,31,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3341,1,32,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3342,1,33,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3343,1,34,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3344,1,35,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3345,1,36,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3346,1,37,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3347,1,45,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3348,1,46,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3349,1,47,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3350,1,48,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3351,1,49,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3352,1,50,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3353,1,51,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3354,1,52,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3355,1,53,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3356,1,54,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3357,1,55,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3358,1,56,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3359,1,57,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3360,1,58,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3361,1,59,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3362,1,60,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3363,1,61,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3364,1,62,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3365,1,63,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3366,1,64,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3367,1,65,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3368,1,66,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3369,1,67,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3370,1,68,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3371,1,69,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3372,1,70,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3373,1,71,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3374,1,72,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3375,1,73,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3376,1,74,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3377,1,75,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3378,1,76,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3379,1,77,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3380,1,78,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3381,1,79,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3382,1,80,'2021-01-02 16:08:43','2021-01-02 16:08:43'),(3383,1,81,'2021-01-02 16:08:43','2021-01-02 16:08:43');
/*!40000 ALTER TABLE `role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Super Admin','2017-07-19 18:15:00','2017-07-20 18:15:00'),(2,'Admin','2017-07-19 18:15:00','2017-07-20 18:15:00'),(13,'kmm','2021-01-02 11:24:04','2021-01-02 11:24:04'),(14,'sales','2021-01-02 11:36:34','2021-01-02 11:36:34'),(15,'Management','2021-01-02 12:25:47','2021-01-02 12:25:47');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salaries`
--

DROP TABLE IF EXISTS `salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salaries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `salary_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salaries`
--

LOCK TABLES `salaries` WRITE;
/*!40000 ALTER TABLE `salaries` DISABLE KEYS */;
/*!40000 ALTER TABLE `salaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gst_rate` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `saller_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_status` tinyint(1) NOT NULL DEFAULT 1,
  `sales_date` date NOT NULL,
  `warenty_end` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_product_id_foreign` (`product_id`),
  CONSTRAINT `sales_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (5,23,'12345','INV-005',NULL,1,60,'admin',1,'2020-12-31','2021-01-10','2020-12-31 11:28:06',NULL),(6,23,'304059','INV-006',NULL,2,120,'admin',0,'2020-12-31','2021-12-30','2020-12-31 12:05:08',NULL),(7,24,'123112','INV-007',NULL,2,40,'user',1,'2020-12-31','2021-01-10','2020-12-31 12:45:11',NULL),(8,23,'musrafhussain','INV-008',NULL,1,60,'admin',0,'2020-12-31','2021-12-20','2020-12-31 12:51:49',NULL),(9,24,'anwar','INV-009',NULL,3,60,'admin',1,'2020-12-31','2022-10-27','2020-12-31 12:53:46',NULL),(10,25,'000120','INV-010',NULL,3,2400,'admin',0,'2020-12-31','2020-12-31','2020-12-31 12:55:09',NULL),(12,25,'musraftamil','INV-012',NULL,4,3200,'admin',1,'2020-12-31','2021-09-29','2020-12-31 13:05:29',NULL),(13,31,'anwarassif','INV-013',NULL,3,60000,'admin',1,'2020-12-31','2025-10-29','2020-12-31 13:06:27',NULL),(14,31,'anwarassif','INV-013',NULL,3,60000,'admin',1,'2020-12-31','2025-10-29','2020-12-31 13:06:27',NULL),(15,23,'12345','INV-014',NULL,10,600,'admin',1,'2020-12-31','2022-09-27','2020-12-31 13:20:18',NULL),(16,23,'304059','INV-015',NULL,10,600,'admin',1,'2020-12-31','2023-12-27','2020-12-31 13:21:31',NULL),(17,24,'123123','INV-022',NULL,1,20,'admin',1,'2020-12-31','2021-01-10','2020-12-31 15:23:18',NULL),(18,24,'123123','INV-023',NULL,1,20,'anwarmusraf',1,'2020-12-31','2021-01-10','2020-12-31 15:49:45',NULL),(19,24,'123123','INV-032',NULL,1,20,'admin',1,'2020-12-31',NULL,'2020-12-31 16:53:47',NULL),(20,31,'123123','INV-032',NULL,10,200000,'admin',1,'2020-12-31',NULL,'2020-12-31 16:53:47',NULL),(21,31,'304059','INV-033',NULL,2,40000,'admin',1,'2020-12-31',NULL,'2020-12-31 16:59:26',NULL),(22,31,'12321','INV-034',NULL,2,40000,'admin',1,'2020-12-31',NULL,'2020-12-31 19:00:11',NULL),(23,31,'anwar','INV-035',NULL,2,20000,'admin',0,'2021-01-01',NULL,'2021-01-01 10:43:28',NULL),(24,34,'7218','INV-036',NULL,1,1000,'admin',1,'2021-01-01',NULL,'2021-01-01 10:56:06',NULL),(25,27,'72181','INV-037',NULL,1,80,'admin',1,'2021-01-01',NULL,'2021-01-01 11:24:18',NULL),(26,24,'091209','INV-038',NULL,20,200,'admin',1,'2021-01-01',NULL,'2021-01-01 12:23:00',NULL),(27,24,'091209','INV-039',NULL,20,400,'admin',1,'2021-01-01',NULL,'2021-01-01 12:24:16',NULL),(28,24,'909012','INV-040',NULL,20,400,'admin',0,'2021-01-01',NULL,'2021-01-01 12:26:13',NULL),(29,24,'<><><><><><>','INV-041',NULL,30,600,'admin',1,'2021-01-01',NULL,'2021-01-01 12:29:22',NULL),(30,23,'were','INV-042',NULL,5,300,'admin',1,'2021-01-01',NULL,'2021-01-01 12:30:42',NULL),(31,35,'pqrasd','INV-043',NULL,10,10000,'admin',1,'2021-01-01',NULL,'2021-01-01 12:32:53',NULL),(32,23,'what','INV-044',NULL,10,600,'admin',1,'2021-01-01',NULL,'2021-01-01 12:37:11',NULL),(33,23,'then','INV-045',NULL,1,60,'admin',1,'2021-01-01',NULL,'2021-01-01 12:41:21',NULL),(34,27,'qerer','INV-046',NULL,10,800,'admin',1,'2021-01-02',NULL,'2021-01-02 10:29:36',NULL),(35,26,'then','INV-047',NULL,12,12000,'admin',1,'2021-01-02',NULL,'2021-01-02 10:30:11',NULL),(36,24,'was','INV-048',NULL,20,400,'admin',1,'2021-01-02',NULL,'2021-01-02 10:30:39',NULL),(37,24,'what','INV-049',NULL,10,200,'admin',1,'2021-01-02',NULL,'2021-01-02 10:31:21',NULL),(38,24,'what','INV-049',NULL,10,200,'admin',1,'2021-01-02',NULL,'2021-01-02 10:31:21',NULL),(39,23,'pqrasd','INV-050',NULL,6,360,'admin',1,'2021-01-02',NULL,'2021-01-02 10:32:17',NULL),(40,23,'then','INV-051',NULL,1,60,'adminkmm',1,'2021-01-02',NULL,'2021-01-02 11:33:42',NULL),(41,24,'304059078','INV-052',NULL,5,100,'asasa',1,'2021-01-02',NULL,'2021-01-02 11:34:20',NULL),(42,23,'304059078','INV-052',NULL,1,60,'asasa',1,'2021-01-02',NULL,'2021-01-02 11:34:20',NULL),(43,31,'musrafhussain','INV-053',NULL,2,40000,'ali23123',1,'2021-01-02',NULL,'2021-01-02 12:44:49',NULL),(44,23,'12321','INV-054',NULL,1,60,'admin',1,'2021-01-02',NULL,'2021-01-02 14:57:36',NULL),(45,23,'musrafhussain','INV-055',NULL,1,60,'admin',1,'2021-01-02',NULL,'2021-01-02 15:00:38',NULL),(46,23,'musrafhussain','INV-055',NULL,1,60,'admin',1,'2021-01-02',NULL,'2021-01-02 15:00:38',NULL),(47,31,'anwar','INV-056',NULL,1,20000,'admin',1,'2021-01-02',NULL,'2021-01-02 15:06:50',NULL),(48,26,'12321','INV-057',NULL,1,1000,'admin',1,'2021-01-02',NULL,'2021-01-02 15:07:39',NULL),(49,24,'musrafhussain','INV-058',NULL,1,20,'admin',1,'2021-01-02',NULL,'2021-01-02 15:26:31',NULL);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salescarts`
--

DROP TABLE IF EXISTS `salescarts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salescarts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `gst` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saller_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_status` tinyint(1) NOT NULL DEFAULT 1,
  `sales_date` datetime DEFAULT NULL,
  `warenty_end` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `salescarts_product_id_foreign` (`product_id`),
  CONSTRAINT `salescarts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salescarts`
--

LOCK TABLES `salescarts` WRITE;
/*!40000 ALTER TABLE `salescarts` DISABLE KEYS */;
/*!40000 ALTER TABLE `salescarts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceorders`
--

DROP TABLE IF EXISTS `serviceorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serviceorders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `servicetype_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `technician` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_charge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_date` date DEFAULT NULL,
  `next_servicedate` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceorders`
--

LOCK TABLES `serviceorders` WRITE;
/*!40000 ALTER TABLE `serviceorders` DISABLE KEYS */;
INSERT INTO `serviceorders` VALUES (4,'123112','INV-007','WO-20201231001','24','5','fffffffff','9999900000',0,'MUSRAF ALI','200','2020-12-31','2021-01-09','2020-12-31 12:46:44',NULL),(5,'anwar','INV-009','WO-20201231002','24','4','good','9384901232',0,'MUSRAF ALI','700','2020-12-31','2021-01-10','2020-12-31 12:58:55',NULL),(6,'musrafhussain','INV-008','WO-20201231003','23','9','ok','9384901232',2,'MUSRAF ALI',NULL,'2020-12-31','2021-01-01','2020-12-31 13:00:30',NULL),(7,'000120','INV-010','WO-20201231004','25','4','good','9384901232',0,'AquaTech RO','500','2020-12-31','2021-01-10','2020-12-31 13:01:00',NULL),(8,'anwarameer','INV-011','WO-20201231005','33','4',NULL,'9384901232',0,'HAJIRA',NULL,'2020-12-31',NULL,'2020-12-31 13:06:58',NULL),(9,'musraftamil','INV-012','WO-20201231006','25','4',NULL,'9384901232',0,'AquaTech RO','0','2020-12-31','2020-12-15','2020-12-31 13:07:21',NULL),(10,'000120','INV-010','WO-20201231007','25','4',NULL,'9384901232',0,'AquaTech RO','200','2020-12-31','2021-01-03','2020-12-31 13:08:39',NULL),(11,'000120','INV-010','WO-20201231008','25','4',NULL,'9384901232',2,'AquaTech RO',NULL,'2020-12-31',NULL,'2020-12-31 13:08:39',NULL),(12,'12345','INV-005','WO-20201231008','23','4',NULL,'9384901232',2,'AquaTech RO',NULL,'2020-12-31',NULL,'2020-12-31 13:09:08',NULL),(13,'12345','INV-005','WO-20201231009','23','4',NULL,'9384901232',0,'AquaTech RO','200','2020-12-31','2021-01-10','2020-12-31 13:09:08',NULL),(14,'musrafhussain','INV-008','WO-20201231009','23','5',NULL,NULL,0,'AquaTech RO','200','2020-12-31','2021-01-10','2020-12-31 15:05:05',NULL),(15,'123123','INV-022','WO-20201231010','24','5','dddddddddddd','999999999',0,'AquaTech RO','1000','2020-12-31','2021-04-29','2020-12-31 15:31:16',NULL),(16,'000120','INV-010','WO-20201231011','25','5',NULL,NULL,0,'AquaTech RO','5000','2020-12-31','2021-01-10','2020-12-31 15:39:25',NULL),(17,'000120','INV-010','WO-20201231012','25','5','ddddddddddddd','999999999',0,'AquaTech RO','150','2020-12-31','2021-01-09','2020-12-31 23:24:37',NULL),(18,'000120','INV-010','WO-20201231013','25','5','ddddddddddddddddddd','999999999',0,'AquaTech RO','200','2020-12-31','2021-01-01','2020-12-31 23:34:41',NULL),(19,'000120','INV-010','WO-20201231014','25','5','mmmmmmmmmmmmmmmmmm','999999999',1,'asasa',NULL,NULL,NULL,'2020-12-31 23:37:24',NULL),(20,'musraftamil','INV-012','WO-20210101015','25','5',NULL,'9384901232',2,'AquaTech RO',NULL,'2021-01-01',NULL,'2021-01-01 10:53:59',NULL),(21,'000120','INV-010','WO-20210101016','25','12',NULL,NULL,0,'AquaTech RO',NULL,'2021-01-01',NULL,'2021-01-01 11:25:09',NULL),(22,'musrafhussain','INV-008','WO-20210101017','23','4',NULL,NULL,0,'AquaTech RO',NULL,'2021-01-01','2021-01-09','2021-01-01 11:47:18',NULL),(23,'musrafhussain','INV-008','WO-20210101018','23','4',NULL,'9384901232',0,'MUSRAF ALI','8000','2021-01-02','2021-05-16','2021-01-01 11:56:14',NULL),(24,'then','INV-047','WO-20210102019','26','5',NULL,NULL,0,'AquaTech RO',NULL,'2021-01-02','2021-01-12','2021-01-02 10:34:57',NULL),(25,'was','INV-048','WO-20210102020','24','6',NULL,NULL,0,'AASIF','200','2021-01-02','2021-01-11','2021-01-02 10:35:26',NULL),(26,'what','INV-044','WO-20210102021','23','9',NULL,NULL,0,'ARANWAR','7000','2021-01-02','2021-09-30','2021-01-02 10:35:46',NULL),(27,'what','INV-044','WO-20210102022','23','5',NULL,NULL,0,'ALI','7000','2021-01-02','2021-08-04','2021-01-02 12:36:06',NULL),(28,'then','INV-047','WO-20210102023','26','6','No good','9384901232',2,'ALI','8000','2021-01-02','2022-01-04','2021-01-02 12:39:41',NULL),(29,'musrafhussain','INV-053','WO-20210102024','31','5',NULL,NULL,0,'MUSRAF ALI',NULL,'2021-01-02','2021-01-12','2021-01-02 16:07:33',NULL);
/*!40000 ALTER TABLE `serviceorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicetypes`
--

DROP TABLE IF EXISTS `servicetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicetypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `servicetypes_slug_unique` (`slug`),
  KEY `servicetypes_created_by_foreign` (`created_by`),
  KEY `servicetypes_modified_by_foreign` (`modified_by`),
  CONSTRAINT `servicetypes_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`username`) ON UPDATE CASCADE,
  CONSTRAINT `servicetypes_modified_by_foreign` FOREIGN KEY (`modified_by`) REFERENCES `users` (`username`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicetypes`
--

LOCK TABLES `servicetypes` WRITE;
/*!40000 ALTER TABLE `servicetypes` DISABLE KEYS */;
INSERT INTO `servicetypes` VALUES (4,'Paid Service','paid-service',1,'admin',NULL,'2020-12-31 11:22:24',NULL),(5,'Warranty Service','warranty-service',1,'admin',NULL,'2020-12-31 11:22:38',NULL),(6,'AMC Service','amc-service',1,'admin',NULL,'2020-12-31 11:23:03',NULL),(9,'service','service',1,'admin',NULL,'2020-12-31 11:46:36',NULL),(12,'PAID','paid',1,'admin',NULL,'2020-12-31 12:08:23',NULL);
/*!40000 ALTER TABLE `servicetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `totalamount` double NOT NULL,
  `depositeamount` double NOT NULL,
  `remainingamount` double NOT NULL,
  `deposite_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deposite_date` date NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_created_by_foreign` (`created_by`),
  KEY `transactions_modified_by_foreign` (`modified_by`),
  CONSTRAINT `transactions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`username`) ON UPDATE CASCADE,
  CONSTRAINT `transactions_modified_by_foreign` FOREIGN KEY (`modified_by`) REFERENCES `users` (`username`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,20000,20000,0,'musraf','2020-12-30','A H M T Bank','admin',NULL,'2020-12-31 13:10:21','2020-12-31 13:10:28'),(2,10000,10000,0,'ASLAM','2020-12-22','A H M T Bank','admin',NULL,'2020-12-31 13:11:21','2020-12-31 13:11:37'),(3,1000,1000,0,'HAJIRA','2020-12-19','A H M T Bank','admin',NULL,'2020-12-31 16:27:16','2020-12-31 16:29:05'),(4,20000,20000,0,'ASLAM','2021-01-20','A H M T Bank','admin',NULL,'2021-01-01 10:38:33','2021-01-01 10:38:33'),(5,500,300,200,'ANWAR','2021-01-30','A H M T Bank','admin',NULL,'2021-01-01 10:39:25','2021-01-01 10:39:25'),(6,1000,1000,0,'ANWAR','2021-01-30','M.T Bank','admin',NULL,'2021-01-01 10:40:27','2021-01-01 12:04:47');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_roles_role_id_foreign` (`role_id`),
  KEY `user_roles_user_id_foreign` (`user_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,1,1,'2017-06-05 21:35:29','2017-06-05 21:35:29'),(2,2,2,'2017-06-06 19:47:19','2017-06-06 19:47:19'),(7,1,7,'2020-12-31 10:20:25','2020-12-31 10:20:25'),(8,2,8,'2020-12-31 10:22:57','2020-12-31 10:22:57'),(9,2,9,'2020-12-31 10:23:39','2020-12-31 10:23:39'),(12,2,12,'2020-12-31 10:32:02','2020-12-31 10:32:02'),(19,2,26,'2021-01-02 11:09:59','2021-01-02 11:09:59'),(20,2,28,'2021-01-02 11:12:51','2021-01-02 11:12:51'),(21,13,29,'2021-01-02 11:24:38','2021-01-02 11:24:38'),(22,14,30,'2021-01-02 11:39:33','2021-01-02 11:39:33'),(23,13,31,'2021-01-02 11:52:33','2021-01-02 11:52:33'),(24,2,32,'2021-01-02 11:54:34','2021-01-02 11:54:34'),(25,2,33,'2021-01-02 12:14:50','2021-01-02 12:14:50'),(26,15,34,'2021-01-02 12:27:38','2021-01-02 12:27:38'),(27,15,35,'2021-01-02 12:49:06','2021-01-02 12:49:06'),(28,15,36,'2021-01-02 12:52:20','2021-01-02 12:52:20'),(29,15,37,'2021-01-02 12:58:53','2021-01-02 12:58:53'),(30,15,38,'2021-01-02 14:10:06','2021-01-02 14:10:06');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `salary` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'AquaTech RO','admin','aquatechro@gmail.com','$2y$10$NBEZjjATraUJTNnew/GJD.rJaplwIwD6vwFxeIFzgdVQ40oHXj34m','2021-01-02 14:08:14',1,50000,'12345678','2017-06-05 21:35:29','2021-01-02 14:08:14'),(2,'user','user','user@gmail.com','$2y$10$ufM/X6swV8r0qlQnm4P5Bew47qrT7/QoRNh2wHhJ/ti9eSbPrwsUK','2021-01-01 23:59:43',1,50000,'12345678','2017-06-06 19:47:19','2021-01-02 15:13:12'),(6,'kkk','admin12','pksgroups005@gmail.com','$2y$10$eh5d/B/feI7oTsPsSxAnc.A2CYJpHdogX2F2JgXGAdR0.EyccuMjC',NULL,1,NULL,'12345678','2020-12-31 09:05:23','2020-12-31 09:05:23'),(7,'MUSRAF ALI','musrafaslam','musraf34@gmail.com','$2y$10$ENKkF3jFl7ZyC2eIG6h2eOCcQVTAyMjqy9elQPb4j8qw1115Kz9hW','2021-01-02 16:10:11',1,10000,'234567','2020-12-31 10:20:25','2021-01-02 16:10:11'),(8,'Anwar','alanwar21','anwar21@gmail.com','$2y$10$BF.b40z8XcMSFq41rrhEpOUUdcEKtCzm/qJq0t1k0/gOQR.zPTgby',NULL,1,50000,'2314571821','2020-12-31 10:22:57','2021-01-02 11:27:12'),(9,'AASIF','aasifmusraf','aasif@gamil.com','$2y$10$sadtw6xe5/KP5xav/cp7KOV20/D0ooeQXt0kP.Mo1lT8gi35LEPpm','2021-01-02 10:45:53',1,NULL,'aasifaasif','2020-12-31 10:23:39','2021-01-02 10:45:53'),(12,'asasa','asasa','asasa@gmail.com','$2y$10$DppO.sCOUMQuN6vQmj8WNujnVHAJzRwQOnEK55UcjMYCJ6msOJiSG','2021-01-02 11:28:32',1,NULL,'12345678','2020-12-31 10:32:02','2021-01-02 11:53:26'),(15,'ANWAR','anwarmusraf','anwar@gmail.com','$2y$10$gaVBXTINg8mRh2HiQ5evxuZ.7haqYR/p71BD7sKARfQyDA7FylM2a','2020-12-31 15:49:15',1,NULL,'zxcvbnmkljfds','2020-12-31 15:45:35','2020-12-31 15:49:15'),(26,'kmm','admin11','pksgroups0057@gmail.com','$2y$10$kr/lLnOYcPqA8uqEwFBG2.YL5CDY.q7ozJqHRLuSFfaZ0MECiIcUK',NULL,1,50000,'12345678','2021-01-02 11:09:59','2021-01-02 11:09:59'),(28,'ARANWAR','alianwar','aranwar@gmail.com','$2y$10$xQ3Fp0mH2wGk0DhgtNFYnuOnsLBTXBpP4pU8fRhj8EHxXcEOSVRgO','2021-01-02 11:13:40',1,50000,'000923184r593','2021-01-02 11:12:51','2021-01-02 11:27:31'),(29,'kmm123','adminkmm','pksgroups003123@gmail.com','$2y$10$baGF9fLXzgcRY4L.xqRC3eFaH0j.EWN8VHQSM9166k1lDiKP0fGNK','2021-01-02 12:05:28',1,50000,'12345678','2021-01-02 11:24:38','2021-01-02 12:05:57'),(30,'kmmsales','admin12345','musraf3411@gmail.com','$2y$10$jWbuIp5pCg5czYT4CUxpsOS.cgPZrCAH1Do7WcQDjBDaJ6QMlqY3a','2021-01-02 12:19:24',1,50000,'12345678','2021-01-02 11:39:33','2021-01-02 12:19:24'),(31,'Salary','adminqqq','pksgroups00qq5@gmail.com','$2y$10$SL8yKVpwh5KL4jNRsnKcQurfxqsMoHKfKknPbmmtu31.Oyr3yvan2',NULL,1,50000,'12345678','2021-01-02 11:52:33','2021-01-02 11:52:33'),(32,'qeqeqe','asafaf','qeqe@gmail.com','$2y$10$sdFEfKzzyxcxc8DkMGbncurXNPijsqeMvrmph13KYu/zBTnqOjiqq',NULL,1,50000,'23146435','2021-01-02 11:54:34','2021-01-02 11:54:34'),(33,'KMC','kmc124','kmc@gmail.com','$2y$10$8byiMtDEz85lZL31Zqhs7eVRo.M6fLcUV92vNwyXYN2.YF0uoM/DG','2021-01-02 15:20:58',1,10000,'454474892700','2021-01-02 12:14:50','2021-01-02 15:20:58'),(34,'ALI','ali23123','ali23@gmail.com','$2y$10$RYL4Yp7kFdyzt2sPXVCMV.xje0ZpDZULjY2Uh5HlL4CrvsKX99B66','2021-01-02 13:18:33',1,10000,'0001230','2021-01-02 12:27:38','2021-01-02 13:18:33'),(35,'Haja','hajamusraf','haja@gmail.com','$2y$10$SVahkoo.X9lO/I/Ze9gb/eGyRcTMC0tA6hL0/TvZC86VXQkb7VCLS','2021-01-02 12:50:22',1,10000,'12345678`10','2021-01-02 12:49:06','2021-01-02 12:50:22'),(36,'Hussain','hussainali','hussian@gmail.com','$2y$10$iDrBB3YD16y9t.kWWtiHS.z/hEHYv.7BwxRYYTlvFjEbSbDLw/4Gi',NULL,1,10000,'12345678190','2021-01-02 12:52:20','2021-01-02 12:52:20'),(37,'bestshine','besthr','besthine@gmail.com','$2y$10$CgCkRpV/Y.0xrYx7C41OT.UURiuXD/kZllnvmkQZu4CLEDofHKunq','2021-01-02 13:03:10',1,10000,'aasifaasif','2021-01-02 12:58:53','2021-01-02 13:03:10'),(38,'User Management','management','usermanagement@gmail.com','$2y$10$vmCXOY55O1OdDIHFa/k6r.Ki4.1PLkKGVsS9tNc8j17vma7j59EG.','2021-01-02 14:12:09',1,10000,'6060123456789','2021-01-02 14:10:06','2021-01-02 14:12:09');
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

-- Dump completed on 2021-01-03 12:23:27
