-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: ppm
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `abstractentity`
--

DROP TABLE IF EXISTS `abstractentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abstractentity` (
  `ID` bigint(20) unsigned zerofill NOT NULL,
  `BLOCKED` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  `NAME` varchar(45) NOT NULL,
  `RULEID` bigint(20) unsigned zerofill NOT NULL,
  `SYSTEM` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abstractentity`
--

LOCK TABLES `abstractentity` WRITE;
/*!40000 ALTER TABLE `abstractentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `abstractentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configkey`
--

DROP TABLE IF EXISTS `configkey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configkey` (
  `ID` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `BLOCKED` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  `NAME` varchar(45) NOT NULL,
  `RULEID` bigint(20) unsigned zerofill NOT NULL,
  `SYSTEM` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configkey`
--

LOCK TABLES `configkey` WRITE;
/*!40000 ALTER TABLE `configkey` DISABLE KEYS */;
/*!40000 ALTER TABLE `configkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuitem`
--

DROP TABLE IF EXISTS `menuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menuitem` (
  `ID` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `BLOCKED` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  `INDEXING` tinyint(1) unsigned zerofill NOT NULL,
  `NAME` varchar(45) NOT NULL,
  `POOLER` varchar(20) NOT NULL,
  `RESOURCE` varchar(45) NOT NULL,
  `RULEID` bigint(20) NOT NULL,
  `SYSTEM` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  `TYPEFUNCTION` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuitem`
--

LOCK TABLES `menuitem` WRITE;
/*!40000 ALTER TABLE `menuitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `menuitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rule`
--

DROP TABLE IF EXISTS `rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rule` (
  `ID` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) NOT NULL,
  `RULEID` bigint(20) unsigned zerofill NOT NULL,
  `SYSTEM` tinyint(1) unsigned zerofill NOT NULL DEFAULT '1',
  `BLOCKED` tinyint(1) unsigned zerofill NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `NAME_UNIQUE` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rule`
--

LOCK TABLES `rule` WRITE;
/*!40000 ALTER TABLE `rule` DISABLE KEYS */;
INSERT INTO `rule` VALUES (00000000000000000001,'Admin',00000000000000000001,1,0),(00000000000000000002,'GP',00000000000000000001,1,0),(00000000000000000003,'Project Team',00000000000000000001,1,0);
/*!40000 ALTER TABLE `rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence`
--

DROP TABLE IF EXISTS `sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequence` (
  `SEQ_NAME` varchar(50) NOT NULL,
  `SEQ_COUNT` decimal(38,0) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence`
--

LOCK TABLES `sequence` WRITE;
/*!40000 ALTER TABLE `sequence` DISABLE KEYS */;
INSERT INTO `sequence` VALUES ('SEQ_GEN',0);
/*!40000 ALTER TABLE `sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translatekey`
--

DROP TABLE IF EXISTS `translatekey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translatekey` (
  `ID` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `BLOCKED` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  `EN_US` varchar(20) NOT NULL,
  `ES_ES` varchar(20) NOT NULL,
  `NAME` varchar(45) NOT NULL,
  `PR_BR` varchar(20) NOT NULL,
  `RULEID` bigint(20) unsigned zerofill NOT NULL,
  `SYSTEM` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translatekey`
--

LOCK TABLES `translatekey` WRITE;
/*!40000 ALTER TABLE `translatekey` DISABLE KEYS */;
/*!40000 ALTER TABLE `translatekey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `ID` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) NOT NULL,
  `RULEID` bigint(20) unsigned zerofill NOT NULL,
  `SYSTEM` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  `BLOCKED` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  `EMAIL` varchar(50) NOT NULL,
  `PASSWD` varchar(20) NOT NULL DEFAULT 'ppm@123',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `NAME_UNIQUE` (`NAME`),
  UNIQUE KEY `EMAIL_UNIQUE` (`EMAIL`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (00000000000000000001,'Fabio Dippold',00000000000000000001,1,0,'dippold.br@gmail.com','ppm@123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-10 21:54:54
