USE dl_adb_all;

-- 用于 nodejs 解析生成新的更新 ip 语句的模板 sql

-- 更新 aaa 表
UPDATE `dl_adb_all`.`aaa` as `t` SET `t`.`ip` = '47.97.104.166' WHERE `t`.`aaa` = 'aaa_daili';

-- 更新 ccs 表
UPDATE `dl_adb_all`.`ccs` as `t` SET `t`.`ip` = '47.97.104.166' WHERE `t`.`ccs` = 'ccs_daili';

-- 更新 csa 表
UPDATE `dl_adb_all`.`csa` as `t` SET `t`.`ip` = '47.97.104.166' WHERE `t`.`csa` = 'csa_daili';

-- 更新 cta 表
UPDATE `dl_adb_all`.`cta` as `t` SET `t`.`ip` = '47.97.104.166' WHERE `t`.`access_adb_user` = 'root';

-- 更新 dba 表
UPDATE `dl_adb_all`.`dba` as `t` SET `t`.`ip` = '47.97.104.166' WHERE `t`.`dba` = 'dba_daili';
UPDATE `dl_adb_all`.`dba` as `t` SET `t`.`ip` = '47.97.104.166' WHERE `t`.`dba` = 'dba_jiangw_pk';

-- 更新 ldba 表
UPDATE `dl_adb_all`.`ldba` as `t` SET `t`.`ip` = '47.97.104.166' WHERE `t`.`ldba` = 'ldba_jiangw';
UPDATE `dl_adb_all`.`ldba` as `t` SET `t`.`ip` = '47.97.104.166' WHERE `t`.`ldba` = 'ldba_jiangw_pk';

-- 更新 spa 表
UPDATE `dl_adb_all`.`spa` as `t` SET `t`.`ip` = '47.97.104.166' WHERE `t`.`spa` = 'spa_jiangw';
UPDATE `dl_adb_all`.`spa` as `t` SET `t`.`ip` = '47.97.104.166' WHERE `t`.`spa` = 'spa_jiangw_pk';

-- 更新 tts 表
UPDATE `dl_adb_all`.`tts` as `t` SET `t`.`ip` = '47.97.104.166' WHERE `t`.`tts` = 'tts_jiangw';

-- 更新 cs_css 表
UPDATE `dl_adb_all`.`cs_ccs` as `t` SET `t`.`ip` = '47.97.104.166' WHERE `t`.`ccs` = 'ccs_daili';
UPDATE `dl_adb_all`.`cs_ccs` as `t` SET `t`.`ip` = '47.97.104.166' WHERE `t`.`ccs` = 'ccs_pk';

-- 用于 nodejs 解析生成新的更新 dist 语句的模板 sql

-- 更新 ccs 表
UPDATE `dl_adb_all`.`ccs` as `t` SET `t`.`dist` = '万里长城' WHERE `t`.`ccs` = 'ccs_daili';

-- 更新 server 表
UPDATE `dl_adb_all`.`server` as `t` SET `t`.`dist` = '万里长城';

-- 更新 district 表
UPDATE `dl_adb_all`.`district` as `t` SET `t`.`dist` = '万里长城' WHERE `t`.`csa` = 'csa_daili';

-- 更新 dba 表
UPDATE `dl_adb_all`.`dba` as `t` SET `t`.`dist` = '万里长城' WHERE `t`.`dba` = 'dba_daili';

-- 更新 csa 表
UPDATE `dl_adb_all`.`csa` as `t` SET `t`.`cs_dist` = '万里长城' WHERE `t`.`csa` = 'csa_daili';

