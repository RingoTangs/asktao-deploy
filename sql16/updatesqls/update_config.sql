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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `version` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`version`,`dist`,`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('','问道一区','global','门派比武大会','三线:金系/三线:木系/二线:水系/二线:火系/三线:土系','',NULL),('','问道一区','global','baishou_shengyan','([\"一线\":({40,79,}),\"一线\":({80,99,}),\"一线\":({100,119,}),\"一线\":({120,159,}),])','',''),('','问道一区','global','chongzhi_fanli','({\"2017-03-18-00:00:00\",\"2017-03-20-17:14:59\", 1})','',''),('','问道一区','global','CITY_WAR_SERVER','一线','',NULL),('','问道一区','global','dongfu_tiaozhan','一线','',''),('','问道一区','global','douchong_dahui','一线','',''),('','问道一区','global','试道大会','三线:60-69,70-79,80-89/三线:90-99,100-109,110-119/二线:120-129,130-139,140-149,150-159,160-169','',NULL),('','问道一区','global','fishing_server','({\"一线\",\"二线\" })','',NULL),('','问道一区','global','group_buying_server','一线','',NULL),('','问道一区','global','hero_boss_server','一线','',NULL),('','问道一区','global','journey_of_asktao','([ \"date\" : \"20160713\", \"checksum\" : \"5FA8074842CF18DF6DDBEEB02BC8E289\" ])','',''),('','问道一区','global','ldb_host','127.0.0.1:','',NULL),('','问道一区','global','lgxy_server','一线','',''),('','问道一区','global','longxue_boss_server','一线','',''),('','问道一区','global','map_decorate_server','一线','',NULL),('','问道一区','global','mdb_host','127.0.0.1:','',NULL),('','问道一区','global','party_qkbgz','([4:\"三线\",3:\"二线\",2:\"一线\",])','',NULL),('','问道一区','global','party_qql','一线','',NULL),('','问道一区','global','party_sell_servers','一线','',NULL),('','问道一区','global','red_envelope','([ \"start_time\" : \"2016-01-09-00:00:00\", \"sort_end_time\" : \"2016-02-27-23:59:59\", \"end_time\" : \"2016-02-28-23:59:59\", \"envelope_list\" : ({ ([\"time\" : \"2016-01-18-14:00:00\",\"coin\" : 3000000,\"amount\" : 3000,]),([\"time\" : \"2016-01-18-16:00:00\",\"coin\" : 3000000,\"amount\" : 3000,]),([\"time\" : \"2016-01-23-14:00:00\",\"coin\" : 100000,\"amount\" : 100,]),([\"time\" : \"2016-01-23-16:00:00\",\"coin\" : 100000,\"amount\" : 100,]),([\"time\" : \"2016-01-24-14:00:00\",\"coin\" : 100000,\"amount\" : 100,]),([\"time\" : \"2016-01-24-16:00:00\",\"coin\" : 100000,\"amount\" : 100,]) }), \"sys_name\" : \"ê??ü?ê\", \"version\" : 3 ])','',''),('','问道一区','global','send_exp_online','([\"end_time\":\"2010-06-29-12:00:00\",\"start_time\":\"2010-06-29-10:00:00\",\"interval\":0,\"duration\":0,])','',''),('','问道一区','global','shengsidou','1','',''),('','问道一区','global','sncbc_open_gs','({\"一线\",\"二线\" })','',NULL),('','问道一区','global','super_boss_server','一线','',NULL),('','问道一区','global','task_control_server','一线','',''),('','问道一区','global','vendue_place','一线','','NULL'),('','问道一区','global','WAR_GROUP_A','一线','',NULL),('','问道一区','global','WAR_GROUP_B','二线','',NULL),('','问道一区','global','WAR_GROUP_C','三线','',NULL),('','问道一区','global','wedding_server','一线','',NULL),('','问道一区','global','world_boss_server','一线','',''),('','问道一区','global','world_level_config','0','',NULL),('','问道一区','global','wuzhuangyuan','一线:60-69,70-79/一线:80-89,90-99/一线:100-109,110-119/一线:120-129,130-139,140-149,150-159,160-169','',''),('','问道一区','global','xinfjjwz','([ \"start_time\" : \"2017-07-01-20:00:00\", \"end_time\" : \"2017-08-21-19:59:59\" ])','',''),('','问道一区','global','xinfu_chongbang','([ \"start_time\" : \"2016-08-08-00:00:00\", \"end_time\" : \"2016-08-31-23:59:59\", \"bonus_time\" : \"2016-09-06-23:59:59\", \"order_end_time\" : \"2016-09-10-23:59:59\", \"url\" : \"http://wd.gyyx.cn/huodong/wdxf/tf/bwcx/cbbs/index.html\" ])','',''),('','问道一区','global','xiygc_zhenyz','({\"一线\"})','',''),('','问道一区','global','xiygc_zhenyzb','([\"40-69\":1,\"70-79\":1,\"80-89\":1,\"90-99\":1,\"100-109\":1,\"110-119\":1,\"120-129\":1,\"130-139\":1,\"140-149\":1,\"150-159\":1,\"160-169\":1])','',''),('','问道一区','global','yuqing_shandian_challenge','一线','',NULL),('','问道一区','global','比武大会','三线:60-69,70-79/一线:80-89,90-99/二线:100-109,110-119/三线:120-129,130-139,140-149','',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-18  8:21:57
