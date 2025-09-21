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
-- Current Database: `dl_adb_all`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dl_adb_all` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dl_adb_all`;

--
-- Table structure for table `aaa`
--

DROP TABLE IF EXISTS `aaa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aaa` (
  `aaa` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `attrib` varchar(255) DEFAULT NULL,
  `server_key` varchar(32) NOT NULL DEFAULT '',
  `num` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `error_password_times` int(11) NOT NULL DEFAULT '5',
  `busy_time` int(11) NOT NULL DEFAULT '600',
  `client_per_ip` int(11) NOT NULL DEFAULT '0',
  `activate_url` varchar(255) NOT NULL DEFAULT '',
  `activate_aaa_ip` varchar(15) NOT NULL DEFAULT '',
  `ecard_fill_url` varchar(255) NOT NULL DEFAULT '',
  `ecard_resend_url` varchar(255) NOT NULL DEFAULT '',
  `ecard_web_status_url` varchar(255) NOT NULL DEFAULT '',
  `antibot_server` varchar(255) DEFAULT NULL,
  `antibot_action` varchar(255) DEFAULT NULL,
  `passpod_server` varchar(255) DEFAULT NULL,
  `auth_server` varchar(255) DEFAULT NULL,
  `coin_trade_server` varchar(255) DEFAULT 'transfer.gyyx.cn:81',
  `recharge_url` varchar(255) NOT NULL DEFAULT '',
  `inquiry_url` varchar(255) NOT NULL DEFAULT '',
  `sms_auth_url` varchar(255) NOT NULL DEFAULT 'http://interface.message.gyyx.cn/v1/Send/Account',
  `memo` text,
  PRIMARY KEY (`aaa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aaa`
--

LOCK TABLES `aaa` WRITE;
/*!40000 ALTER TABLE `aaa` DISABLE KEYS */;
INSERT INTO `aaa` VALUES ('aaa_coding','10.2.50.30',8300,NULL,'',1,1,3,600,0,'','','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_daili','118.24.7.124',8101,NULL,'',1,1,5,30,0,'http://127.0.0.1/','','127.0.0.1','127.0.0.1','127.0.0.1',NULL,NULL,'127.0.0.1',NULL,'transfer.gyyx.cn:81','127.0.0.1','127.0.0.1','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_dongsh','10.3.4.35',8300,NULL,'',1,1,3,600,0,'','','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_jiangw_30','10.2.50.30',8001,NULL,'',1,1,3,600,0,'http://10.2.50.58/simulateforum/vipsms_jiangw.php','10.2.50.30','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_jiangw_pk','10.2.50.30',8003,NULL,'',1,2,5,30,0,'http://10.2.50.58/simulateforum/vipsms_jiangw.php','','127.0.0.1','127.0.0.1','127.0.0.1',NULL,NULL,'127.0.0.1',NULL,'transfer.gyyx.cn:81','127.0.0.1','127.0.0.1','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_liy','10.3.102.75',8000,NULL,'',1,1,3,600,0,'','10.2.48.30','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_luoyh','10.3.4.25',8001,NULL,'',1,1,3,600,0,'','','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_quls_30','10.3.4.5',8300,NULL,'',1,1,3,600,0,'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx','10.2.48.30','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_test','10.2.50.57',12054,NULL,'',1,1,3,600,0,'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx','10.2.50.57','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_weism','10.3.35.4',8300,NULL,'',1,1,3,600,0,'','','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_wuxl','10.3.4.20',8001,NULL,'',0,0,3,600,0,'','','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_xg_liy','10.3.4.22',8001,NULL,'',1,1,3,600,0,'','','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_xg_quls','10.3.4.5',9300,NULL,'',1,1,3,600,0,'','','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_xuj','10.3.4.10',8300,NULL,'',1,1,3,600,0,'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx','10.2.48.30','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_xuj_30','10.2.50.30',8300,NULL,'',1,1,3,600,0,'','','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_yugq','10.3.4.26',8021,NULL,'',1,1,3,600,0,'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx','10.2.48.30','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_zenghh','10.3.4.30',8001,NULL,'',1,1,3,600,0,'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx','10.2.48.30','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_zenghh_1','10.3.4.30',9001,NULL,'',1,1,3,600,0,'','10.3.4.30','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_zhangq3_30','10.3.102.39',8300,NULL,'',1,1,3,600,0,'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx','10.2.48.30','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('p01g_aaa_pack','10.2.50.57',8857,NULL,'',1,1,3,600,0,'','','','','',NULL,NULL,'http://10.2.50.58/simulateforum/passpod.php',NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('p01g_aaa_pack58','10.2.50.58',8857,NULL,'',1,1,3,600,0,'','','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('p01_aaa_hong','10.3.4.4',10001,NULL,'',1,1,3,600,0,'','','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('p01_aaa_hongjs','10.3.4.4',8001,NULL,'',1,1,3,600,0,'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx','','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('p01_aaa_shuxx','10.3.4.12',8001,NULL,'',1,1,30,1,0,'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx','10.2.48.30','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('p01_aaa_yeyh2','10.3.102.24',8054,NULL,'',1,1,3,600,0,'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx','10.2.48.30','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL);
/*!40000 ALTER TABLE `aaa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_comp`
--

DROP TABLE IF EXISTS `acc_comp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_comp` (
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `branch` varchar(128) NOT NULL DEFAULT '',
  `comp` varchar(128) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `gid` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dist`,`account`,`branch`,`comp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_comp`
--

LOCK TABLES `acc_comp` WRITE;
/*!40000 ALTER TABLE `acc_comp` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_comp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_log`
--

DROP TABLE IF EXISTS `acc_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `msg` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_log`
--

LOCK TABLES `acc_log` WRITE;
/*!40000 ALTER TABLE `acc_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `blocked_time` varchar(14) NOT NULL DEFAULT '0',
  `blocked_reason` varchar(128) NOT NULL DEFAULT '',
  `temp_blocked_time` varchar(14) NOT NULL DEFAULT '',
  `temp_blocked_reason` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `protect` varchar(32) NOT NULL DEFAULT '',
  `auto_lock` int(11) NOT NULL DEFAULT '0',
  `locked` varchar(14) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `limit_trade_coin` int(11) NOT NULL DEFAULT '0',
  `trade_lock_time` varchar(14) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `birthday` varchar(8) NOT NULL DEFAULT '',
  `id_type` varchar(32) NOT NULL DEFAULT '',
  `id_num` varchar(32) NOT NULL DEFAULT '',
  `tel` varchar(32) NOT NULL DEFAULT '',
  `mobile` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `active_time` varchar(14) NOT NULL DEFAULT '',
  `first_login_time` varchar(14) NOT NULL DEFAULT '',
  `first_login_mac` varchar(32) NOT NULL DEFAULT '',
  `privilege` int(11) unsigned NOT NULL DEFAULT '0',
  `account_id` varchar(32) NOT NULL DEFAULT '',
  `permit_ip` varchar(128) NOT NULL DEFAULT '',
  `permit_id` varchar(128) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `adult` tinyint(4) NOT NULL DEFAULT '1',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `coin_password` varchar(32) NOT NULL DEFAULT '',
  `unlock_coin_password_time` varchar(14) NOT NULL DEFAULT '',
  `org_password` varchar(32) NOT NULL DEFAULT '',
  `org_permit_ip` varchar(128) NOT NULL DEFAULT '',
  `last_login_time` varchar(14) NOT NULL DEFAULT '',
  `last_login_ip` varchar(128) NOT NULL DEFAULT '',
  `last_login_id` varchar(32) NOT NULL DEFAULT '',
  `presentee` tinyint(4) NOT NULL DEFAULT '0',
  `reg_date` varchar(14) NOT NULL DEFAULT '',
  `active_path` tinyint(4) NOT NULL DEFAULT '0',
  `trade_coin` int(11) NOT NULL DEFAULT '0',
  `last_trade_coin` char(14) NOT NULL DEFAULT '',
  `consum_coin` int(11) NOT NULL DEFAULT '0',
  `last_consum_coin` char(14) NOT NULL DEFAULT '',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `memo` text,
  PRIMARY KEY (`account`),
  KEY `last_login_time` (`last_login_time`) USING BTREE,
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `active_time` (`active_time`) USING BTREE,
  KEY `reg_date` (`reg_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_code`
--

DROP TABLE IF EXISTS `account_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_code` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_code` int(11) NOT NULL,
  `update_time` datetime NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_code`
--

LOCK TABLES `account_code` WRITE;
/*!40000 ALTER TABLE `account_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_coin_trade`
--

DROP TABLE IF EXISTS `account_coin_trade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_coin_trade` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `checksum` varchar(32) NOT NULL DEFAULT '0',
  `update_time` char(14) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_coin_trade`
--

LOCK TABLES `account_coin_trade` WRITE;
/*!40000 ALTER TABLE `account_coin_trade` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_coin_trade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_account`
--

DROP TABLE IF EXISTS `activity_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `activity` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_account`
--

LOCK TABLES `activity_account` WRITE;
/*!40000 ALTER TABLE `activity_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `add_coin_log`
--

DROP TABLE IF EXISTS `add_coin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `add_coin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `add_time` varchar(14) NOT NULL DEFAULT '',
  `silver_coin_left` int(11) NOT NULL DEFAULT '0',
  `gold_coin_left` int(11) NOT NULL DEFAULT '0',
  `add_silver_coin` int(11) NOT NULL DEFAULT '0',
  `add_gold_coin` int(11) NOT NULL DEFAULT '0',
  `cur_gold_coin` int(11) NOT NULL DEFAULT '0',
  `cur_silver_coin` int(11) NOT NULL DEFAULT '0',
  `gs_memo` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_coin_log`
--

LOCK TABLES `add_coin_log` WRITE;
/*!40000 ALTER TABLE `add_coin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `add_coin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `add_gold_coin_log`
--

DROP TABLE IF EXISTS `add_gold_coin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `add_gold_coin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `cost_time` varchar(14) NOT NULL DEFAULT '',
  `cost_platform` tinyint(4) NOT NULL DEFAULT '0',
  `cost_coin` int(11) NOT NULL DEFAULT '0',
  `item_price` int(11) NOT NULL DEFAULT '0',
  `buy_item` varchar(32) NOT NULL DEFAULT '',
  `buy_item_amount` int(11) NOT NULL DEFAULT '0',
  `silver_coin_cost` int(11) NOT NULL DEFAULT '0',
  `silver_coin_left` int(11) NOT NULL DEFAULT '0',
  `gold_coin_cost` int(11) NOT NULL DEFAULT '0',
  `gold_coin_left` int(11) NOT NULL DEFAULT '0',
  `cur_state` int(11) NOT NULL DEFAULT '0',
  `uid` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `gs_memo` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `account` (`account`) USING BTREE,
  KEY `cost_time` (`cost_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_gold_coin_log`
--

LOCK TABLES `add_gold_coin_log` WRITE;
/*!40000 ALTER TABLE `add_gold_coin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `add_gold_coin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_acc`
--

DROP TABLE IF EXISTS `admin_acc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_acc` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `privilege` text NOT NULL,
  `permit_ip` varchar(128) NOT NULL DEFAULT '',
  `permit_id` varchar(128) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_acc`
--

LOCK TABLES `admin_acc` WRITE;
/*!40000 ALTER TABLE `admin_acc` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_acc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ahserver`
--

DROP TABLE IF EXISTS `ahserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ahserver` (
  `ahserver` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`ahserver`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ahserver`
--

LOCK TABLES `ahserver` WRITE;
/*!40000 ALTER TABLE `ahserver` DISABLE KEYS */;
/*!40000 ALTER TABLE `ahserver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alipay_account`
--

DROP TABLE IF EXISTS `alipay_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alipay_account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `alipay_account` varchar(255) NOT NULL DEFAULT '',
  `bind_time` char(14) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `update_time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alipay_account`
--

LOCK TABLES `alipay_account` WRITE;
/*!40000 ALTER TABLE `alipay_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `alipay_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antiaddiction`
--

DROP TABLE IF EXISTS `antiaddiction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antiaddiction` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `last_offline` int(10) NOT NULL DEFAULT '0',
  `total_offline` int(10) NOT NULL DEFAULT '0',
  `total_online` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antiaddiction`
--

LOCK TABLES `antiaddiction` WRITE;
/*!40000 ALTER TABLE `antiaddiction` DISABLE KEYS */;
/*!40000 ALTER TABLE `antiaddiction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antibot_log`
--

DROP TABLE IF EXISTS `antibot_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antibot_log` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) DEFAULT NULL,
  `bot_type` varchar(16) DEFAULT NULL,
  `bot_content` text,
  `time` varchar(14) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`no`),
  KEY `bot_type` (`bot_type`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antibot_log`
--

LOCK TABLES `antibot_log` WRITE;
/*!40000 ALTER TABLE `antibot_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `antibot_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_bind`
--

DROP TABLE IF EXISTS `app_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_bind` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `bind_type` tinyint(4) NOT NULL DEFAULT '1',
  `bind_time` char(14) NOT NULL DEFAULT '',
  `update_time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_bind`
--

LOCK TABLES `app_bind` WRITE;
/*!40000 ALTER TABLE `app_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arena_account`
--

DROP TABLE IF EXISTS `arena_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arena_account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arena_account`
--

LOCK TABLES `arena_account` WRITE;
/*!40000 ALTER TABLE `arena_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_info`
--

DROP TABLE IF EXISTS `card_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_info` (
  `number` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `used` int(11) NOT NULL DEFAULT '0',
  `locked` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_info`
--

LOCK TABLES `card_info` WRITE;
/*!40000 ALTER TABLE `card_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ccs`
--

DROP TABLE IF EXISTS `ccs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccs` (
  `ccs` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(31) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL DEFAULT '0',
  `server_key` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`ccs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccs`
--

LOCK TABLES `ccs` WRITE;
/*!40000 ALTER TABLE `ccs` DISABLE KEYS */;
INSERT INTO `ccs` VALUES ('','',0,'',0,'',NULL),('ccs_coding','10.2.50.30',8100,'coding',1,'',NULL),('ccs_daili','118.24.7.124',8110,'问道一区',1,'',NULL),('ccs_dongsh','10.3.4.35',8100,'dongsh',1,'',NULL),('ccs_jiangw_30','10.2.50.30',8010,'jiangw_30',1,'',NULL),('ccs_jiangw_pk','10.2.50.30',8012,'pk',1,'',NULL),('ccs_luoyh','10.3.4.25',8010,'luoyh',1,'',NULL),('ccs_quls_30','10.3.4.5',8100,'quls_30',0,'',NULL),('ccs_test','10.2.50.57',12087,'test',1,'',NULL),('ccs_weism','10.3.35.4',8100,'weism',1,'',NULL),('ccs_wuxl','10.3.4.20',8004,'wuxl',1,'',NULL),('ccs_wuxl2','10.3.4.20',8014,'wuxl2',2,'',NULL),('ccs_xg_liy','10.3.4.22',8303,'xg_liy',1,'',NULL),('ccs_xg_quls','10.3.4.5',9100,'quls_xg',1,'',NULL),('ccs_xg_zenghh','10.3.4.2',9100,'zenghh_xg',1,'',NULL),('ccs_xuj','10.3.4.10',8100,'xuj',1,'',NULL),('ccs_xuj_30','10.2.50.30',8100,'xuj_30',1,'',NULL),('ccs_yugq','10.3.4.26',8002,'yugq',1,'',NULL),('ccs_zenghh','10.3.4.30',8005,'zenghh',1,'',NULL),('ccs_zhangq3_30','10.3.102.39',8100,'zhangq3',1,'',NULL),('p01g_ccs_pack','10.2.50.57',9887,'gy_pack',1,'',NULL),('p01g_ccs_pack58','10.2.50.58',9887,'gy_pack58',1,'',NULL),('p01_ccs_hong','10.3.4.4',10005,'hong',1,'',NULL),('p01_ccs_hongjs','10.3.4.4',8005,'hongjs',1,'',NULL),('p01_ccs_shuxx','10.3.4.12',8005,'shuxx',1,'',NULL),('p01_ccs_yeyh2','10.3.4.2',8087,'yeyh2',1,'',NULL);
/*!40000 ALTER TABLE `ccs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charge`
--

DROP TABLE IF EXISTS `charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charge` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `end_time` varchar(14) NOT NULL DEFAULT '',
  `card_bonus` int(11) NOT NULL DEFAULT '0',
  `gender` int(11) NOT NULL DEFAULT '0',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charge`
--

LOCK TABLES `charge` WRITE;
/*!40000 ALTER TABLE `charge` DISABLE KEYS */;
/*!40000 ALTER TABLE `charge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charge_encourage`
--

DROP TABLE IF EXISTS `charge_encourage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charge_encourage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `encourage` varchar(128) NOT NULL DEFAULT '0',
  `start_time` char(14) NOT NULL DEFAULT '0',
  `end_time` char(14) NOT NULL DEFAULT '',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `gold_coin` (`gold_coin`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charge_encourage`
--

LOCK TABLES `charge_encourage` WRITE;
/*!40000 ALTER TABLE `charge_encourage` DISABLE KEYS */;
/*!40000 ALTER TABLE `charge_encourage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charge_log`
--

DROP TABLE IF EXISTS `charge_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charge_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `src_ip` varchar(15) NOT NULL DEFAULT '',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `number` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `delta_count` int(11) NOT NULL DEFAULT '0',
  `delta_time` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `end_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charge_log`
--

LOCK TABLES `charge_log` WRITE;
/*!40000 ALTER TABLE `charge_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `charge_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citywar_account`
--

DROP TABLE IF EXISTS `citywar_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citywar_account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citywar_account`
--

LOCK TABLES `citywar_account` WRITE;
/*!40000 ALTER TABLE `citywar_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `citywar_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_red_packets_log`
--

DROP TABLE IF EXISTS `coin_red_packets_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_red_packets_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(12) NOT NULL DEFAULT '',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `gold_coin_before` int(11) NOT NULL DEFAULT '0',
  `gold_coin_after` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_red_packets_log`
--

LOCK TABLES `coin_red_packets_log` WRITE;
/*!40000 ALTER TABLE `coin_red_packets_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `coin_red_packets_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_trade_log`
--

DROP TABLE IF EXISTS `coin_trade_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_trade_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(12) NOT NULL DEFAULT '',
  `order_id` varchar(15) NOT NULL DEFAULT '',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `gold_coin_before` int(11) NOT NULL DEFAULT '0',
  `gold_coin_after` int(11) NOT NULL DEFAULT '0',
  `store_coin_before` int(11) NOT NULL DEFAULT '0',
  `store_coin_after` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_trade_log`
--

LOCK TABLES `coin_trade_log` WRITE;
/*!40000 ALTER TABLE `coin_trade_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `coin_trade_log` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `cost_log`
--

DROP TABLE IF EXISTS `cost_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cost_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `cost_time` varchar(14) NOT NULL DEFAULT '',
  `cost_platform` tinyint(4) NOT NULL DEFAULT '0',
  `cost_coin` int(11) NOT NULL DEFAULT '0',
  `item_price` int(11) NOT NULL DEFAULT '0',
  `buy_item` varchar(32) NOT NULL DEFAULT '',
  `buy_item_amount` int(11) NOT NULL DEFAULT '0',
  `silver_coin_cost` int(11) NOT NULL DEFAULT '0',
  `silver_coin_left` int(11) NOT NULL DEFAULT '0',
  `gold_coin_cost` int(11) NOT NULL DEFAULT '0',
  `gold_coin_left` int(11) NOT NULL DEFAULT '0',
  `cur_state` int(11) NOT NULL DEFAULT '0',
  `uid` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `gs_memo` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `account` (`account`) USING BTREE,
  KEY `cost_time` (`cost_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cost_log`
--

LOCK TABLES `cost_log` WRITE;
/*!40000 ALTER TABLE `cost_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cost_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_info`
--

DROP TABLE IF EXISTS `coupon_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_info` (
  `code` varchar(32) NOT NULL DEFAULT '',
  `gid` bigint(20) NOT NULL DEFAULT '0',
  `type` varchar(32) NOT NULL DEFAULT '',
  `used` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_info`
--

LOCK TABLES `coupon_info` WRITE;
/*!40000 ALTER TABLE `coupon_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_log`
--

DROP TABLE IF EXISTS `credit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `coupon_gold_used` int(11) NOT NULL DEFAULT '0',
  `coupon_silver_used` int(11) NOT NULL DEFAULT '0',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `source` tinyint(4) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` int(11) NOT NULL DEFAULT '0',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `para4` varchar(32) NOT NULL DEFAULT '',
  `para5` varchar(255) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`,`transaction_id`),
  KEY `account` (`account`) USING BTREE,
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_log`
--

LOCK TABLES `credit_log` WRITE;
/*!40000 ALTER TABLE `credit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `credit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cs_ccs`
--

DROP TABLE IF EXISTS `cs_ccs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cs_ccs` (
  `ccs` varchar(32) NOT NULL DEFAULT '',
  `role` text NOT NULL,
  `privilege` text NOT NULL,
  `ip` varchar(31) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `server_key` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`ccs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_ccs`
--

LOCK TABLES `cs_ccs` WRITE;
/*!40000 ALTER TABLE `cs_ccs` DISABLE KEYS */;
INSERT INTO `cs_ccs` VALUES ('ccs_daili','LEAGUE_SOURCE/PARTYWAR_SOURCE/ARENA_SOURCE/BOTTLE_SOURCE/DRAFT_SOURCE/SDDH_SOURCE/EVERYONE_PK_SOURCE/CELEBRITY_SOURCE/SAMSUNG_SOURCE/CITYWAR_SOURCE/XGAME_SOURCE/ACTIVITY_SOURCE\r\n','*','128.24.7.124',8110,1,'问道一区','',NULL),('ccs_pk','LEAGUE_COMPETE/PARTYWAR_COMPETE/ARENA_COMPETE/SDDH_COMPETE/CELEBRITY_COMPETE/SAMSUNG_COMPETE/CITYWAR_COMPETE/XGAME_COMPETE/EVERYONE_PK_COMPETE/ACTIVITY_COMPETE\r\n','*','128.24.7.124',8012,1,'pk','',NULL),('ccs_quls_30','ARENA_SOURCE','*','10.3.4.5',8100,1,'quls_30','',NULL),('ccs_xuj','ARENA_COMPETE','cmd_league_oper/cmd_partywar_oper/cmd_bottle_oper/cmd_arena_oper/cmd_draft_oper/cmd_sddh_oper   ','10.3.4.10',8100,1,'xuj','',NULL),('ccs_yugq','','*','10.3.4.9',8002,1,'yugq','',NULL),('p01_ccs_shuxx','','*','10.3.4.12',8005,1,'shuxx','',NULL);
/*!40000 ALTER TABLE `cs_ccs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cs_everyone_pk_account`
--

DROP TABLE IF EXISTS `cs_everyone_pk_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cs_everyone_pk_account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_everyone_pk_account`
--

LOCK TABLES `cs_everyone_pk_account` WRITE;
/*!40000 ALTER TABLE `cs_everyone_pk_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `cs_everyone_pk_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csa`
--

DROP TABLE IF EXISTS `csa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csa` (
  `csa` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `port` varchar(15) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL DEFAULT '0',
  `cs_dist` varchar(255) NOT NULL DEFAULT '',
  `http_ip` varchar(255) NOT NULL DEFAULT '',
  `http_port` int(11) NOT NULL DEFAULT '0',
  `http_plat` varchar(255) NOT NULL DEFAULT '',
  `httpd_enable` int(1) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`csa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csa`
--

LOCK TABLES `csa` WRITE;
/*!40000 ALTER TABLE `csa` DISABLE KEYS */;
INSERT INTO `csa` VALUES ('csa_daili','118.24.7.124','6101',7,'问道一区','',0,'',0,''),('csa_dongsh','10.3.4.35','6001',3,'csa_dongsh','',0,'',0,''),('csa_hongjs','10.3.4.4','9051',2,'csa_hongjs','',0,'',0,''),('csa_luoyh','10.3.4.25','6001',9,'csa_luoyh','',0,'',0,''),('csa_quls','10.3.4.5','6001',1,'csa_quls','',0,'',0,''),('csa_shuxx','10.3.4.12','4052',4,'??·t·t???÷','',0,'',0,''),('csa_xuj','10.3.4.10','9999',8,'csa_xuj','',0,'',0,''),('csa_yugq','10.3.4.26','6001',6,'csa_yugq','',0,'',0,''),('csa_zenghh','10.3.4.30','8051',5,'csa_zenghh','',0,'',0,''),('p01_csa_yeyh2','10.3.102.24','4080',1,'??·t?D×a·t???÷','',0,'',0,'');
/*!40000 ALTER TABLE `csa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csw_account`
--

DROP TABLE IF EXISTS `csw_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csw_account` (
  `account` varchar(64) NOT NULL DEFAULT '',
  `dist` varchar(64) NOT NULL DEFAULT '',
  `gid` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csw_account`
--

LOCK TABLES `csw_account` WRITE;
/*!40000 ALTER TABLE `csw_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `csw_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csw_config`
--

DROP TABLE IF EXISTS `csw_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csw_config` (
  `csw_name` varchar(128) NOT NULL DEFAULT '',
  `csw_key` varchar(128) NOT NULL DEFAULT '',
  `csw_value` text,
  `memo` text,
  PRIMARY KEY (`csw_name`,`csw_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csw_config`
--

LOCK TABLES `csw_config` WRITE;
/*!40000 ALTER TABLE `csw_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `csw_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csw_party_info`
--

DROP TABLE IF EXISTS `csw_party_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csw_party_info` (
  `name` varchar(128) NOT NULL DEFAULT '',
  `dist` varchar(64) NOT NULL DEFAULT '',
  `party` varchar(128) NOT NULL DEFAULT '',
  `score` int(8) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`dist`,`party`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csw_party_info`
--

LOCK TABLES `csw_party_info` WRITE;
/*!40000 ALTER TABLE `csw_party_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `csw_party_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cta`
--

DROP TABLE IF EXISTS `cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cta` (
  `cta` varchar(32) NOT NULL DEFAULT '',
  `privilege` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(255) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `access_adb_user` varchar(32) NOT NULL DEFAULT '',
  `access_adb_password` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`cta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cta`
--

LOCK TABLES `cta` WRITE;
/*!40000 ALTER TABLE `cta` DISABLE KEYS */;
INSERT INTO `cta` VALUES ('chenqs','*','10.3.4.7',0,'yugq','chenqs','81DC9BDB52D04DC20036DBD8313ED055',NULL),('dongsh','*','10.3.4.35',0,'普天同庆','dongsh','81DC9BDB52D04DC20036DBD8313ED055',NULL),('hongjs','*','10.3.4.4,10.3.4.7',0,'hongjs','hongjs','81DC9BDB52D04DC20036DBD8313ED055',NULL),('shuxx','*','10.3.4.12',0,'shuxx','shuxx','81DC9BDB52D04DC20036DBD8313ED055',NULL),('xuj','*','10.3.102.191,10.3.102.62',0,'xuj','xuj','81DC9BDB52D04DC20036DBD8313ED055',NULL),('yugq','*','10.3.4.26',0,'yugq','yugq','81DC9BDB52D04DC20036DBD8313ED055',NULL),('普天同庆','*','118.24.7.124',0,'普天同庆','root','81DC9BDB52D04DC20036DBD8313ED055',NULL);
/*!40000 ALTER TABLE `cta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dba`
--

DROP TABLE IF EXISTS `dba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dba` (
  `dba` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `server_key` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`dba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dba`
--

LOCK TABLES `dba` WRITE;
/*!40000 ALTER TABLE `dba` DISABLE KEYS */;
INSERT INTO `dba` VALUES ('dba_coding','10.2.50.30',8200,'coding','',1,NULL),('dba_daili','118.24.7.124',8120,'问道一区','',1,NULL),('dba_dongsh','10.3.4.35',8200,'dongsh','',1,NULL),('dba_jiangw_30','10.2.50.30',8020,'jiangw_30','',1,NULL),('dba_jiangw_pk','118.24.7.124',8022,'pk','',2,NULL),('dba_liy','10.3.102.75',8020,'liy','',1,NULL),('dba_luoyh','10.3.4.25',8020,'luoyh','',1,NULL),('dba_quls_30','10.3.4.5',8200,'quls_30','',1,NULL),('dba_test','10.2.50.57',12065,'test','',1,NULL),('dba_weism','10.3.35.4',8200,'weism','',1,NULL),('dba_wuxl','10.3.4.20',8003,'wuxl','',1,NULL),('dba_xg_quls','10.3.4.5',9200,'quls_xg','',1,NULL),('dba_xuj','10.3.4.10',8200,'xuj','',1,''),('dba_xuj_30','10.2.50.30',8200,'xuj_30','',1,NULL),('dba_zenghh','10.3.4.30',8003,'zenghh','',1,NULL),('dba_zhangq3_30','10.3.102.39',8200,'zhangq3','',1,NULL),('p01d_dba_yugq32','10.3.4.26',8005,'yugq','',1,NULL),('p01g_dba_pack','10.2.50.57',9867,'gy_pack','',1,NULL),('p01g_dba_pack58','10.2.50.58',9867,'gy_pack58','',1,NULL),('p01_dba_hong','10.3.4.4',10003,'hong','',1,NULL),('p01_dba_hongjs','10.3.4.4',8003,'hongjs','',1,NULL),('p01_dba_shuxx','10.3.4.12',8003,'shuxx','',1,NULL),('p01_dba_yeyh2','10.3.102.24',8076,'yeyh2','',1,NULL);
/*!40000 ALTER TABLE `dba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddb`
--

DROP TABLE IF EXISTS `ddb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddb` (
  `ddb` varchar(32) NOT NULL DEFAULT '',
  `user` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL DEFAULT '',
  `driver` varchar(64) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`ddb`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddb`
--

LOCK TABLES `ddb` WRITE;
/*!40000 ALTER TABLE `ddb` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `district` (
  `dist` varchar(32) NOT NULL DEFAULT '',
  `alias` varchar(32) NOT NULL DEFAULT '',
  `service` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL DEFAULT '0',
  `spa` varchar(32) NOT NULL DEFAULT '',
  `csa` varchar(32) NOT NULL DEFAULT '',
  `party_war_server` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES ('coding','','login/new_char/permit_wizard/new_account',1,'spa_coding','','',NULL),('dongsh','','login/new_char/permit_wizard/new_account',1,'spa_dongsh','','',NULL),('gy_pack','','login/new_char/permit_wizard/new_account',1,'p01g_spa_pack','','',NULL),('gy_pack58','','login/new_char/permit_wizard/new_account',1,'p01g_spa_pack58','','',NULL),('hong','','login/new_char/permit_wizard/new_account',1,'p01_spa_hong','p01_csa_hong','',NULL),('hongjs','','login/new_char/permit_wizard/new_account',1,'p01_spa_hongjs','csa_hongjs','',NULL),('问道一区','','login/new_char/permit_wizard/new_account/new_party',1,'spa_jiangw','csa_daili','',NULL),('jiangw_30','','login/new_char/permit_wizard/new_account',1,'spa_jiangw_30','csa_jiangw','',NULL),('jiangw_pk','','login/new_char/permit_wizard/new_account',2,'spa_jiangw_pk','csa_jiangw','',NULL),('luoyh','','login/new_char/permit_wizard/new_account',1,'spa_luoyh','csa_luoyh','',NULL),('quls_30','','login/new_char/permit_wizard/new_account',1,'spa_quls_30','csa_quls','',NULL),('shuxx','','login/new_char/permit_wizard/new_account/new_party',1,'p01_spa_shuxx','csa_shuxx','p01_gs_shuxx',NULL),('test','','login/new_char/permit_wizard/new_account',1,'spa_test','','',NULL),('weism','','login/new_char/permit_wizard/new_account',1,'spa_weism','','',NULL),('wuxl','','login/new_char/permit_wizard/new_account',1,'spa_wuxl','','',NULL),('xg_liy','','login/new_char/permit_wizard/new_account',1,'spa_xg_liy','csa_xg_liy','',NULL),('xuj','','login/new_char/permit_wizard/new_account',1,'spa_xuj','csa_xuj','',NULL),('xuj_30','','login/new_char/permit_wizard/new_account',1,'spa_xuj_30','','',NULL),('yeyh2','','login/new_char/permit_wizard/new_account',1,'spa_yeyh2','p01_csa_yeyh2','',NULL),('yugq','','login/new_char/permit_wizard/new_account',1,'spa_yugq','csa_yugq','',NULL),('zenghh','','login/new_char/permit_wizard/new_account',1,'spa_zenghh','csa_zenghh','',NULL),('zenghh_1','','login/new_char/permit_wizard/new_account',2,'spa_zenghh_1','','',NULL),('zhangq3','','login/new_char/permit_wizard/new_account',1,'spa_zhangq3_30','','','(NULL)');
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecard_business`
--

DROP TABLE IF EXISTS `ecard_business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecard_business` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `ecard_no` varchar(30) DEFAULT NULL,
  `ecard_id` varchar(100) DEFAULT NULL,
  `ecard_server` varchar(30) DEFAULT NULL,
  `ecard_seller` varchar(128) DEFAULT NULL,
  `ecard_buyer` varchar(128) DEFAULT NULL,
  `ecard_buyer_account` varchar(128) DEFAULT NULL,
  `ecard_price` int(11) DEFAULT NULL,
  `ecard_type` int(11) DEFAULT NULL,
  `ecard_time` varchar(30) DEFAULT NULL,
  `action` varchar(10) DEFAULT NULL,
  `buyer_done` int(11) DEFAULT NULL,
  `seller_done` int(11) DEFAULT NULL,
  `insert_time` varchar(14) DEFAULT NULL,
  `update_time` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ecard_seller` (`ecard_seller`,`seller_done`) USING BTREE,
  KEY `ecard_buyer` (`ecard_buyer`,`buyer_done`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecard_business`
--

LOCK TABLES `ecard_business` WRITE;
/*!40000 ALTER TABLE `ecard_business` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecard_business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecard_log`
--

DROP TABLE IF EXISTS `ecard_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecard_log` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `ecard_no` varchar(30) DEFAULT NULL,
  `ecard_pwd` varchar(20) DEFAULT NULL,
  `ecard_id` varchar(100) DEFAULT NULL,
  `ecard_server` varchar(30) DEFAULT NULL,
  `ecard_seller` varchar(128) DEFAULT NULL,
  `ecard_buyer` varchar(128) DEFAULT NULL,
  `ecard_buyer_account` varchar(128) DEFAULT NULL,
  `ecard_price` int(11) DEFAULT NULL,
  `ecard_type` int(11) DEFAULT NULL,
  `ecard_time` varchar(30) DEFAULT NULL,
  `direction` varchar(10) DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL,
  `insert_time` varchar(14) DEFAULT NULL,
  `update_time` varchar(14) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `ecard_id` (`ecard_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecard_log`
--

LOCK TABLES `ecard_log` WRITE;
/*!40000 ALTER TABLE `ecard_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecard_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecard_need_to_resend`
--

DROP TABLE IF EXISTS `ecard_need_to_resend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecard_need_to_resend` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `ecard_no` varchar(30) DEFAULT NULL,
  `ecard_pwd` varchar(20) DEFAULT NULL,
  `ecard_id` varchar(100) DEFAULT NULL,
  `ecard_server` varchar(30) DEFAULT NULL,
  `ecard_seller` varchar(128) DEFAULT NULL,
  `ecard_buyer` varchar(128) DEFAULT NULL,
  `ecard_buyer_account` varchar(128) DEFAULT NULL,
  `ecard_price` int(11) DEFAULT NULL,
  `ecard_type` int(11) DEFAULT NULL,
  `ecard_dist` varchar(30) DEFAULT NULL,
  `ecard_time` varchar(30) DEFAULT NULL,
  `ecard_order_id` text,
  `send_result` int(11) DEFAULT NULL,
  `insert_time` varchar(14) DEFAULT NULL,
  `update_time` varchar(14) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `ecard_id` (`ecard_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecard_need_to_resend`
--

LOCK TABLES `ecard_need_to_resend` WRITE;
/*!40000 ALTER TABLE `ecard_need_to_resend` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecard_need_to_resend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encourage`
--

DROP TABLE IF EXISTS `encourage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encourage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(32) NOT NULL DEFAULT '',
  `encourage_type` varchar(255) NOT NULL DEFAULT '',
  `order_id` varchar(32) NOT NULL DEFAULT '',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `expired_time` varchar(14) NOT NULL DEFAULT '',
  `used` int(11) NOT NULL DEFAULT '0',
  `request_time` varchar(14) NOT NULL DEFAULT '',
  `locked` int(11) NOT NULL DEFAULT '0',
  `insert_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `account` (`account`) USING BTREE,
  KEY `insert_time` (`insert_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encourage`
--

LOCK TABLES `encourage` WRITE;
/*!40000 ALTER TABLE `encourage` DISABLE KEYS */;
/*!40000 ALTER TABLE `encourage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encourage_log`
--

DROP TABLE IF EXISTS `encourage_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encourage_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `encourage_type` varchar(64) NOT NULL DEFAULT '',
  `request_time` varchar(14) NOT NULL DEFAULT '',
  `encourage_id` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `request_time` (`request_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encourage_log`
--

LOCK TABLES `encourage_log` WRITE;
/*!40000 ALTER TABLE `encourage_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `encourage_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `express_recharge`
--

DROP TABLE IF EXISTS `express_recharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `express_recharge` (
  `order_id` varchar(32) NOT NULL DEFAULT '',
  `result` tinyint(2) DEFAULT NULL,
  `result_code` int(11) DEFAULT NULL,
  `gold` int(11) DEFAULT NULL,
  `inquiry_times` int(11) DEFAULT NULL,
  `card_no` varchar(30) DEFAULT NULL,
  `card_pwd` varchar(20) DEFAULT NULL,
  `user_name` varchar(128) DEFAULT NULL,
  `char_name` varchar(32) DEFAULT NULL,
  `server_name` varchar(30) DEFAULT NULL,
  `sales_name` varchar(128) DEFAULT NULL,
  `user_ip` varchar(15) DEFAULT NULL,
  `par_value` int(11) DEFAULT NULL,
  `pay_type` varchar(30) DEFAULT NULL,
  `card_type` tinyint(4) DEFAULT NULL,
  `update_time` varchar(14) DEFAULT NULL,
  `insert_time` varchar(14) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`order_id`),
  KEY `result_inquiry` (`result`,`inquiry_times`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `express_recharge`
--

LOCK TABLES `express_recharge` WRITE;
/*!40000 ALTER TABLE `express_recharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `express_recharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gbuy_coin_log`
--

DROP TABLE IF EXISTS `gbuy_coin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gbuy_coin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `gcoin_before` int(11) NOT NULL DEFAULT '0',
  `gcoin_after` int(11) NOT NULL DEFAULT '0',
  `scoin_before` int(11) NOT NULL DEFAULT '0',
  `scoin_after` int(11) NOT NULL DEFAULT '0',
  `gbuy_gcoin_before` int(11) NOT NULL DEFAULT '0',
  `gbuy_gcoin_after` int(11) NOT NULL DEFAULT '0',
  `gbuy_scoin_before` int(11) NOT NULL DEFAULT '0',
  `gbuy_scoin_after` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gbuy_coin_log`
--

LOCK TABLES `gbuy_coin_log` WRITE;
/*!40000 ALTER TABLE `gbuy_coin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gbuy_coin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_coin_log`
--

DROP TABLE IF EXISTS `gift_coin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_coin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `coupon_gold_used` int(11) NOT NULL DEFAULT '0',
  `coupon_silver_used` int(11) NOT NULL DEFAULT '0',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `source` tinyint(4) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` int(11) NOT NULL DEFAULT '0',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `para4` varchar(32) NOT NULL DEFAULT '',
  `para5` varchar(255) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`,`transaction_id`),
  KEY `account` (`account`) USING BTREE,
  KEY `transaction_id` (`transaction_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_coin_log`
--

LOCK TABLES `gift_coin_log` WRITE;
/*!40000 ALTER TABLE `gift_coin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_coin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_valid_time`
--

DROP TABLE IF EXISTS `gift_valid_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_valid_time` (
  `gift_type` varchar(30) NOT NULL DEFAULT '',
  `start_time` varchar(14) NOT NULL DEFAULT '0',
  `end_time` varchar(14) NOT NULL DEFAULT '0',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`gift_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_valid_time`
--

LOCK TABLES `gift_valid_time` WRITE;
/*!40000 ALTER TABLE `gift_valid_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_valid_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip`
--

DROP TABLE IF EXISTS `ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip` (
  `start_ip` varchar(32) NOT NULL DEFAULT '',
  `end_ip` varchar(32) NOT NULL DEFAULT '',
  `country` varchar(32) DEFAULT NULL,
  `province` varchar(32) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `memo` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`start_ip`,`end_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip`
--

LOCK TABLES `ip` WRITE;
/*!40000 ALTER TABLE `ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_card`
--

DROP TABLE IF EXISTS `ip_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_card` (
  `card_no` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `used` int(11) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `request_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`card_no`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_card`
--

LOCK TABLES `ip_card` WRITE;
/*!40000 ALTER TABLE `ip_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_info`
--

DROP TABLE IF EXISTS `ip_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_info` (
  `start_ip_desc` varchar(16) NOT NULL DEFAULT '',
  `end_ip_desc` varchar(16) NOT NULL DEFAULT '',
  `start_ip` int(11) unsigned NOT NULL DEFAULT '0',
  `end_ip` int(11) unsigned NOT NULL DEFAULT '0',
  `country` varchar(64) DEFAULT NULL,
  `province` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`start_ip_desc`,`end_ip_desc`,`start_ip`,`end_ip`),
  KEY `start_ip` (`start_ip`) USING BTREE,
  KEY `end_ip` (`end_ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_info`
--

LOCK TABLES `ip_info` WRITE;
/*!40000 ALTER TABLE `ip_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldba`
--

DROP TABLE IF EXISTS `ldba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldba` (
  `ldba` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `server_key` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`ldba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldba`
--

LOCK TABLES `ldba` WRITE;
/*!40000 ALTER TABLE `ldba` DISABLE KEYS */;
INSERT INTO `ldba` VALUES ('ldba_jiangw','118.24.7.124',8040,'内部测试','',2,NULL),('ldba_jiangw_30','10.2.50.30',8040,'jiangw_30','',2,NULL),('ldba_jiangw_pk','118.24.7.124',8050,'pk','',2,NULL);
/*!40000 ALTER TABLE `ldba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `league_account`
--

DROP TABLE IF EXISTS `league_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `league_account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `level_section` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `league_account`
--

LOCK TABLES `league_account` WRITE;
/*!40000 ALTER TABLE `league_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `league_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local_encrypt`
--

DROP TABLE IF EXISTS `local_encrypt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `local_encrypt` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `file_name` varchar(64) NOT NULL DEFAULT '',
  `local_encrypt_info` text NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `time` varchar(32) NOT NULL DEFAULT '0',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local_encrypt`
--

LOCK TABLES `local_encrypt` WRITE;
/*!40000 ALTER TABLE `local_encrypt` DISABLE KEYS */;
/*!40000 ALTER TABLE `local_encrypt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matrix`
--

DROP TABLE IF EXISTS `matrix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matrix` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `matrix` text NOT NULL,
  `bind_time` varchar(32) NOT NULL DEFAULT '',
  `expired_time` varchar(32) NOT NULL DEFAULT '',
  `claim_lost_off_time` varchar(32) NOT NULL DEFAULT '',
  `enable` int(11) NOT NULL DEFAULT '1',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `update_time` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matrix`
--

LOCK TABLES `matrix` WRITE;
/*!40000 ALTER TABLE `matrix` DISABLE KEYS */;
/*!40000 ALTER TABLE `matrix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_device`
--

DROP TABLE IF EXISTS `mp_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_device` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `device` varchar(128) NOT NULL DEFAULT '',
  `os` tinyint(4) NOT NULL DEFAULT '0',
  `bind_time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_device`
--

LOCK TABLES `mp_device` WRITE;
/*!40000 ALTER TABLE `mp_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partywar_account`
--

DROP TABLE IF EXISTS `partywar_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partywar_account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `party_name` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partywar_account`
--

LOCK TABLES `partywar_account` WRITE;
/*!40000 ALTER TABLE `partywar_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `partywar_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_deposit`
--

DROP TABLE IF EXISTS `pet_deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_deposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pet_iid` varchar(32) NOT NULL DEFAULT '',
  `pet_name` varchar(128) NOT NULL DEFAULT '',
  `pet_level` int(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `pet_data` text NOT NULL,
  `org_owner_gid` varchar(16) NOT NULL DEFAULT '',
  `org_owner_name` varchar(32) NOT NULL DEFAULT '',
  `new_owner_gid` varchar(16) NOT NULL DEFAULT '',
  `new_owner_name` varchar(32) NOT NULL DEFAULT '',
  `deposit_owner` varchar(32) NOT NULL DEFAULT '',
  `deposit_time` varchar(14) NOT NULL DEFAULT '',
  `deposit_reason` text NOT NULL,
  `take_owner` varchar(32) NOT NULL DEFAULT '',
  `take_time` varchar(14) NOT NULL DEFAULT '',
  `take_reason` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pet_iid` (`pet_iid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_deposit`
--

LOCK TABLES `pet_deposit` WRITE;
/*!40000 ALTER TABLE `pet_deposit` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_deposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_auth`
--

DROP TABLE IF EXISTS `phone_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_auth` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `bind_time` char(14) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `bonus_info` text,
  `update_time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_auth`
--

LOCK TABLES `phone_auth` WRITE;
/*!40000 ALTER TABLE `phone_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_bind`
--

DROP TABLE IF EXISTS `phone_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_bind` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `bind_time` char(14) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `update_time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_bind`
--

LOCK TABLES `phone_bind` WRITE;
/*!40000 ALTER TABLE `phone_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilege_group`
--

DROP TABLE IF EXISTS `privilege_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privilege_group` (
  `privilege_group` varchar(15) NOT NULL DEFAULT '',
  `class` varchar(15) NOT NULL DEFAULT '',
  `privilege` varchar(255) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`privilege_group`,`class`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilege_group`
--

LOCK TABLES `privilege_group` WRITE;
/*!40000 ALTER TABLE `privilege_group` DISABLE KEYS */;
INSERT INTO `privilege_group` VALUES ('CS1','admintool','block_character/fetch_keywords/chat_attr/channel_silence/set_inspect_area/query_ddb/query_adb/query_mdb/query_ldb/query_tdb/monitor_signature/query_online_char',''),('CS2','admintool','polling_char/ip_query/trace_iid/restrict_char/polling_account/throw_in_jail/jail_and_silence',''),('CS3','admintool','control_account/oper_check/release_protected/transfer_pet/transfer_item/bind_roll_back/delete_pet/delete_item/polling_account/transfer_cash/delete_cash',''),('CS4','admintool','update_keywords/add_keywords/delete_keywords',''),('G1','admintool','query_ddb/query_adb/query_mdb/oper_character/block_account/block_character/delete_character/recover_character/release_character/delete_item/control_account/delete_pet/polling_char','');
/*!40000 ALTER TABLE `privilege_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_recall`
--

DROP TABLE IF EXISTS `property_recall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_recall` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` varchar(16) NOT NULL DEFAULT '',
  `owner` varchar(16) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) DEFAULT '',
  `ob_type` tinyint(4) unsigned DEFAULT NULL,
  `take` tinyint(4) unsigned DEFAULT NULL,
  `exchange` tinyint(4) unsigned DEFAULT '0',
  `depend` varchar(16) DEFAULT NULL,
  `checksum` int(32) NOT NULL DEFAULT '0',
  `data` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `iid` (`iid`) USING BTREE,
  KEY `owner` (`update_time`,`owner`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_recall`
--

LOCK TABLES `property_recall` WRITE;
/*!40000 ALTER TABLE `property_recall` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_recall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protect_bonus`
--

DROP TABLE IF EXISTS `protect_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protect_bonus` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `branch` varchar(7) NOT NULL DEFAULT '',
  `dist` varchar(32) DEFAULT NULL,
  `matrix_time` text,
  `passpod_time` text,
  `phone_time` text,
  `sm_time` text,
  `bonus_time` varchar(14) DEFAULT NULL,
  `bonus_type` varchar(10) DEFAULT NULL,
  `bonus_info` text,
  `insert_time` varchar(14) NOT NULL DEFAULT '',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `memo` text,
  PRIMARY KEY (`account`,`branch`),
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protect_bonus`
--

LOCK TABLES `protect_bonus` WRITE;
/*!40000 ALTER TABLE `protect_bonus` DISABLE KEYS */;
/*!40000 ALTER TABLE `protect_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protect_range`
--

DROP TABLE IF EXISTS `protect_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protect_range` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `p_range` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protect_range`
--

LOCK TABLES `protect_range` WRITE;
/*!40000 ALTER TABLE `protect_range` DISABLE KEYS */;
/*!40000 ALTER TABLE `protect_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_store`
--

DROP TABLE IF EXISTS `purchase_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_store` (
  `order_id` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(16) NOT NULL DEFAULT '',
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `time` varchar(14) NOT NULL DEFAULT '0',
  `content` text,
  `sub_amount` int(11) unsigned DEFAULT NULL,
  `amount` int(11) unsigned DEFAULT NULL,
  `type` tinyint(2) unsigned DEFAULT NULL,
  `end_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`),
  KEY `owner` (`owner`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_store`
--

LOCK TABLES `purchase_store` WRITE;
/*!40000 ALTER TABLE `purchase_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pwd_protect`
--

DROP TABLE IF EXISTS `pwd_protect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pwd_protect` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `protect_type` varchar(32) NOT NULL DEFAULT '',
  `protect_info` text,
  `checksum` varchar(32) DEFAULT NULL,
  `bind_time` varchar(14) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`account`,`protect_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pwd_protect`
--

LOCK TABLES `pwd_protect` WRITE;
/*!40000 ALTER TABLE `pwd_protect` DISABLE KEYS */;
/*!40000 ALTER TABLE `pwd_protect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qr_runtime`
--

DROP TABLE IF EXISTS `qr_runtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qr_runtime` (
  `qrid` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `update_time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`qrid`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qr_runtime`
--

LOCK TABLES `qr_runtime` WRITE;
/*!40000 ALTER TABLE `qr_runtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `qr_runtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `red_envelope`
--

DROP TABLE IF EXISTS `red_envelope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `red_envelope` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `total_coin` int(11) NOT NULL DEFAULT '0',
  `cur_coin` int(11) NOT NULL DEFAULT '0',
  `total_num` int(11) NOT NULL DEFAULT '0',
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `deadline` int(11) NOT NULL DEFAULT '0',
  `use` tinyint(4) NOT NULL DEFAULT '0',
  `checksum` int(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`name`,`iid`,`use`),
  KEY `iid` (`iid`,`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `red_envelope`
--

LOCK TABLES `red_envelope` WRITE;
/*!40000 ALTER TABLE `red_envelope` DISABLE KEYS */;
/*!40000 ALTER TABLE `red_envelope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relative_acc`
--

DROP TABLE IF EXISTS `relative_acc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relative_acc` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `last_add_coin_cookie` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relative_acc`
--

LOCK TABLES `relative_acc` WRITE;
/*!40000 ALTER TABLE `relative_acc` DISABLE KEYS */;
/*!40000 ALTER TABLE `relative_acc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `safe_ctrl`
--

DROP TABLE IF EXISTS `safe_ctrl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `safe_ctrl` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `protect_type` varchar(32) NOT NULL DEFAULT '',
  `protect_info` text,
  `checksum` varchar(32) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`account`,`protect_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `safe_ctrl`
--

LOCK TABLES `safe_ctrl` WRITE;
/*!40000 ALTER TABLE `safe_ctrl` DISABLE KEYS */;
/*!40000 ALTER TABLE `safe_ctrl` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `server` VALUES ('三线','','118.24.7.124',8162,1200,'问道一区',1,'','','','',0,0,0,0,3,'','','',0,NULL),('一线','','118.24.7.124',8160,1200,'问道一区',1,'network','','','',0,0,0,600,1,'apex1','','',0,NULL),('二线','','118.24.7.124',8161,1200,'问道一区',1,'','','','',0,0,0,0,2,'','','',0,NULL);
/*!40000 ALTER TABLE `server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_status`
--

DROP TABLE IF EXISTS `server_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_status` (
  `server` varchar(32) NOT NULL DEFAULT '',
  `available` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `online` int(11) NOT NULL DEFAULT '0',
  `max_user` int(11) NOT NULL DEFAULT '0',
  `cpu_cost` int(11) NOT NULL DEFAULT '0',
  `cpu_satisfy` int(11) NOT NULL DEFAULT '0',
  `report_time` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_status`
--

LOCK TABLES `server_status` WRITE;
/*!40000 ALTER TABLE `server_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `permit` varchar(255) NOT NULL DEFAULT '',
  `forbid` varchar(255) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spa`
--

DROP TABLE IF EXISTS `spa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spa` (
  `spa` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `server_key` varchar(32) DEFAULT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL DEFAULT '0',
  `port` int(11) NOT NULL DEFAULT '0',
  `http_plat` varchar(255) DEFAULT NULL,
  `http_ip` varchar(255) DEFAULT NULL,
  `httpd_enable` int(1) DEFAULT NULL,
  `httpd_port` int(16) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`spa`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spa`
--

LOCK TABLES `spa` WRITE;
/*!40000 ALTER TABLE `spa` DISABLE KEYS */;
INSERT INTO `spa` VALUES ('p01g_spa_pack','gy_pack',NULL,'10.2.50.57',1,9877,NULL,NULL,NULL,NULL,NULL),('p01g_spa_pack58','gy_pack58',NULL,'10.2.50.58',1,9877,NULL,NULL,NULL,NULL,NULL),('p01_spa_hong','hong',NULL,'10.3.4.4',1,10011,NULL,NULL,NULL,NULL,NULL),('p01_spa_hongjs','hongjs',NULL,'10.3.4.4',1,8011,NULL,NULL,NULL,NULL,NULL),('p01_spa_shuxx','shuxx',NULL,'10.3.4.12',1,8009,NULL,NULL,NULL,NULL,NULL),('spa_coding','coding',NULL,'10.2.50.30',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_dongsh','dongsh',NULL,'10.3.4.35',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_jiangw','普天同庆',NULL,'118.24.7.124',1,8030,NULL,NULL,NULL,NULL,NULL),('spa_jiangw_30','jiangw_30',NULL,'10.2.50.30',1,8030,NULL,NULL,NULL,NULL,NULL),('spa_jiangw_pk','jiangw_pk',NULL,'118.24.7.124',2,8032,NULL,NULL,NULL,NULL,NULL),('spa_luoyh','luoyh',NULL,'10.3.4.25',1,8030,NULL,NULL,NULL,NULL,NULL),('spa_quls_30','quls_30',NULL,'10.3.4.5',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_test','test',NULL,'10.2.50.57',1,12076,NULL,NULL,NULL,NULL,NULL),('spa_weism','weism',NULL,'10.3.35.4',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_wuxl','wuxl',NULL,'10.3.4.20',1,9877,NULL,NULL,NULL,NULL,NULL),('spa_xuj','xuj',NULL,'10.3.4.10',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_xuj_30','xuj_30',NULL,'10.2.50.30',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_yeyh2','yeyh2',NULL,'10.3.102.24',1,8066,NULL,NULL,NULL,NULL,NULL),('spa_yugq','yugq',NULL,'10.3.4.26',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_zenghh','zenghh',NULL,'10.3.4.30',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_zenghh_1','zenghh_1',NULL,'10.3.4.30',1,9400,NULL,NULL,NULL,NULL,NULL),('spa_zhangq3_30','zhangq3',NULL,'10.3.102.39',1,8400,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `spa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_9apay`
--

DROP TABLE IF EXISTS `t_9apay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_9apay` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `parter` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `orderno` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `orderid` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cardno` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `GameCurrency` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `appid` int(255) DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `server_id` int(255) DEFAULT NULL,
  `Processing` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_9apay`
--

LOCK TABLES `t_9apay` WRITE;
/*!40000 ALTER TABLE `t_9apay` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_9apay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_data`
--

DROP TABLE IF EXISTS `top_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_data` (
  `top_index` int(11) NOT NULL DEFAULT '0',
  `top_key` varchar(128) NOT NULL DEFAULT '',
  `top_content` text NOT NULL,
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`top_index`,`top_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_data`
--

LOCK TABLES `top_data` WRITE;
/*!40000 ALTER TABLE `top_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `top_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer_data`
--

DROP TABLE IF EXISTS `transfer_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfer_data` (
  `transfer_id` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(16) NOT NULL DEFAULT '',
  `class` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `source` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(128) NOT NULL DEFAULT '',
  `mesg_ok` varchar(255) NOT NULL DEFAULT '',
  `mesg_cht` varchar(255) NOT NULL DEFAULT '',
  `tip` varchar(255) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `limit_day` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `transfer_account` varchar(16) NOT NULL DEFAULT '',
  `transfer_time` varchar(14) NOT NULL DEFAULT '',
  `request_gid` varchar(16) NOT NULL DEFAULT '',
  `request_time` varchar(14) NOT NULL DEFAULT '',
  `checksum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`transfer_id`),
  KEY `owner` (`owner`) USING BTREE,
  KEY `iid` (`iid`) USING BTREE,
  KEY `class` (`class`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer_data`
--

LOCK TABLES `transfer_data` WRITE;
/*!40000 ALTER TABLE `transfer_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfer_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tts`
--

DROP TABLE IF EXISTS `tts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tts` (
  `tts` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `trading_url` varchar(255) NOT NULL DEFAULT '',
  `web_status_url` varchar(32) NOT NULL DEFAULT '',
  `http_ip` varchar(255) NOT NULL DEFAULT '',
  `http_plat` varchar(255) NOT NULL DEFAULT '',
  `httpd_enable` int(1) NOT NULL DEFAULT '0',
  `httpd_port` int(16) NOT NULL DEFAULT '0',
  `check_sum` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`tts`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tts`
--

LOCK TABLES `tts` WRITE;
/*!40000 ALTER TABLE `tts` DISABLE KEYS */;
INSERT INTO `tts` VALUES ('p01g_tts_pack','10.2.50.57',9897,1,'gy_pack','http://10.3.102.49','http://treasure.gyyx.com','*','1aó?',1,85,''),('p01g_tts_pack58','10.2.50.58',9897,1,'gy_pack58','http://10.3.102.49','http://treasure.gyyx.com','*','1aó?',1,85,''),('p01_tts_hongjs','10.3.4.4',8071,1,'hongjs','http://10.3.102.49','http://treasure.gyyx.com','*','1aó?',1,85,''),('p01_tts_yeyh2','10.3.102.24',8600,1,'yeyh2','http://10.3.102.49','http://treasure.gyyx.com','*','1aó?',1,85,''),('tte_test','10.2.50.57',12011,1,'test','http://10.3.102.49','http://treasure.gyyx.com','*','1aó?',1,85,''),('tts_jiangw','118.24.7.124',8600,1,'普天同庆','http://10.2.50.58/simulateforum/trading.php','http://treasure.gyyx.com','*','1aó?',1,85,''),('tts_quls','10.3.102.203',8600,1,'quls_30','http://10.3.102.49','http://treasure.gyyx.com','*','1aó?',1,85,''),('tts_shuxx','10.3.4.12',9000,1,'shuxx','http://10.2.16.7','http://treasure.gyyx.com','*','1aó?',0,85,''),('tts_xuj','10.3.4.10',8600,1,'xuj','','','','',0,9550,''),('tts_yugq','10.3.4.26',9001,1,'yugq','','','','',0,0,''),('tts_zhangq3_30','10.3.102.39',8600,1,'zhangq3','http://10.3.102.49','http://treasure.gyyx.com','*','1aó?',1,85,'');
/*!40000 ALTER TABLE `tts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vip_sms_protect`
--

DROP TABLE IF EXISTS `vip_sms_protect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip_sms_protect` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `p_coin_trade` int(11) NOT NULL DEFAULT '0',
  `p_coin_consum` int(11) NOT NULL DEFAULT '0',
  `p_prop_trade` int(11) NOT NULL DEFAULT '0',
  `p_block_account` int(11) NOT NULL DEFAULT '0',
  `p_oper_role` int(11) NOT NULL DEFAULT '0',
  `update_time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vip_sms_protect`
--

LOCK TABLES `vip_sms_protect` WRITE;
/*!40000 ALTER TABLE `vip_sms_protect` DISABLE KEYS */;
/*!40000 ALTER TABLE `vip_sms_protect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wba`
--

DROP TABLE IF EXISTS `wba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wba` (
  `user` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `money` int(11) NOT NULL DEFAULT '0',
  `force_count` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`user`,`ip`,`password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wba`
--

LOCK TABLES `wba` WRITE;
/*!40000 ALTER TABLE `wba` DISABLE KEYS */;
/*!40000 ALTER TABLE `wba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xg_name`
--

DROP TABLE IF EXISTS `xg_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xg_name` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `xg_type` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`,`xg_type`),
  KEY `xg_type` (`xg_type`,`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xg_name`
--

LOCK TABLES `xg_name` WRITE;
/*!40000 ALTER TABLE `xg_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `xg_name` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-18  7:58:23
