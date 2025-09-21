-- MySQL dump 10.13  Distrib 5.7.44, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: dl_adb_all
-- ------------------------------------------------------
-- Server version	5.7.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `server`
--

DROP TABLE IF EXISTS `server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server` (
  `server` varchar(32) NOT NULL DEFAULT '',
  `alias` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `max_user` int(11) NOT NULL DEFAULT '1500',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `enable` int(11) NOT NULL DEFAULT '0',
  `server_key` varchar(32) NOT NULL DEFAULT '',
  `when_iid_duplicated` varchar(32) NOT NULL DEFAULT '',
  `when_challenge_failed` varchar(32) NOT NULL DEFAULT 'punish_ex',
  `when_found_cheater` varchar(32) NOT NULL DEFAULT '',
  `punish_id` int(11) NOT NULL DEFAULT '0',
  `save_when_coin_cost` int(11) NOT NULL DEFAULT '0',
  `charge_level` int(11) NOT NULL DEFAULT '0',
  `charge_interval` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `ahserver` varchar(32) NOT NULL DEFAULT '',
  `ip_wt` varchar(15) NOT NULL DEFAULT '',
  `ip_dx` varchar(15) NOT NULL DEFAULT '',
  `enable_multi_ip` tinyint(4) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server`
--

LOCK TABLES `server` WRITE;
/*!40000 ALTER TABLE `server` DISABLE KEYS */;
INSERT INTO `server` VALUES ('三线','','118.24.7.124',8162,1200,'万里长城',1,'','','','',0,0,0,0,3,'','','',0,NULL),('一线','','118.24.7.124',8160,1200,'万里长城',1,'network','','','',0,0,0,600,1,'apex1','','',0,NULL),('二线','','118.24.7.124',8161,1200,'万里长城',1,'','','','',0,0,0,0,2,'','','',0,NULL);
/*!40000 ALTER TABLE `server` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-18  9:01:53
