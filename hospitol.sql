-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: hospitol
-- ------------------------------------------------------
-- Server version	8.0.11

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
-- Table structure for table `admit_invo_db`
--

DROP TABLE IF EXISTS `admit_invo_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admit_invo_db` (
  `Invo_no` int(11) NOT NULL AUTO_INCREMENT,
  `pet_no` int(11) NOT NULL,
  `pet_name` varchar(100) NOT NULL,
  `p_age` int(3) NOT NULL,
  `price_of_med` int(11) NOT NULL,
  `price_of_doc` int(11) NOT NULL,
  `day_count` int(11) NOT NULL,
  `price_of_room` int(11) NOT NULL,
  `ser_char` int(11) NOT NULL,
  `totl` int(11) NOT NULL,
  `invo_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Invo_no`),
  KEY `pet_no` (`pet_no`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admit_invo_db`
--

LOCK TABLES `admit_invo_db` WRITE;
/*!40000 ALTER TABLE `admit_invo_db` DISABLE KEYS */;
INSERT INTO `admit_invo_db` VALUES (1,1,'ggg',12,12,12,2,12,12,12,'2017-05-04 18:30:00'),(2,1,'mathu sharma',22,5000,2000,2,2000,500,9500,'2019-05-26 06:49:52'),(3,1,'mathu sharma',22,10000,5000,2,2000,500,17500,'2019-05-26 07:52:26');
/*!40000 ALTER TABLE `admit_invo_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admit_pet`
--

DROP TABLE IF EXISTS `admit_pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admit_pet` (
  `admit_petid` int(11) NOT NULL AUTO_INCREMENT,
  `admit_name` varchar(500) NOT NULL,
  `admit_age` int(3) NOT NULL,
  `admit_con` varchar(15) NOT NULL,
  `admit_bg` varchar(3) NOT NULL,
  `admit_rn` varchar(10) NOT NULL,
  `pet_id` int(11) NOT NULL,
  `admit_date` date NOT NULL,
  `pet_des` varchar(100) NOT NULL,
  PRIMARY KEY (`admit_petid`),
  KEY `pet_id` (`pet_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admit_pet`
--

LOCK TABLES `admit_pet` WRITE;
/*!40000 ALTER TABLE `admit_pet` DISABLE KEYS */;
/*!40000 ALTER TABLE `admit_pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospi_room`
--

DROP TABLE IF EXISTS `hospi_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospi_room` (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_name` varchar(100) NOT NULL,
  `room_avilabl` varchar(20) DEFAULT NULL,
  `rc_time_mo` varchar(10) NOT NULL DEFAULT '11.30 AM',
  `rc_time_ev` varchar(10) DEFAULT '06.30 PM',
  `room_drid` int(11) DEFAULT NULL,
  `eroom_drid` int(11) DEFAULT NULL,
  `room_petID` varchar(11) DEFAULT 'No Patient',
  PRIMARY KEY (`room_id`),
  KEY `room_drid` (`room_drid`),
  KEY `eroom_id` (`eroom_drid`),
  KEY `room_petID` (`room_petID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospi_room`
--

LOCK TABLES `hospi_room` WRITE;
/*!40000 ALTER TABLE `hospi_room` DISABLE KEYS */;
INSERT INTO `hospi_room` VALUES (1,'Room No: 1','AV','11.30 AM','06.30 PM',3,2,'No Patient'),(2,'Room No: 2','AV','11.30 AM','06.30 PM',NULL,NULL,'No Patient'),(3,'Room No: 3','AV','11.30 AM','06.30 PM',NULL,NULL,'No Patient'),(4,'Room No: 4','AV','11.30 AM','06.30 PM',NULL,NULL,'No Patient'),(5,'Room No: 5','AV','11.30 AM','06.30 PM',NULL,NULL,'No Patient'),(6,'Room No: 6','AV','11.30 AM','06.30 PM',3,2,'No Patient'),(7,'Room No: 7','AV','11.30 AM','06.30 PM',NULL,NULL,'No Patient'),(8,'Room No: 8','AV','11.30 AM','06.30 PM',NULL,NULL,'No Patient'),(9,'Room No: 9','AV','11.30 AM','06.30 PM',NULL,NULL,'No Patient'),(10,'Room No: 10','AV','11.30 AM','06.30 PM',NULL,NULL,'No Patient');
/*!40000 ALTER TABLE `hospi_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvl2_admin`
--

DROP TABLE IF EXISTS `lvl2_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvl2_admin` (
  `lvtwname` varchar(100) NOT NULL,
  `lvtwusern` varchar(100) NOT NULL,
  `lvtwemail` varchar(200) NOT NULL,
  `lvtwpass` varchar(50) NOT NULL,
  `lvtwid` int(11) NOT NULL AUTO_INCREMENT,
  `lvtwcdate` date NOT NULL,
  PRIMARY KEY (`lvtwid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvl2_admin`
--

LOCK TABLES `lvl2_admin` WRITE;
/*!40000 ALTER TABLE `lvl2_admin` DISABLE KEYS */;
INSERT INTO `lvl2_admin` VALUES ('Jayendra','BasicAdmin','test@gmail.com','202cb962ac59075b964b07152d234b70',1,'2017-10-04');
/*!40000 ALTER TABLE `lvl2_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `pet_id` int(11) NOT NULL AUTO_INCREMENT,
  `pet_reg_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `pet_fn` varchar(100) DEFAULT NULL,
  `pet_sn` varchar(100) DEFAULT NULL,
  `pet_addr` varchar(500) DEFAULT NULL,
  `pet_ac` varchar(3) DEFAULT '+94',
  `pet_con` int(10) DEFAULT NULL,
  `pet_em` varchar(1000) DEFAULT NULL,
  `pet_gen` varchar(10) DEFAULT NULL,
  `pet_bd` date DEFAULT NULL,
  `pet_age` int(3) DEFAULT NULL,
  `pet_bg` varchar(3) DEFAULT NULL,
  `Pet_opdid` int(11) DEFAULT NULL,
  `Insert_admunname` varchar(100) DEFAULT NULL,
  `Update_sadmunname` varchar(100) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`pet_id`),
  KEY `Pet_opdid` (`Pet_opdid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'2019-05-26 07:08:58','mathu','sharma','chava','+94',771349563,'mathu@gmail.com','Female','1997-05-06',22,'A-',3,'superAdmin','superAdmin','2019-05-26 23:04:08');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_invo`
--

DROP TABLE IF EXISTS `pet_invo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_invo` (
  `invo_id` int(11) NOT NULL AUTO_INCREMENT,
  `invo_Pet_name` varchar(500) NOT NULL,
  `invo_pet_id` int(100) NOT NULL DEFAULT '1',
  `invo_pet_age` int(3) NOT NULL,
  `invo_date` date NOT NULL,
  `medi_charge` int(10) NOT NULL,
  `doc_charge` int(10) NOT NULL,
  `hos_charge` int(10) NOT NULL DEFAULT '1500',
  `total_charge` int(10) NOT NULL,
  PRIMARY KEY (`invo_id`),
  KEY `invo_pet_id` (`invo_pet_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_invo`
--

LOCK TABLES `pet_invo` WRITE;
/*!40000 ALTER TABLE `pet_invo` DISABLE KEYS */;
INSERT INTO `pet_invo` VALUES (1,'mathu sharma',1,22,'2019-05-26',250000,5000,500,255500),(2,'mathu sharma',1,22,'2019-05-26',5000,2500,500,8000);
/*!40000 ALTER TABLE `pet_invo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `staffID` int(11) NOT NULL AUTO_INCREMENT,
  `smfname` varchar(50) NOT NULL,
  `smlname` varchar(50) NOT NULL,
  `smtype` varchar(20) NOT NULL,
  `smbd` date NOT NULL,
  `telcode` varchar(3) NOT NULL DEFAULT '+94',
  `smtel` varchar(15) NOT NULL,
  `smemail` varchar(200) NOT NULL,
  `smgender` varchar(6) NOT NULL,
  `smwoti` varchar(10) NOT NULL,
  `smaddr` varchar(600) NOT NULL,
  `instetd_by` varchar(100) DEFAULT NULL,
  `insterted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(100) DEFAULT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`staffID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'mathu','sharma','nurse','2017-02-02','+94','771214456','mathu@gmail.com','female','morning','chava','mathu','2019-05-26 01:21:45','superAdmin','2019-05-26 01:28:35'),(2,'priya','sundhar','doctor','1995-05-05','+94','7756321478','priya@gmail.com','female','evening','jaffna','mathu','2019-05-26 01:35:48',NULL,'2019-05-26 01:35:48'),(3,'kala','bhavani','doctor','1998-06-06','+94','7658693125','kala@gmail.com','Female','Full','colombo','superAdmin','2019-05-26 01:37:21',NULL,'2019-05-26 01:37:21'),(4,'sri','maran','doctor','1992-08-24','+94','7584698424','sri@gamil.com','male','morning','vavuniya',NULL,'2019-05-26 07:01:24',NULL,'2019-05-26 07:01:24'),(5,'ravi','nila','nurse','1999-02-27','+94','7846953745','nila@gamil.com','female','morning ','nallur',NULL,'2019-05-26 07:01:25',NULL,'2019-05-26 07:01:25'),(6,'sundar','kamal','nurse','1984-04-25','+94','7778924755','kamal@yahoo.com','male','evening','mallakam',NULL,'2019-05-26 07:01:25',NULL,'2019-05-26 07:01:25');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sup_admin`
--

DROP TABLE IF EXISTS `sup_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sup_admin` (
  `sadid` int(11) NOT NULL AUTO_INCREMENT,
  `sadiun` varchar(20) NOT NULL,
  `sadipw` varchar(500) NOT NULL,
  `sadem` varchar(50) NOT NULL,
  `saname` varchar(100) DEFAULT NULL,
  `cret_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sadid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sup_admin`
--

LOCK TABLES `sup_admin` WRITE;
/*!40000 ALTER TABLE `sup_admin` DISABLE KEYS */;
INSERT INTO `sup_admin` VALUES (1,'superAdmin','202cb962ac59075b964b07152d234b70','jayendramatarage@gmail.com','Jayendra','2017-10-04 22:49:20');
/*!40000 ALTER TABLE `sup_admin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-27  7:59:04