-- 更新 cs_ccs 表
UPDATE `dl_adb_all`.`cs_ccs` as `t` SET `t`.`dist` = '万里长城' WHERE `t`.`ccs` = 'ccs_daili';

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
INSERT INTO `config` VALUES ('','万里长城','global','门派比武大会','万里长城三线:金系/万里长城三线:木系/万里长城二线:水系/万里长城二线:火系/万里长城三线:土系','',NULL),('','万里长城','global','baishou_shengyan','([\"万里长城一线\":({40,79,}),\"万里长城一线\":({80,99,}),\"万里长城一线\":({100,119,}),\"万里长城一线\":({120,159,}),])','',''),('','万里长城','global','chongzhi_fanli','({\"2017-03-18-00:00:00\",\"2017-03-20-17:14:59\", 1})','',''),('','万里长城','global','CITY_WAR_SERVER','万里长城一线','',NULL),('','万里长城','global','dongfu_tiaozhan','万里长城一线','',''),('','万里长城','global','douchong_dahui','万里长城一线','',''),('','万里长城','global','试道大会','万里长城三线:60-69,70-79,80-89/万里长城三线:90-99,100-109,110-119/万里长城二线:120-129,130-139,140-149,150-159,160-169','',NULL),('','万里长城','global','fishing_server','({\"万里长城一线\",\"万里长城二线\" })','',NULL),('','万里长城','global','group_buying_server','万里长城一线','',NULL),('','万里长城','global','hero_boss_server','万里长城一线','',NULL),('','万里长城','global','journey_of_asktao','([ \"date\" : \"20160713\", \"checksum\" : \"5FA8074842CF18DF6DDBEEB02BC8E289\" ])','',''),('','万里长城','global','ldb_host','127.0.0.1:','',NULL),('','万里长城','global','lgxy_server','万里长城一线','',''),('','万里长城','global','longxue_boss_server','万里长城一线','',''),('','万里长城','global','map_decorate_server','万里长城一线','',NULL),('','万里长城','global','mdb_host','127.0.0.1:','',NULL),('','万里长城','global','party_qkbgz','([4:\"万里长城三线\",3:\"万里长城二线\",2:\"万里长城一线\",])','',NULL),('','万里长城','global','party_qql','万里长城一线','',NULL),('','万里长城','global','party_sell_servers','万里长城一线','',NULL),('','万里长城','global','red_envelope','([ \"start_time\" : \"2016-01-09-00:00:00\", \"sort_end_time\" : \"2016-02-27-23:59:59\", \"end_time\" : \"2016-02-28-23:59:59\", \"envelope_list\" : ({ ([\"time\" : \"2016-01-18-14:00:00\",\"coin\" : 3000000,\"amount\" : 3000,]),([\"time\" : \"2016-01-18-16:00:00\",\"coin\" : 3000000,\"amount\" : 3000,]),([\"time\" : \"2016-01-23-14:00:00\",\"coin\" : 100000,\"amount\" : 100,]),([\"time\" : \"2016-01-23-16:00:00\",\"coin\" : 100000,\"amount\" : 100,]),([\"time\" : \"2016-01-24-14:00:00\",\"coin\" : 100000,\"amount\" : 100,]),([\"time\" : \"2016-01-24-16:00:00\",\"coin\" : 100000,\"amount\" : 100,]) }), \"sys_name\" : \"ê??ü?ê\", \"version\" : 3 ])','',''),('','万里长城','global','send_exp_online','([\"end_time\":\"2010-06-29-12:00:00\",\"start_time\":\"2010-06-29-10:00:00\",\"interval\":0,\"duration\":0,])','',''),('','万里长城','global','shengsidou','1','',''),('','万里长城','global','sncbc_open_gs','({\"万里长城一线\",\"万里长城二线\" })','',NULL),('','万里长城','global','super_boss_server','万里长城一线','',NULL),('','万里长城','global','task_control_server','万里长城一线','',''),('','万里长城','global','vendue_place','万里长城一线','','NULL'),('','万里长城','global','WAR_GROUP_A','万里长城一线','',NULL),('','万里长城','global','WAR_GROUP_B','万里长城二线','',NULL),('','万里长城','global','WAR_GROUP_C','万里长城三线','',NULL),('','万里长城','global','wedding_server','万里长城一线','',NULL),('','万里长城','global','world_boss_server','万里长城一线','',''),('','万里长城','global','world_level_config','0','',NULL),('','万里长城','global','wuzhuangyuan','万里长城一线:60-69,70-79/万里长城一线:80-89,90-99/万里长城一线:100-109,110-119/万里长城一线:120-129,130-139,140-149,150-159,160-169','',''),('','万里长城','global','xinfjjwz','([ \"start_time\" : \"2017-07-01-20:00:00\", \"end_time\" : \"2017-08-21-19:59:59\" ])','',''),('','万里长城','global','xinfu_chongbang','([ \"start_time\" : \"2016-08-08-00:00:00\", \"end_time\" : \"2016-08-31-23:59:59\", \"bonus_time\" : \"2016-09-06-23:59:59\", \"order_end_time\" : \"2016-09-10-23:59:59\", \"url\" : \"http://wd.gyyx.cn/huodong/wdxf/tf/bwcx/cbbs/index.html\" ])','',''),('','万里长城','global','xiygc_zhenyz','({\"万里长城一线\"})','',''),('','万里长城','global','xiygc_zhenyzb','([\"40-69\":1,\"70-79\":1,\"80-89\":1,\"90-99\":1,\"100-109\":1,\"110-119\":1,\"120-129\":1,\"130-139\":1,\"140-149\":1,\"150-159\":1,\"160-169\":1])','',''),('','万里长城','global','yuqing_shandian_challenge','万里长城一线','',NULL),('','万里长城','global','比武大会','万里长城三线:60-69,70-79/万里长城一线:80-89,90-99/万里长城二线:100-109,110-119/万里长城三线:120-129,130-139,140-149','',NULL);
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
-- INSERT INTO `server` VALUES ('三线','','118.24.7.124',8162,1200,'问道一区',1,'','','','',0,0,0,0,3,'','','',0,NULL),('一线','','118.24.7.124',8160,1200,'问道一区',1,'network','','','',0,0,0,600,1,'apex1','','',0,NULL),('二线','','118.24.7.124',8161,1200,'问道一区',1,'','','','',0,0,0,0,2,'','','',0,NULL);
INSERT INTO `server` VALUES ('万里长城一线','','47.97.104.166',8160,1200,'万里长城',1,'network','','','',0,0,0,600,1,'apex1','','',0,NULL);
INSERT INTO `server` VALUES ('万里长城二线','','47.97.104.166',8161,1200,'万里长城',1,'','','','',0,0,0,0,2,'','','',0,NULL);
INSERT INTO `server` VALUES ('万里长城三线','','47.97.104.166',8162,1200,'万里长城',1,'','','','',0,0,0,0,3,'','','',0,NULL);
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
