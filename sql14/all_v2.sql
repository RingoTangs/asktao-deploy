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
INSERT INTO `aaa` VALUES ('aaa_daili','47.97.104.166',8101,NULL,'',1,1,5,30,0,'http://47.97.104.166/','','47.97.104.166','47.97.104.166','47.97.104.166',NULL,NULL,'47.97.104.166',NULL,'transfer.gyyx.cn:81','47.97.104.166','47.97.104.166','http:// interface.message.gyyx.cn/v1/Send/Account',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
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
INSERT INTO `ccs` VALUES ('ccs_daili','47.97.104.166',8110,'万里长城',1,'',NULL);
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
INSERT INTO `config` VALUES ('','万里长城','global','门派比武大会','万里长城三线:金系/万里长城三线:木系/万里长城二线:水系/万里长城二线:火系/万里长城三线:土系','',NULL),('','万里长城','global','baishou_shengyan','([\"万里长城一线\":({40,79,}),\"万里长城一线\":({80,99,}),\"万里长城一线\":({100,119,}),\"万里长城一线\":({120,159,}),])','',''),('','万里长城','global','chongzhi_fanli','({\"2017-03-18-00:00:00\",\"2017-03-20-17:14:59\", 1})','',''),('','万里长城','global','CITY_WAR_SERVER','万里长城一线','',NULL),('','万里长城','global','dongfu_tiaozhan','万里长城一线','',''),('','万里长城','global','douchong_dahui','万里长城一线','',''),('','万里长城','global','试道大会','万里长城三线:60-69,70-79,80-89/万里长城三线:90-99,100-109,110-119/万里长城二线:120-129,130-139,140-149,150-159,160-169','',NULL),('','万里长城','global','fishing_server','({\"万里长城一线\",\"万里长城二线\" })','',NULL),('','万里长城','global','group_buying_server','万里长城一线','',NULL),('','万里长城','global','hero_boss_server','万里长城一线','',NULL),('','万里长城','global','journey_of_asktao','([ \"date\" : \"20160713\", \"checksum\" : \"5FA8074842CF18DF6DDBEEB02BC8E289\" ])','',''),('','万里长城','global','ldb_host','192.168.1.113:','',NULL),('','万里长城','global','lgxy_server','万里长城一线','',''),('','万里长城','global','longxue_boss_server','万里长城一线','',''),('','万里长城','global','map_decorate_server','万里长城一线','',NULL),('','万里长城','global','mdb_host','192.168.1.113:','',NULL),('','万里长城','global','party_qkbgz','([4:\"万里长城三线\",3:\"万里长城二线\",2:\"万里长城一线\",])','',NULL),('','万里长城','global','party_qql','万里长城一线','',NULL),('','万里长城','global','party_sell_servers','万里长城一线','',NULL),('','万里长城','global','red_envelope','([ \"start_time\" : \"2016-01-09-00:00:00\", \"sort_end_time\" : \"2016-02-27-23:59:59\", \"end_time\" : \"2016-02-28-23:59:59\", \"envelope_list\" : ({ ([\"time\" : \"2016-01-18-14:00:00\",\"coin\" : 3000000,\"amount\" : 3000,]),([\"time\" : \"2016-01-18-16:00:00\",\"coin\" : 3000000,\"amount\" : 3000,]),([\"time\" : \"2016-01-23-14:00:00\",\"coin\" : 100000,\"amount\" : 100,]),([\"time\" : \"2016-01-23-16:00:00\",\"coin\" : 100000,\"amount\" : 100,]),([\"time\" : \"2016-01-24-14:00:00\",\"coin\" : 100000,\"amount\" : 100,]),([\"time\" : \"2016-01-24-16:00:00\",\"coin\" : 100000,\"amount\" : 100,]) }), \"sys_name\" : \"ê??ü?ê\", \"version\" : 3 ])','',''),('','万里长城','global','send_exp_online','([\"end_time\":\"2010-06-29-12:00:00\",\"start_time\":\"2010-06-29-10:00:00\",\"interval\":0,\"duration\":0,])','',''),('','万里长城','global','shengsidou','1','',''),('','万里长城','global','sncbc_open_gs','({\"万里长城一线\",\"万里长城二线\" })','',NULL),('','万里长城','global','super_boss_server','万里长城一线','',NULL),('','万里长城','global','task_control_server','万里长城一线','',''),('','万里长城','global','vendue_place','万里长城一线','','NULL'),('','万里长城','global','WAR_GROUP_A','万里长城一线','',NULL),('','万里长城','global','WAR_GROUP_B','万里长城二线','',NULL),('','万里长城','global','WAR_GROUP_C','万里长城三线','',NULL),('','万里长城','global','wedding_server','万里长城一线','',NULL),('','万里长城','global','world_boss_server','万里长城一线','',''),('','万里长城','global','world_level_config','0','',NULL),('','万里长城','global','wuzhuangyuan','万里长城一线:60-69,70-79/万里长城一线:80-89,90-99/万里长城一线:100-109,110-119/万里长城一线:120-129,130-139,140-149,150-159,160-169','',''),('','万里长城','global','xinfjjwz','([ \"start_time\" : \"2017-07-01-20:00:00\", \"end_time\" : \"问道一区-08-21-19:59:59\" ])','',''),('','万里长城','global','xinfu_chongbang','([ \"start_time\" : \"2016-08-08-00:00:00\", \"end_time\" : \"2016-08-31-23:59:59\", \"bonus_time\" : \"2016-09-06-23:59:59\", \"order_end_time\" : \"2016-09-10-23:59:59\", \"url\" : \"http://wd.gyyx.cn/huodong/wdxf/tf/bwcx/cbbs/index.html\" ])','',''),('','万里长城','global','xiygc_zhenyz','({\"万里长城一线\"})','',''),('','万里长城','global','xiygc_zhenyzb','([\"40-69\":1,\"70-79\":1,\"80-89\":1,\"90-99\":1,\"100-109\":1,\"110-119\":1,\"120-129\":1,\"130-139\":1,\"140-149\":1,\"150-159\":1,\"160-169\":1])','',''),('','万里长城','global','yuqing_shandian_challenge','万里长城一线','',NULL),('','万里长城','global','比武大会','万里长城三线:60-69,70-79/万里长城一线:80-89,90-99/万里长城二线:100-109,110-119/万里长城三线:120-129,130-139,140-149','',NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
INSERT INTO `cs_ccs` VALUES ('ccs_daili','LEAGUE_SOURCE/PARTYWAR_SOURCE/ARENA_SOURCE/BOTTLE_SOURCE/DRAFT_SOURCE/SDDH_SOURCE/EVERYONE_PK_SOURCE/CELEBRITY_SOURCE/SAMSUNG_SOURCE/CITYWAR_SOURCE/XGAME_SOURCE/ACTIVITY_SOURCE\r\n','*','47.97.104.166',8110,1,'万里长城','',NULL),('ccs_pk','LEAGUE_COMPETE/PARTYWAR_COMPETE/ARENA_COMPETE/SDDH_COMPETE/CELEBRITY_COMPETE/SAMSUNG_COMPETE/CITYWAR_COMPETE/XGAME_COMPETE/EVERYONE_PK_COMPETE/ACTIVITY_COMPETE\r\n','*','47.97.104.166',8012,1,'pk','',NULL),('ccs_quls_30','ARENA_SOURCE','*','47.97.104.166',8100,1,'quls_30','',NULL),('ccs_xuj','ARENA_COMPETE','cmd_league_oper/cmd_partywar_oper/cmd_bottle_oper/cmd_arena_oper/cmd_draft_oper/cmd_sddh_oper   ','47.97.104.166',8100,1,'xuj','',NULL),('ccs_yugq','','*','47.97.104.166',8002,1,'yugq','',NULL),('p01_ccs_shuxx','','*','47.97.104.166',8005,1,'shuxx','',NULL);
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
INSERT INTO `csa` VALUES ('csa_daili','47.97.104.166','6101',7,'万里长城','',0,'',0,''),('csa_dongsh','47.97.104.166','6001',3,'csa_dongsh','',0,'',0,''),('csa_hongjs','47.97.104.166','9051',2,'csa_hongjs','',0,'',0,''),('csa_luoyh','47.97.104.166','6001',9,'csa_luoyh','',0,'',0,''),('csa_quls','47.97.104.166','6001',1,'csa_quls','',0,'',0,''),('csa_shuxx','47.97.104.166','4052',4,'??·t·t???÷','',0,'',0,''),('csa_xuj','47.97.104.166','9999',8,'csa_xuj','',0,'',0,''),('csa_yugq','47.97.104.166','6001',6,'csa_yugq','',0,'',0,''),('csa_zenghh','47.97.104.166','8051',5,'csa_zenghh','',0,'',0,''),('p01_csa_yeyh2','47.97.104.166','4080',1,'??·t?D×a·t???÷','',0,'',0,'');
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
INSERT INTO `cta` VALUES ('chenqs','*','47.97.104.166',0,'yugq','chenqs','81DC9BDB52D04DC20036DBD8313ED055',NULL),('dongsh','*','47.97.104.166',0,'普天同庆','dongsh','81DC9BDB52D04DC20036DBD8313ED055',NULL),('hongjs','*','47.97.104.166',0,'hongjs','hongjs','81DC9BDB52D04DC20036DBD8313ED055',NULL),('shuxx','*','47.97.104.166',0,'shuxx','shuxx','81DC9BDB52D04DC20036DBD8313ED055',NULL),('xuj','*','47.97.104.166',0,'xuj','xuj','81DC9BDB52D04DC20036DBD8313ED055',NULL),('yugq','*','47.97.104.166',0,'yugq','yugq','81DC9BDB52D04DC20036DBD8313ED055',NULL),('普天同庆','*','47.97.104.166',0,'普天同庆','root','81DC9BDB52D04DC20036DBD8313ED055',NULL);
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
INSERT INTO `dba` VALUES ('dba_daili','47.97.104.166',8120,'万里长城','network',1,NULL);
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
INSERT INTO `district` VALUES ('coding','','login/new_char/permit_wizard/new_account',1,'spa_coding','','',NULL),('dongsh','','login/new_char/permit_wizard/new_account',1,'spa_dongsh','','',NULL),('gy_pack','','login/new_char/permit_wizard/new_account',1,'p01g_spa_pack','','',NULL),('gy_pack58','','login/new_char/permit_wizard/new_account',1,'p01g_spa_pack58','','',NULL),('hong','','login/new_char/permit_wizard/new_account',1,'p01_spa_hong','p01_csa_hong','',NULL),('hongjs','','login/new_char/permit_wizard/new_account',1,'p01_spa_hongjs','csa_hongjs','',NULL),('万里长城','','login/new_char/permit_wizard/new_account/new_party',1,'spa_jiangw','csa_daili','',NULL),('jiangw_30','','login/new_char/permit_wizard/new_account',1,'spa_jiangw_30','csa_jiangw','',NULL),('jiangw_pk','','login/new_char/permit_wizard/new_account',2,'spa_jiangw_pk','csa_jiangw','',NULL),('luoyh','','login/new_char/permit_wizard/new_account',1,'spa_luoyh','csa_luoyh','',NULL),('quls_30','','login/new_char/permit_wizard/new_account',1,'spa_quls_30','csa_quls','',NULL),('shuxx','','login/new_char/permit_wizard/new_account/new_party',1,'p01_spa_shuxx','csa_shuxx','p01_gs_shuxx',NULL),('test','','login/new_char/permit_wizard/new_account',1,'spa_test','','',NULL),('weism','','login/new_char/permit_wizard/new_account',1,'spa_weism','','',NULL),('wuxl','','login/new_char/permit_wizard/new_account',1,'spa_wuxl','','',NULL),('xg_liy','','login/new_char/permit_wizard/new_account',1,'spa_xg_liy','csa_xg_liy','',NULL),('xuj','','login/new_char/permit_wizard/new_account',1,'spa_xuj','csa_xuj','',NULL),('xuj_30','','login/new_char/permit_wizard/new_account',1,'spa_xuj_30','','',NULL),('yeyh2','','login/new_char/permit_wizard/new_account',1,'spa_yeyh2','p01_csa_yeyh2','',NULL),('yugq','','login/new_char/permit_wizard/new_account',1,'spa_yugq','csa_yugq','',NULL),('zenghh','','login/new_char/permit_wizard/new_account',1,'spa_zenghh','csa_zenghh','',NULL),('zenghh_1','','login/new_char/permit_wizard/new_account',2,'spa_zenghh_1','','',NULL),('zhangq3','','login/new_char/permit_wizard/new_account',1,'spa_zhangq3_30','','','(NULL)');
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
INSERT INTO `ldba` VALUES ('ldba_jiangw','47.97.104.166',8040,'内部测试','',2,NULL),('ldba_jiangw_30','47.97.104.166',8040,'jiangw_30','',2,NULL),('ldba_jiangw_pk','47.97.104.166',8050,'pk','',2,NULL);
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
INSERT INTO `server` VALUES ('万里长城三线','','47.97.104.166',8162,1200,'万里长城',1,'','','','',0,0,0,0,3,'','','',0,NULL),('万里长城一线','','47.97.104.166',8160,1200,'万里长城',1,'network','','','',0,0,0,600,1,'apex1','','',0,NULL),('万里长城二线','','47.97.104.166',8161,1200,'万里长城',1,'','','','',0,0,300,0,2,'','','',0,NULL);
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
INSERT INTO `spa` VALUES ('p01g_spa_pack','gy_pack',NULL,'47.97.104.166',1,9877,NULL,NULL,NULL,NULL,NULL),('p01g_spa_pack58','gy_pack58',NULL,'47.97.104.166',1,9877,NULL,NULL,NULL,NULL,NULL),('p01_spa_hong','hong',NULL,'47.97.104.166',1,10011,NULL,NULL,NULL,NULL,NULL),('p01_spa_hongjs','hongjs',NULL,'47.97.104.166',1,8011,NULL,NULL,NULL,NULL,NULL),('p01_spa_shuxx','shuxx',NULL,'47.97.104.166',1,8009,NULL,NULL,NULL,NULL,NULL),('spa_coding','coding',NULL,'47.97.104.166',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_dongsh','dongsh',NULL,'47.97.104.166',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_jiangw','普天同庆',NULL,'47.97.104.166',1,8030,NULL,NULL,NULL,NULL,NULL),('spa_jiangw_30','jiangw_30',NULL,'47.97.104.166',1,8030,NULL,NULL,NULL,NULL,NULL),('spa_jiangw_pk','jiangw_pk',NULL,'47.97.104.166',2,8032,NULL,NULL,NULL,NULL,NULL),('spa_luoyh','luoyh',NULL,'47.97.104.166',1,8030,NULL,NULL,NULL,NULL,NULL),('spa_quls_30','quls_30',NULL,'47.97.104.166',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_test','test',NULL,'47.97.104.166',1,12076,NULL,NULL,NULL,NULL,NULL),('spa_weism','weism',NULL,'47.97.104.166',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_wuxl','wuxl',NULL,'47.97.104.166',1,9877,NULL,NULL,NULL,NULL,NULL),('spa_xuj','xuj',NULL,'47.97.104.166',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_xuj_30','xuj_30',NULL,'47.97.104.166',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_yeyh2','yeyh2',NULL,'47.97.104.166',1,8066,NULL,NULL,NULL,NULL,NULL),('spa_yugq','yugq',NULL,'47.97.104.166',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_zenghh','zenghh',NULL,'47.97.104.166',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_zenghh_1','zenghh_1',NULL,'47.97.104.166',1,9400,NULL,NULL,NULL,NULL,NULL),('spa_zhangq3_30','zhangq3',NULL,'47.97.104.166',1,8400,NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `tts` VALUES ('p01g_tts_pack','47.97.104.166',9897,1,'gy_pack','http://10.3.102.49','http://treasure.gyyx.com','*','1aó?',1,85,''),('p01g_tts_pack58','47.97.104.166',9897,1,'gy_pack58','http://10.3.102.49','http://treasure.gyyx.com','*','1aó?',1,85,''),('p01_tts_hongjs','47.97.104.166',8071,1,'hongjs','http://10.3.102.49','http://treasure.gyyx.com','*','1aó?',1,85,''),('p01_tts_yeyh2','47.97.104.166',8600,1,'yeyh2','http://10.3.102.49','http://treasure.gyyx.com','*','1aó?',1,85,''),('tte_test','47.97.104.166',12011,1,'test','http://10.3.102.49','http://treasure.gyyx.com','*','1aó?',1,85,''),('tts_jiangw','47.97.104.166',8600,1,'普天同庆','http://10.2.50.58/simulateforum/trading.php','http://treasure.gyyx.com','*','1aó?',1,85,''),('tts_quls','47.97.104.166',8600,1,'quls_30','http://10.3.102.49','http://treasure.gyyx.com','*','1aó?',1,85,''),('tts_shuxx','47.97.104.166',9000,1,'shuxx','http://10.2.16.7','http://treasure.gyyx.com','*','1aó?',0,85,''),('tts_xuj','47.97.104.166',8600,1,'xuj','','','','',0,9550,''),('tts_yugq','47.97.104.166',9001,1,'yugq','','','','',0,0,''),('tts_zhangq3_30','47.97.104.166',8600,1,'zhangq3','http://10.3.102.49','http://treasure.gyyx.com','*','1aó?',1,85,'');
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

--
-- Current Database: `dl_ddb_1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dl_ddb_1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dl_ddb_1`;

--
-- Table structure for table `activate_user_data`
--

DROP TABLE IF EXISTS `activate_user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activate_user_data` (
  `path` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `branch` varchar(128) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` varchar(14) NOT NULL DEFAULT '',
  `checksum` int(32) NOT NULL DEFAULT '0',
  `memo` text,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`path`,`name`,`branch`),
  KEY `name` (`name`) USING BTREE,
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activate_user_data`
--

LOCK TABLES `activate_user_data` WRITE;
/*!40000 ALTER TABLE `activate_user_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `activate_user_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_recognize`
--

DROP TABLE IF EXISTS `admin_recognize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_recognize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `day` int(11) NOT NULL DEFAULT '0',
  `owner_gid` varchar(16) NOT NULL DEFAULT '',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `data` text,
  `reason` text,
  PRIMARY KEY (`id`),
  KEY `iid` (`iid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_recognize`
--

LOCK TABLES `admin_recognize` WRITE;
/*!40000 ALTER TABLE `admin_recognize` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_recognize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attention_data`
--

DROP TABLE IF EXISTS `attention_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attention_data` (
  `attention_type` varchar(32) NOT NULL DEFAULT '',
  `attention_id` varchar(128) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`attention_type`,`attention_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attention_data`
--

LOCK TABLES `attention_data` WRITE;
/*!40000 ALTER TABLE `attention_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `attention_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basic_char_info`
--

DROP TABLE IF EXISTS `basic_char_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basic_char_info` (
  `gid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `polar` tinyint(4) NOT NULL DEFAULT '0',
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `tt_weibo_name` varchar(128) NOT NULL DEFAULT '',
  `hide_tt_weibo` tinyint(4) NOT NULL DEFAULT '0',
  `time` varchar(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_char_info`
--

LOCK TABLES `basic_char_info` WRITE;
/*!40000 ALTER TABLE `basic_char_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `basic_char_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bottle_data`
--

DROP TABLE IF EXISTS `bottle_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bottle_data` (
  `bid` varchar(48) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `recv_dist` varchar(32) NOT NULL DEFAULT '',
  `recv_gid` char(16) NOT NULL DEFAULT '',
  `recv_name` varchar(32) NOT NULL DEFAULT '',
  `recv_level` int(11) NOT NULL DEFAULT '0',
  `recv_polar` tinyint(4) NOT NULL DEFAULT '0',
  `recv_gender` tinyint(4) NOT NULL DEFAULT '0',
  `recv_time` char(14) NOT NULL DEFAULT '',
  `recv_read` tinyint(4) NOT NULL DEFAULT '0',
  `send_dist` varchar(32) NOT NULL DEFAULT '',
  `send_gid` char(16) NOT NULL DEFAULT '',
  `send_name` varchar(32) NOT NULL DEFAULT '',
  `send_level` int(11) NOT NULL DEFAULT '0',
  `send_polar` tinyint(4) NOT NULL DEFAULT '0',
  `send_gender` tinyint(4) NOT NULL DEFAULT '0',
  `send_time` char(14) NOT NULL DEFAULT '',
  `send_read` tinyint(4) NOT NULL DEFAULT '0',
  `comments` text NOT NULL,
  `destroy_time` char(14) NOT NULL DEFAULT '',
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`bid`),
  KEY `recv_gid` (`recv_dist`,`recv_gid`) USING BTREE,
  KEY `send_gid` (`send_dist`,`send_gid`) USING BTREE,
  KEY `recv_time` (`recv_time`) USING BTREE,
  KEY `send_time` (`send_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottle_data`
--

LOCK TABLES `bottle_data` WRITE;
/*!40000 ALTER TABLE `bottle_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `bottle_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data` (
  `path` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `branch` varchar(128) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` varchar(14) NOT NULL DEFAULT '',
  `checksum` int(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`path`,`name`,`branch`),
  KEY `name_path` (`name`,`path`) USING BTREE,
  KEY `path_time` (`path`,`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES ('ad_shop','ccs','万里长城','({([]),([]),([]),([]),})','20190112174000',1020142269,NULL),('ad_shop','ccs','last_top_info','({([]),([]),([]),([]),})','20190112174000',135347561,NULL),('challenge_stage_info','万里长城','','([])','20190112173845',1183006119,NULL),('daemons','gamecfg','','([\"name\":\"gamecfg\",])','20190112173851',1134182107,NULL),('daemons','SALARY_D','万里长城一线','([\"last_period\":([\"时间-工资百分比\":([\"percent\":({({0,59,0,}),({60,89,25,}),({90,119,50,}),({120,-1,100,}),}),]),\"end_date\":1546272000,\"等级-工资\":([\"salary\":({({0,59,0,0,}),({60,69,7500,500,}),({70,79,7500,1000,}),({80,89,7500,2000,}),({90,99,7500,3000,}),({100,109,7500,4000,}),({110,119,7500,5000,}),({120,129,7500,6000,}),({130,180,7500,7000,}),}),]),\"设置\":([\"period\":({1,0,}),\"period_start_time\":\"2007-02-01\",\"start\":\"2007-03-01\",\"duration\":4,\"min_time\":216000,\"min_level\":60,]),]),\"this_period\":([\"时间-工资百分比\":([\"percent\":({({0,59,0,}),({60,89,25,}),({90,119,50,}),({120,-1,100,}),}),]),\"end_date\":1548950400,\"等级-工资\":([\"salary\":({({0,59,0,0,}),({60,69,7500,500,}),({70,79,7500,1000,}),({80,89,7500,2000,}),({90,99,7500,3000,}),({100,109,7500,4000,}),({110,119,7500,5000,}),({120,129,7500,6000,}),({130,180,7500,7000,}),}),]),\"设置\":([\"period\":({1,0,}),\"period_start_time\":\"2007-02-01\",\"start\":\"2007-03-01\",\"duration\":4,\"min_time\":216000,\"min_level\":60,]),]),])','20190112173859',125448103,NULL),('daemons','share_data','','([])','20190112173837',-163695310,NULL),('daemons','TAX_D','tax_info','([])','20190112173857',-666748394,NULL),('global_bonus_info','global_bonus_name','cur_bonus_info','','20190112173838',1333338394,NULL),('herod','小有名气','小有名气_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":80,\\\"con\\\":80,\\\"str\\\":80,\\\"wiz\\\":80,]),54:100,52:20,53:32,50:60,51:12058,49:0,48:53884,45:80,46:0,47:300,44:80,42:320,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:12058,36:632,34:50,35:2,32:0,33::5C39B5C2019E2528:,29:0,31:60,28:652,26:([\\\"total\\\":0,]),25:1,24:72,23:9,22:3187,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3236,17:1,16:4848,15:160,14:340,12:160,13:0,11:160,10:0,9:160,8:13063,7:2655013,6:0,5:40,3:9,2:53884,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":128,\\\"dishui-chuanshi\\\":128,\\\"yuhen-yunchou\\\":128,]),])\",]),\"me\":([\"gender\":2,\"life\":58236,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":714,\"con\":0,\"mana\":10308,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"小有名气\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1032,\"icon\":6224,\"phy_absorb\":-20,\"no_capture\":1,\"money\":80,\"polar\":-1,\"no_cost_mana\":1,\"level\":80,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":58236,\"exp\":240,\"power\":1802,\"resisit_earth\":0,\"max_mana\":10308,\"parry\":0,\"mana_effect\":0,\"tao\":179955,\"phy_power\":4324,\"speed_effect\":50,\"portrait\":6224,\"mag_power\":4865,\"refer_level\":80,]),\"carry\":([]),\"skills\":([]),])','20190112173914',996861275,NULL),('herod','小有名气','小有名气_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":80,\\\"con\\\":80,\\\"str\\\":80,\\\"wiz\\\":80,]),54:100,52:20,53:27,50:60,51:11601,49:0,48:53884,45:80,46:0,47:300,44:80,42:320,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:11601,36:632,34:50,35:2,32:0,33::5C39B5C2019E2527:,29:0,31:60,28:647,26:([\\\"total\\\":0,]),25:1,24:67,23:10,22:3187,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3236,17:1,16:4848,15:160,14:340,12:160,13:0,11:160,10:0,9:160,8:14683,7:2655013,6:0,5:40,3:10,2:53884,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":128,\\\"dishui-chuanshi\\\":128,\\\"yuhen-yunchou\\\":128,]),])\",]),\"me\":([\"gender\":1,\"life\":65672,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":714,\"con\":0,\"mana\":10308,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"小有名气\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1032,\"icon\":6223,\"phy_absorb\":-20,\"no_capture\":1,\"money\":80,\"polar\":-1,\"no_cost_mana\":1,\"level\":80,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":65672,\"exp\":240,\"power\":1932,\"resisit_earth\":0,\"max_mana\":10308,\"parry\":0,\"mana_effect\":0,\"tao\":190646,\"phy_power\":4636,\"speed_effect\":50,\"portrait\":6223,\"mag_power\":5216,\"refer_level\":80,]),\"carry\":([]),\"skills\":([]),])','20190112173914',1093528268,NULL),('herod','如雷贯耳','如雷贯耳_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":120,\\\"con\\\":120,\\\"str\\\":120,\\\"wiz\\\":120,]),54:100,52:20,53:27,50:60,51:22928,49:0,48:107400,45:80,46:0,47:300,44:120,42:480,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:22928,36:920,34:90,35:2,32:0,33::5C39B5C1019E2516:,29:0,31:60,28:647,26:([\\\"total\\\":0,]),25:1,24:67,23:4,22:6059,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5973,17:1,16:9060,15:240,14:340,12:240,13:0,11:240,10:0,9:240,8:12355,7:18777120,6:0,5:40,3:3,2:107400,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":192,\\\"dishui-chuanshi\\\":192,\\\"yuhen-yunchou\\\":192,]),])\",]),\"me\":([\"gender\":2,\"life\":120784,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1111,\"con\":0,\"mana\":19913,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"如雷贯耳\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1993,\"icon\":6224,\"phy_absorb\":-20,\"no_capture\":1,\"money\":120,\"polar\":-1,\"no_cost_mana\":1,\"level\":120,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":120784,\"exp\":360,\"power\":3407,\"resisit_earth\":0,\"max_mana\":19913,\"parry\":0,\"mana_effect\":0,\"tao\":571275,\"phy_power\":8176,\"speed_effect\":50,\"portrait\":6224,\"mag_power\":9198,\"refer_level\":120,]),\"carry\":([]),\"skills\":([]),])','20190112173913',-1376982790,NULL),('herod','如雷贯耳','如雷贯耳_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":120,\\\"con\\\":120,\\\"str\\\":120,\\\"wiz\\\":120,]),54:100,52:20,53:26,50:60,51:22748,49:0,48:107400,45:80,46:0,47:300,44:120,42:480,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:22748,36:920,34:90,35:2,32:0,33::5C39B5C1019E2515:,29:0,31:60,28:646,26:([\\\"total\\\":0,]),25:1,24:66,23:6,22:6059,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5973,17:1,16:9060,15:240,14:340,12:240,13:0,11:240,10:0,9:240,8:14356,7:18777120,6:0,5:40,3:9,2:107400,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":192,\\\"dishui-chuanshi\\\":192,\\\"yuhen-yunchou\\\":192,]),])\",]),\"me\":([\"gender\":1,\"life\":108828,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1134,\"con\":0,\"mana\":19913,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"如雷贯耳\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1993,\"icon\":6223,\"phy_absorb\":-20,\"no_capture\":1,\"money\":120,\"polar\":-1,\"no_cost_mana\":1,\"level\":120,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":108828,\"exp\":360,\"power\":3551,\"resisit_earth\":0,\"max_mana\":19913,\"parry\":0,\"mana_effect\":0,\"tao\":547221,\"phy_power\":8521,\"speed_effect\":50,\"portrait\":6223,\"mag_power\":9586,\"refer_level\":120,]),\"carry\":([]),\"skills\":([]),])','20190112173913',1352853649,NULL),('herod','声名鹊起','声名鹊起_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":90,\\\"con\\\":90,\\\"str\\\":90,\\\"wiz\\\":90,]),54:100,52:20,53:26,50:60,51:14032,49:0,48:65784,45:80,46:0,47:300,44:90,42:360,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:14032,36:704,34:60,35:2,32:0,33::5C39B5C2019E252A:,29:0,31:60,28:646,26:([\\\"total\\\":0,]),25:1,24:66,23:8,22:3825,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3851,17:1,16:5788,15:180,14:340,12:180,13:0,11:180,10:0,9:180,8:11771,7:5030719,6:0,5:40,3:4,2:65784,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":144,\\\"dishui-chuanshi\\\":144,\\\"yuhen-yunchou\\\":144,]),])\",]),\"me\":([\"gender\":2,\"life\":67228,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":919,\"con\":0,\"mana\":12430,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"声名鹊起\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1245,\"icon\":6224,\"phy_absorb\":-20,\"no_capture\":1,\"money\":90,\"polar\":-1,\"no_cost_mana\":1,\"level\":90,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":67228,\"exp\":270,\"power\":2263,\"resisit_earth\":0,\"max_mana\":12430,\"parry\":0,\"mana_effect\":0,\"tao\":266374,\"phy_power\":5430,\"speed_effect\":50,\"portrait\":6224,\"mag_power\":6109,\"refer_level\":90,]),\"carry\":([]),\"skills\":([]),])','20190112173914',-1191056686,NULL),('herod','声名鹊起','声名鹊起_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":90,\\\"con\\\":90,\\\"str\\\":90,\\\"wiz\\\":90,]),54:100,52:20,53:32,50:60,51:14700,49:0,48:65784,45:80,46:0,47:300,44:90,42:360,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:14700,36:704,34:60,35:2,32:0,33::5C39B5C2019E2529:,29:0,31:60,28:652,26:([\\\"total\\\":0,]),25:1,24:72,23:0,22:3825,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3851,17:1,16:5788,15:180,14:340,12:180,13:0,11:180,10:0,9:180,8:12735,7:5030719,6:0,5:40,3:1,2:65784,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":144,\\\"dishui-chuanshi\\\":144,\\\"yuhen-yunchou\\\":144,]),])\",]),\"me\":([\"gender\":1,\"life\":78432,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":849,\"con\":0,\"mana\":12430,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"声名鹊起\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1245,\"icon\":6223,\"phy_absorb\":-20,\"no_capture\":1,\"money\":90,\"polar\":-1,\"no_cost_mana\":1,\"level\":90,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":78432,\"exp\":270,\"power\":2151,\"resisit_earth\":0,\"max_mana\":12430,\"parry\":0,\"mana_effect\":0,\"tao\":241005,\"phy_power\":5161,\"speed_effect\":50,\"portrait\":6223,\"mag_power\":5806,\"refer_level\":90,]),\"carry\":([]),\"skills\":([]),])','20190112173914',-954275109,NULL),('herod','声名显赫','声名显赫_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":110,\\\"con\\\":110,\\\"str\\\":110,\\\"wiz\\\":110,]),54:100,52:20,53:31,50:60,51:20301,49:0,48:92140,45:80,46:0,47:300,44:110,42:440,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:20301,36:848,34:80,35:2,32:0,33::5C39B5C1019E251E:,29:0,31:60,28:651,26:([\\\"total\\\":0,]),25:1,24:71,23:6,22:5260,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5219,17:1,16:7896,15:220,14:340,12:220,13:0,11:220,10:0,9:220,8:13966,7:12528258,6:0,5:40,3:8,2:92140,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":176,\\\"dishui-chuanshi\\\":176,\\\"yuhen-yunchou\\\":176,]),])\",]),\"me\":([\"gender\":2,\"life\":105584,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1077,\"con\":0,\"mana\":17233,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"声名显赫\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1725,\"icon\":6224,\"phy_absorb\":-20,\"no_capture\":1,\"money\":110,\"polar\":-1,\"no_cost_mana\":1,\"level\":110,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":105584,\"exp\":330,\"power\":3167,\"resisit_earth\":0,\"max_mana\":17233,\"parry\":0,\"mana_effect\":0,\"tao\":430762,\"phy_power\":7600,\"speed_effect\":50,\"portrait\":6224,\"mag_power\":8550,\"refer_level\":110,]),\"carry\":([]),\"skills\":([]),])','20190112173913',1649404098,NULL),('herod','声名显赫','声名显赫_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":110,\\\"con\\\":110,\\\"str\\\":110,\\\"wiz\\\":110,]),54:100,52:20,53:28,50:60,51:19836,49:0,48:92140,45:80,46:0,47:300,44:110,42:440,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:19836,36:848,34:80,35:2,32:0,33::5C39B5C1019E251D:,29:0,31:60,28:648,26:([\\\"total\\\":0,]),25:1,24:68,23:1,22:5260,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5219,17:1,16:7896,15:220,14:340,12:220,13:0,11:220,10:0,9:220,8:10935,7:12528258,6:0,5:40,3:10,2:92140,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":176,\\\"dishui-chuanshi\\\":176,\\\"yuhen-yunchou\\\":176,]),])\",]),\"me\":([\"gender\":1,\"life\":104548,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1119,\"con\":0,\"mana\":17233,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"声名显赫\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1725,\"icon\":6223,\"phy_absorb\":-20,\"no_capture\":1,\"money\":110,\"polar\":-1,\"no_cost_mana\":1,\"level\":110,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":104548,\"exp\":330,\"power\":3136,\"resisit_earth\":0,\"max_mana\":17233,\"parry\":0,\"mana_effect\":0,\"tao\":495609,\"phy_power\":7525,\"speed_effect\":50,\"portrait\":6223,\"mag_power\":8467,\"refer_level\":110,]),\"carry\":([]),\"skills\":([]),])','20190112173913',529852509,NULL),('herod','万人景仰','万人景仰_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":180,\\\"con\\\":180,\\\"str\\\":180,\\\"wiz\\\":180,]),54:100,52:20,53:35,50:60,51:50517,49:0,48:221608,45:80,46:0,47:300,44:180,42:720,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:50517,36:1352,34:150,35:2,32:0,33::5C39B5C1019E2520:,29:0,31:60,28:655,26:([\\\"total\\\":0,]),25:1,24:75,23:7,22:11971,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:11482,17:1,16:17604,15:360,14:340,12:360,13:0,11:360,10:0,9:360,8:11424,7:173084607,6:0,5:40,3:8,2:221608,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":288,\\\"dishui-chuanshi\\\":288,\\\"yuhen-yunchou\\\":288,]),])\",]),\"me\":([\"gender\":2,\"life\":237008,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1702,\"con\":0,\"mana\":39902,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"万人景仰\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":3990,\"icon\":6224,\"phy_absorb\":-20,\"no_capture\":1,\"money\":180,\"polar\":-1,\"no_cost_mana\":1,\"level\":180,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":237008,\"exp\":540,\"power\":7325,\"resisit_earth\":0,\"max_mana\":39902,\"parry\":0,\"mana_effect\":0,\"tao\":1948352,\"phy_power\":17580,\"speed_effect\":50,\"portrait\":6224,\"mag_power\":19776,\"refer_level\":180,]),\"carry\":([]),\"skills\":([]),])','20190112173913',-2088046891,NULL),('herod','万人景仰','万人景仰_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":180,\\\"con\\\":180,\\\"str\\\":180,\\\"wiz\\\":180,]),54:100,52:20,53:33,50:60,51:49768,49:0,48:221608,45:80,46:0,47:300,44:180,42:720,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:49768,36:1352,34:150,35:2,32:0,33::5C39B5C1019E251F:,29:0,31:60,28:653,26:([\\\"total\\\":0,]),25:1,24:73,23:1,22:11971,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:11482,17:1,16:17604,15:360,14:340,12:360,13:0,11:360,10:0,9:360,8:14167,7:173084607,6:0,5:40,3:7,2:221608,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":288,\\\"dishui-chuanshi\\\":288,\\\"yuhen-yunchou\\\":288,]),])\",]),\"me\":([\"gender\":1,\"life\":229824,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1735,\"con\":0,\"mana\":39902,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"万人景仰\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":3990,\"icon\":6223,\"phy_absorb\":-20,\"no_capture\":1,\"money\":180,\"polar\":-1,\"no_cost_mana\":1,\"level\":180,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":229824,\"exp\":540,\"power\":6894,\"resisit_earth\":0,\"max_mana\":39902,\"parry\":0,\"mana_effect\":0,\"tao\":1867171,\"phy_power\":16545,\"speed_effect\":50,\"portrait\":6223,\"mag_power\":18613,\"refer_level\":180,]),\"carry\":([]),\"skills\":([]),])','20190112173913',1501884086,NULL),('herod','威镇九州','威镇九州_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":150,\\\"con\\\":150,\\\"str\\\":150,\\\"wiz\\\":150,]),54:100,52:20,53:28,50:60,51:34398,49:0,48:160060,45:80,46:0,47:300,44:150,42:600,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:34398,36:1136,34:120,35:2,32:0,33::5C39B5C3019E2532:,29:0,31:60,28:648,26:([\\\"total\\\":0,]),25:1,24:68,23:1,22:8776,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:8519,17:1,16:13000,15:300,14:340,12:300,13:0,11:300,10:0,9:300,8:13542,7:173084607,6:0,5:40,3:7,2:160060,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":240,\\\"dishui-chuanshi\\\":240,\\\"yuhen-yunchou\\\":240,]),])\",]),\"me\":([\"gender\":2,\"life\":171004,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1344,\"con\":0,\"mana\":29070,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"威镇九州\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":2908,\"icon\":6224,\"phy_absorb\":-20,\"no_capture\":1,\"money\":150,\"polar\":-1,\"no_cost_mana\":1,\"level\":150,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":171004,\"exp\":450,\"power\":5391,\"resisit_earth\":0,\"max_mana\":29070,\"parry\":0,\"mana_effect\":0,\"tao\":1127518,\"phy_power\":12937,\"speed_effect\":50,\"portrait\":6224,\"mag_power\":14554,\"refer_level\":150,]),\"carry\":([]),\"skills\":([]),])','20190112173915',1910566597,NULL),('herod','威镇九州','威镇九州_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":150,\\\"con\\\":150,\\\"str\\\":150,\\\"wiz\\\":150,]),54:100,52:20,53:35,50:60,51:36279,49:0,48:160060,45:80,46:0,47:300,44:150,42:600,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:36279,36:1136,34:120,35:2,32:0,33::5C39B5C3019E2531:,29:0,31:60,28:655,26:([\\\"total\\\":0,]),25:1,24:75,23:9,22:8776,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:8519,17:1,16:13000,15:300,14:340,12:300,13:0,11:300,10:0,9:300,8:11893,7:173084607,6:0,5:40,3:8,2:160060,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":240,\\\"dishui-chuanshi\\\":240,\\\"yuhen-yunchou\\\":240,]),])\",]),\"me\":([\"gender\":1,\"life\":181472,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1471,\"con\":0,\"mana\":29070,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"威镇九州\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":2908,\"icon\":6223,\"phy_absorb\":-20,\"no_capture\":1,\"money\":150,\"polar\":-1,\"no_cost_mana\":1,\"level\":150,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":181472,\"exp\":450,\"power\":5391,\"resisit_earth\":0,\"max_mana\":29070,\"parry\":0,\"mana_effect\":0,\"tao\":1244967,\"phy_power\":12937,\"speed_effect\":50,\"portrait\":6223,\"mag_power\":14554,\"refer_level\":150,]),\"carry\":([]),\"skills\":([]),])','20190112173915',1206775425,NULL),('herod','威风八面','威风八面_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":130,\\\"con\\\":130,\\\"str\\\":130,\\\"wiz\\\":130,]),54:100,52:20,53:28,50:60,51:26627,49:0,48:123804,45:80,46:0,47:300,44:130,42:520,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:26627,36:992,34:100,35:2,32:0,33::5C39B5C2019E252C:,29:0,31:60,28:648,26:([\\\"total\\\":0,]),25:1,24:68,23:3,22:6912,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:6776,17:1,16:10300,15:260,14:340,12:260,13:0,11:260,10:0,9:260,8:13828,7:66973140,6:0,5:40,3:4,2:123804,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":208,\\\"dishui-chuanshi\\\":208,\\\"yuhen-yunchou\\\":208,]),])\",]),\"me\":([\"gender\":2,\"life\":143616,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1186,\"con\":0,\"mana\":22780,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"威风八面\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":2279,\"icon\":6224,\"phy_absorb\":-20,\"no_capture\":1,\"money\":130,\"polar\":-1,\"no_cost_mana\":1,\"level\":130,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":143616,\"exp\":390,\"power\":4185,\"resisit_earth\":0,\"max_mana\":22780,\"parry\":0,\"mana_effect\":0,\"tao\":741618,\"phy_power\":10044,\"speed_effect\":50,\"portrait\":6224,\"mag_power\":11298,\"refer_level\":130,]),\"carry\":([]),\"skills\":([]),])','20190112173914',2014570957,NULL),('herod','威风八面','威风八面_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":130,\\\"con\\\":130,\\\"str\\\":130,\\\"wiz\\\":130,]),54:100,52:20,53:32,50:60,51:27459,49:0,48:123804,45:80,46:0,47:300,44:130,42:520,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:27459,36:992,34:100,35:2,32:0,33::5C39B5C2019E252B:,29:0,31:60,28:652,26:([\\\"total\\\":0,]),25:1,24:72,23:5,22:6912,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:6776,17:1,16:10300,15:260,14:340,12:260,13:0,11:260,10:0,9:260,8:11025,7:66973140,6:0,5:40,3:6,2:123804,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":208,\\\"dishui-chuanshi\\\":208,\\\"yuhen-yunchou\\\":208,]),])\",]),\"me\":([\"gender\":1,\"life\":127204,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1198,\"con\":0,\"mana\":22780,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"威风八面\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":2279,\"icon\":6223,\"phy_absorb\":-20,\"no_capture\":1,\"money\":130,\"polar\":-1,\"no_cost_mana\":1,\"level\":130,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":127204,\"exp\":390,\"power\":4267,\"resisit_earth\":0,\"max_mana\":22780,\"parry\":0,\"mana_effect\":0,\"tao\":779845,\"phy_power\":10240,\"speed_effect\":50,\"portrait\":6223,\"mag_power\":11520,\"refer_level\":130,]),\"carry\":([]),\"skills\":([]),])','20190112173914',-428545593,NULL),('herod','战无不胜','战无不胜_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":170,\\\"con\\\":170,\\\"str\\\":170,\\\"wiz\\\":170,]),54:100,52:20,53:32,50:60,51:44501,49:0,48:199544,45:80,46:0,47:300,44:170,42:680,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:44501,36:1280,34:140,35:2,32:0,33::5C39B5C3019E252E:,29:0,31:60,28:652,26:([\\\"total\\\":0,]),25:1,24:72,23:6,22:10852,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:10448,17:1,16:15996,15:340,14:340,12:340,13:0,11:340,10:0,9:340,8:12776,7:173084607,6:0,5:40,3:7,2:199544,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":272,\\\"dishui-chuanshi\\\":272,\\\"yuhen-yunchou\\\":272,]),])\",]),\"me\":([\"gender\":2,\"life\":214488,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1531,\"con\":0,\"mana\":36105,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"战无不胜\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":3610,\"icon\":6224,\"phy_absorb\":-20,\"no_capture\":1,\"money\":170,\"polar\":-1,\"no_cost_mana\":1,\"level\":170,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":214488,\"exp\":510,\"power\":6563,\"resisit_earth\":0,\"max_mana\":36105,\"parry\":0,\"mana_effect\":0,\"tao\":1743916,\"phy_power\":15750,\"speed_effect\":50,\"portrait\":6224,\"mag_power\":17719,\"refer_level\":170,]),\"carry\":([]),\"skills\":([]),])','20190112173915',-916527101,NULL),('herod','战无不胜','战无不胜_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":170,\\\"con\\\":170,\\\"str\\\":170,\\\"wiz\\\":170,]),54:100,52:20,53:25,50:60,51:42141,49:0,48:199544,45:80,46:0,47:300,44:170,42:680,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:42141,36:1280,34:140,35:2,32:0,33::5C39B5C3019E252D:,29:0,31:60,28:645,26:([\\\"total\\\":0,]),25:1,24:65,23:4,22:10852,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:10448,17:1,16:15996,15:340,14:340,12:340,13:0,11:340,10:0,9:340,8:14194,7:173084607,6:0,5:40,3:0,2:199544,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":272,\\\"dishui-chuanshi\\\":272,\\\"yuhen-yunchou\\\":272,]),])\",]),\"me\":([\"gender\":1,\"life\":212320,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1659,\"con\":0,\"mana\":36105,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"战无不胜\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":3610,\"icon\":6223,\"phy_absorb\":-20,\"no_capture\":1,\"money\":170,\"polar\":-1,\"no_cost_mana\":1,\"level\":170,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":212320,\"exp\":510,\"power\":6304,\"resisit_earth\":0,\"max_mana\":36105,\"parry\":0,\"mana_effect\":0,\"tao\":1624236,\"phy_power\":15129,\"speed_effect\":50,\"portrait\":6223,\"mag_power\":17020,\"refer_level\":170,]),\"carry\":([]),\"skills\":([]),])','20190112173915',1847388261,NULL),('herod','颇具潜力','颇具潜力_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":60,\\\"con\\\":60,\\\"str\\\":60,\\\"wiz\\\":60,]),54:100,52:20,53:30,50:60,51:7416,49:0,48:33532,45:80,46:0,47:300,44:60,42:240,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:7416,36:488,34:30,35:2,32:0,33::5C39B5C2019E2524:,29:0,31:60,28:650,26:([\\\"total\\\":0,]),25:1,24:70,23:2,22:2070,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2147,17:1,16:3188,15:120,14:340,12:120,13:0,11:120,10:0,9:120,8:13367,7:329015,6:0,5:40,3:1,2:33532,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":96,\\\"dishui-chuanshi\\\":96,\\\"yuhen-yunchou\\\":96,]),])\",]),\"me\":([\"gender\":2,\"life\":41404,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":550,\"con\":0,\"mana\":6621,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"颇具潜力\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":663,\"icon\":6224,\"phy_absorb\":-20,\"no_capture\":1,\"money\":60,\"polar\":-1,\"no_cost_mana\":1,\"level\":60,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":41404,\"exp\":180,\"power\":1134,\"resisit_earth\":0,\"max_mana\":6621,\"parry\":0,\"mana_effect\":0,\"tao\":72159,\"phy_power\":2721,\"speed_effect\":50,\"portrait\":6224,\"mag_power\":3061,\"refer_level\":60,]),\"carry\":([]),\"skills\":([]),])','20190112173914',1393942909,NULL),('herod','颇具潜力','颇具潜力_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":60,\\\"con\\\":60,\\\"str\\\":60,\\\"wiz\\\":60,]),54:100,52:20,53:27,50:60,51:7245,49:0,48:33532,45:80,46:0,47:300,44:60,42:240,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:7245,36:488,34:30,35:2,32:0,33::5C39B5C2019E2523:,29:0,31:60,28:647,26:([\\\"total\\\":0,]),25:1,24:67,23:2,22:2070,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2147,17:1,16:3188,15:120,14:340,12:120,13:0,11:120,10:0,9:120,8:10081,7:329015,6:0,5:40,3:1,2:33532,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":96,\\\"dishui-chuanshi\\\":96,\\\"yuhen-yunchou\\\":96,]),])\",]),\"me\":([\"gender\":1,\"life\":40608,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":562,\"con\":0,\"mana\":6621,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"颇具潜力\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":663,\"icon\":6223,\"phy_absorb\":-20,\"no_capture\":1,\"money\":60,\"polar\":-1,\"no_cost_mana\":1,\"level\":60,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":40608,\"exp\":180,\"power\":1229,\"resisit_earth\":0,\"max_mana\":6621,\"parry\":0,\"mana_effect\":0,\"tao\":69152,\"phy_power\":2949,\"speed_effect\":50,\"portrait\":6223,\"mag_power\":3317,\"refer_level\":60,]),\"carry\":([]),\"skills\":([]),])','20190112173914',-1469718217,NULL),('herod','初显锋芒','初显锋芒_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":70,\\\"con\\\":70,\\\"str\\\":70,\\\"wiz\\\":70,]),54:100,52:20,53:29,50:60,51:9447,49:0,48:43136,45:80,46:0,47:300,44:70,42:280,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:9447,36:560,34:40,35:2,32:0,33::5C39B5C2019E2526:,29:0,31:60,28:649,26:([\\\"total\\\":0,]),25:1,24:69,23:7,22:2601,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2668,17:1,16:3980,15:140,14:340,12:140,13:0,11:140,10:0,9:140,8:13028,7:1026963,6:0,5:40,3:0,2:43136,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":112,\\\"dishui-chuanshi\\\":112,\\\"yuhen-yunchou\\\":112,]),])\",]),\"me\":([\"gender\":2,\"life\":54856,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":736,\"con\":0,\"mana\":8371,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"初显锋芒\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":838,\"icon\":6224,\"phy_absorb\":-20,\"no_capture\":1,\"money\":70,\"polar\":-1,\"no_cost_mana\":1,\"level\":70,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":54856,\"exp\":210,\"power\":1509,\"resisit_earth\":0,\"max_mana\":8371,\"parry\":0,\"mana_effect\":0,\"tao\":127717,\"phy_power\":3621,\"speed_effect\":50,\"portrait\":6224,\"mag_power\":4073,\"refer_level\":70,]),\"carry\":([]),\"skills\":([]),])','20190112173914',-1914837245,NULL),('herod','初显锋芒','初显锋芒_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":70,\\\"con\\\":70,\\\"str\\\":70,\\\"wiz\\\":70,]),54:100,52:20,53:27,50:60,51:9301,49:0,48:43136,45:80,46:0,47:300,44:70,42:280,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:9301,36:560,34:40,35:2,32:0,33::5C39B5C2019E2525:,29:0,31:60,28:647,26:([\\\"total\\\":0,]),25:1,24:67,23:7,22:2601,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2668,17:1,16:3980,15:140,14:340,12:140,13:0,11:140,10:0,9:140,8:11707,7:1026963,6:0,5:40,3:4,2:43136,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":112,\\\"dishui-chuanshi\\\":112,\\\"yuhen-yunchou\\\":112,]),])\",]),\"me\":([\"gender\":1,\"life\":53848,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":639,\"con\":0,\"mana\":8371,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"初显锋芒\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":838,\"icon\":6223,\"phy_absorb\":-20,\"no_capture\":1,\"money\":70,\"polar\":-1,\"no_cost_mana\":1,\"level\":70,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":53848,\"exp\":210,\"power\":1478,\"resisit_earth\":0,\"max_mana\":8371,\"parry\":0,\"mana_effect\":0,\"tao\":108619,\"phy_power\":3546,\"speed_effect\":50,\"portrait\":6223,\"mag_power\":3990,\"refer_level\":70,]),\"carry\":([]),\"skills\":([]),])','20190112173914',804775720,NULL),('herod','初出江湖','初出江湖_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":50,\\\"con\\\":50,\\\"str\\\":50,\\\"wiz\\\":50,]),54:100,52:20,53:28,50:60,51:5475,49:0,48:25076,45:80,46:0,47:300,44:50,42:200,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:5475,36:416,34:25,35:2,32:0,33::5C39B5C2019E2522:,29:0,31:60,28:648,26:([\\\"total\\\":0,]),25:1,24:68,23:3,22:1592,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:1673,17:1,16:2468,15:100,14:340,12:100,13:0,11:100,10:0,9:100,8:11839,7:121350,6:0,5:40,3:7,2:25076,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":80,\\\"yuhen-yunchou\\\":80,]),])\",]),\"me\":([\"gender\":2,\"life\":31624,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":510,\"con\":0,\"mana\":5056,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"初出江湖\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":506,\"icon\":6224,\"phy_absorb\":-20,\"no_capture\":1,\"money\":50,\"polar\":-1,\"no_cost_mana\":1,\"level\":50,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":31624,\"exp\":150,\"power\":921,\"resisit_earth\":0,\"max_mana\":5056,\"parry\":0,\"mana_effect\":0,\"tao\":43933,\"phy_power\":2209,\"speed_effect\":50,\"portrait\":6224,\"mag_power\":2485,\"refer_level\":50,]),\"carry\":([]),\"skills\":([]),])','20190112173914',-1882390780,NULL),('herod','初出江湖','初出江湖_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":50,\\\"con\\\":50,\\\"str\\\":50,\\\"wiz\\\":50,]),54:100,52:20,53:29,50:60,51:5518,49:0,48:25076,45:80,46:0,47:300,44:50,42:200,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:5518,36:416,34:25,35:2,32:0,33::5C39B5C1019E2521:,29:0,31:60,28:649,26:([\\\"total\\\":0,]),25:1,24:69,23:2,22:1592,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:1673,17:1,16:2468,15:100,14:340,12:100,13:0,11:100,10:0,9:100,8:13497,7:121350,6:0,5:40,3:1,2:25076,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":80,\\\"yuhen-yunchou\\\":80,]),])\",]),\"me\":([\"gender\":1,\"life\":31320,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":505,\"con\":0,\"mana\":5056,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"初出江湖\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":506,\"icon\":6223,\"phy_absorb\":-20,\"no_capture\":1,\"money\":50,\"polar\":-1,\"no_cost_mana\":1,\"level\":50,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":31320,\"exp\":150,\"power\":948,\"resisit_earth\":0,\"max_mana\":5056,\"parry\":0,\"mana_effect\":0,\"tao\":46543,\"phy_power\":2274,\"speed_effect\":50,\"portrait\":6223,\"mag_power\":2559,\"refer_level\":50,]),\"carry\":([]),\"skills\":([]),])','20190112173913',316014379,NULL),('herod','常胜将军','常胜将军_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":160,\\\"con\\\":160,\\\"str\\\":160,\\\"wiz\\\":160,]),54:100,52:20,53:28,50:60,51:38653,49:0,48:179908,45:80,46:0,47:300,44:160,42:640,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:38653,36:1208,34:130,35:2,32:0,33::5C39B5C1019E251B:,29:0,31:60,28:648,26:([\\\"total\\\":0,]),25:1,24:68,23:4,22:9787,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:9459,17:1,16:14460,15:320,14:340,12:320,13:0,11:320,10:0,9:320,8:10951,7:173084607,6:0,5:40,3:0,2:179908,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":256,\\\"dishui-chuanshi\\\":256,\\\"yuhen-yunchou\\\":256,]),])\",]),\"me\":([\"gender\":2,\"life\":189168,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1641,\"con\":0,\"mana\":32495,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"常胜将军\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":3250,\"icon\":6224,\"phy_absorb\":-20,\"no_capture\":1,\"money\":160,\"polar\":-1,\"no_cost_mana\":1,\"level\":160,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":189168,\"exp\":480,\"power\":6025,\"resisit_earth\":0,\"max_mana\":32495,\"parry\":0,\"mana_effect\":0,\"tao\":1525184,\"phy_power\":14460,\"speed_effect\":50,\"portrait\":6224,\"mag_power\":16266,\"refer_level\":160,]),\"carry\":([]),\"skills\":([]),])','20190112173913',-477172931,NULL),('herod','常胜将军','常胜将军_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":160,\\\"con\\\":160,\\\"str\\\":160,\\\"wiz\\\":160,]),54:100,52:20,53:27,50:60,51:38351,49:0,48:179908,45:80,46:0,47:300,44:160,42:640,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:38351,36:1208,34:130,35:2,32:0,33::5C39B5C1019E251A:,29:0,31:60,28:647,26:([\\\"total\\\":0,]),25:1,24:67,23:10,22:9787,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:9459,17:1,16:14460,15:320,14:340,12:320,13:0,11:320,10:0,9:320,8:13609,7:173084607,6:0,5:40,3:3,2:179908,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":256,\\\"dishui-chuanshi\\\":256,\\\"yuhen-yunchou\\\":256,]),])\",]),\"me\":([\"gender\":1,\"life\":185268,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1459,\"con\":0,\"mana\":32495,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"常胜将军\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":3250,\"icon\":6223,\"phy_absorb\":-20,\"no_capture\":1,\"money\":160,\"polar\":-1,\"no_cost_mana\":1,\"level\":160,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":185268,\"exp\":480,\"power\":5850,\"resisit_earth\":0,\"max_mana\":32495,\"parry\":0,\"mana_effect\":0,\"tao\":1411152,\"phy_power\":14040,\"speed_effect\":50,\"portrait\":6223,\"mag_power\":15795,\"refer_level\":160,]),\"carry\":([]),\"skills\":([]),])','20190112173913',-1815877377,NULL),('herod','德高望重','德高望重_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":140,\\\"con\\\":140,\\\"str\\\":140,\\\"wiz\\\":140,]),54:100,52:20,53:25,50:60,51:29677,49:0,48:141360,45:80,46:0,47:300,44:140,42:560,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:29677,36:1064,34:110,35:2,32:0,33::5C39B5C1019E2519:,29:0,31:60,28:645,26:([\\\"total\\\":0,]),25:1,24:65,23:8,22:7817,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:7624,17:1,16:11612,15:280,14:340,12:280,13:0,11:280,10:0,9:280,8:13180,7:173084607,6:0,5:40,3:1,2:141360,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":224,\\\"dishui-chuanshi\\\":224,\\\"yuhen-yunchou\\\":224,]),])\",]),\"me\":([\"gender\":2,\"life\":162836,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1392,\"con\":0,\"mana\":25832,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"德高望重\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":2584,\"icon\":6224,\"phy_absorb\":-20,\"no_capture\":1,\"money\":140,\"polar\":-1,\"no_cost_mana\":1,\"level\":140,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":162836,\"exp\":420,\"power\":4419,\"resisit_earth\":0,\"max_mana\":25832,\"parry\":0,\"mana_effect\":0,\"tao\":954910,\"phy_power\":10605,\"speed_effect\":50,\"portrait\":6224,\"mag_power\":11930,\"refer_level\":140,]),\"carry\":([]),\"skills\":([]),])','20190112173913',-1399854706,NULL),('herod','德高望重','德高望重_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":140,\\\"con\\\":140,\\\"str\\\":140,\\\"wiz\\\":140,]),54:100,52:20,53:27,50:60,51:30152,49:0,48:141360,45:80,46:0,47:300,44:140,42:560,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:30152,36:1064,34:110,35:2,32:0,33::5C39B5C1019E2518:,29:0,31:60,28:647,26:([\\\"total\\\":0,]),25:1,24:67,23:5,22:7817,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:7624,17:1,16:11612,15:280,14:340,12:280,13:0,11:280,10:0,9:280,8:14577,7:173084607,6:0,5:40,3:8,2:141360,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":224,\\\"dishui-chuanshi\\\":224,\\\"yuhen-yunchou\\\":224,]),])\",]),\"me\":([\"gender\":1,\"life\":150428,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1444,\"con\":0,\"mana\":25832,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"德高望重\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":2584,\"icon\":6223,\"phy_absorb\":-20,\"no_capture\":1,\"money\":140,\"polar\":-1,\"no_cost_mana\":1,\"level\":140,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":150428,\"exp\":420,\"power\":4605,\"resisit_earth\":0,\"max_mana\":25832,\"parry\":0,\"mana_effect\":0,\"tao\":878517,\"phy_power\":11052,\"speed_effect\":50,\"portrait\":6223,\"mag_power\":12432,\"refer_level\":140,]),\"carry\":([]),\"skills\":([]),])','20190112173913',-1782978062,NULL),('herod','锋芒毕露','锋芒毕露_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":100,\\\"con\\\":100,\\\"str\\\":100,\\\"wiz\\\":100,]),54:100,52:20,53:32,50:60,51:17332,49:0,48:78828,45:80,46:0,47:300,44:100,42:400,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:17332,36:776,34:70,35:2,32:0,33::5C39B5C3019E2530:,29:0,31:60,28:652,26:([\\\"total\\\":0,]),25:1,24:72,23:3,22:4516,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:4512,17:1,16:6804,15:200,14:340,12:200,13:0,11:200,10:0,9:200,8:10339,7:8279872,6:0,5:40,3:5,2:78828,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":160,\\\"dishui-chuanshi\\\":160,\\\"yuhen-yunchou\\\":160,]),])\",]),\"me\":([\"gender\":2,\"life\":86780,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":966,\"con\":0,\"mana\":14738,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"锋芒毕露\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1475,\"icon\":6224,\"phy_absorb\":-20,\"no_capture\":1,\"money\":100,\"polar\":-1,\"no_cost_mana\":1,\"level\":100,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":86780,\"exp\":300,\"power\":2762,\"resisit_earth\":0,\"max_mana\":14738,\"parry\":0,\"mana_effect\":0,\"tao\":351477,\"phy_power\":6628,\"speed_effect\":50,\"portrait\":6224,\"mag_power\":7457,\"refer_level\":100,]),\"carry\":([]),\"skills\":([]),])','20190112173915',260826509,NULL),('herod','锋芒毕露','锋芒毕露_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":100,\\\"con\\\":100,\\\"str\\\":100,\\\"wiz\\\":100,]),54:100,52:20,53:25,50:60,51:16413,49:0,48:78828,45:80,46:0,47:300,44:100,42:400,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:16413,36:776,34:70,35:2,32:0,33::5C39B5C3019E252F:,29:0,31:60,28:645,26:([\\\"total\\\":0,]),25:1,24:65,23:0,22:4516,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:4512,17:1,16:6804,15:200,14:340,12:200,13:0,11:200,10:0,9:200,8:12043,7:8279872,6:0,5:40,3:7,2:78828,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":160,\\\"dishui-chuanshi\\\":160,\\\"yuhen-yunchou\\\":160,]),])\",]),\"me\":([\"gender\":1,\"life\":86780,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"mag_effect\":80,\"type\":4,\"resisit_water\":0,\"polar_water\":0,\"phy_effect\":50,\"mag_absorb\":-20,\"polar_earth\":0,\"attack_effect\":0,\"speed\":984,\"con\":0,\"mana\":14738,\"str\":0,\"name\":\"英雄会评判员\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":100,\"stamina\":0,\"key_title\":\"锋芒毕露\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1475,\"icon\":6223,\"phy_absorb\":-20,\"no_capture\":1,\"money\":100,\"polar\":-1,\"no_cost_mana\":1,\"level\":100,\"tao_effect\":20,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":86780,\"exp\":300,\"power\":2629,\"resisit_earth\":0,\"max_mana\":14738,\"parry\":0,\"mana_effect\":0,\"tao\":341038,\"phy_power\":6309,\"speed_effect\":50,\"portrait\":6223,\"mag_power\":7097,\"refer_level\":100,]),\"carry\":([]),\"skills\":([]),])','20190112173915',504554919,NULL),('info_icon','cur_icon','','([\"icon\":6101,\"time\":1547285959,])','20190112173919',1734557012,NULL),('master','水系掌门','','([\"pets\":([1:\"白衣仙子:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"phy_absorb\\\":-20,\\\"mag_absorb\\\":-20,\\\"boss_monster\\\":1,54:100,52:17,53:50,50:57,51:7367,49:0,48:17927,45:140,46:30,47:130,44:75,42:0,41:90,40:113,39:\\\"白衣仙子\\\",37:7367,36:343,34:45,35:1,33::5C39B5AF019E238D:,31:50,28:248,25:75,24:90,23:-7,22:1548,21:2216,19:([12:114,11:100,9:149,15:135,]),16:2847,15:135,14:170,12:114,11:100,9:149,8:14821,7:1755393,5:100,3:-3,2:17927,]),\\\"skills\\\":([\\\"tumo-chenmai\\\":96,\\\"tianta-dixian\\\":96,]),])\",]),\"me\":([\"life\":19906,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"mag_effect\":50,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":100,\"polar_earth\":0,\"speed\":444,\"mana\":9931,\"con\":0,\"name\":\"水系掌门\",\"boss_monster\":1,\"str\":0,\"resisit_metal\":0,\"accurate\":85,\"wiz\":0,\"stamina\":0,\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":663,\"phy_absorb\":-20,\"no_cost_mana\":1,\"level\":60,\"tao_effect\":10,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":100,\"resisit_fire\":0,\"attrib_already\":([\"dex\":59,\"con\":59,\"str\":59,\"wiz\":59,]),\"max_life\":19906,\"exp\":0,\"resisit_earth\":0,\"max_mana\":9931,\"parry\":0,\"tao\":68902,\"phy_power\":7962,\"speed_effect\":10,\"mana_effect\":50,\"mag_power\":5971,]),\"carry\":([1:\"昆吾剑:([233::5C39B5AF019E238C:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"binglai-jiangdang\":96,\"xuanhe-xieshui\":96,\"jidi-binghan\":96,\"nubo-kuangtao\":96,\"bingdong-sanchi\":96,\"tongqiang-tiebi\":96,]),])','20190112173855',1201056880,NULL),('master','土系掌门','','([\"pets\":([1:\"青衣仙子:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"phy_absorb\\\":-20,\\\"mag_absorb\\\":-20,\\\"boss_monster\\\":1,54:100,52:20,53:50,50:60,51:7929,49:0,48:16246,45:140,47:130,44:75,42:0,41:90,40:118,39:\\\"青衣仙子\\\",37:7929,36:361,34:45,35:1,33::5C39B5AE019E238B:,29:30,31:50,28:255,25:75,24:90,23:-10,22:1736,21:2622,19:([12:146,11:139,9:104,15:139,]),16:2622,15:139,14:170,12:146,11:139,9:104,8:13443,7:1755393,5:100,3:-8,2:16246,]),\\\"skills\\\":([\\\"feiliu-xianshi\\\":120,\\\"luoying-binfen\\\":120,]),])\",]),\"me\":([\"life\":19906,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"mag_effect\":50,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":100,\"polar_earth\":0,\"speed\":444,\"mana\":9931,\"con\":0,\"name\":\"土系掌门\",\"boss_monster\":1,\"str\":0,\"resisit_metal\":0,\"accurate\":85,\"wiz\":0,\"stamina\":0,\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":663,\"phy_absorb\":-20,\"no_cost_mana\":1,\"level\":60,\"tao_effect\":10,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":100,\"resisit_fire\":0,\"attrib_already\":([\"dex\":59,\"con\":59,\"str\":59,\"wiz\":59,]),\"max_life\":19906,\"exp\":0,\"resisit_earth\":0,\"max_mana\":9931,\"parry\":0,\"tao\":68902,\"phy_power\":7962,\"speed_effect\":10,\"mana_effect\":50,\"mag_power\":5971,]),\"carry\":([1:\"霹雳锤:([233::5C39B5AE019E238A:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"liushen-wuzhu\":96,\"dishu-qipo\":96,\"tianta-dixian\":96,\"shanbeng-dilie\":96,\"bishi-jiuxu\":96,\"huaxian-weiyi\":96,]),])','20190112173854',1085713938,NULL),('master','木系掌门','','([\"pets\":([1:\"黄衣仙子:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"phy_absorb\\\":-20,\\\"mag_absorb\\\":-20,\\\"boss_monster\\\":1,54:100,52:15,53:50,50:55,51:6964,49:0,48:17890,45:140,47:130,44:75,42:0,41:90,40:114,39:\\\"黄衣仙子\\\",37:6964,36:409,34:45,35:1,33::5C39B5AE019E2331:,31:50,28:239,25:75,24:90,23:-6,22:1414,21:2320,19:([12:91,11:110,9:148,15:167,]),16:2842,15:167,14:170,12:91,13:30,11:110,9:148,8:12349,7:1755393,5:100,3:0,2:17890,]),\\\"skills\\\":([\\\"daoguang-jianying\\\":120,\\\"liuguang-yicai\\\":120,]),])\",]),\"me\":([\"life\":19906,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"mag_effect\":50,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":100,\"polar_earth\":0,\"speed\":444,\"mana\":9931,\"con\":0,\"name\":\"木系掌门\",\"boss_monster\":1,\"str\":0,\"resisit_metal\":0,\"accurate\":85,\"wiz\":0,\"stamina\":0,\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":663,\"phy_absorb\":-20,\"no_cost_mana\":1,\"level\":60,\"tao_effect\":10,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":100,\"resisit_fire\":0,\"attrib_already\":([\"dex\":59,\"con\":59,\"str\":59,\"wiz\":59,]),\"max_life\":19906,\"exp\":0,\"resisit_earth\":0,\"max_mana\":9931,\"parry\":0,\"tao\":68902,\"phy_power\":7962,\"speed_effect\":10,\"mana_effect\":50,\"mag_power\":5971,]),\"carry\":([1:\"骷髅爪:([233::5C39B5AE019E2330:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"honghua-lvye\":96,\"xiewei-shexian\":96,\"shuizhang-chuangao\":96,\"luoying-binfen\":96,\"pangen-cuojie\":96,\"heding-hongfen\":96,]),])','20190112173854',1751815125,NULL),('master','火系掌门','','([\"pets\":([1:\"蓝衣仙子:([\\\"attrib\\\":([\\\"resist_slee\\\":30,\\\"type\\\":32768,\\\"phy_absorb\\\":-20,\\\"mag_absorb\\\":-20,\\\"boss_monster\\\":1,54:100,52:17,53:50,50:57,51:7595,49:0,48:16208,45:140,47:130,44:75,42:0,41:90,40:112,39:\\\"蓝衣仙子\\\",37:7595,36:477,34:45,35:1,33::5C39B5AE019E233A:,31:50,28:253,25:75,24:90,23:-4,22:1625,21:2195,19:([12:127,11:98,9:103,15:194,]),16:2617,15:194,14:170,12:127,11:98,9:103,8:11110,7:1755393,5:100,3:-9,2:16208,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":120,\\\"yuhen-yunchou\\\":120,]),])\",]),\"me\":([\"life\":19906,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"mag_effect\":50,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":100,\"polar_earth\":0,\"speed\":444,\"mana\":9931,\"con\":0,\"name\":\"火系掌门\",\"boss_monster\":1,\"str\":0,\"resisit_metal\":0,\"accurate\":85,\"wiz\":0,\"stamina\":0,\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":663,\"phy_absorb\":-20,\"no_cost_mana\":1,\"level\":60,\"tao_effect\":10,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":100,\"resisit_fire\":0,\"attrib_already\":([\"dex\":59,\"con\":59,\"str\":59,\"wiz\":59,]),\"max_life\":19906,\"exp\":0,\"resisit_earth\":0,\"max_mana\":9931,\"parry\":0,\"tao\":68902,\"phy_power\":7962,\"speed_effect\":10,\"mana_effect\":50,\"mag_power\":5971,]),\"carry\":([1:\"百花扇:([233::5C39B5AE019E2339:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"hunqian-mengying\":96,\"jifeng-xunlei\":96,\"jiaojin-lishi\":96,\"yantian-huoyu\":96,\"fengchi-dianche\":96,\"hunbu-shoushe\":96,]),])','20190112173854',1336381730,NULL),('master','金系掌门','','([\"pets\":([1:\"红衣仙子:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"phy_absorb\\\":-20,\\\"mag_absorb\\\":-20,\\\"boss_monster\\\":1,54:100,52:19,53:50,50:59,51:7262,49:0,48:17217,45:140,47:130,44:75,42:0,41:90,40:119,39:\\\"红衣仙子\\\",37:7262,36:379,34:45,35:1,33::5C39B5AE019E232F:,31:50,28:246,25:75,24:90,23:-2,22:1513,21:2653,19:([12:108,11:142,9:130,15:148,]),16:2752,15:148,14:170,12:108,11:142,10:30,9:130,8:11537,7:1755393,5:100,3:-6,2:17217,]),\\\"skills\\\":([\\\"xinghuo-liaoyuan\\\":120,\\\"jiaojin-lishi\\\":120,]),])\",]),\"me\":([\"life\":19906,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"mag_effect\":50,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":100,\"polar_earth\":0,\"speed\":444,\"mana\":9931,\"con\":0,\"name\":\"金系掌门\",\"boss_monster\":1,\"str\":0,\"resisit_metal\":0,\"accurate\":85,\"wiz\":0,\"stamina\":0,\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":663,\"phy_absorb\":-20,\"no_cost_mana\":1,\"level\":60,\"tao_effect\":10,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":100,\"resisit_fire\":0,\"attrib_already\":([\"dex\":59,\"con\":59,\"str\":59,\"wiz\":59,]),\"max_life\":19906,\"exp\":0,\"resisit_earth\":0,\"max_mana\":9931,\"parry\":0,\"tao\":68902,\"phy_power\":7962,\"speed_effect\":10,\"mana_effect\":50,\"mag_power\":5971,]),\"carry\":([1:\"寒风枪:([233::5C39B5AE019E232E:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"jiuniu-erhu\":96,\"ruchi-ruzui\":96,\"jinhong-guanri\":96,\"liuguang-yicai\":96,\"ruhu-tianyi\":96,\"rumeng-chuxing\":96,]),])','20190112173854',1567338347,NULL),('national_day','game_info','','([])','20190112173837',681458541,NULL),('party','city_war','','([\"stat_reduced_life\":([]),\"status\":\"wait_next_war\",\"start_time\":1549173600,\"finish_time\":1549184400,\"city_defenser\":({}),\"ti_last_attack\":([]),\"city_attacker\":({}),])','20190112173856',-1509618070,NULL),('party','war','','([])','20190112173855',-1956301237,NULL),('shaxing','all_servers','','1','20190112173920',-467585783,NULL),('shidao_info','shidao_match','','','20190112173838',-633390169,NULL),('spring_festival_info','cur_festival','','','20190112173838',1982545836,NULL),('torch','torch_index','','0','20190112173838',-336317401,NULL),('torch_task','torch_info','万里长城一线','([])','20190112173859',-386588656,NULL),('vendue_item_slot0','万里长城一线','','([20:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),19:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),18:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),17:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),16:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),15:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),14:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),13:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),12:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),11:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),10:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),9:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),8:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),7:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),6:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),5:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),4:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),3:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),2:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),1:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),])','20190112173912',1744473,NULL),('vendue_item_slot1','万里长城一线','','([40:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),39:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),38:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),37:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),36:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),35:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),34:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),33:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),32:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),31:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),30:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),29:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),28:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),27:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),26:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),25:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),24:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),23:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),22:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),21:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),])','20190112173912',1680120992,NULL),('vendue_item_slot2','万里长城一线','','([60:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),59:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),58:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),57:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),56:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),55:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),54:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),53:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),52:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),51:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),50:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),49:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),48:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),47:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),46:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),45:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),44:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),43:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),42:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),41:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),])','20190112173912',-1170367401,NULL),('vendue_item_slot3','万里长城一线','','([80:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),79:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),78:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),77:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),76:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),75:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),74:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),73:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),72:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),71:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),70:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),69:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),68:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),67:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),66:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),65:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),64:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),63:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),62:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),61:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),])','20190112173913',-127558642,NULL),('vendue_item_slot4','万里长城一线','','([100:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),99:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),98:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),97:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),96:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),95:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),94:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),93:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),92:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),91:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),90:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),89:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),88:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),87:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),86:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),85:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),84:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),83:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),82:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),81:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),])','20190112173913',1262656990,NULL),('vendue_item_slot5','万里长城一线','','([120:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),119:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),118:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),117:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),116:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),115:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),114:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),113:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),112:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),111:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),110:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),109:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),108:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),107:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),106:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),105:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),104:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),103:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),102:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),101:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),])','20190112173913',557416656,NULL),('vendue_item_slot6','万里长城一线','','([127:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),126:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),125:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),124:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),123:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),122:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),121:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),140:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),139:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),138:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),137:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),136:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),135:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),134:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),133:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),132:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),131:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),130:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),129:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),128:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),])','20190112173913',-135692153,NULL),('vendue_item_slot7','万里长城一线','','([160:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),159:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),158:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),157:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),156:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),155:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),154:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),153:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),152:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),151:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),150:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),149:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),148:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),147:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),146:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),145:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),144:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),143:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),142:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),141:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),])','20190112173913',-1167687490,NULL),('vendue_item_slot8','万里长城一线','','([])','20190112173913',-1198906433,NULL),('vendue_pet_slot0','万里长城一线','','([20:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),19:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),18:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),17:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),16:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),15:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),14:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),13:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),12:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),11:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),10:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),9:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),8:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),7:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),6:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),5:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),4:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),3:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),2:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),1:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),])','20190112173913',1683660543,NULL),('vendue_pet_slot1','万里长城一线','','([40:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),39:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),38:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),37:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),36:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),35:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),34:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),33:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),32:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),31:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),30:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),29:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),28:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),27:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),26:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),25:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),24:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),23:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),22:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),21:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),])','20190112173913',1157536966,NULL),('vendue_pet_slot2','万里长城一线','','([56:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),55:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),54:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),53:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),52:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),51:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),50:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),49:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),48:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),47:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),46:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),45:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),44:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),43:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),42:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),41:([\"vendue_iid\":\"\",\"owner\":\"\",\"base_price\":0,\"level\":0,\"cur_buyer\":\"\",\"resttime\":0,\"state\":0,\"vendue_type\":0,\"cur_price\":0,\"decision_price\":0,\"name\":\"\",\"deposit\":0,\"all_buyers\":({}),]),])','20190112173913',60224293,NULL),('zhengdaodian','乾元山金光洞','妙领天机_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":110,\\\"con\\\":110,\\\"str\\\":110,\\\"wiz\\\":110,]),54:100,52:20,53:200,50:60,51:46491,49:0,48:92140,45:80,46:0,47:300,44:110,42:440,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:46491,36:848,34:80,35:2,32:0,33::5C39B5BD019E24EE:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:10,22:5260,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5219,17:1,16:7896,15:220,14:340,12:220,13:0,11:220,10:0,9:220,8:13314,7:12528258,6:0,5:40,3:2,2:92140,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":176,\\\"dishui-chuanshi\\\":176,\\\"yuhen-yunchou\\\":176,]),])\",]),\"me\":([\"gender\":2,\"life\":108688,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1066,\"family\":\"乾元山金光洞\",\"con\":0,\"mana\":51699,\"str\":0,\"name\":\"乾元山金光洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"妙领天机\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1725,\"icon\":7004,\"phy_absorb\":-20,\"no_capture\":1,\"money\":110,\"polar\":4,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":110,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":108688,\"exp\":330,\"power\":3042,\"resisit_earth\":0,\"max_mana\":51699,\"parry\":0,\"tao\":463186,\"phy_power\":7300,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7004,\"mag_power\":8213,]),\"carry\":([1:\"离火七翎扇:([233::5C39B5BD019E24ED:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"xinghuo-liaoyuan\":176,]),])','20190112173909',-1634910454,NULL),('zhengdaodian','乾元山金光洞','妙领天机_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":110,\\\"con\\\":110,\\\"str\\\":110,\\\"wiz\\\":110,]),54:100,52:20,53:200,50:60,51:46491,49:0,48:92140,45:80,46:0,47:300,44:110,42:440,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:46491,36:848,34:80,35:2,32:0,33::5C39B5BD019E24EC:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:3,22:5260,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5219,17:1,16:7896,15:220,14:340,12:220,13:0,11:220,10:0,9:220,8:11608,7:12528258,6:0,5:40,3:4,2:92140,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":176,\\\"dishui-chuanshi\\\":176,\\\"yuhen-yunchou\\\":176,]),])\",]),\"me\":([\"gender\":1,\"life\":110760,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1140,\"family\":\"乾元山金光洞\",\"con\":0,\"mana\":51699,\"str\":0,\"name\":\"乾元山金光洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"妙领天机\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1725,\"icon\":6004,\"phy_absorb\":-20,\"no_capture\":1,\"money\":110,\"polar\":4,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":110,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":110760,\"exp\":330,\"power\":3011,\"resisit_earth\":0,\"max_mana\":51699,\"parry\":0,\"tao\":490977,\"phy_power\":7225,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6004,\"mag_power\":8128,]),\"carry\":([1:\"离火七翎扇:([233::5C39B5BD019E24EB:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"xinghuo-liaoyuan\":176,]),])','20190112173909',-421904560,NULL),('zhengdaodian','乾元山金光洞','略通道行_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":60,\\\"con\\\":60,\\\"str\\\":60,\\\"wiz\\\":60,]),54:100,52:20,53:200,50:60,51:17115,49:0,48:33532,45:80,46:0,47:300,44:60,42:240,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:17115,36:488,34:30,35:2,32:0,33::5C39B5BE019E2503:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:6,22:2070,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2147,17:1,16:3188,15:120,14:340,12:120,13:0,11:120,10:0,9:120,8:14534,7:329015,6:0,5:40,3:3,2:33532,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":96,\\\"dishui-chuanshi\\\":96,\\\"yuhen-yunchou\\\":96,]),])\",]),\"me\":([\"gender\":2,\"life\":37820,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":612,\"family\":\"乾元山金光洞\",\"con\":0,\"mana\":19863,\"str\":0,\"name\":\"乾元山金光洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"略通道行\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":663,\"icon\":7004,\"phy_absorb\":-20,\"no_capture\":1,\"money\":60,\"polar\":4,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":60,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":37820,\"exp\":180,\"power\":1229,\"resisit_earth\":0,\"max_mana\":19863,\"parry\":0,\"tao\":71408,\"phy_power\":2949,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7004,\"mag_power\":3317,]),\"carry\":([1:\"百花扇:([233::5C39B5BE019E2502:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"xinghuo-liaoyuan\":96,]),])','20190112173910',-1523829184,NULL),('zhengdaodian','乾元山金光洞','略通道行_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":60,\\\"con\\\":60,\\\"str\\\":60,\\\"wiz\\\":60,]),54:100,52:20,53:200,50:60,51:17115,49:0,48:33532,45:80,46:0,47:300,44:60,42:240,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:17115,36:488,34:30,35:2,32:0,33::5C39B5BE019E2501:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:3,22:2070,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2147,17:1,16:3188,15:120,14:340,12:120,13:0,11:120,10:0,9:120,8:11111,7:329015,6:0,5:40,3:6,2:33532,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":96,\\\"dishui-chuanshi\\\":96,\\\"yuhen-yunchou\\\":96,]),])\",]),\"me\":([\"gender\":1,\"life\":37820,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":660,\"family\":\"乾元山金光洞\",\"con\":0,\"mana\":19863,\"str\":0,\"name\":\"乾元山金光洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"略通道行\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":663,\"icon\":6004,\"phy_absorb\":-20,\"no_capture\":1,\"money\":60,\"polar\":4,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":60,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":37820,\"exp\":180,\"power\":1134,\"resisit_earth\":0,\"max_mana\":19863,\"parry\":0,\"tao\":78172,\"phy_power\":2721,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6004,\"mag_power\":3061,]),\"carry\":([1:\"百花扇:([233::5C39B5BE019E2500:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"xinghuo-liaoyuan\":96,]),])','20190112173910',902051423,NULL),('zhengdaodian','乾元山金光洞','新入道途_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":30,\\\"con\\\":30,\\\"str\\\":30,\\\"wiz\\\":30,]),54:100,52:20,53:200,50:60,51:5994,49:0,48:11844,45:80,46:0,47:300,44:30,42:120,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:5994,36:272,34:15,35:2,32:0,33::5C39B5BF019E2511:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:10,22:796,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:865,17:1,16:1248,15:60,14:340,12:60,13:0,11:60,10:0,9:60,8:11216,7:25730,6:0,5:40,3:0,2:11844,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":48,]),])\",]),\"me\":([\"gender\":2,\"life\":13436,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":366,\"family\":\"乾元山金光洞\",\"con\":0,\"mana\":7458,\"str\":0,\"name\":\"乾元山金光洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"新入道途\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":248,\"icon\":7004,\"phy_absorb\":-20,\"no_capture\":1,\"money\":30,\"polar\":4,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":30,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":13436,\"exp\":90,\"power\":429,\"resisit_earth\":0,\"max_mana\":7458,\"parry\":0,\"tao\":9018,\"phy_power\":1029,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7004,\"mag_power\":1157,]),\"carry\":([1:\"玉骨扇:([233::5C39B5BF019E2510:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"xinghuo-liaoyuan\":48,]),])','20190112173911',-1674787153,NULL),('zhengdaodian','乾元山金光洞','新入道途_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":30,\\\"con\\\":30,\\\"str\\\":30,\\\"wiz\\\":30,]),54:100,52:20,53:200,50:60,51:5994,49:0,48:11844,45:80,46:0,47:300,44:30,42:120,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:5994,36:272,34:15,35:2,32:0,33::5C39B5BF019E250E:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:10,22:796,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:865,17:1,16:1248,15:60,14:340,12:60,13:0,11:60,10:0,9:60,8:11776,7:25730,6:0,5:40,3:7,2:11844,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":48,]),])\",]),\"me\":([\"gender\":1,\"life\":13436,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":339,\"family\":\"乾元山金光洞\",\"con\":0,\"mana\":7458,\"str\":0,\"name\":\"乾元山金光洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"新入道途\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":248,\"icon\":6004,\"phy_absorb\":-20,\"no_capture\":1,\"money\":30,\"polar\":4,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":30,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":13436,\"exp\":90,\"power\":464,\"resisit_earth\":0,\"max_mana\":7458,\"parry\":0,\"tao\":8455,\"phy_power\":1113,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6004,\"mag_power\":1252,]),\"carry\":([1:\"玉骨扇:([233::5C39B5BF019E250D:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"xinghuo-liaoyuan\":48,]),])','20190112173911',849266272,NULL),('zhengdaodian','乾元山金光洞','小具法力_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":40,\\\"con\\\":40,\\\"str\\\":40,\\\"wiz\\\":40,]),54:100,52:20,53:200,50:60,51:9126,49:0,48:18088,45:80,46:0,47:300,44:40,42:160,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:9126,36:344,34:20,35:2,32:0,33::5C39B5BF019E250C:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:5,22:1168,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:1246,17:1,16:1820,15:80,14:340,12:80,13:0,11:80,10:0,9:80,8:11201,7:61690,6:0,5:40,3:9,2:18088,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":64,\\\"yuhen-yunchou\\\":64,]),])\",]),\"me\":([\"gender\":2,\"life\":22336,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":412,\"family\":\"乾元山金光洞\",\"con\":0,\"mana\":11034,\"str\":0,\"name\":\"乾元山金光洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"小具法力\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":368,\"icon\":7004,\"phy_absorb\":-20,\"no_capture\":1,\"money\":40,\"polar\":4,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":40,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":22336,\"exp\":120,\"power\":656,\"resisit_earth\":0,\"max_mana\":11034,\"parry\":0,\"tao\":20488,\"phy_power\":1573,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7004,\"mag_power\":1771,]),\"carry\":([1:\"阴阳扇:([233::5C39B5BF019E250B:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"xinghuo-liaoyuan\":64,]),])','20190112173911',1164036390,NULL),('zhengdaodian','乾元山金光洞','小具法力_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":40,\\\"con\\\":40,\\\"str\\\":40,\\\"wiz\\\":40,]),54:100,52:20,53:200,50:60,51:9126,49:0,48:18088,45:80,46:0,47:300,44:40,42:160,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:9126,36:344,34:20,35:2,32:0,33::5C39B5BE019E250A:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:1,22:1168,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:1246,17:1,16:1820,15:80,14:340,12:80,13:0,11:80,10:0,9:80,8:14198,7:61690,6:0,5:40,3:7,2:18088,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":64,\\\"yuhen-yunchou\\\":64,]),])\",]),\"me\":([\"gender\":1,\"life\":20788,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":454,\"family\":\"乾元山金光洞\",\"con\":0,\"mana\":11034,\"str\":0,\"name\":\"乾元山金光洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"小具法力\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":368,\"icon\":6004,\"phy_absorb\":-20,\"no_capture\":1,\"money\":40,\"polar\":4,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":40,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":20788,\"exp\":120,\"power\":643,\"resisit_earth\":0,\"max_mana\":11034,\"parry\":0,\"tao\":22492,\"phy_power\":1542,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6004,\"mag_power\":1735,]),\"carry\":([1:\"阴阳扇:([233::5C39B5BE019E2509:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"xinghuo-liaoyuan\":64,]),])','20190112173910',-1362833700,NULL),('zhengdaodian','乾元山金光洞','脱胎换骨_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":120,\\\"con\\\":120,\\\"str\\\":120,\\\"wiz\\\":120,]),54:100,52:20,53:200,50:60,51:54162,49:0,48:107400,45:80,46:0,47:300,44:120,42:480,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:54162,36:920,34:90,35:2,32:0,33::5C39B5BD019E24E5:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:10,22:6059,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5973,17:1,16:9060,15:240,14:340,12:240,13:0,11:240,10:0,9:240,8:10788,7:18777120,6:0,5:40,3:3,2:107400,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":192,\\\"dishui-chuanshi\\\":192,\\\"yuhen-yunchou\\\":192,]),])\",]),\"me\":([\"gender\":2,\"life\":113612,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1077,\"family\":\"乾元山金光洞\",\"con\":0,\"mana\":59739,\"str\":0,\"name\":\"乾元山金光洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"脱胎换骨\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1993,\"icon\":7004,\"phy_absorb\":-20,\"no_capture\":1,\"money\":120,\"polar\":4,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":120,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":113612,\"exp\":360,\"power\":3730,\"resisit_earth\":0,\"max_mana\":59739,\"parry\":0,\"tao\":583302,\"phy_power\":8952,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7004,\"mag_power\":10071,]),\"carry\":([1:\"赤霄烈焰扇:([233::5C39B5BD019E24E4:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"xinghuo-liaoyuan\":192,]),])','20190112173909',2038775459,NULL),('zhengdaodian','乾元山金光洞','脱胎换骨_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":120,\\\"con\\\":120,\\\"str\\\":120,\\\"wiz\\\":120,]),54:100,52:20,53:200,50:60,51:54162,49:0,48:107400,45:80,46:0,47:300,44:120,42:480,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:54162,36:920,34:90,35:2,32:0,33::5C39B5BD019E24E3:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:0,22:6059,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5973,17:1,16:9060,15:240,14:340,12:240,13:0,11:240,10:0,9:240,8:11936,7:18777120,6:0,5:40,3:2,2:107400,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":192,\\\"dishui-chuanshi\\\":192,\\\"yuhen-yunchou\\\":192,]),])\",]),\"me\":([\"gender\":1,\"life\":119592,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1179,\"family\":\"乾元山金光洞\",\"con\":0,\"mana\":59739,\"str\":0,\"name\":\"乾元山金光洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"脱胎换骨\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1993,\"icon\":6004,\"phy_absorb\":-20,\"no_capture\":1,\"money\":120,\"polar\":4,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":120,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":119592,\"exp\":360,\"power\":3694,\"resisit_earth\":0,\"max_mana\":59739,\"parry\":0,\"tao\":613369,\"phy_power\":8865,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6004,\"mag_power\":9973,]),\"carry\":([1:\"赤霄烈焰扇:([233::5C39B5BD019E24E2:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"xinghuo-liaoyuan\":192,]),])','20190112173909',-834781524,NULL),('zhengdaodian','乾元山金光洞','霞举飞升_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":130,\\\"con\\\":130,\\\"str\\\":130,\\\"wiz\\\":130,]),54:100,52:20,53:200,50:60,51:62409,49:0,48:123804,45:80,46:0,47:300,44:130,42:520,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:62409,36:992,34:100,35:2,32:0,33::5C39B5BD019E24F3:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:2,22:6912,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:6776,17:1,16:10300,15:260,14:340,12:260,13:0,11:260,10:0,9:260,8:11567,7:66973140,6:0,5:40,3:10,2:123804,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":208,\\\"dishui-chuanshi\\\":208,\\\"yuhen-yunchou\\\":208,]),])\",]),\"me\":([\"gender\":2,\"life\":149088,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1161,\"family\":\"乾元山金光洞\",\"con\":0,\"mana\":68340,\"str\":0,\"name\":\"乾元山金光洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"霞举飞升\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":2279,\"icon\":7004,\"phy_absorb\":-20,\"no_capture\":1,\"money\":130,\"polar\":4,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":130,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":149088,\"exp\":390,\"power\":4267,\"resisit_earth\":0,\"max_mana\":68340,\"parry\":0,\"tao\":802782,\"phy_power\":10240,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7004,\"mag_power\":11520,]),\"carry\":([1:\"红云火霞扇:([233::5C39B5BD019E24F2:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"xinghuo-liaoyuan\":208,]),])','20190112173910',-437174443,NULL),('zhengdaodian','乾元山金光洞','霞举飞升_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":130,\\\"con\\\":130,\\\"str\\\":130,\\\"wiz\\\":130,]),54:100,52:20,53:200,50:60,51:62409,49:0,48:123804,45:80,46:0,47:300,44:130,42:520,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:62409,36:992,34:100,35:2,32:0,33::5C39B5BD019E24F0:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:9,22:6912,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:6776,17:1,16:10300,15:260,14:340,12:260,13:0,11:260,10:0,9:260,8:10674,7:66973140,6:0,5:40,3:3,2:123804,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":208,\\\"dishui-chuanshi\\\":208,\\\"yuhen-yunchou\\\":208,]),])\",]),\"me\":([\"gender\":1,\"life\":147720,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1137,\"family\":\"乾元山金光洞\",\"con\":0,\"mana\":68340,\"str\":0,\"name\":\"乾元山金光洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"霞举飞升\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":2279,\"icon\":6004,\"phy_absorb\":-20,\"no_capture\":1,\"money\":130,\"polar\":4,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":130,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":147720,\"exp\":390,\"power\":4020,\"resisit_earth\":0,\"max_mana\":68340,\"parry\":0,\"tao\":711034,\"phy_power\":9648,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6004,\"mag_power\":10854,]),\"carry\":([1:\"红云火霞扇:([233::5C39B5BD019E24EF:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"xinghuo-liaoyuan\":208,]),])','20190112173909',933773226,NULL),('zhengdaodian','乾元山金光洞','元神初具_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":80,\\\"con\\\":80,\\\"str\\\":80,\\\"wiz\\\":80,]),54:100,52:20,53:200,50:60,51:27405,49:0,48:53884,45:80,46:0,47:300,44:80,42:320,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:27405,36:632,34:50,35:2,32:0,33::5C39B5BE019E24FB:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:6,22:3187,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3236,17:1,16:4848,15:160,14:340,12:160,13:0,11:160,10:0,9:160,8:11549,7:2655013,6:0,5:40,3:2,2:53884,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":128,\\\"dishui-chuanshi\\\":128,\\\"yuhen-yunchou\\\":128,]),])\",]),\"me\":([\"gender\":2,\"life\":59476,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":832,\"family\":\"乾元山金光洞\",\"con\":0,\"mana\":30924,\"str\":0,\"name\":\"乾元山金光洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"元神初具\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1032,\"icon\":7004,\"phy_absorb\":-20,\"no_capture\":1,\"money\":80,\"polar\":4,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":80,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":59476,\"exp\":240,\"power\":1839,\"resisit_earth\":0,\"max_mana\":30924,\"parry\":0,\"tao\":169266,\"phy_power\":4413,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7004,\"mag_power\":4964,]),\"carry\":([1:\"蔽日扇:([233::5C39B5BE019E24FA:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"xinghuo-liaoyuan\":128,]),])','20190112173910',2101425566,NULL),('zhengdaodian','乾元山金光洞','元神初具_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":80,\\\"con\\\":80,\\\"str\\\":80,\\\"wiz\\\":80,]),54:100,52:20,53:200,50:60,51:27405,49:0,48:53884,45:80,46:0,47:300,44:80,42:320,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:27405,36:632,34:50,35:2,32:0,33::5C39B5BE019E24F9:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:5,22:3187,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3236,17:1,16:4848,15:160,14:340,12:160,13:0,11:160,10:0,9:160,8:12993,7:2655013,6:0,5:40,3:2,2:53884,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":128,\\\"dishui-chuanshi\\\":128,\\\"yuhen-yunchou\\\":128,]),])\",]),\"me\":([\"gender\":1,\"life\":56376,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":840,\"family\":\"乾元山金光洞\",\"con\":0,\"mana\":30924,\"str\":0,\"name\":\"乾元山金光洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"元神初具\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1032,\"icon\":6004,\"phy_absorb\":-20,\"no_capture\":1,\"money\":80,\"polar\":4,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":80,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":56376,\"exp\":240,\"power\":1876,\"resisit_earth\":0,\"max_mana\":30924,\"parry\":0,\"tao\":172828,\"phy_power\":4501,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6004,\"mag_power\":5065,]),\"carry\":([1:\"蔽日扇:([233::5C39B5BE019E24F8:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"xinghuo-liaoyuan\":128,]),])','20190112173910',-1072810622,NULL),('zhengdaodian','乾元山金光洞','初领妙道_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":50,\\\"con\\\":50,\\\"str\\\":50,\\\"wiz\\\":50,]),54:100,52:20,53:200,50:60,51:12834,49:0,48:25076,45:80,46:0,47:300,44:50,42:200,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:12834,36:416,34:25,35:2,32:0,33::5C39B5BE019E2508:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:9,22:1592,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:1673,17:1,16:2468,15:100,14:340,12:100,13:0,11:100,10:0,9:100,8:14318,7:121350,6:0,5:40,3:1,2:25076,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":80,\\\"yuhen-yunchou\\\":80,]),])\",]),\"me\":([\"gender\":2,\"life\":28884,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":520,\"family\":\"乾元山金光洞\",\"con\":0,\"mana\":15168,\"str\":0,\"name\":\"乾元山金光洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"初领妙道\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":506,\"icon\":7004,\"phy_absorb\":-20,\"no_capture\":1,\"money\":50,\"polar\":4,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":50,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":28884,\"exp\":150,\"power\":930,\"resisit_earth\":0,\"max_mana\":15168,\"parry\":0,\"tao\":43498,\"phy_power\":2232,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7004,\"mag_power\":2511,]),\"carry\":([1:\"凤羽扇:([233::5C39B5BE019E2507:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"xinghuo-liaoyuan\":80,]),])','20190112173910',-221721448,NULL),('zhengdaodian','乾元山金光洞','初领妙道_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":50,\\\"con\\\":50,\\\"str\\\":50,\\\"wiz\\\":50,]),54:100,52:20,53:200,50:60,51:12834,49:0,48:25076,45:80,46:0,47:300,44:50,42:200,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:12834,36:416,34:25,35:2,32:0,33::5C39B5BE019E2505:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:6,22:1592,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:1673,17:1,16:2468,15:100,14:340,12:100,13:0,11:100,10:0,9:100,8:14251,7:121350,6:0,5:40,3:9,2:25076,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":80,\\\"yuhen-yunchou\\\":80,]),])\",]),\"me\":([\"gender\":1,\"life\":30408,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":552,\"family\":\"乾元山金光洞\",\"con\":0,\"mana\":15168,\"str\":0,\"name\":\"乾元山金光洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"初领妙道\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":506,\"icon\":6004,\"phy_absorb\":-20,\"no_capture\":1,\"money\":50,\"polar\":4,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":50,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":30408,\"exp\":150,\"power\":866,\"resisit_earth\":0,\"max_mana\":15168,\"parry\":0,\"tao\":42193,\"phy_power\":2077,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6004,\"mag_power\":2338,]),\"carry\":([1:\"凤羽扇:([233::5C39B5BE019E2504:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"xinghuo-liaoyuan\":80,]),])','20190112173910',1205128363,NULL),('zhengdaodian','乾元山金光洞','道心稳固_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":90,\\\"con\\\":90,\\\"str\\\":90,\\\"wiz\\\":90,]),54:100,52:20,53:200,50:60,51:33411,49:0,48:65784,45:80,46:0,47:300,44:90,42:360,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:33411,36:704,34:60,35:2,32:0,33::5C39B5BE019E24F7:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:8,22:3825,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3851,17:1,16:5788,15:180,14:340,12:180,13:0,11:180,10:0,9:180,8:11653,7:5030719,6:0,5:40,3:2,2:65784,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":144,\\\"dishui-chuanshi\\\":144,\\\"yuhen-yunchou\\\":144,]),])\",]),\"me\":([\"gender\":2,\"life\":78432,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":883,\"family\":\"乾元山金光洞\",\"con\":0,\"mana\":37290,\"str\":0,\"name\":\"乾元山金光洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"道心稳固\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1245,\"icon\":7004,\"phy_absorb\":-20,\"no_capture\":1,\"money\":90,\"polar\":4,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":90,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":78432,\"exp\":270,\"power\":2173,\"resisit_earth\":0,\"max_mana\":37290,\"parry\":0,\"tao\":276522,\"phy_power\":5214,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7004,\"mag_power\":5866,]),\"carry\":([1:\"乾坤扇:([233::5C39B5BE019E24F6:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"xinghuo-liaoyuan\":144,]),])','20190112173910',272577669,NULL),('zhengdaodian','乾元山金光洞','道心稳固_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":90,\\\"con\\\":90,\\\"str\\\":90,\\\"wiz\\\":90,]),54:100,52:20,53:200,50:60,51:33411,49:0,48:65784,45:80,46:0,47:300,44:90,42:360,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:33411,36:704,34:60,35:2,32:0,33::5C39B5BE019E24F5:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:8,22:3825,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3851,17:1,16:5788,15:180,14:340,12:180,13:0,11:180,10:0,9:180,8:13116,7:5030719,6:0,5:40,3:0,2:65784,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":144,\\\"dishui-chuanshi\\\":144,\\\"yuhen-yunchou\\\":144,]),])\",]),\"me\":([\"gender\":1,\"life\":72456,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":840,\"family\":\"乾元山金光洞\",\"con\":0,\"mana\":37290,\"str\":0,\"name\":\"乾元山金光洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"道心稳固\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1245,\"icon\":6004,\"phy_absorb\":-20,\"no_capture\":1,\"money\":90,\"polar\":4,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":90,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":72456,\"exp\":270,\"power\":2330,\"resisit_earth\":0,\"max_mana\":37290,\"parry\":0,\"tao\":261301,\"phy_power\":5592,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6004,\"mag_power\":6291,]),\"carry\":([1:\"乾坤扇:([233::5C39B5BE019E24F4:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"xinghuo-liaoyuan\":144,]),])','20190112173910',-418696058,NULL),('zhengdaodian','乾元山金光洞','道高德隆_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":100,\\\"con\\\":100,\\\"str\\\":100,\\\"wiz\\\":100,]),54:100,52:20,53:200,50:60,51:39393,49:0,48:78828,45:80,46:0,47:300,44:100,42:400,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:39393,36:776,34:70,35:2,32:0,33::5C39B5BD019E24EA:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:10,22:4516,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:4512,17:1,16:6804,15:200,14:340,12:200,13:0,11:200,10:0,9:200,8:12449,7:8279872,6:0,5:40,3:0,2:78828,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":160,\\\"dishui-chuanshi\\\":160,\\\"yuhen-yunchou\\\":160,]),])\",]),\"me\":([\"gender\":2,\"life\":84124,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1042,\"family\":\"乾元山金光洞\",\"con\":0,\"mana\":44214,\"str\":0,\"name\":\"乾元山金光洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"道高德隆\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1475,\"icon\":7004,\"phy_absorb\":-20,\"no_capture\":1,\"money\":100,\"polar\":4,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":100,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":84124,\"exp\":300,\"power\":2735,\"resisit_earth\":0,\"max_mana\":44214,\"parry\":0,\"tao\":351477,\"phy_power\":6564,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7004,\"mag_power\":7383,]),\"carry\":([1:\"五彩神焰扇:([233::5C39B5BD019E24E9:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"xinghuo-liaoyuan\":160,]),])','20190112173909',-1368180275,NULL),('zhengdaodian','乾元山金光洞','道高德隆_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":100,\\\"con\\\":100,\\\"str\\\":100,\\\"wiz\\\":100,]),54:100,52:20,53:200,50:60,51:39393,49:0,48:78828,45:80,46:0,47:300,44:100,42:400,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:39393,36:776,34:70,35:2,32:0,33::5C39B5BD019E24E7:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:7,22:4516,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:4512,17:1,16:6804,15:200,14:340,12:200,13:0,11:200,10:0,9:200,8:12620,7:8279872,6:0,5:40,3:9,2:78828,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":160,\\\"dishui-chuanshi\\\":160,\\\"yuhen-yunchou\\\":160,]),])\",]),\"me\":([\"gender\":1,\"life\":85008,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1023,\"family\":\"乾元山金光洞\",\"con\":0,\"mana\":44214,\"str\":0,\"name\":\"乾元山金光洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"道高德隆\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1475,\"icon\":6004,\"phy_absorb\":-20,\"no_capture\":1,\"money\":100,\"polar\":4,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":100,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":85008,\"exp\":300,\"power\":2629,\"resisit_earth\":0,\"max_mana\":44214,\"parry\":0,\"tao\":334078,\"phy_power\":6309,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6004,\"mag_power\":7097,]),\"carry\":([1:\"五彩神焰扇:([233::5C39B5BD019E24E6:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"xinghuo-liaoyuan\":160,]),])','20190112173909',-475252700,NULL),('zhengdaodian','乾元山金光洞','渐入佳境_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":70,\\\"con\\\":70,\\\"str\\\":70,\\\"wiz\\\":70,]),54:100,52:20,53:200,50:60,51:21972,49:0,48:43136,45:80,46:0,47:300,44:70,42:280,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:21972,36:560,34:40,35:2,32:0,33::5C39B5BE019E24FF:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:7,22:2601,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2668,17:1,16:3980,15:140,14:340,12:140,13:0,11:140,10:0,9:140,8:14435,7:1026963,6:0,5:40,3:4,2:43136,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":112,\\\"dishui-chuanshi\\\":112,\\\"yuhen-yunchou\\\":112,]),])\",]),\"me\":([\"gender\":2,\"life\":47308,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":702,\"family\":\"乾元山金光洞\",\"con\":0,\"mana\":25113,\"str\":0,\"name\":\"乾元山金光洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"渐入佳境\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":838,\"icon\":7004,\"phy_absorb\":-20,\"no_capture\":1,\"money\":70,\"polar\":4,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":70,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":47308,\"exp\":210,\"power\":1554,\"resisit_earth\":0,\"max_mana\":25113,\"parry\":0,\"tao\":115780,\"phy_power\":3729,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7004,\"mag_power\":4195,]),\"carry\":([1:\"流云扇:([233::5C39B5BE019E24FE:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"xinghuo-liaoyuan\":112,]),])','20190112173910',262878461,NULL),('zhengdaodian','乾元山金光洞','渐入佳境_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":70,\\\"con\\\":70,\\\"str\\\":70,\\\"wiz\\\":70,]),54:100,52:20,53:200,50:60,51:21972,49:0,48:43136,45:80,46:0,47:300,44:70,42:280,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:21972,36:560,34:40,35:2,32:0,33::5C39B5BE019E24FD:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:8,22:2601,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2668,17:1,16:3980,15:140,14:340,12:140,13:0,11:140,10:0,9:140,8:12713,7:1026963,6:0,5:40,3:0,2:43136,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":112,\\\"dishui-chuanshi\\\":112,\\\"yuhen-yunchou\\\":112,]),])\",]),\"me\":([\"gender\":1,\"life\":47808,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":736,\"family\":\"乾元山金光洞\",\"con\":0,\"mana\":25113,\"str\":0,\"name\":\"乾元山金光洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"渐入佳境\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":838,\"icon\":6004,\"phy_absorb\":-20,\"no_capture\":1,\"money\":70,\"polar\":4,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":70,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":47808,\"exp\":210,\"power\":1448,\"resisit_earth\":0,\"max_mana\":25113,\"parry\":0,\"tao\":109813,\"phy_power\":3474,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6004,\"mag_power\":3909,]),\"carry\":([1:\"流云扇:([233::5C39B5BE019E24FC:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"xinghuo-liaoyuan\":112,]),])','20190112173910',-696241001,NULL),('zhengdaodian','五龙山云霄洞','妙领天机_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":110,\\\"con\\\":110,\\\"str\\\":110,\\\"wiz\\\":110,]),54:100,52:20,53:200,50:60,51:46491,49:0,48:92140,45:80,46:0,47:300,44:110,42:440,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:46491,36:848,34:80,35:2,32:0,33::5C39B5B8019E245C:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:10,22:5260,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5219,17:1,16:7896,15:220,14:340,12:220,13:0,11:220,10:0,9:220,8:10482,7:12528258,6:0,5:40,3:9,2:92140,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":176,\\\"dishui-chuanshi\\\":176,\\\"yuhen-yunchou\\\":176,]),])\",]),\"me\":([\"gender\":2,\"life\":100408,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1002,\"family\":\"五龙山云霄洞\",\"con\":0,\"mana\":51699,\"str\":0,\"name\":\"五龙山云霄洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"妙领天机\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1725,\"icon\":7001,\"phy_absorb\":-20,\"no_capture\":1,\"money\":110,\"polar\":1,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":110,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":100408,\"exp\":330,\"power\":3198,\"resisit_earth\":0,\"max_mana\":51699,\"parry\":0,\"tao\":430762,\"phy_power\":7674,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7001,\"mag_power\":8634,]),\"carry\":([1:\"九转金刚刃:([233::5C39B5B8019E245B:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"daoguang-jianying\":176,]),])','20190112173904',1463499820,NULL),('zhengdaodian','五龙山云霄洞','妙领天机_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":110,\\\"con\\\":110,\\\"str\\\":110,\\\"wiz\\\":110,]),54:100,52:20,53:200,50:60,51:46491,49:0,48:92140,45:80,46:0,47:300,44:110,42:440,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:46491,36:848,34:80,35:2,32:0,33::5C39B5B8019E2459:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:10,22:5260,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5219,17:1,16:7896,15:220,14:340,12:220,13:0,11:220,10:0,9:220,8:13479,7:12528258,6:0,5:40,3:5,2:92140,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":176,\\\"dishui-chuanshi\\\":176,\\\"yuhen-yunchou\\\":176,]),])\",]),\"me\":([\"gender\":1,\"life\":103516,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1119,\"family\":\"五龙山云霄洞\",\"con\":0,\"mana\":51699,\"str\":0,\"name\":\"五龙山云霄洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"妙领天机\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1725,\"icon\":6001,\"phy_absorb\":-20,\"no_capture\":1,\"money\":110,\"polar\":1,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":110,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":103516,\"exp\":330,\"power\":2949,\"resisit_earth\":0,\"max_mana\":51699,\"parry\":0,\"tao\":444658,\"phy_power\":7077,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6001,\"mag_power\":7961,]),\"carry\":([1:\"九转金刚刃:([233::5C39B5B8019E2458:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"daoguang-jianying\":176,]),])','20190112173904',1273970115,NULL),('zhengdaodian','五龙山云霄洞','略通道行_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":60,\\\"con\\\":60,\\\"str\\\":60,\\\"wiz\\\":60,]),54:100,52:20,53:200,50:60,51:17115,49:0,48:33532,45:80,46:0,47:300,44:60,42:240,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:17115,36:488,34:30,35:2,32:0,33::5C39B5B9019E2473:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:6,22:2070,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2147,17:1,16:3188,15:120,14:340,12:120,13:0,11:120,10:0,9:120,8:13558,7:329015,6:0,5:40,3:1,2:33532,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":96,\\\"dishui-chuanshi\\\":96,\\\"yuhen-yunchou\\\":96,]),])\",]),\"me\":([\"gender\":2,\"life\":42200,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":556,\"family\":\"五龙山云霄洞\",\"con\":0,\"mana\":19863,\"str\":0,\"name\":\"五龙山云霄洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"略通道行\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":663,\"icon\":7001,\"phy_absorb\":-20,\"no_capture\":1,\"money\":60,\"polar\":1,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":60,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":42200,\"exp\":180,\"power\":1182,\"resisit_earth\":0,\"max_mana\":19863,\"parry\":0,\"tao\":78172,\"phy_power\":2836,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7001,\"mag_power\":3191,]),\"carry\":([1:\"寒风枪:([233::5C39B5B9019E2472:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"daoguang-jianying\":96,]),])','20190112173905',-700173147,NULL),('zhengdaodian','五龙山云霄洞','略通道行_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":60,\\\"con\\\":60,\\\"str\\\":60,\\\"wiz\\\":60,]),54:100,52:20,53:200,50:60,51:17115,49:0,48:33532,45:80,46:0,47:300,44:60,42:240,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:17115,36:488,34:30,35:2,32:0,33::5C39B5B9019E2470:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:4,22:2070,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2147,17:1,16:3188,15:120,14:340,12:120,13:0,11:120,10:0,9:120,8:12910,7:329015,6:0,5:40,3:0,2:33532,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":96,\\\"dishui-chuanshi\\\":96,\\\"yuhen-yunchou\\\":96,]),])\",]),\"me\":([\"gender\":1,\"life\":39412,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":654,\"family\":\"五龙山云霄洞\",\"con\":0,\"mana\":19863,\"str\":0,\"name\":\"五龙山云霄洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"略通道行\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":663,\"icon\":6001,\"phy_absorb\":-20,\"no_capture\":1,\"money\":60,\"polar\":1,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":60,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":39412,\"exp\":180,\"power\":1134,\"resisit_earth\":0,\"max_mana\":19863,\"parry\":0,\"tao\":67650,\"phy_power\":2721,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6001,\"mag_power\":3061,]),\"carry\":([1:\"寒风枪:([233::5C39B5B9019E246F:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"daoguang-jianying\":96,]),])','20190112173905',-1661979555,NULL),('zhengdaodian','五龙山云霄洞','新入道途_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":30,\\\"con\\\":30,\\\"str\\\":30,\\\"wiz\\\":30,]),54:100,52:20,53:200,50:60,51:5994,49:0,48:11844,45:80,46:0,47:300,44:30,42:120,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:5994,36:272,34:15,35:2,32:0,33::5C39B5B9019E247F:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:6,22:796,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:865,17:1,16:1248,15:60,14:340,12:60,13:0,11:60,10:0,9:60,8:10108,7:25730,6:0,5:40,3:10,2:11844,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":48,]),])\",]),\"me\":([\"gender\":2,\"life\":13436,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":325,\"family\":\"五龙山云霄洞\",\"con\":0,\"mana\":7458,\"str\":0,\"name\":\"五龙山云霄洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"新入道途\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":248,\"icon\":7001,\"phy_absorb\":-20,\"no_capture\":1,\"money\":30,\"polar\":1,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":30,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":13436,\"exp\":90,\"power\":447,\"resisit_earth\":0,\"max_mana\":7458,\"parry\":0,\"tao\":9582,\"phy_power\":1072,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7001,\"mag_power\":1206,]),\"carry\":([1:\"乌金枪:([233::5C39B5B9019E247E:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"daoguang-jianying\":48,]),])','20190112173905',1200080040,NULL),('zhengdaodian','五龙山云霄洞','新入道途_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":30,\\\"con\\\":30,\\\"str\\\":30,\\\"wiz\\\":30,]),54:100,52:20,53:200,50:60,51:5994,49:0,48:11844,45:80,46:0,47:300,44:30,42:120,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:5994,36:272,34:15,35:2,32:0,33::5C39B5B9019E247D:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:3,22:796,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:865,17:1,16:1248,15:60,14:340,12:60,13:0,11:60,10:0,9:60,8:12735,7:25730,6:0,5:40,3:0,2:11844,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":48,]),])\",]),\"me\":([\"gender\":1,\"life\":13736,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":322,\"family\":\"五龙山云霄洞\",\"con\":0,\"mana\":7458,\"str\":0,\"name\":\"五龙山云霄洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"新入道途\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":248,\"icon\":6001,\"phy_absorb\":-20,\"no_capture\":1,\"money\":30,\"polar\":1,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":30,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":13736,\"exp\":90,\"power\":429,\"resisit_earth\":0,\"max_mana\":7458,\"parry\":0,\"tao\":8642,\"phy_power\":1029,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6001,\"mag_power\":1157,]),\"carry\":([1:\"乌金枪:([233::5C39B5B9019E247C:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"daoguang-jianying\":48,]),])','20190112173905',-423574380,NULL),('zhengdaodian','五龙山云霄洞','小具法力_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":40,\\\"con\\\":40,\\\"str\\\":40,\\\"wiz\\\":40,]),54:100,52:20,53:200,50:60,51:9126,49:0,48:18088,45:80,46:0,47:300,44:40,42:160,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:9126,36:344,34:20,35:2,32:0,33::5C39B5B9019E247B:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:2,22:1168,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:1246,17:1,16:1820,15:80,14:340,12:80,13:0,11:80,10:0,9:80,8:14889,7:61690,6:0,5:40,3:5,2:18088,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":64,\\\"yuhen-yunchou\\\":64,]),])\",]),\"me\":([\"gender\":2,\"life\":20564,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":403,\"family\":\"五龙山云霄洞\",\"con\":0,\"mana\":11034,\"str\":0,\"name\":\"五龙山云霄洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"小具法力\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":368,\"icon\":7001,\"phy_absorb\":-20,\"no_capture\":1,\"money\":40,\"polar\":1,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":40,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":20564,\"exp\":120,\"power\":656,\"resisit_earth\":0,\"max_mana\":11034,\"parry\":0,\"tao\":21157,\"phy_power\":1573,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7001,\"mag_power\":1771,]),\"carry\":([1:\"火焰枪:([233::5C39B5B9019E247A:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"daoguang-jianying\":64,]),])','20190112173905',-692007083,NULL),('zhengdaodian','五龙山云霄洞','小具法力_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":40,\\\"con\\\":40,\\\"str\\\":40,\\\"wiz\\\":40,]),54:100,52:20,53:200,50:60,51:9126,49:0,48:18088,45:80,46:0,47:300,44:40,42:160,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:9126,36:344,34:20,35:2,32:0,33::5C39B5B9019E2479:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:2,22:1168,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:1246,17:1,16:1820,15:80,14:340,12:80,13:0,11:80,10:0,9:80,8:13834,7:61690,6:0,5:40,3:10,2:18088,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":64,\\\"yuhen-yunchou\\\":64,]),])\",]),\"me\":([\"gender\":1,\"life\":23884,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":451,\"family\":\"五龙山云霄洞\",\"con\":0,\"mana\":11034,\"str\":0,\"name\":\"五龙山云霄洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"小具法力\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":368,\"icon\":6001,\"phy_absorb\":-20,\"no_capture\":1,\"money\":40,\"polar\":1,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":40,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":23884,\"exp\":120,\"power\":643,\"resisit_earth\":0,\"max_mana\":11034,\"parry\":0,\"tao\":20934,\"phy_power\":1542,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6001,\"mag_power\":1735,]),\"carry\":([1:\"火焰枪:([233::5C39B5B9019E2478:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"daoguang-jianying\":64,]),])','20190112173905',719900443,NULL),('zhengdaodian','五龙山云霄洞','脱胎换骨_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":120,\\\"con\\\":120,\\\"str\\\":120,\\\"wiz\\\":120,]),54:100,52:20,53:200,50:60,51:54162,49:0,48:107400,45:80,46:0,47:300,44:120,42:480,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:54162,36:920,34:90,35:2,32:0,33::5C39B5B7019E2453:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:1,22:6059,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5973,17:1,16:9060,15:240,14:340,12:240,13:0,11:240,10:0,9:240,8:10555,7:18777120,6:0,5:40,3:2,2:107400,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":192,\\\"dishui-chuanshi\\\":192,\\\"yuhen-yunchou\\\":192,]),])\",]),\"me\":([\"gender\":2,\"life\":112416,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1179,\"family\":\"五龙山云霄洞\",\"con\":0,\"mana\":59739,\"str\":0,\"name\":\"五龙山云霄洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"脱胎换骨\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1993,\"icon\":7001,\"phy_absorb\":-20,\"no_capture\":1,\"money\":120,\"polar\":1,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":120,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":112416,\"exp\":360,\"power\":3658,\"resisit_earth\":0,\"max_mana\":59739,\"parry\":0,\"tao\":643436,\"phy_power\":8778,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7001,\"mag_power\":9876,]),\"carry\":([1:\"混元斩龙戟:([233::5C39B5B7019E2452:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"daoguang-jianying\":192,]),])','20190112173903',-987152542,NULL),('zhengdaodian','五龙山云霄洞','脱胎换骨_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":120,\\\"con\\\":120,\\\"str\\\":120,\\\"wiz\\\":120,]),54:100,52:20,53:200,50:60,51:54162,49:0,48:107400,45:80,46:0,47:300,44:120,42:480,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:54162,36:920,34:90,35:2,32:0,33::5C39B5B7019E2451:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:1,22:6059,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5973,17:1,16:9060,15:240,14:340,12:240,13:0,11:240,10:0,9:240,8:10408,7:18777120,6:0,5:40,3:1,2:107400,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":192,\\\"dishui-chuanshi\\\":192,\\\"yuhen-yunchou\\\":192,]),])\",]),\"me\":([\"gender\":1,\"life\":111220,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1146,\"family\":\"五龙山云霄洞\",\"con\":0,\"mana\":59739,\"str\":0,\"name\":\"五龙山云霄洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"脱胎换骨\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1993,\"icon\":6001,\"phy_absorb\":-20,\"no_capture\":1,\"money\":120,\"polar\":1,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":120,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":111220,\"exp\":360,\"power\":3587,\"resisit_earth\":0,\"max_mana\":59739,\"parry\":0,\"tao\":625395,\"phy_power\":8608,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6001,\"mag_power\":9684,]),\"carry\":([1:\"混元斩龙戟:([233::5C39B5B7019E2450:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"daoguang-jianying\":192,]),])','20190112173903',1168654184,NULL),('zhengdaodian','五龙山云霄洞','霞举飞升_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":130,\\\"con\\\":130,\\\"str\\\":130,\\\"wiz\\\":130,]),54:100,52:20,53:200,50:60,51:62409,49:0,48:123804,45:80,46:0,47:300,44:130,42:520,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:62409,36:992,34:100,35:2,32:0,33::5C39B5B8019E2460:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:10,22:6912,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:6776,17:1,16:10300,15:260,14:340,12:260,13:0,11:260,10:0,9:260,8:13517,7:66973140,6:0,5:40,3:2,2:123804,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":208,\\\"dishui-chuanshi\\\":208,\\\"yuhen-yunchou\\\":208,]),])\",]),\"me\":([\"gender\":2,\"life\":124468,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1309,\"family\":\"五龙山云霄洞\",\"con\":0,\"mana\":68340,\"str\":0,\"name\":\"五龙山云霄洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"霞举飞升\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":2279,\"icon\":7001,\"phy_absorb\":-20,\"no_capture\":1,\"money\":130,\"polar\":1,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":130,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":124468,\"exp\":390,\"power\":3897,\"resisit_earth\":0,\"max_mana\":68340,\"parry\":0,\"tao\":779845,\"phy_power\":9352,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7001,\"mag_power\":10521,]),\"carry\":([1:\"赤眼神龙枪:([233::5C39B5B8019E245F:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"daoguang-jianying\":208,]),])','20190112173904',921779642,NULL),('zhengdaodian','五龙山云霄洞','霞举飞升_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":130,\\\"con\\\":130,\\\"str\\\":130,\\\"wiz\\\":130,]),54:100,52:20,53:200,50:60,51:62409,49:0,48:123804,45:80,46:0,47:300,44:130,42:520,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:62409,36:992,34:100,35:2,32:0,33::5C39B5B8019E245E:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:1,22:6912,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:6776,17:1,16:10300,15:260,14:340,12:260,13:0,11:260,10:0,9:260,8:10687,7:66973140,6:0,5:40,3:7,2:123804,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":208,\\\"dishui-chuanshi\\\":208,\\\"yuhen-yunchou\\\":208,]),])\",]),\"me\":([\"gender\":1,\"life\":140880,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1161,\"family\":\"五龙山云霄洞\",\"con\":0,\"mana\":68340,\"str\":0,\"name\":\"五龙山云霄洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"霞举飞升\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":2279,\"icon\":6001,\"phy_absorb\":-20,\"no_capture\":1,\"money\":130,\"polar\":1,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":130,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":140880,\"exp\":390,\"power\":4185,\"resisit_earth\":0,\"max_mana\":68340,\"parry\":0,\"tao\":749263,\"phy_power\":10044,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6001,\"mag_power\":11298,]),\"carry\":([1:\"赤眼神龙枪:([233::5C39B5B8019E245D:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"daoguang-jianying\":208,]),])','20190112173904',-1794359972,NULL),('zhengdaodian','五龙山云霄洞','元神初具_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":80,\\\"con\\\":80,\\\"str\\\":80,\\\"wiz\\\":80,]),54:100,52:20,53:200,50:60,51:27405,49:0,48:53884,45:80,46:0,47:300,44:80,42:320,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:27405,36:632,34:50,35:2,32:0,33::5C39B5B8019E2469:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:7,22:3187,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3236,17:1,16:4848,15:160,14:340,12:160,13:0,11:160,10:0,9:160,8:13915,7:2655013,6:0,5:40,3:6,2:53884,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":128,\\\"dishui-chuanshi\\\":128,\\\"yuhen-yunchou\\\":128,]),])\",]),\"me\":([\"gender\":2,\"life\":56996,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":754,\"family\":\"五龙山云霄洞\",\"con\":0,\"mana\":30924,\"str\":0,\"name\":\"五龙山云霄洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"元神初具\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1032,\"icon\":7001,\"phy_absorb\":-20,\"no_capture\":1,\"money\":80,\"polar\":1,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":80,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":56996,\"exp\":240,\"power\":1895,\"resisit_earth\":0,\"max_mana\":30924,\"parry\":0,\"tao\":188864,\"phy_power\":4548,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7001,\"mag_power\":5115,]),\"carry\":([1:\"云龙枪:([233::5C39B5B8019E2468:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"daoguang-jianying\":128,]),])','20190112173904',-1382859808,NULL),('zhengdaodian','五龙山云霄洞','元神初具_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":80,\\\"con\\\":80,\\\"str\\\":80,\\\"wiz\\\":80,]),54:100,52:20,53:200,50:60,51:27405,49:0,48:53884,45:80,46:0,47:300,44:80,42:320,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:27405,36:632,34:50,35:2,32:0,33::5C39B5B8019E2467:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:7,22:3187,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3236,17:1,16:4848,15:160,14:340,12:160,13:0,11:160,10:0,9:160,8:10277,7:2655013,6:0,5:40,3:5,2:53884,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":128,\\\"dishui-chuanshi\\\":128,\\\"yuhen-yunchou\\\":128,]),])\",]),\"me\":([\"gender\":1,\"life\":56376,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":825,\"family\":\"五龙山云霄洞\",\"con\":0,\"mana\":30924,\"str\":0,\"name\":\"五龙山云霄洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"元神初具\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1032,\"icon\":6001,\"phy_absorb\":-20,\"no_capture\":1,\"money\":80,\"polar\":1,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":80,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":56376,\"exp\":240,\"power\":1802,\"resisit_earth\":0,\"max_mana\":30924,\"parry\":0,\"tao\":162138,\"phy_power\":4324,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6001,\"mag_power\":4865,]),\"carry\":([1:\"云龙枪:([233::5C39B5B8019E2466:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"daoguang-jianying\":128,]),])','20190112173904',694893521,NULL),('zhengdaodian','五龙山云霄洞','初领妙道_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":50,\\\"con\\\":50,\\\"str\\\":50,\\\"wiz\\\":50,]),54:100,52:20,53:200,50:60,51:12834,49:0,48:25076,45:80,46:0,47:300,44:50,42:200,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:12834,36:416,34:25,35:2,32:0,33::5C39B5B9019E2477:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:5,22:1592,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:1673,17:1,16:2468,15:100,14:340,12:100,13:0,11:100,10:0,9:100,8:11807,7:121350,6:0,5:40,3:7,2:25076,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":80,\\\"yuhen-yunchou\\\":80,]),])\",]),\"me\":([\"gender\":2,\"life\":31016,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":474,\"family\":\"五龙山云霄洞\",\"con\":0,\"mana\":15168,\"str\":0,\"name\":\"五龙山云霄洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"初领妙道\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":506,\"icon\":7001,\"phy_absorb\":-20,\"no_capture\":1,\"money\":50,\"polar\":1,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":50,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":31016,\"exp\":150,\"power\":930,\"resisit_earth\":0,\"max_mana\":15168,\"parry\":0,\"tao\":47413,\"phy_power\":2232,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7001,\"mag_power\":2511,]),\"carry\":([1:\"双头枪:([233::5C39B5B9019E2476:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"daoguang-jianying\":80,]),])','20190112173905',-129118883,NULL),('zhengdaodian','五龙山云霄洞','初领妙道_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":50,\\\"con\\\":50,\\\"str\\\":50,\\\"wiz\\\":50,]),54:100,52:20,53:200,50:60,51:12834,49:0,48:25076,45:80,46:0,47:300,44:50,42:200,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:12834,36:416,34:25,35:2,32:0,33::5C39B5B9019E2475:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:4,22:1592,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:1673,17:1,16:2468,15:100,14:340,12:100,13:0,11:100,10:0,9:100,8:12751,7:121350,6:0,5:40,3:10,2:25076,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":80,\\\"yuhen-yunchou\\\":80,]),])\",]),\"me\":([\"gender\":1,\"life\":28580,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":561,\"family\":\"五龙山云霄洞\",\"con\":0,\"mana\":15168,\"str\":0,\"name\":\"五龙山云霄洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"初领妙道\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":506,\"icon\":6001,\"phy_absorb\":-20,\"no_capture\":1,\"money\":50,\"polar\":1,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":50,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":28580,\"exp\":150,\"power\":939,\"resisit_earth\":0,\"max_mana\":15168,\"parry\":0,\"tao\":46543,\"phy_power\":2253,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6001,\"mag_power\":2534,]),\"carry\":([1:\"双头枪:([233::5C39B5B9019E2474:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"daoguang-jianying\":80,]),])','20190112173905',85209795,NULL),('zhengdaodian','五龙山云霄洞','道心稳固_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":90,\\\"con\\\":90,\\\"str\\\":90,\\\"wiz\\\":90,]),54:100,52:20,53:200,50:60,51:33411,49:0,48:65784,45:80,46:0,47:300,44:90,42:360,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:33411,36:704,34:60,35:2,32:0,33::5C39B5B8019E2465:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:1,22:3825,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3851,17:1,16:5788,15:180,14:340,12:180,13:0,11:180,10:0,9:180,8:12581,7:5030719,6:0,5:40,3:4,2:65784,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":144,\\\"dishui-chuanshi\\\":144,\\\"yuhen-yunchou\\\":144,]),])\",]),\"me\":([\"gender\":2,\"life\":72456,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":876,\"family\":\"五龙山云霄洞\",\"con\":0,\"mana\":37290,\"str\":0,\"name\":\"五龙山云霄洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"道心稳固\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1245,\"icon\":7001,\"phy_absorb\":-20,\"no_capture\":1,\"money\":90,\"polar\":1,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":90,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":72456,\"exp\":270,\"power\":2173,\"resisit_earth\":0,\"max_mana\":37290,\"parry\":0,\"tao\":251152,\"phy_power\":5214,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7001,\"mag_power\":5866,]),\"carry\":([1:\"蕴雷枪:([233::5C39B5B8019E2464:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"daoguang-jianying\":144,]),])','20190112173904',2104310512,NULL),('zhengdaodian','五龙山云霄洞','道心稳固_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":90,\\\"con\\\":90,\\\"str\\\":90,\\\"wiz\\\":90,]),54:100,52:20,53:200,50:60,51:33411,49:0,48:65784,45:80,46:0,47:300,44:90,42:360,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:33411,36:704,34:60,35:2,32:0,33::5C39B5B8019E2463:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:7,22:3825,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3851,17:1,16:5788,15:180,14:340,12:180,13:0,11:180,10:0,9:180,8:10764,7:5030719,6:0,5:40,3:6,2:65784,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":144,\\\"dishui-chuanshi\\\":144,\\\"yuhen-yunchou\\\":144,]),])\",]),\"me\":([\"gender\":1,\"life\":74700,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":910,\"family\":\"五龙山云霄洞\",\"con\":0,\"mana\":37290,\"str\":0,\"name\":\"五龙山云霄洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"道心稳固\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1245,\"icon\":6001,\"phy_absorb\":-20,\"no_capture\":1,\"money\":90,\"polar\":1,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":90,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":74700,\"exp\":270,\"power\":2241,\"resisit_earth\":0,\"max_mana\":37290,\"parry\":0,\"tao\":246079,\"phy_power\":5377,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6001,\"mag_power\":6049,]),\"carry\":([1:\"蕴雷枪:([233::5C39B5B8019E2462:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"daoguang-jianying\":144,]),])','20190112173904',1045510808,NULL),('zhengdaodian','五龙山云霄洞','道高德隆_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":100,\\\"con\\\":100,\\\"str\\\":100,\\\"wiz\\\":100,]),54:100,52:20,53:200,50:60,51:39393,49:0,48:78828,45:80,46:0,47:300,44:100,42:400,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:39393,36:776,34:70,35:2,32:0,33::5C39B5B8019E2457:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:6,22:4516,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:4512,17:1,16:6804,15:200,14:340,12:200,13:0,11:200,10:0,9:200,8:13876,7:8279872,6:0,5:40,3:2,2:78828,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":160,\\\"dishui-chuanshi\\\":160,\\\"yuhen-yunchou\\\":160,]),])\",]),\"me\":([\"gender\":2,\"life\":89436,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":927,\"family\":\"五龙山云霄洞\",\"con\":0,\"mana\":44214,\"str\":0,\"name\":\"五龙山云霄洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"道高德隆\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1475,\"icon\":7001,\"phy_absorb\":-20,\"no_capture\":1,\"money\":100,\"polar\":1,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":100,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":89436,\"exp\":300,\"power\":2629,\"resisit_earth\":0,\"max_mana\":44214,\"parry\":0,\"tao\":372357,\"phy_power\":6309,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7001,\"mag_power\":7097,]),\"carry\":([1:\"风火游龙枪:([233::5C39B5B8019E2456:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"daoguang-jianying\":160,]),])','20190112173904',-198885726,NULL),('zhengdaodian','五龙山云霄洞','道高德隆_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":100,\\\"con\\\":100,\\\"str\\\":100,\\\"wiz\\\":100,]),54:100,52:20,53:200,50:60,51:39393,49:0,48:78828,45:80,46:0,47:300,44:100,42:400,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:39393,36:776,34:70,35:2,32:0,33::5C39B5B7019E2455:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:1,22:4516,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:4512,17:1,16:6804,15:200,14:340,12:200,13:0,11:200,10:0,9:200,8:10910,7:8279872,6:0,5:40,3:3,2:78828,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":160,\\\"dishui-chuanshi\\\":160,\\\"yuhen-yunchou\\\":160,]),])\",]),\"me\":([\"gender\":1,\"life\":92976,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":907,\"family\":\"五龙山云霄洞\",\"con\":0,\"mana\":44214,\"str\":0,\"name\":\"五龙山云霄洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"道高德隆\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1475,\"icon\":6001,\"phy_absorb\":-20,\"no_capture\":1,\"money\":100,\"polar\":1,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":100,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":92976,\"exp\":300,\"power\":2735,\"resisit_earth\":0,\"max_mana\":44214,\"parry\":0,\"tao\":330598,\"phy_power\":6564,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6001,\"mag_power\":7383,]),\"carry\":([1:\"风火游龙枪:([233::5C39B5B7019E2454:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"daoguang-jianying\":160,]),])','20190112173903',1951547064,NULL),('zhengdaodian','五龙山云霄洞','渐入佳境_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":70,\\\"con\\\":70,\\\"str\\\":70,\\\"wiz\\\":70,]),54:100,52:20,53:200,50:60,51:21972,49:0,48:43136,45:80,46:0,47:300,44:70,42:280,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:21972,36:560,34:40,35:2,32:0,33::5C39B5B8019E246E:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:9,22:2601,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2668,17:1,16:3980,15:140,14:340,12:140,13:0,11:140,10:0,9:140,8:11227,7:1026963,6:0,5:40,3:9,2:43136,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":112,\\\"dishui-chuanshi\\\":112,\\\"yuhen-yunchou\\\":112,]),])\",]),\"me\":([\"gender\":2,\"life\":45292,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":702,\"family\":\"五龙山云霄洞\",\"con\":0,\"mana\":25113,\"str\":0,\"name\":\"五龙山云霄洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"渐入佳境\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":838,\"icon\":7001,\"phy_absorb\":-20,\"no_capture\":1,\"money\":70,\"polar\":1,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":70,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":45292,\"exp\":210,\"power\":1433,\"resisit_earth\":0,\"max_mana\":25113,\"parry\":0,\"tao\":107426,\"phy_power\":3438,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7001,\"mag_power\":3868,]),\"carry\":([1:\"暴雨梨花枪:([233::5C39B5B8019E246D:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"daoguang-jianying\":112,]),])','20190112173904',688142446,NULL),('zhengdaodian','五龙山云霄洞','渐入佳境_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":70,\\\"con\\\":70,\\\"str\\\":70,\\\"wiz\\\":70,]),54:100,52:20,53:200,50:60,51:21972,49:0,48:43136,45:80,46:0,47:300,44:70,42:280,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:21972,36:560,34:40,35:2,32:0,33::5C39B5B8019E246C:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:5,22:2601,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2668,17:1,16:3980,15:140,14:340,12:140,13:0,11:140,10:0,9:140,8:13310,7:1026963,6:0,5:40,3:7,2:43136,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":112,\\\"dishui-chuanshi\\\":112,\\\"yuhen-yunchou\\\":112,]),])\",]),\"me\":([\"gender\":1,\"life\":54352,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":715,\"family\":\"五龙山云霄洞\",\"con\":0,\"mana\":25113,\"str\":0,\"name\":\"五龙山云霄洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"渐入佳境\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":838,\"icon\":6001,\"phy_absorb\":-20,\"no_capture\":1,\"money\":70,\"polar\":1,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":70,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":54352,\"exp\":210,\"power\":1509,\"resisit_earth\":0,\"max_mana\":25113,\"parry\":0,\"tao\":121749,\"phy_power\":3621,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6001,\"mag_power\":4073,]),\"carry\":([1:\"暴雨梨花枪:([233::5C39B5B8019E246B:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"daoguang-jianying\":112,]),])','20190112173904',-1117439894,NULL),('zhengdaodian','终南山玉柱洞','妙领天机_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":110,\\\"con\\\":110,\\\"str\\\":110,\\\"wiz\\\":110,]),54:100,52:20,53:200,50:60,51:46491,49:0,48:92140,45:80,46:0,47:300,44:110,42:440,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:46491,36:848,34:80,35:2,32:0,33::5C39B5BB019E24BD:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:1,22:5260,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5219,17:1,16:7896,15:220,14:340,12:220,13:0,11:220,10:0,9:220,8:14596,7:12528258,6:0,5:40,3:2,2:92140,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":176,\\\"dishui-chuanshi\\\":176,\\\"yuhen-yunchou\\\":176,]),])\",]),\"me\":([\"gender\":2,\"life\":102480,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1119,\"family\":\"终南山玉柱洞\",\"con\":0,\"mana\":51699,\"str\":0,\"name\":\"终南山玉柱洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"妙领天机\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1725,\"icon\":6002,\"phy_absorb\":-20,\"no_capture\":1,\"money\":110,\"polar\":2,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":110,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":102480,\"exp\":330,\"power\":3011,\"resisit_earth\":0,\"max_mana\":51699,\"parry\":0,\"tao\":430762,\"phy_power\":7225,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6002,\"mag_power\":8128,]),\"carry\":([1:\"七巧玲珑爪:([233::5C39B5BB019E24BC:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"feiliu-xianshi\":176,]),])','20190112173907',-1918288694,NULL),('zhengdaodian','终南山玉柱洞','妙领天机_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":110,\\\"con\\\":110,\\\"str\\\":110,\\\"wiz\\\":110,]),54:100,52:20,53:200,50:60,51:46491,49:0,48:92140,45:80,46:0,47:300,44:110,42:440,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:46491,36:848,34:80,35:2,32:0,33::5C39B5BB019E24BB:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:5,22:5260,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5219,17:1,16:7896,15:220,14:340,12:220,13:0,11:220,10:0,9:220,8:11153,7:12528258,6:0,5:40,3:10,2:92140,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":176,\\\"dishui-chuanshi\\\":176,\\\"yuhen-yunchou\\\":176,]),])\",]),\"me\":([\"gender\":1,\"life\":95232,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1150,\"family\":\"终南山玉柱洞\",\"con\":0,\"mana\":51699,\"str\":0,\"name\":\"终南山玉柱洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"妙领天机\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1725,\"icon\":7002,\"phy_absorb\":-20,\"no_capture\":1,\"money\":110,\"polar\":2,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":110,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":95232,\"exp\":330,\"power\":3167,\"resisit_earth\":0,\"max_mana\":51699,\"parry\":0,\"tao\":421498,\"phy_power\":7600,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7002,\"mag_power\":8550,]),\"carry\":([1:\"七巧玲珑爪:([233::5C39B5BB019E24BA:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"feiliu-xianshi\":176,]),])','20190112173907',1082015538,NULL),('zhengdaodian','终南山玉柱洞','略通道行_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":60,\\\"con\\\":60,\\\"str\\\":60,\\\"wiz\\\":60,]),54:100,52:20,53:200,50:60,51:17115,49:0,48:33532,45:80,46:0,47:300,44:60,42:240,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:17115,36:488,34:30,35:2,32:0,33::5C39B5BC019E24D4:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:2,22:2070,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2147,17:1,16:3188,15:120,14:340,12:120,13:0,11:120,10:0,9:120,8:14222,7:329015,6:0,5:40,3:0,2:33532,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":96,\\\"dishui-chuanshi\\\":96,\\\"yuhen-yunchou\\\":96,]),])\",]),\"me\":([\"gender\":2,\"life\":38616,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":606,\"family\":\"终南山玉柱洞\",\"con\":0,\"mana\":19863,\"str\":0,\"name\":\"终南山玉柱洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"略通道行\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":663,\"icon\":6002,\"phy_absorb\":-20,\"no_capture\":1,\"money\":60,\"polar\":2,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":60,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":38616,\"exp\":180,\"power\":1182,\"resisit_earth\":0,\"max_mana\":19863,\"parry\":0,\"tao\":75166,\"phy_power\":2836,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6002,\"mag_power\":3191,]),\"carry\":([1:\"骷髅爪:([233::5C39B5BC019E24D3:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"feiliu-xianshi\":96,]),])','20190112173908',-2136197339,NULL),('zhengdaodian','终南山玉柱洞','略通道行_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":60,\\\"con\\\":60,\\\"str\\\":60,\\\"wiz\\\":60,]),54:100,52:20,53:200,50:60,51:17115,49:0,48:33532,45:80,46:0,47:300,44:60,42:240,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:17115,36:488,34:30,35:2,32:0,33::5C39B5BC019E24D1:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:2,22:2070,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2147,17:1,16:3188,15:120,14:340,12:120,13:0,11:120,10:0,9:120,8:13281,7:329015,6:0,5:40,3:0,2:33532,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":96,\\\"dishui-chuanshi\\\":96,\\\"yuhen-yunchou\\\":96,]),])\",]),\"me\":([\"gender\":1,\"life\":39412,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":612,\"family\":\"终南山玉柱洞\",\"con\":0,\"mana\":19863,\"str\":0,\"name\":\"终南山玉柱洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"略通道行\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":663,\"icon\":7002,\"phy_absorb\":-20,\"no_capture\":1,\"money\":60,\"polar\":2,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":60,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":39412,\"exp\":180,\"power\":1229,\"resisit_earth\":0,\"max_mana\":19863,\"parry\":0,\"tao\":75918,\"phy_power\":2949,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7002,\"mag_power\":3317,]),\"carry\":([1:\"骷髅爪:([233::5C39B5BC019E24D0:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"feiliu-xianshi\":96,]),])','20190112173908',1195848902,NULL),('zhengdaodian','终南山玉柱洞','新入道途_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":30,\\\"con\\\":30,\\\"str\\\":30,\\\"wiz\\\":30,]),54:100,52:20,53:200,50:60,51:5994,49:0,48:11844,45:80,46:0,47:300,44:30,42:120,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:5994,36:272,34:15,35:2,32:0,33::5C39B5BD019E24E1:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:7,22:796,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:865,17:1,16:1248,15:60,14:340,12:60,13:0,11:60,10:0,9:60,8:12217,7:25730,6:0,5:40,3:1,2:11844,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":48,]),])\",]),\"me\":([\"gender\":2,\"life\":13736,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":312,\"family\":\"终南山玉柱洞\",\"con\":0,\"mana\":7458,\"str\":0,\"name\":\"终南山玉柱洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"新入道途\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":248,\"icon\":6002,\"phy_absorb\":-20,\"no_capture\":1,\"money\":30,\"polar\":2,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":30,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":13736,\"exp\":90,\"power\":438,\"resisit_earth\":0,\"max_mana\":7458,\"parry\":0,\"tao\":9957,\"phy_power\":1050,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6002,\"mag_power\":1182,]),\"carry\":([1:\"残青爪:([233::5C39B5BD019E24E0:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"feiliu-xianshi\":48,]),])','20190112173909',2092942900,NULL),('zhengdaodian','终南山玉柱洞','新入道途_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":30,\\\"con\\\":30,\\\"str\\\":30,\\\"wiz\\\":30,]),54:100,52:20,53:200,50:60,51:5994,49:0,48:11844,45:80,46:0,47:300,44:30,42:120,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:5994,36:272,34:15,35:2,32:0,33::5C39B5BD019E24DF:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:3,22:796,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:865,17:1,16:1248,15:60,14:340,12:60,13:0,11:60,10:0,9:60,8:10172,7:25730,6:0,5:40,3:6,2:11844,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":48,]),])\",]),\"me\":([\"gender\":1,\"life\":15080,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":318,\"family\":\"终南山玉柱洞\",\"con\":0,\"mana\":7458,\"str\":0,\"name\":\"终南山玉柱洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"新入道途\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":248,\"icon\":7002,\"phy_absorb\":-20,\"no_capture\":1,\"money\":30,\"polar\":2,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":30,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":15080,\"exp\":90,\"power\":464,\"resisit_earth\":0,\"max_mana\":7458,\"parry\":0,\"tao\":8548,\"phy_power\":1113,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7002,\"mag_power\":1252,]),\"carry\":([1:\"残青爪:([233::5C39B5BD019E24DE:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"feiliu-xianshi\":48,]),])','20190112173909',1195886585,NULL),('zhengdaodian','终南山玉柱洞','小具法力_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":40,\\\"con\\\":40,\\\"str\\\":40,\\\"wiz\\\":40,]),54:100,52:20,53:200,50:60,51:9126,49:0,48:18088,45:80,46:0,47:300,44:40,42:160,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:9126,36:344,34:20,35:2,32:0,33::5C39B5BD019E24DD:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:9,22:1168,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:1246,17:1,16:1820,15:80,14:340,12:80,13:0,11:80,10:0,9:80,8:12329,7:61690,6:0,5:40,3:6,2:18088,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":64,\\\"yuhen-yunchou\\\":64,]),])\",]),\"me\":([\"gender\":2,\"life\":22776,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":399,\"family\":\"终南山玉柱洞\",\"con\":0,\"mana\":11034,\"str\":0,\"name\":\"终南山玉柱洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"小具法力\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":368,\"icon\":6002,\"phy_absorb\":-20,\"no_capture\":1,\"money\":40,\"polar\":2,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":40,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":22776,\"exp\":120,\"power\":689,\"resisit_earth\":0,\"max_mana\":11034,\"parry\":0,\"tao\":20488,\"phy_power\":1653,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6002,\"mag_power\":1859,]),\"carry\":([1:\"阴风爪:([233::5C39B5BD019E24DC:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"feiliu-xianshi\":64,]),])','20190112173909',-966078952,NULL),('zhengdaodian','终南山玉柱洞','小具法力_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":40,\\\"con\\\":40,\\\"str\\\":40,\\\"wiz\\\":40,]),54:100,52:20,53:200,50:60,51:9126,49:0,48:18088,45:80,46:0,47:300,44:40,42:160,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:9126,36:344,34:20,35:2,32:0,33::5C39B5BD019E24DB:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:8,22:1168,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:1246,17:1,16:1820,15:80,14:340,12:80,13:0,11:80,10:0,9:80,8:13242,7:61690,6:0,5:40,3:9,2:18088,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":64,\\\"yuhen-yunchou\\\":64,]),])\",]),\"me\":([\"gender\":1,\"life\":21892,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":396,\"family\":\"终南山玉柱洞\",\"con\":0,\"mana\":11034,\"str\":0,\"name\":\"终南山玉柱洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"小具法力\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":368,\"icon\":7002,\"phy_absorb\":-20,\"no_capture\":1,\"money\":40,\"polar\":2,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":40,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":21892,\"exp\":120,\"power\":643,\"resisit_earth\":0,\"max_mana\":11034,\"parry\":0,\"tao\":24274,\"phy_power\":1542,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7002,\"mag_power\":1735,]),\"carry\":([1:\"阴风爪:([233::5C39B5BD019E24DA:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"feiliu-xianshi\":64,]),])','20190112173909',-1347301861,NULL),('zhengdaodian','终南山玉柱洞','脱胎换骨_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":120,\\\"con\\\":120,\\\"str\\\":120,\\\"wiz\\\":120,]),54:100,52:20,53:200,50:60,51:54162,49:0,48:107400,45:80,46:0,47:300,44:120,42:480,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:54162,36:920,34:90,35:2,32:0,33::5C39B5BB019E24B5:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:5,22:6059,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5973,17:1,16:9060,15:240,14:340,12:240,13:0,11:240,10:0,9:240,8:12660,7:18777120,6:0,5:40,3:5,2:107400,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":192,\\\"dishui-chuanshi\\\":192,\\\"yuhen-yunchou\\\":192,]),])\",]),\"me\":([\"gender\":2,\"life\":127960,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1146,\"family\":\"终南山玉柱洞\",\"con\":0,\"mana\":59739,\"str\":0,\"name\":\"终南山玉柱洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"脱胎换骨\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1993,\"icon\":6002,\"phy_absorb\":-20,\"no_capture\":1,\"money\":120,\"polar\":2,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":120,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":127960,\"exp\":360,\"power\":3658,\"resisit_earth\":0,\"max_mana\":59739,\"parry\":0,\"tao\":643436,\"phy_power\":8778,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6002,\"mag_power\":9876,]),\"carry\":([1:\"镇魂摄天刺:([233::5C39B5BB019E24B4:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"feiliu-xianshi\":192,]),])','20190112173907',-472563735,NULL),('zhengdaodian','终南山玉柱洞','脱胎换骨_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":120,\\\"con\\\":120,\\\"str\\\":120,\\\"wiz\\\":120,]),54:100,52:20,53:200,50:60,51:54162,49:0,48:107400,45:80,46:0,47:300,44:120,42:480,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:54162,36:920,34:90,35:2,32:0,33::5C39B5BB019E24B3:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:10,22:6059,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5973,17:1,16:9060,15:240,14:340,12:240,13:0,11:240,10:0,9:240,8:14171,7:18777120,6:0,5:40,3:8,2:107400,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":192,\\\"dishui-chuanshi\\\":192,\\\"yuhen-yunchou\\\":192,]),])\",]),\"me\":([\"gender\":1,\"life\":117200,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1111,\"family\":\"终南山玉柱洞\",\"con\":0,\"mana\":59739,\"str\":0,\"name\":\"终南山玉柱洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"脱胎换骨\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1993,\"icon\":7002,\"phy_absorb\":-20,\"no_capture\":1,\"money\":120,\"polar\":2,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":120,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":117200,\"exp\":360,\"power\":3443,\"resisit_earth\":0,\"max_mana\":59739,\"parry\":0,\"tao\":553234,\"phy_power\":8262,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7002,\"mag_power\":9295,]),\"carry\":([1:\"镇魂摄天刺:([233::5C39B5BB019E24B2:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"feiliu-xianshi\":192,]),])','20190112173907',-1241694210,NULL),('zhengdaodian','终南山玉柱洞','霞举飞升_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":130,\\\"con\\\":130,\\\"str\\\":130,\\\"wiz\\\":130,]),54:100,52:20,53:200,50:60,51:62409,49:0,48:123804,45:80,46:0,47:300,44:130,42:520,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:62409,36:992,34:100,35:2,32:0,33::5C39B5BC019E24C1:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:10,22:6912,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:6776,17:1,16:10300,15:260,14:340,12:260,13:0,11:260,10:0,9:260,8:10032,7:66973140,6:0,5:40,3:6,2:123804,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":208,\\\"dishui-chuanshi\\\":208,\\\"yuhen-yunchou\\\":208,]),])\",]),\"me\":([\"gender\":2,\"life\":131308,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1222,\"family\":\"终南山玉柱洞\",\"con\":0,\"mana\":68340,\"str\":0,\"name\":\"终南山玉柱洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"霞举飞升\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":2279,\"icon\":6002,\"phy_absorb\":-20,\"no_capture\":1,\"money\":130,\"polar\":2,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":130,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":131308,\"exp\":390,\"power\":3897,\"resisit_earth\":0,\"max_mana\":68340,\"parry\":0,\"tao\":718681,\"phy_power\":9352,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6002,\"mag_power\":10521,]),\"carry\":([1:\"红绫火毒爪:([233::5C39B5BC019E24C0:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"feiliu-xianshi\":208,]),])','20190112173908',961888032,NULL),('zhengdaodian','终南山玉柱洞','霞举飞升_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":130,\\\"con\\\":130,\\\"str\\\":130,\\\"wiz\\\":130,]),54:100,52:20,53:200,50:60,51:62409,49:0,48:123804,45:80,46:0,47:300,44:130,42:520,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:62409,36:992,34:100,35:2,32:0,33::5C39B5BB019E24BF:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:6,22:6912,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:6776,17:1,16:10300,15:260,14:340,12:260,13:0,11:260,10:0,9:260,8:13911,7:66973140,6:0,5:40,3:1,2:123804,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":208,\\\"dishui-chuanshi\\\":208,\\\"yuhen-yunchou\\\":208,]),])\",]),\"me\":([\"gender\":1,\"life\":136780,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1321,\"family\":\"终南山玉柱洞\",\"con\":0,\"mana\":68340,\"str\":0,\"name\":\"终南山玉柱洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"霞举飞升\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":2279,\"icon\":7002,\"phy_absorb\":-20,\"no_capture\":1,\"money\":130,\"polar\":2,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":130,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":136780,\"exp\":390,\"power\":4103,\"resisit_earth\":0,\"max_mana\":68340,\"parry\":0,\"tao\":764554,\"phy_power\":9846,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7002,\"mag_power\":11077,]),\"carry\":([1:\"红绫火毒爪:([233::5C39B5BB019E24BE:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"feiliu-xianshi\":208,]),])','20190112173907',610024657,NULL),('zhengdaodian','终南山玉柱洞','元神初具_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":80,\\\"con\\\":80,\\\"str\\\":80,\\\"wiz\\\":80,]),54:100,52:20,53:200,50:60,51:27405,49:0,48:53884,45:80,46:0,47:300,44:80,42:320,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:27405,36:632,34:50,35:2,32:0,33::5C39B5BC019E24CB:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:10,22:3187,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3236,17:1,16:4848,15:160,14:340,12:160,13:0,11:160,10:0,9:160,8:12207,7:2655013,6:0,5:40,3:10,2:53884,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":128,\\\"dishui-chuanshi\\\":128,\\\"yuhen-yunchou\\\":128,]),])\",]),\"me\":([\"gender\":2,\"life\":62572,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":754,\"family\":\"终南山玉柱洞\",\"con\":0,\"mana\":30924,\"str\":0,\"name\":\"终南山玉柱洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"元神初具\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1032,\"icon\":6002,\"phy_absorb\":-20,\"no_capture\":1,\"money\":80,\"polar\":2,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":80,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":62572,\"exp\":240,\"power\":1858,\"resisit_earth\":0,\"max_mana\":30924,\"parry\":0,\"tao\":176392,\"phy_power\":4458,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6002,\"mag_power\":5016,]),\"carry\":([1:\"噬魂魔爪:([233::5C39B5BC019E24CA:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"feiliu-xianshi\":128,]),])','20190112173908',-724747513,NULL),('zhengdaodian','终南山玉柱洞','元神初具_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":80,\\\"con\\\":80,\\\"str\\\":80,\\\"wiz\\\":80,]),54:100,52:20,53:200,50:60,51:27405,49:0,48:53884,45:80,46:0,47:300,44:80,42:320,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:27405,36:632,34:50,35:2,32:0,33::5C39B5BC019E24C8:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:7,22:3187,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3236,17:1,16:4848,15:160,14:340,12:160,13:0,11:160,10:0,9:160,8:11403,7:2655013,6:0,5:40,3:2,2:53884,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":128,\\\"dishui-chuanshi\\\":128,\\\"yuhen-yunchou\\\":128,]),])\",]),\"me\":([\"gender\":1,\"life\":66912,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":738,\"family\":\"终南山玉柱洞\",\"con\":0,\"mana\":30924,\"str\":0,\"name\":\"终南山玉柱洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"元神初具\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1032,\"icon\":7002,\"phy_absorb\":-20,\"no_capture\":1,\"money\":80,\"polar\":2,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":80,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":66912,\"exp\":240,\"power\":1765,\"resisit_earth\":0,\"max_mana\":30924,\"parry\":0,\"tao\":194210,\"phy_power\":4236,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7002,\"mag_power\":4764,]),\"carry\":([1:\"噬魂魔爪:([233::5C39B5BC019E24C7:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"feiliu-xianshi\":128,]),])','20190112173908',-1752220742,NULL),('zhengdaodian','终南山玉柱洞','初领妙道_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":50,\\\"con\\\":50,\\\"str\\\":50,\\\"wiz\\\":50,]),54:100,52:20,53:200,50:60,51:12834,49:0,48:25076,45:80,46:0,47:300,44:50,42:200,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:12834,36:416,34:25,35:2,32:0,33::5C39B5BC019E24D8:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:1,22:1592,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:1673,17:1,16:2468,15:100,14:340,12:100,13:0,11:100,10:0,9:100,8:13298,7:121350,6:0,5:40,3:10,2:25076,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":80,\\\"yuhen-yunchou\\\":80,]),])\",]),\"me\":([\"gender\":2,\"life\":27668,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":546,\"family\":\"终南山玉柱洞\",\"con\":0,\"mana\":15168,\"str\":0,\"name\":\"终南山玉柱洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"初领妙道\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":506,\"icon\":6002,\"phy_absorb\":-20,\"no_capture\":1,\"money\":50,\"polar\":2,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":50,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":27668,\"exp\":150,\"power\":939,\"resisit_earth\":0,\"max_mana\":15168,\"parry\":0,\"tao\":46977,\"phy_power\":2253,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6002,\"mag_power\":2534,]),\"carry\":([1:\"寒冰刺:([233::5C39B5BC019E24D7:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"feiliu-xianshi\":80,]),])','20190112173908',1614138854,NULL),('zhengdaodian','终南山玉柱洞','初领妙道_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":50,\\\"con\\\":50,\\\"str\\\":50,\\\"wiz\\\":50,]),54:100,52:20,53:200,50:60,51:12834,49:0,48:25076,45:80,46:0,47:300,44:50,42:200,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:12834,36:416,34:25,35:2,32:0,33::5C39B5BC019E24D6:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:6,22:1592,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:1673,17:1,16:2468,15:100,14:340,12:100,13:0,11:100,10:0,9:100,8:10551,7:121350,6:0,5:40,3:5,2:25076,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":80,\\\"yuhen-yunchou\\\":80,]),])\",]),\"me\":([\"gender\":1,\"life\":29492,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":469,\"family\":\"终南山玉柱洞\",\"con\":0,\"mana\":15168,\"str\":0,\"name\":\"终南山玉柱洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"初领妙道\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":506,\"icon\":7002,\"phy_absorb\":-20,\"no_capture\":1,\"money\":50,\"polar\":2,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":50,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":29492,\"exp\":150,\"power\":884,\"resisit_earth\":0,\"max_mana\":15168,\"parry\":0,\"tao\":39148,\"phy_power\":2121,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7002,\"mag_power\":2386,]),\"carry\":([1:\"寒冰刺:([233::5C39B5BC019E24D5:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"feiliu-xianshi\":80,]),])','20190112173908',-1556623930,NULL),('zhengdaodian','终南山玉柱洞','道心稳固_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":90,\\\"con\\\":90,\\\"str\\\":90,\\\"wiz\\\":90,]),54:100,52:20,53:200,50:60,51:33411,49:0,48:65784,45:80,46:0,47:300,44:90,42:360,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:33411,36:704,34:60,35:2,32:0,33::5C39B5BC019E24C6:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:4,22:3825,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3851,17:1,16:5788,15:180,14:340,12:180,13:0,11:180,10:0,9:180,8:12302,7:5030719,6:0,5:40,3:9,2:65784,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":144,\\\"dishui-chuanshi\\\":144,\\\"yuhen-yunchou\\\":144,]),])\",]),\"me\":([\"gender\":2,\"life\":76192,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":876,\"family\":\"终南山玉柱洞\",\"con\":0,\"mana\":37290,\"str\":0,\"name\":\"终南山玉柱洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"道心稳固\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1245,\"icon\":6002,\"phy_absorb\":-20,\"no_capture\":1,\"money\":90,\"polar\":2,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":90,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":76192,\"exp\":270,\"power\":2218,\"resisit_earth\":0,\"max_mana\":37290,\"parry\":0,\"tao\":228321,\"phy_power\":5322,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6002,\"mag_power\":5988,]),\"carry\":([1:\"拂兰指:([233::5C39B5BC019E24C5:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"feiliu-xianshi\":144,]),])','20190112173908',-1009437291,NULL),('zhengdaodian','终南山玉柱洞','道心稳固_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":90,\\\"con\\\":90,\\\"str\\\":90,\\\"wiz\\\":90,]),54:100,52:20,53:200,50:60,51:33411,49:0,48:65784,45:80,46:0,47:300,44:90,42:360,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:33411,36:704,34:60,35:2,32:0,33::5C39B5BC019E24C4:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:10,22:3825,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3851,17:1,16:5788,15:180,14:340,12:180,13:0,11:180,10:0,9:180,8:14097,7:5030719,6:0,5:40,3:3,2:65784,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":144,\\\"dishui-chuanshi\\\":144,\\\"yuhen-yunchou\\\":144,]),])\",]),\"me\":([\"gender\":1,\"life\":76192,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":883,\"family\":\"终南山玉柱洞\",\"con\":0,\"mana\":37290,\"str\":0,\"name\":\"终南山玉柱洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"道心稳固\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1245,\"icon\":7002,\"phy_absorb\":-20,\"no_capture\":1,\"money\":90,\"polar\":2,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":90,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":76192,\"exp\":270,\"power\":2128,\"resisit_earth\":0,\"max_mana\":37290,\"parry\":0,\"tao\":266374,\"phy_power\":5106,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7002,\"mag_power\":5745,]),\"carry\":([1:\"拂兰指:([233::5C39B5BC019E24C3:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"feiliu-xianshi\":144,]),])','20190112173908',370095460,NULL),('zhengdaodian','终南山玉柱洞','道高德隆_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":100,\\\"con\\\":100,\\\"str\\\":100,\\\"wiz\\\":100,]),54:100,52:20,53:200,50:60,51:39393,49:0,48:78828,45:80,46:0,47:300,44:100,42:400,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:39393,36:776,34:70,35:2,32:0,33::5C39B5BB019E24B9:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:2,22:4516,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:4512,17:1,16:6804,15:200,14:340,12:200,13:0,11:200,10:0,9:200,8:13758,7:8279872,6:0,5:40,3:10,2:78828,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":160,\\\"dishui-chuanshi\\\":160,\\\"yuhen-yunchou\\\":160,]),])\",]),\"me\":([\"gender\":2,\"life\":91208,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":946,\"family\":\"终南山玉柱洞\",\"con\":0,\"mana\":44214,\"str\":0,\"name\":\"终南山玉柱洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"道高德隆\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1475,\"icon\":6002,\"phy_absorb\":-20,\"no_capture\":1,\"money\":100,\"polar\":2,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":100,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":91208,\"exp\":300,\"power\":2735,\"resisit_earth\":0,\"max_mana\":44214,\"parry\":0,\"tao\":327118,\"phy_power\":6564,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6002,\"mag_power\":7383,]),\"carry\":([1:\"啼血爪:([233::5C39B5BB019E24B8:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"feiliu-xianshi\":160,]),])','20190112173907',-1519043876,NULL),('zhengdaodian','终南山玉柱洞','道高德隆_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":100,\\\"con\\\":100,\\\"str\\\":100,\\\"wiz\\\":100,]),54:100,52:20,53:200,50:60,51:39393,49:0,48:78828,45:80,46:0,47:300,44:100,42:400,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:39393,36:776,34:70,35:2,32:0,33::5C39B5BB019E24B7:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:9,22:4516,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:4512,17:1,16:6804,15:200,14:340,12:200,13:0,11:200,10:0,9:200,8:14480,7:8279872,6:0,5:40,3:8,2:78828,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":160,\\\"dishui-chuanshi\\\":160,\\\"yuhen-yunchou\\\":160,]),])\",]),\"me\":([\"gender\":1,\"life\":96520,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":966,\"family\":\"终南山玉柱洞\",\"con\":0,\"mana\":44214,\"str\":0,\"name\":\"终南山玉柱洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"道高德隆\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1475,\"icon\":7002,\"phy_absorb\":-20,\"no_capture\":1,\"money\":100,\"polar\":2,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":100,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":96520,\"exp\":300,\"power\":2709,\"resisit_earth\":0,\"max_mana\":44214,\"parry\":0,\"tao\":354957,\"phy_power\":6501,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7002,\"mag_power\":7313,]),\"carry\":([1:\"啼血爪:([233::5C39B5BB019E24B6:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"feiliu-xianshi\":160,]),])','20190112173907',589052613,NULL),('zhengdaodian','终南山玉柱洞','渐入佳境_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":70,\\\"con\\\":70,\\\"str\\\":70,\\\"wiz\\\":70,]),54:100,52:20,53:200,50:60,51:21972,49:0,48:43136,45:80,46:0,47:300,44:70,42:280,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:21972,36:560,34:40,35:2,32:0,33::5C39B5BC019E24CF:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:0,22:2601,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2668,17:1,16:3980,15:140,14:340,12:140,13:0,11:140,10:0,9:140,8:10226,7:1026963,6:0,5:40,3:5,2:43136,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":112,\\\"dishui-chuanshi\\\":112,\\\"yuhen-yunchou\\\":112,]),])\",]),\"me\":([\"gender\":2,\"life\":50328,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":660,\"family\":\"终南山玉柱洞\",\"con\":0,\"mana\":25113,\"str\":0,\"name\":\"终南山玉柱洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"渐入佳境\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":838,\"icon\":6002,\"phy_absorb\":-20,\"no_capture\":1,\"money\":70,\"polar\":2,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":70,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":50328,\"exp\":210,\"power\":1493,\"resisit_earth\":0,\"max_mana\":25113,\"parry\":0,\"tao\":127717,\"phy_power\":3582,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6002,\"mag_power\":4030,]),\"carry\":([1:\"幽冥鬼爪:([233::5C39B5BC019E24CE:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"feiliu-xianshi\":112,]),])','20190112173908',-179684609,NULL),('zhengdaodian','终南山玉柱洞','渐入佳境_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":70,\\\"con\\\":70,\\\"str\\\":70,\\\"wiz\\\":70,]),54:100,52:20,53:200,50:60,51:21972,49:0,48:43136,45:80,46:0,47:300,44:70,42:280,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:21972,36:560,34:40,35:2,32:0,33::5C39B5BC019E24CD:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:8,22:2601,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2668,17:1,16:3980,15:140,14:340,12:140,13:0,11:140,10:0,9:140,8:11695,7:1026963,6:0,5:40,3:6,2:43136,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":112,\\\"dishui-chuanshi\\\":112,\\\"yuhen-yunchou\\\":112,]),])\",]),\"me\":([\"gender\":1,\"life\":47308,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":646,\"family\":\"终南山玉柱洞\",\"con\":0,\"mana\":25113,\"str\":0,\"name\":\"终南山玉柱洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"渐入佳境\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":838,\"icon\":7002,\"phy_absorb\":-20,\"no_capture\":1,\"money\":70,\"polar\":2,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":70,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":47308,\"exp\":210,\"power\":1433,\"resisit_earth\":0,\"max_mana\":25113,\"parry\":0,\"tao\":107426,\"phy_power\":3438,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7002,\"mag_power\":3868,]),\"carry\":([1:\"幽冥鬼爪:([233::5C39B5BC019E24CC:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"feiliu-xianshi\":112,]),])','20190112173908',860306106,NULL),('zhengdaodian','凤凰山斗阙宫','妙领天机_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":110,\\\"con\\\":110,\\\"str\\\":110,\\\"wiz\\\":110,]),54:100,52:20,53:200,50:60,51:46491,49:0,48:92140,45:80,46:0,47:300,44:110,42:440,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:46491,36:848,34:80,35:2,32:0,33::5C39B5B6019E242B:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:10,22:5260,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5219,17:1,16:7896,15:220,14:340,12:220,13:0,11:220,10:0,9:220,8:14505,7:12528258,6:0,5:40,3:0,2:92140,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":176,\\\"dishui-chuanshi\\\":176,\\\"yuhen-yunchou\\\":176,]),])\",]),\"me\":([\"gender\":2,\"life\":97304,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1140,\"family\":\"凤凰山斗阙宫\",\"con\":0,\"mana\":51699,\"str\":0,\"name\":\"凤凰山斗阙宫弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"妙领天机\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1725,\"icon\":6003,\"phy_absorb\":-20,\"no_capture\":1,\"money\":110,\"polar\":3,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":110,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":97304,\"exp\":330,\"power\":3011,\"resisit_earth\":0,\"max_mana\":51699,\"parry\":0,\"tao\":449290,\"phy_power\":7225,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6003,\"mag_power\":8128,]),\"carry\":([1:\"紫青玄魔剑:([233::5C39B5B6019E242A:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"yuhen-yunchou\":176,]),])','20190112173902',979319145,NULL),('zhengdaodian','凤凰山斗阙宫','妙领天机_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":110,\\\"con\\\":110,\\\"str\\\":110,\\\"wiz\\\":110,]),54:100,52:20,53:200,50:60,51:46491,49:0,48:92140,45:80,46:0,47:300,44:110,42:440,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:46491,36:848,34:80,35:2,32:0,33::5C39B5B6019E2429:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:4,22:5260,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5219,17:1,16:7896,15:220,14:340,12:220,13:0,11:220,10:0,9:220,8:12108,7:12528258,6:0,5:40,3:10,2:92140,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":176,\\\"dishui-chuanshi\\\":176,\\\"yuhen-yunchou\\\":176,]),])\",]),\"me\":([\"gender\":1,\"life\":104548,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1056,\"family\":\"凤凰山斗阙宫\",\"con\":0,\"mana\":51699,\"str\":0,\"name\":\"凤凰山斗阙宫弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"妙领天机\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1725,\"icon\":7003,\"phy_absorb\":-20,\"no_capture\":1,\"money\":110,\"polar\":3,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":110,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":104548,\"exp\":330,\"power\":3011,\"resisit_earth\":0,\"max_mana\":51699,\"parry\":0,\"tao\":495609,\"phy_power\":7225,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7003,\"mag_power\":8128,]),\"carry\":([1:\"紫青玄魔剑:([233::5C39B5B6019E2428:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"yuhen-yunchou\":176,]),])','20190112173902',1642217199,NULL),('zhengdaodian','凤凰山斗阙宫','略通道行_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":60,\\\"con\\\":60,\\\"str\\\":60,\\\"wiz\\\":60,]),54:100,52:20,53:200,50:60,51:17115,49:0,48:33532,45:80,46:0,47:300,44:60,42:240,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:17115,36:488,34:30,35:2,32:0,33::5C39B5B7019E2441:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:7,22:2070,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2147,17:1,16:3188,15:120,14:340,12:120,13:0,11:120,10:0,9:120,8:10811,7:329015,6:0,5:40,3:5,2:33532,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":96,\\\"dishui-chuanshi\\\":96,\\\"yuhen-yunchou\\\":96,]),])\",]),\"me\":([\"gender\":2,\"life\":39012,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":606,\"family\":\"凤凰山斗阙宫\",\"con\":0,\"mana\":19863,\"str\":0,\"name\":\"凤凰山斗阙宫弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"略通道行\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":663,\"icon\":6003,\"phy_absorb\":-20,\"no_capture\":1,\"money\":60,\"polar\":3,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":60,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":39012,\"exp\":180,\"power\":1134,\"resisit_earth\":0,\"max_mana\":19863,\"parry\":0,\"tao\":74414,\"phy_power\":2721,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6003,\"mag_power\":3061,]),\"carry\":([1:\"昆吾剑:([233::5C39B5B7019E2440:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"yuhen-yunchou\":96,]),])','20190112173903',878391727,NULL),('zhengdaodian','凤凰山斗阙宫','略通道行_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":60,\\\"con\\\":60,\\\"str\\\":60,\\\"wiz\\\":60,]),54:100,52:20,53:200,50:60,51:17115,49:0,48:33532,45:80,46:0,47:300,44:60,42:240,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:17115,36:488,34:30,35:2,32:0,33::5C39B5B7019E243F:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:5,22:2070,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2147,17:1,16:3188,15:120,14:340,12:120,13:0,11:120,10:0,9:120,8:12778,7:329015,6:0,5:40,3:4,2:33532,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":96,\\\"dishui-chuanshi\\\":96,\\\"yuhen-yunchou\\\":96,]),])\",]),\"me\":([\"gender\":1,\"life\":37024,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":544,\"family\":\"凤凰山斗阙宫\",\"con\":0,\"mana\":19863,\"str\":0,\"name\":\"凤凰山斗阙宫弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"略通道行\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":663,\"icon\":7003,\"phy_absorb\":-20,\"no_capture\":1,\"money\":60,\"polar\":3,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":60,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":37024,\"exp\":180,\"power\":1205,\"resisit_earth\":0,\"max_mana\":19863,\"parry\":0,\"tao\":68401,\"phy_power\":2892,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7003,\"mag_power\":3252,]),\"carry\":([1:\"昆吾剑:([233::5C39B5B7019E243E:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"yuhen-yunchou\":96,]),])','20190112173903',-1504759538,NULL),('zhengdaodian','凤凰山斗阙宫','新入道途_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":30,\\\"con\\\":30,\\\"str\\\":30,\\\"wiz\\\":30,]),54:100,52:20,53:200,50:60,51:5994,49:0,48:11844,45:80,46:0,47:300,44:30,42:120,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:5994,36:272,34:15,35:2,32:0,33::5C39B5B7019E244F:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:3,22:796,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:865,17:1,16:1248,15:60,14:340,12:60,13:0,11:60,10:0,9:60,8:11517,7:25730,6:0,5:40,3:2,2:11844,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":48,]),])\",]),\"me\":([\"gender\":2,\"life\":14184,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":304,\"family\":\"凤凰山斗阙宫\",\"con\":0,\"mana\":7458,\"str\":0,\"name\":\"凤凰山斗阙宫弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"新入道途\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":248,\"icon\":6003,\"phy_absorb\":-20,\"no_capture\":1,\"money\":30,\"polar\":3,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":30,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":14184,\"exp\":90,\"power\":429,\"resisit_earth\":0,\"max_mana\":7458,\"parry\":0,\"tao\":9394,\"phy_power\":1029,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6003,\"mag_power\":1157,]),\"carry\":([1:\"飞虹剑:([233::5C39B5B7019E244E:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"yuhen-yunchou\":48,]),])','20190112173903',-1579957817,NULL),('zhengdaodian','凤凰山斗阙宫','新入道途_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":30,\\\"con\\\":30,\\\"str\\\":30,\\\"wiz\\\":30,]),54:100,52:20,53:200,50:60,51:5994,49:0,48:11844,45:80,46:0,47:300,44:30,42:120,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:5994,36:272,34:15,35:2,32:0,33::5C39B5B7019E244D:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:4,22:796,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:865,17:1,16:1248,15:60,14:340,12:60,13:0,11:60,10:0,9:60,8:13688,7:25730,6:0,5:40,3:4,2:11844,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":48,]),])\",]),\"me\":([\"gender\":1,\"life\":15824,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":345,\"family\":\"凤凰山斗阙宫\",\"con\":0,\"mana\":7458,\"str\":0,\"name\":\"凤凰山斗阙宫弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"新入道途\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":248,\"icon\":7003,\"phy_absorb\":-20,\"no_capture\":1,\"money\":30,\"polar\":3,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":30,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":15824,\"exp\":90,\"power\":438,\"resisit_earth\":0,\"max_mana\":7458,\"parry\":0,\"tao\":9770,\"phy_power\":1050,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7003,\"mag_power\":1182,]),\"carry\":([1:\"飞虹剑:([233::5C39B5B7019E244C:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"yuhen-yunchou\":48,]),])','20190112173903',-1179074052,NULL),('zhengdaodian','凤凰山斗阙宫','小具法力_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":40,\\\"con\\\":40,\\\"str\\\":40,\\\"wiz\\\":40,]),54:100,52:20,53:200,50:60,51:9126,49:0,48:18088,45:80,46:0,47:300,44:40,42:160,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:9126,36:344,34:20,35:2,32:0,33::5C39B5B7019E244B:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:1,22:1168,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:1246,17:1,16:1820,15:80,14:340,12:80,13:0,11:80,10:0,9:80,8:12412,7:61690,6:0,5:40,3:2,2:18088,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":64,\\\"yuhen-yunchou\\\":64,]),])\",]),\"me\":([\"gender\":2,\"life\":20344,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":463,\"family\":\"凤凰山斗阙宫\",\"con\":0,\"mana\":11034,\"str\":0,\"name\":\"凤凰山斗阙宫弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"小具法力\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":368,\"icon\":6003,\"phy_absorb\":-20,\"no_capture\":1,\"money\":40,\"polar\":3,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":40,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":20344,\"exp\":120,\"power\":676,\"resisit_earth\":0,\"max_mana\":11034,\"parry\":0,\"tao\":20265,\"phy_power\":1621,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6003,\"mag_power\":1825,]),\"carry\":([1:\"乾元剑:([233::5C39B5B7019E244A:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"yuhen-yunchou\":64,]),])','20190112173903',-266024758,NULL),('zhengdaodian','凤凰山斗阙宫','小具法力_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":40,\\\"con\\\":40,\\\"str\\\":40,\\\"wiz\\\":40,]),54:100,52:20,53:200,50:60,51:9126,49:0,48:18088,45:80,46:0,47:300,44:40,42:160,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:9126,36:344,34:20,35:2,32:0,33::5C39B5B7019E2448:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:3,22:1168,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:1246,17:1,16:1820,15:80,14:340,12:80,13:0,11:80,10:0,9:80,8:14279,7:61690,6:0,5:40,3:5,2:18088,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":64,\\\"yuhen-yunchou\\\":64,]),])\",]),\"me\":([\"gender\":1,\"life\":21008,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":403,\"family\":\"凤凰山斗阙宫\",\"con\":0,\"mana\":11034,\"str\":0,\"name\":\"凤凰山斗阙宫弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"小具法力\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":368,\"icon\":7003,\"phy_absorb\":-20,\"no_capture\":1,\"money\":40,\"polar\":3,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":40,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":21008,\"exp\":120,\"power\":689,\"resisit_earth\":0,\"max_mana\":11034,\"parry\":0,\"tao\":20043,\"phy_power\":1653,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7003,\"mag_power\":1859,]),\"carry\":([1:\"乾元剑:([233::5C39B5B7019E2447:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"yuhen-yunchou\":64,]),])','20190112173903',-2076849942,NULL),('zhengdaodian','凤凰山斗阙宫','脱胎换骨_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":120,\\\"con\\\":120,\\\"str\\\":120,\\\"wiz\\\":120,]),54:100,52:20,53:200,50:60,51:54162,49:0,48:107400,45:80,46:0,47:300,44:120,42:480,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:54162,36:920,34:90,35:2,32:0,33::5C39B5B6019E2422:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:7,22:6059,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5973,17:1,16:9060,15:240,14:340,12:240,13:0,11:240,10:0,9:240,8:14947,7:18777120,6:0,5:40,3:3,2:107400,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":192,\\\"dishui-chuanshi\\\":192,\\\"yuhen-yunchou\\\":192,]),])\",]),\"me\":([\"gender\":2,\"life\":123176,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1030,\"family\":\"凤凰山斗阙宫\",\"con\":0,\"mana\":59739,\"str\":0,\"name\":\"凤凰山斗阙宫弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"脱胎换骨\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1993,\"icon\":6003,\"phy_absorb\":-20,\"no_capture\":1,\"money\":120,\"polar\":3,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":120,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":123176,\"exp\":360,\"power\":3443,\"resisit_earth\":0,\"max_mana\":59739,\"parry\":0,\"tao\":553234,\"phy_power\":8262,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6003,\"mag_power\":9295,]),\"carry\":([1:\"封神诛仙剑:([233::5C39B5B6019E2421:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"yuhen-yunchou\":192,]),])','20190112173902',135477255,NULL),('zhengdaodian','凤凰山斗阙宫','脱胎换骨_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":120,\\\"con\\\":120,\\\"str\\\":120,\\\"wiz\\\":120,]),54:100,52:20,53:200,50:60,51:54162,49:0,48:107400,45:80,46:0,47:300,44:120,42:480,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:54162,36:920,34:90,35:2,32:0,33::5C39B5B5019E2420:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:4,22:6059,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5973,17:1,16:9060,15:240,14:340,12:240,13:0,11:240,10:0,9:240,8:10547,7:18777120,6:0,5:40,3:7,2:107400,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":192,\\\"dishui-chuanshi\\\":192,\\\"yuhen-yunchou\\\":192,]),])\",]),\"me\":([\"gender\":1,\"life\":110024,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1203,\"family\":\"凤凰山斗阙宫\",\"con\":0,\"mana\":59739,\"str\":0,\"name\":\"凤凰山斗阙宫弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"脱胎换骨\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1993,\"icon\":7003,\"phy_absorb\":-20,\"no_capture\":1,\"money\":120,\"polar\":3,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":120,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":110024,\"exp\":360,\"power\":3658,\"resisit_earth\":0,\"max_mana\":59739,\"parry\":0,\"tao\":547221,\"phy_power\":8778,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7003,\"mag_power\":9876,]),\"carry\":([1:\"封神诛仙剑:([233::5C39B5B5019E241F:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"yuhen-yunchou\":192,]),])','20190112173901',-1611319238,NULL),('zhengdaodian','凤凰山斗阙宫','霞举飞升_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":130,\\\"con\\\":130,\\\"str\\\":130,\\\"wiz\\\":130,]),54:100,52:20,53:200,50:60,51:62409,49:0,48:123804,45:80,46:0,47:300,44:130,42:520,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:62409,36:992,34:100,35:2,32:0,33::5C39B5B6019E242F:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:7,22:6912,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:6776,17:1,16:10300,15:260,14:340,12:260,13:0,11:260,10:0,9:260,8:10496,7:66973140,6:0,5:40,3:2,2:123804,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":208,\\\"dishui-chuanshi\\\":208,\\\"yuhen-yunchou\\\":208,]),])\",]),\"me\":([\"gender\":2,\"life\":123100,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1137,\"family\":\"凤凰山斗阙宫\",\"con\":0,\"mana\":68340,\"str\":0,\"name\":\"凤凰山斗阙宫弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"霞举飞升\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":2279,\"icon\":6003,\"phy_absorb\":-20,\"no_capture\":1,\"money\":130,\"polar\":3,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":130,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":123100,\"exp\":390,\"power\":4226,\"resisit_earth\":0,\"max_mana\":68340,\"parry\":0,\"tao\":688099,\"phy_power\":10141,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6003,\"mag_power\":11410,]),\"carry\":([1:\"九天玄冥剑:([233::5C39B5B6019E242E:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"yuhen-yunchou\":208,]),])','20190112173902',-1338032401,NULL),('zhengdaodian','凤凰山斗阙宫','霞举飞升_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":130,\\\"con\\\":130,\\\"str\\\":130,\\\"wiz\\\":130,]),54:100,52:20,53:200,50:60,51:62409,49:0,48:123804,45:80,46:0,47:300,44:130,42:520,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:62409,36:992,34:100,35:2,32:0,33::5C39B5B6019E242D:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:3,22:6912,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:6776,17:1,16:10300,15:260,14:340,12:260,13:0,11:260,10:0,9:260,8:10817,7:66973140,6:0,5:40,3:10,2:123804,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":208,\\\"dishui-chuanshi\\\":208,\\\"yuhen-yunchou\\\":208,]),])\",]),\"me\":([\"gender\":1,\"life\":131308,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1260,\"family\":\"凤凰山斗阙宫\",\"con\":0,\"mana\":68340,\"str\":0,\"name\":\"凤凰山斗阙宫弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"霞举飞升\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":2279,\"icon\":7003,\"phy_absorb\":-20,\"no_capture\":1,\"money\":130,\"polar\":3,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":130,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":131308,\"exp\":390,\"power\":4103,\"resisit_earth\":0,\"max_mana\":68340,\"parry\":0,\"tao\":787490,\"phy_power\":9846,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7003,\"mag_power\":11077,]),\"carry\":([1:\"九天玄冥剑:([233::5C39B5B6019E242C:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"yuhen-yunchou\":208,]),])','20190112173902',-671924584,NULL),('zhengdaodian','凤凰山斗阙宫','元神初具_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":80,\\\"con\\\":80,\\\"str\\\":80,\\\"wiz\\\":80,]),54:100,52:20,53:200,50:60,51:27405,49:0,48:53884,45:80,46:0,47:300,44:80,42:320,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:27405,36:632,34:50,35:2,32:0,33::5C39B5B6019E2438:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:6,22:3187,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3236,17:1,16:4848,15:160,14:340,12:160,13:0,11:160,10:0,9:160,8:13717,7:2655013,6:0,5:40,3:4,2:53884,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":128,\\\"dishui-chuanshi\\\":128,\\\"yuhen-yunchou\\\":128,]),])\",]),\"me\":([\"gender\":2,\"life\":60716,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":754,\"family\":\"凤凰山斗阙宫\",\"con\":0,\"mana\":30924,\"str\":0,\"name\":\"凤凰山斗阙宫弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"元神初具\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1032,\"icon\":6003,\"phy_absorb\":-20,\"no_capture\":1,\"money\":80,\"polar\":3,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":80,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":60716,\"exp\":240,\"power\":1783,\"resisit_earth\":0,\"max_mana\":30924,\"parry\":0,\"tao\":178174,\"phy_power\":4278,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6003,\"mag_power\":4813,]),\"carry\":([1:\"九黎剑:([233::5C39B5B6019E2437:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"yuhen-yunchou\":128,]),])','20190112173902',349845273,NULL),('zhengdaodian','凤凰山斗阙宫','元神初具_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":80,\\\"con\\\":80,\\\"str\\\":80,\\\"wiz\\\":80,]),54:100,52:20,53:200,50:60,51:27405,49:0,48:53884,45:80,46:0,47:300,44:80,42:320,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:27405,36:632,34:50,35:2,32:0,33::5C39B5B6019E2436:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:8,22:3187,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3236,17:1,16:4848,15:160,14:340,12:160,13:0,11:160,10:0,9:160,8:13761,7:2655013,6:0,5:40,3:6,2:53884,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":128,\\\"dishui-chuanshi\\\":128,\\\"yuhen-yunchou\\\":128,]),])\",]),\"me\":([\"gender\":1,\"life\":58856,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":706,\"family\":\"凤凰山斗阙宫\",\"con\":0,\"mana\":30924,\"str\":0,\"name\":\"凤凰山斗阙宫弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"元神初具\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1032,\"icon\":7003,\"phy_absorb\":-20,\"no_capture\":1,\"money\":80,\"polar\":3,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":80,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":58856,\"exp\":240,\"power\":1895,\"resisit_earth\":0,\"max_mana\":30924,\"parry\":0,\"tao\":187082,\"phy_power\":4548,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7003,\"mag_power\":5115,]),\"carry\":([1:\"九黎剑:([233::5C39B5B6019E2435:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"yuhen-yunchou\":128,]),])','20190112173902',1836070085,NULL),('zhengdaodian','凤凰山斗阙宫','初领妙道_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":50,\\\"con\\\":50,\\\"str\\\":50,\\\"wiz\\\":50,]),54:100,52:20,53:200,50:60,51:12834,49:0,48:25076,45:80,46:0,47:300,44:50,42:200,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:12834,36:416,34:25,35:2,32:0,33::5C39B5B7019E2446:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:5,22:1592,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:1673,17:1,16:2468,15:100,14:340,12:100,13:0,11:100,10:0,9:100,8:11462,7:121350,6:0,5:40,3:4,2:25076,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":80,\\\"yuhen-yunchou\\\":80,]),])\",]),\"me\":([\"gender\":2,\"life\":27364,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":474,\"family\":\"凤凰山斗阙宫\",\"con\":0,\"mana\":15168,\"str\":0,\"name\":\"凤凰山斗阙宫弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"初领妙道\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":506,\"icon\":6003,\"phy_absorb\":-20,\"no_capture\":1,\"money\":50,\"polar\":3,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":50,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":27364,\"exp\":150,\"power\":884,\"resisit_earth\":0,\"max_mana\":15168,\"parry\":0,\"tao\":39148,\"phy_power\":2121,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6003,\"mag_power\":2386,]),\"carry\":([1:\"斩妖剑:([233::5C39B5B7019E2445:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"yuhen-yunchou\":80,]),])','20190112173903',1406652352,NULL),('zhengdaodian','凤凰山斗阙宫','初领妙道_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":50,\\\"con\\\":50,\\\"str\\\":50,\\\"wiz\\\":50,]),54:100,52:20,53:200,50:60,51:12834,49:0,48:25076,45:80,46:0,47:300,44:50,42:200,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:12834,36:416,34:25,35:2,32:0,33::5C39B5B7019E2444:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:0,22:1592,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:1673,17:1,16:2468,15:100,14:340,12:100,13:0,11:100,10:0,9:100,8:11442,7:121350,6:0,5:40,3:9,2:25076,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":80,\\\"yuhen-yunchou\\\":80,]),])\",]),\"me\":([\"gender\":1,\"life\":31320,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":531,\"family\":\"凤凰山斗阙宫\",\"con\":0,\"mana\":15168,\"str\":0,\"name\":\"凤凰山斗阙宫弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"初领妙道\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":506,\"icon\":7003,\"phy_absorb\":-20,\"no_capture\":1,\"money\":50,\"polar\":3,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":50,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":31320,\"exp\":150,\"power\":930,\"resisit_earth\":0,\"max_mana\":15168,\"parry\":0,\"tao\":39583,\"phy_power\":2232,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7003,\"mag_power\":2511,]),\"carry\":([1:\"斩妖剑:([233::5C39B5B7019E2443:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"yuhen-yunchou\":80,]),])','20190112173903',-926298576,NULL),('zhengdaodian','凤凰山斗阙宫','道心稳固_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":90,\\\"con\\\":90,\\\"str\\\":90,\\\"wiz\\\":90,]),54:100,52:20,53:200,50:60,51:33411,49:0,48:65784,45:80,46:0,47:300,44:90,42:360,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:33411,36:704,34:60,35:2,32:0,33::5C39B5B6019E2434:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:5,22:3825,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3851,17:1,16:5788,15:180,14:340,12:180,13:0,11:180,10:0,9:180,8:13415,7:5030719,6:0,5:40,3:0,2:65784,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":144,\\\"dishui-chuanshi\\\":144,\\\"yuhen-yunchou\\\":144,]),])\",]),\"me\":([\"gender\":2,\"life\":79928,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":928,\"family\":\"凤凰山斗阙宫\",\"con\":0,\"mana\":37290,\"str\":0,\"name\":\"凤凰山斗阙宫弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"道心稳固\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1245,\"icon\":6003,\"phy_absorb\":-20,\"no_capture\":1,\"money\":90,\"polar\":3,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":90,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":79928,\"exp\":270,\"power\":2241,\"resisit_earth\":0,\"max_mana\":37290,\"parry\":0,\"tao\":243542,\"phy_power\":5377,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6003,\"mag_power\":6049,]),\"carry\":([1:\"轩辕剑:([233::5C39B5B6019E2433:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"yuhen-yunchou\":144,]),])','20190112173902',-1937623123,NULL),('zhengdaodian','凤凰山斗阙宫','道心稳固_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":90,\\\"con\\\":90,\\\"str\\\":90,\\\"wiz\\\":90,]),54:100,52:20,53:200,50:60,51:33411,49:0,48:65784,45:80,46:0,47:300,44:90,42:360,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:33411,36:704,34:60,35:2,32:0,33::5C39B5B6019E2431:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:9,22:3825,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3851,17:1,16:5788,15:180,14:340,12:180,13:0,11:180,10:0,9:180,8:10702,7:5030719,6:0,5:40,3:4,2:65784,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":144,\\\"dishui-chuanshi\\\":144,\\\"yuhen-yunchou\\\":144,]),])\",]),\"me\":([\"gender\":1,\"life\":68724,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":936,\"family\":\"凤凰山斗阙宫\",\"con\":0,\"mana\":37290,\"str\":0,\"name\":\"凤凰山斗阙宫弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"道心稳固\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1245,\"icon\":7003,\"phy_absorb\":-20,\"no_capture\":1,\"money\":90,\"polar\":3,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":90,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":68724,\"exp\":270,\"power\":2308,\"resisit_earth\":0,\"max_mana\":37290,\"parry\":0,\"tao\":273985,\"phy_power\":5538,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7003,\"mag_power\":6231,]),\"carry\":([1:\"轩辕剑:([233::5C39B5B6019E2430:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"yuhen-yunchou\":144,]),])','20190112173902',1333082036,NULL),('zhengdaodian','凤凰山斗阙宫','道高德隆_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":100,\\\"con\\\":100,\\\"str\\\":100,\\\"wiz\\\":100,]),54:100,52:20,53:200,50:60,51:39393,49:0,48:78828,45:80,46:0,47:300,44:100,42:400,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:39393,36:776,34:70,35:2,32:0,33::5C39B5B6019E2427:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:8,22:4516,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:4512,17:1,16:6804,15:200,14:340,12:200,13:0,11:200,10:0,9:200,8:10457,7:8279872,6:0,5:40,3:0,2:78828,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":160,\\\"dishui-chuanshi\\\":160,\\\"yuhen-yunchou\\\":160,]),])\",]),\"me\":([\"gender\":2,\"life\":92976,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":897,\"family\":\"凤凰山斗阙宫\",\"con\":0,\"mana\":44214,\"str\":0,\"name\":\"凤凰山斗阙宫弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"道高德隆\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1475,\"icon\":6003,\"phy_absorb\":-20,\"no_capture\":1,\"money\":100,\"polar\":3,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":100,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":92976,\"exp\":300,\"power\":2602,\"resisit_earth\":0,\"max_mana\":44214,\"parry\":0,\"tao\":334078,\"phy_power\":6244,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6003,\"mag_power\":7025,]),\"carry\":([1:\"乙木神剑:([233::5C39B5B6019E2426:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"yuhen-yunchou\":160,]),])','20190112173902',2111845726,NULL),('zhengdaodian','凤凰山斗阙宫','道高德隆_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":100,\\\"con\\\":100,\\\"str\\\":100,\\\"wiz\\\":100,]),54:100,52:20,53:200,50:60,51:39393,49:0,48:78828,45:80,46:0,47:300,44:100,42:400,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:39393,36:776,34:70,35:2,32:0,33::5C39B5B6019E2425:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:2,22:4516,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:4512,17:1,16:6804,15:200,14:340,12:200,13:0,11:200,10:0,9:200,8:14717,7:8279872,6:0,5:40,3:3,2:78828,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":160,\\\"dishui-chuanshi\\\":160,\\\"yuhen-yunchou\\\":160,]),])\",]),\"me\":([\"gender\":1,\"life\":92092,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":955,\"family\":\"凤凰山斗阙宫\",\"con\":0,\"mana\":44214,\"str\":0,\"name\":\"凤凰山斗阙宫弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"道高德隆\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1475,\"icon\":7003,\"phy_absorb\":-20,\"no_capture\":1,\"money\":100,\"polar\":3,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":100,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":92092,\"exp\":300,\"power\":2682,\"resisit_earth\":0,\"max_mana\":44214,\"parry\":0,\"tao\":320158,\"phy_power\":6436,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7003,\"mag_power\":7241,]),\"carry\":([1:\"乙木神剑:([233::5C39B5B6019E2424:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"yuhen-yunchou\":160,]),])','20190112173902',-850905770,NULL),('zhengdaodian','凤凰山斗阙宫','渐入佳境_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":70,\\\"con\\\":70,\\\"str\\\":70,\\\"wiz\\\":70,]),54:100,52:20,53:200,50:60,51:21972,49:0,48:43136,45:80,46:0,47:300,44:70,42:280,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:21972,36:560,34:40,35:2,32:0,33::5C39B5B7019E243D:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:4,22:2601,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2668,17:1,16:3980,15:140,14:340,12:140,13:0,11:140,10:0,9:140,8:12933,7:1026963,6:0,5:40,3:1,2:43136,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":112,\\\"dishui-chuanshi\\\":112,\\\"yuhen-yunchou\\\":112,]),])\",]),\"me\":([\"gender\":2,\"life\":54352,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":751,\"family\":\"凤凰山斗阙宫\",\"con\":0,\"mana\":25113,\"str\":0,\"name\":\"凤凰山斗阙宫弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"渐入佳境\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":838,\"icon\":6003,\"phy_absorb\":-20,\"no_capture\":1,\"money\":70,\"polar\":3,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":70,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":54352,\"exp\":210,\"power\":1478,\"resisit_earth\":0,\"max_mana\":25113,\"parry\":0,\"tao\":124136,\"phy_power\":3546,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6003,\"mag_power\":3990,]),\"carry\":([1:\"追魂剑:([233::5C39B5B7019E243C:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"yuhen-yunchou\":112,]),])','20190112173903',300365416,NULL),('zhengdaodian','凤凰山斗阙宫','渐入佳境_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":70,\\\"con\\\":70,\\\"str\\\":70,\\\"wiz\\\":70,]),54:100,52:20,53:200,50:60,51:21972,49:0,48:43136,45:80,46:0,47:300,44:70,42:280,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:21972,36:560,34:40,35:2,32:0,33::5C39B5B6019E243B:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:2,22:2601,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2668,17:1,16:3980,15:140,14:340,12:140,13:0,11:140,10:0,9:140,8:10799,7:1026963,6:0,5:40,3:5,2:43136,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":112,\\\"dishui-chuanshi\\\":112,\\\"yuhen-yunchou\\\":112,]),])\",]),\"me\":([\"gender\":1,\"life\":50828,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":633,\"family\":\"凤凰山斗阙宫\",\"con\":0,\"mana\":25113,\"str\":0,\"name\":\"凤凰山斗阙宫弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"渐入佳境\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":838,\"icon\":7003,\"phy_absorb\":-20,\"no_capture\":1,\"money\":70,\"polar\":3,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":70,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":50828,\"exp\":210,\"power\":1448,\"resisit_earth\":0,\"max_mana\":25113,\"parry\":0,\"tao\":108619,\"phy_power\":3474,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7003,\"mag_power\":3909,]),\"carry\":([1:\"追魂剑:([233::5C39B5B6019E243A:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"yuhen-yunchou\":112,]),])','20190112173903',316945942,NULL),('zhengdaodian','骷髅山白骨洞','妙领天机_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":110,\\\"con\\\":110,\\\"str\\\":110,\\\"wiz\\\":110,]),54:100,52:20,53:200,50:60,51:46491,49:0,48:92140,45:80,46:0,47:300,44:110,42:440,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:46491,36:848,34:80,35:2,32:0,33::5C39B5BA019E248D:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:10,22:5260,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5219,17:1,16:7896,15:220,14:340,12:220,13:0,11:220,10:0,9:220,8:10861,7:12528258,6:0,5:40,3:0,2:92140,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":176,\\\"dishui-chuanshi\\\":176,\\\"yuhen-yunchou\\\":176,]),])\",]),\"me\":([\"gender\":2,\"life\":102480,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1077,\"family\":\"骷髅山白骨洞\",\"con\":0,\"mana\":51699,\"str\":0,\"name\":\"骷髅山白骨洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"妙领天机\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1725,\"icon\":7005,\"phy_absorb\":-20,\"no_capture\":1,\"money\":110,\"polar\":5,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":110,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":102480,\"exp\":330,\"power\":3073,\"resisit_earth\":0,\"max_mana\":51699,\"parry\":0,\"tao\":458554,\"phy_power\":7374,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7005,\"mag_power\":8296,]),\"carry\":([1:\"炼狱麒麟杵:([233::5C39B5BA019E248C:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"tumo-chenmai\":176,]),])','20190112173906',-92127699,NULL),('zhengdaodian','骷髅山白骨洞','妙领天机_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":110,\\\"con\\\":110,\\\"str\\\":110,\\\"wiz\\\":110,]),54:100,52:20,53:200,50:60,51:46491,49:0,48:92140,45:80,46:0,47:300,44:110,42:440,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:46491,36:848,34:80,35:2,32:0,33::5C39B5BA019E248B:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:8,22:5260,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5219,17:1,16:7896,15:220,14:340,12:220,13:0,11:220,10:0,9:220,8:11482,7:12528258,6:0,5:40,3:2,2:92140,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":176,\\\"dishui-chuanshi\\\":176,\\\"yuhen-yunchou\\\":176,]),])\",]),\"me\":([\"gender\":1,\"life\":112832,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1033,\"family\":\"骷髅山白骨洞\",\"con\":0,\"mana\":51699,\"str\":0,\"name\":\"骷髅山白骨洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"妙领天机\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1725,\"icon\":6005,\"phy_absorb\":-20,\"no_capture\":1,\"money\":110,\"polar\":5,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":110,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":112832,\"exp\":330,\"power\":3105,\"resisit_earth\":0,\"max_mana\":51699,\"parry\":0,\"tao\":430762,\"phy_power\":7452,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6005,\"mag_power\":8382,]),\"carry\":([1:\"炼狱麒麟杵:([233::5C39B5BA019E248A:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"tumo-chenmai\":176,]),])','20190112173906',228015730,NULL),('zhengdaodian','骷髅山白骨洞','略通道行_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":60,\\\"con\\\":60,\\\"str\\\":60,\\\"wiz\\\":60,]),54:100,52:20,53:200,50:60,51:17115,49:0,48:33532,45:80,46:0,47:300,44:60,42:240,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:17115,36:488,34:30,35:2,32:0,33::5C39B5BA019E24A4:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:4,22:2070,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2147,17:1,16:3188,15:120,14:340,12:120,13:0,11:120,10:0,9:120,8:11043,7:329015,6:0,5:40,3:10,2:33532,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":96,\\\"dishui-chuanshi\\\":96,\\\"yuhen-yunchou\\\":96,]),])\",]),\"me\":([\"gender\":2,\"life\":43392,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":580,\"family\":\"骷髅山白骨洞\",\"con\":0,\"mana\":19863,\"str\":0,\"name\":\"骷髅山白骨洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"略通道行\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":663,\"icon\":7005,\"phy_absorb\":-20,\"no_capture\":1,\"money\":60,\"polar\":5,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":60,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":43392,\"exp\":180,\"power\":1146,\"resisit_earth\":0,\"max_mana\":19863,\"parry\":0,\"tao\":70656,\"phy_power\":2749,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7005,\"mag_power\":3094,]),\"carry\":([1:\"霹雳锤:([233::5C39B5BA019E24A3:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"tumo-chenmai\":96,]),])','20190112173906',-245680443,NULL),('zhengdaodian','骷髅山白骨洞','略通道行_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":60,\\\"con\\\":60,\\\"str\\\":60,\\\"wiz\\\":60,]),54:100,52:20,53:200,50:60,51:17115,49:0,48:33532,45:80,46:0,47:300,44:60,42:240,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:17115,36:488,34:30,35:2,32:0,33::5C39B5BA019E24A1:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:5,22:2070,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2147,17:1,16:3188,15:120,14:340,12:120,13:0,11:120,10:0,9:120,8:12864,7:329015,6:0,5:40,3:4,2:33532,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":96,\\\"dishui-chuanshi\\\":96,\\\"yuhen-yunchou\\\":96,]),])\",]),\"me\":([\"gender\":1,\"life\":36624,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":550,\"family\":\"骷髅山白骨洞\",\"con\":0,\"mana\":19863,\"str\":0,\"name\":\"骷髅山白骨洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"略通道行\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":663,\"icon\":6005,\"phy_absorb\":-20,\"no_capture\":1,\"money\":60,\"polar\":5,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":60,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":36624,\"exp\":180,\"power\":1241,\"resisit_earth\":0,\"max_mana\":19863,\"parry\":0,\"tao\":71408,\"phy_power\":2977,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6005,\"mag_power\":3349,]),\"carry\":([1:\"霹雳锤:([233::5C39B5BA019E24A0:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"tumo-chenmai\":96,]),])','20190112173906',2014523698,NULL),('zhengdaodian','骷髅山白骨洞','新入道途_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":30,\\\"con\\\":30,\\\"str\\\":30,\\\"wiz\\\":30,]),54:100,52:20,53:200,50:60,51:5994,49:0,48:11844,45:80,46:0,47:300,44:30,42:120,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:5994,36:272,34:15,35:2,32:0,33::5C39B5BB019E24B0:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:0,22:796,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:865,17:1,16:1248,15:60,14:340,12:60,13:0,11:60,10:0,9:60,8:13523,7:25730,6:0,5:40,3:3,2:11844,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":48,]),])\",]),\"me\":([\"gender\":2,\"life\":15528,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":355,\"family\":\"骷髅山白骨洞\",\"con\":0,\"mana\":7458,\"str\":0,\"name\":\"骷髅山白骨洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"新入道途\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":248,\"icon\":7005,\"phy_absorb\":-20,\"no_capture\":1,\"money\":30,\"polar\":5,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":30,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":15528,\"exp\":90,\"power\":460,\"resisit_earth\":0,\"max_mana\":7458,\"parry\":0,\"tao\":9864,\"phy_power\":1104,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7005,\"mag_power\":1242,]),\"carry\":([1:\"亮银锤:([233::5C39B5BB019E24AF:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"tumo-chenmai\":48,]),])','20190112173907',1930543586,NULL),('zhengdaodian','骷髅山白骨洞','新入道途_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":30,\\\"con\\\":30,\\\"str\\\":30,\\\"wiz\\\":30,]),54:100,52:20,53:200,50:60,51:5994,49:0,48:11844,45:80,46:0,47:300,44:30,42:120,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:5994,36:272,34:15,35:2,32:0,33::5C39B5BB019E24AE:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:2,22:796,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:865,17:1,16:1248,15:60,14:340,12:60,13:0,11:60,10:0,9:60,8:12565,7:25730,6:0,5:40,3:5,2:11844,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":48,]),])\",]),\"me\":([\"gender\":1,\"life\":13588,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":336,\"family\":\"骷髅山白骨洞\",\"con\":0,\"mana\":7458,\"str\":0,\"name\":\"骷髅山白骨洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"新入道途\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":248,\"icon\":6005,\"phy_absorb\":-20,\"no_capture\":1,\"money\":30,\"polar\":5,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":30,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":13588,\"exp\":90,\"power\":429,\"resisit_earth\":0,\"max_mana\":7458,\"parry\":0,\"tao\":8455,\"phy_power\":1029,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6005,\"mag_power\":1157,]),\"carry\":([1:\"亮银锤:([233::5C39B5BB019E24AD:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"tumo-chenmai\":48,]),])','20190112173907',-1722564169,NULL),('zhengdaodian','骷髅山白骨洞','小具法力_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":40,\\\"con\\\":40,\\\"str\\\":40,\\\"wiz\\\":40,]),54:100,52:20,53:200,50:60,51:9126,49:0,48:18088,45:80,46:0,47:300,44:40,42:160,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:9126,36:344,34:20,35:2,32:0,33::5C39B5BB019E24AC:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:3,22:1168,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:1246,17:1,16:1820,15:80,14:340,12:80,13:0,11:80,10:0,9:80,8:14162,7:61690,6:0,5:40,3:3,2:18088,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":64,\\\"yuhen-yunchou\\\":64,]),])\",]),\"me\":([\"gender\":2,\"life\":22116,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":417,\"family\":\"骷髅山白骨洞\",\"con\":0,\"mana\":11034,\"str\":0,\"name\":\"骷髅山白骨洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"小具法力\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":368,\"icon\":7005,\"phy_absorb\":-20,\"no_capture\":1,\"money\":40,\"polar\":5,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":40,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":22116,\"exp\":120,\"power\":676,\"resisit_earth\":0,\"max_mana\":11034,\"parry\":0,\"tao\":20265,\"phy_power\":1621,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7005,\"mag_power\":1825,]),\"carry\":([1:\"乌金锤:([233::5C39B5BB019E24AB:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"tumo-chenmai\":64,]),])','20190112173907',84723789,NULL),('zhengdaodian','骷髅山白骨洞','小具法力_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":40,\\\"con\\\":40,\\\"str\\\":40,\\\"wiz\\\":40,]),54:100,52:20,53:200,50:60,51:9126,49:0,48:18088,45:80,46:0,47:300,44:40,42:160,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:9126,36:344,34:20,35:2,32:0,33::5C39B5BB019E24AA:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:0,22:1168,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:1246,17:1,16:1820,15:80,14:340,12:80,13:0,11:80,10:0,9:80,8:11017,7:61690,6:0,5:40,3:9,2:18088,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":64,\\\"yuhen-yunchou\\\":64,]),])\",]),\"me\":([\"gender\":1,\"life\":23440,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":399,\"family\":\"骷髅山白骨洞\",\"con\":0,\"mana\":11034,\"str\":0,\"name\":\"骷髅山白骨洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"小具法力\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":368,\"icon\":6005,\"phy_absorb\":-20,\"no_capture\":1,\"money\":40,\"polar\":5,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":40,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":23440,\"exp\":120,\"power\":656,\"resisit_earth\":0,\"max_mana\":11034,\"parry\":0,\"tao\":20043,\"phy_power\":1573,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6005,\"mag_power\":1771,]),\"carry\":([1:\"乌金锤:([233::5C39B5BB019E24A9:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"tumo-chenmai\":64,]),])','20190112173907',704432210,NULL),('zhengdaodian','骷髅山白骨洞','脱胎换骨_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":120,\\\"con\\\":120,\\\"str\\\":120,\\\"wiz\\\":120,]),54:100,52:20,53:200,50:60,51:54162,49:0,48:107400,45:80,46:0,47:300,44:120,42:480,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:54162,36:920,34:90,35:2,32:0,33::5C39B5B9019E2484:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:6,22:6059,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5973,17:1,16:9060,15:240,14:340,12:240,13:0,11:240,10:0,9:240,8:13392,7:18777120,6:0,5:40,3:6,2:107400,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":192,\\\"dishui-chuanshi\\\":192,\\\"yuhen-yunchou\\\":192,]),])\",]),\"me\":([\"gender\":2,\"life\":119592,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1225,\"family\":\"骷髅山白骨洞\",\"con\":0,\"mana\":59739,\"str\":0,\"name\":\"骷髅山白骨洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"脱胎换骨\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1993,\"icon\":7005,\"phy_absorb\":-20,\"no_capture\":1,\"money\":120,\"polar\":5,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":120,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":119592,\"exp\":360,\"power\":3658,\"resisit_earth\":0,\"max_mana\":59739,\"parry\":0,\"tao\":637423,\"phy_power\":8778,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7005,\"mag_power\":9876,]),\"carry\":([1:\"风雷如意杵:([233::5C39B5B9019E2483:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"tumo-chenmai\":192,]),])','20190112173905',414530009,NULL),('zhengdaodian','骷髅山白骨洞','脱胎换骨_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":120,\\\"con\\\":120,\\\"str\\\":120,\\\"wiz\\\":120,]),54:100,52:20,53:200,50:60,51:54162,49:0,48:107400,45:80,46:0,47:300,44:120,42:480,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:54162,36:920,34:90,35:2,32:0,33::5C39B5B9019E2482:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:7,22:6059,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:5973,17:1,16:9060,15:240,14:340,12:240,13:0,11:240,10:0,9:240,8:14926,7:18777120,6:0,5:40,3:7,2:107400,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":192,\\\"dishui-chuanshi\\\":192,\\\"yuhen-yunchou\\\":192,]),])\",]),\"me\":([\"gender\":1,\"life\":118396,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1156,\"family\":\"骷髅山白骨洞\",\"con\":0,\"mana\":59739,\"str\":0,\"name\":\"骷髅山白骨洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"脱胎换骨\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1993,\"icon\":6005,\"phy_absorb\":-20,\"no_capture\":1,\"money\":120,\"polar\":5,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":120,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":118396,\"exp\":360,\"power\":3551,\"resisit_earth\":0,\"max_mana\":59739,\"parry\":0,\"tao\":595328,\"phy_power\":8521,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6005,\"mag_power\":9586,]),\"carry\":([1:\"风雷如意杵:([233::5C39B5B9019E2481:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"tumo-chenmai\":192,]),])','20190112173905',941832677,NULL),('zhengdaodian','骷髅山白骨洞','霞举飞升_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":130,\\\"con\\\":130,\\\"str\\\":130,\\\"wiz\\\":130,]),54:100,52:20,53:200,50:60,51:62409,49:0,48:123804,45:80,46:0,47:300,44:130,42:520,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:62409,36:992,34:100,35:2,32:0,33::5C39B5BA019E2491:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:5,22:6912,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:6776,17:1,16:10300,15:260,14:340,12:260,13:0,11:260,10:0,9:260,8:11967,7:66973140,6:0,5:40,3:10,2:123804,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":208,\\\"dishui-chuanshi\\\":208,\\\"yuhen-yunchou\\\":208,]),])\",]),\"me\":([\"gender\":2,\"life\":129940,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1260,\"family\":\"骷髅山白骨洞\",\"con\":0,\"mana\":68340,\"str\":0,\"name\":\"骷髅山白骨洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"霞举飞升\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":2279,\"icon\":7005,\"phy_absorb\":-20,\"no_capture\":1,\"money\":130,\"polar\":5,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":130,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":129940,\"exp\":390,\"power\":3897,\"resisit_earth\":0,\"max_mana\":68340,\"parry\":0,\"tao\":772200,\"phy_power\":9352,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7005,\"mag_power\":10521,]),\"carry\":([1:\"玄黄破坚锤:([233::5C39B5BA019E2490:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"tumo-chenmai\":208,]),])','20190112173906',737885914,NULL),('zhengdaodian','骷髅山白骨洞','霞举飞升_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":130,\\\"con\\\":130,\\\"str\\\":130,\\\"wiz\\\":130,]),54:100,52:20,53:200,50:60,51:62409,49:0,48:123804,45:80,46:0,47:300,44:130,42:520,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:62409,36:992,34:100,35:2,32:0,33::5C39B5BA019E248F:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:9,22:6912,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:6776,17:1,16:10300,15:260,14:340,12:260,13:0,11:260,10:0,9:260,8:12230,7:66973140,6:0,5:40,3:10,2:123804,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":208,\\\"dishui-chuanshi\\\":208,\\\"yuhen-yunchou\\\":208,]),])\",]),\"me\":([\"gender\":1,\"life\":144984,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1309,\"family\":\"骷髅山白骨洞\",\"con\":0,\"mana\":68340,\"str\":0,\"name\":\"骷髅山白骨洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"霞举飞升\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":2279,\"icon\":6005,\"phy_absorb\":-20,\"no_capture\":1,\"money\":130,\"polar\":5,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":130,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":144984,\"exp\":390,\"power\":4185,\"resisit_earth\":0,\"max_mana\":68340,\"parry\":0,\"tao\":764554,\"phy_power\":10044,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6005,\"mag_power\":11298,]),\"carry\":([1:\"玄黄破坚锤:([233::5C39B5BA019E248E:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"tumo-chenmai\":208,]),])','20190112173906',891240028,NULL),('zhengdaodian','骷髅山白骨洞','元神初具_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":80,\\\"con\\\":80,\\\"str\\\":80,\\\"wiz\\\":80,]),54:100,52:20,53:200,50:60,51:27405,49:0,48:53884,45:80,46:0,47:300,44:80,42:320,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:27405,36:632,34:50,35:2,32:0,33::5C39B5BA019E249A:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:9,22:3187,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3236,17:1,16:4848,15:160,14:340,12:160,13:0,11:160,10:0,9:160,8:14058,7:2655013,6:0,5:40,3:0,2:53884,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":128,\\\"dishui-chuanshi\\\":128,\\\"yuhen-yunchou\\\":128,]),])\",]),\"me\":([\"gender\":2,\"life\":57616,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":730,\"family\":\"骷髅山白骨洞\",\"con\":0,\"mana\":30924,\"str\":0,\"name\":\"骷髅山白骨洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"元神初具\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1032,\"icon\":7005,\"phy_absorb\":-20,\"no_capture\":1,\"money\":80,\"polar\":5,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":80,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":57616,\"exp\":240,\"power\":1858,\"resisit_earth\":0,\"max_mana\":30924,\"parry\":0,\"tao\":172828,\"phy_power\":4458,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7005,\"mag_power\":5016,]),\"carry\":([1:\"撼地锤:([233::5C39B5BA019E2499:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"tumo-chenmai\":128,]),])','20190112173906',1646016377,NULL),('zhengdaodian','骷髅山白骨洞','元神初具_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":80,\\\"con\\\":80,\\\"str\\\":80,\\\"wiz\\\":80,]),54:100,52:20,53:200,50:60,51:27405,49:0,48:53884,45:80,46:0,47:300,44:80,42:320,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:27405,36:632,34:50,35:2,32:0,33::5C39B5BA019E2498:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:9,22:3187,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3236,17:1,16:4848,15:160,14:340,12:160,13:0,11:160,10:0,9:160,8:14203,7:2655013,6:0,5:40,3:5,2:53884,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":128,\\\"dishui-chuanshi\\\":128,\\\"yuhen-yunchou\\\":128,]),])\",]),\"me\":([\"gender\":1,\"life\":66292,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":856,\"family\":\"骷髅山白骨洞\",\"con\":0,\"mana\":30924,\"str\":0,\"name\":\"骷髅山白骨洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"元神初具\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1032,\"icon\":6005,\"phy_absorb\":-20,\"no_capture\":1,\"money\":80,\"polar\":5,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":80,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":66292,\"exp\":240,\"power\":1895,\"resisit_earth\":0,\"max_mana\":30924,\"parry\":0,\"tao\":162138,\"phy_power\":4548,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6005,\"mag_power\":5115,]),\"carry\":([1:\"撼地锤:([233::5C39B5BA019E2497:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"tumo-chenmai\":128,]),])','20190112173906',-556255482,NULL),('zhengdaodian','骷髅山白骨洞','初领妙道_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":50,\\\"con\\\":50,\\\"str\\\":50,\\\"wiz\\\":50,]),54:100,52:20,53:200,50:60,51:12834,49:0,48:25076,45:80,46:0,47:300,44:50,42:200,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:12834,36:416,34:25,35:2,32:0,33::5C39B5BB019E24A8:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:5,22:1592,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:1673,17:1,16:2468,15:100,14:340,12:100,13:0,11:100,10:0,9:100,8:14292,7:121350,6:0,5:40,3:6,2:25076,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":80,\\\"yuhen-yunchou\\\":80,]),])\",]),\"me\":([\"gender\":2,\"life\":29796,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":484,\"family\":\"骷髅山白骨洞\",\"con\":0,\"mana\":15168,\"str\":0,\"name\":\"骷髅山白骨洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"初领妙道\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":506,\"icon\":7005,\"phy_absorb\":-20,\"no_capture\":1,\"money\":50,\"polar\":5,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":50,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":29796,\"exp\":150,\"power\":948,\"resisit_earth\":0,\"max_mana\":15168,\"parry\":0,\"tao\":43498,\"phy_power\":2274,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7005,\"mag_power\":2559,]),\"carry\":([1:\"混元锤:([233::5C39B5BB019E24A7:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"tumo-chenmai\":80,]),])','20190112173907',-206909487,NULL),('zhengdaodian','骷髅山白骨洞','初领妙道_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":50,\\\"con\\\":50,\\\"str\\\":50,\\\"wiz\\\":50,]),54:100,52:20,53:200,50:60,51:12834,49:0,48:25076,45:80,46:0,47:300,44:50,42:200,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:12834,36:416,34:25,35:2,32:0,33::5C39B5BB019E24A6:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:9,22:1592,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:1673,17:1,16:2468,15:100,14:340,12:100,13:0,11:100,10:0,9:100,8:10493,7:121350,6:0,5:40,3:7,2:25076,1:0,]),\\\"skills\\\":([\\\"dishui-chuanshi\\\":80,\\\"yuhen-yunchou\\\":80,]),])\",]),\"me\":([\"gender\":1,\"life\":28884,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":463,\"family\":\"骷髅山白骨洞\",\"con\":0,\"mana\":15168,\"str\":0,\"name\":\"骷髅山白骨洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"初领妙道\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":506,\"icon\":6005,\"phy_absorb\":-20,\"no_capture\":1,\"money\":50,\"polar\":5,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":50,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":28884,\"exp\":150,\"power\":866,\"resisit_earth\":0,\"max_mana\":15168,\"parry\":0,\"tao\":39583,\"phy_power\":2077,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6005,\"mag_power\":2338,]),\"carry\":([1:\"混元锤:([233::5C39B5BB019E24A5:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"tumo-chenmai\":80,]),])','20190112173907',-1099116575,NULL),('zhengdaodian','骷髅山白骨洞','道心稳固_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":90,\\\"con\\\":90,\\\"str\\\":90,\\\"wiz\\\":90,]),54:100,52:20,53:200,50:60,51:33411,49:0,48:65784,45:80,46:0,47:300,44:90,42:360,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:33411,36:704,34:60,35:2,32:0,33::5C39B5BA019E2496:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:9,22:3825,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3851,17:1,16:5788,15:180,14:340,12:180,13:0,11:180,10:0,9:180,8:12969,7:5030719,6:0,5:40,3:8,2:65784,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":144,\\\"dishui-chuanshi\\\":144,\\\"yuhen-yunchou\\\":144,]),])\",]),\"me\":([\"gender\":2,\"life\":74700,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":901,\"family\":\"骷髅山白骨洞\",\"con\":0,\"mana\":37290,\"str\":0,\"name\":\"骷髅山白骨洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"道心稳固\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1245,\"icon\":7005,\"phy_absorb\":-20,\"no_capture\":1,\"money\":90,\"polar\":5,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":90,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":74700,\"exp\":270,\"power\":2128,\"resisit_earth\":0,\"max_mana\":37290,\"parry\":0,\"tao\":248616,\"phy_power\":5106,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7005,\"mag_power\":5745,]),\"carry\":([1:\"破天锤:([233::5C39B5BA019E2495:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"tumo-chenmai\":144,]),])','20190112173906',-1987430501,NULL),('zhengdaodian','骷髅山白骨洞','道心稳固_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":90,\\\"con\\\":90,\\\"str\\\":90,\\\"wiz\\\":90,]),54:100,52:20,53:200,50:60,51:33411,49:0,48:65784,45:80,46:0,47:300,44:90,42:360,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:33411,36:704,34:60,35:2,32:0,33::5C39B5BA019E2494:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:9,22:3825,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:3851,17:1,16:5788,15:180,14:340,12:180,13:0,11:180,10:0,9:180,8:11319,7:5030719,6:0,5:40,3:10,2:65784,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":144,\\\"dishui-chuanshi\\\":144,\\\"yuhen-yunchou\\\":144,]),])\",]),\"me\":([\"gender\":1,\"life\":76940,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":928,\"family\":\"骷髅山白骨洞\",\"con\":0,\"mana\":37290,\"str\":0,\"name\":\"骷髅山白骨洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"道心稳固\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1245,\"icon\":6005,\"phy_absorb\":-20,\"no_capture\":1,\"money\":90,\"polar\":5,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":90,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":76940,\"exp\":270,\"power\":2330,\"resisit_earth\":0,\"max_mana\":37290,\"parry\":0,\"tao\":258764,\"phy_power\":5592,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6005,\"mag_power\":6291,]),\"carry\":([1:\"破天锤:([233::5C39B5BA019E2493:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"tumo-chenmai\":144,]),])','20190112173906',-236112027,NULL),('zhengdaodian','骷髅山白骨洞','道高德隆_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":100,\\\"con\\\":100,\\\"str\\\":100,\\\"wiz\\\":100,]),54:100,52:20,53:200,50:60,51:39393,49:0,48:78828,45:80,46:0,47:300,44:100,42:400,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:39393,36:776,34:70,35:2,32:0,33::5C39B5B9019E2488:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:3,22:4516,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:4512,17:1,16:6804,15:200,14:340,12:200,13:0,11:200,10:0,9:200,8:13667,7:8279872,6:0,5:40,3:3,2:78828,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":160,\\\"dishui-chuanshi\\\":160,\\\"yuhen-yunchou\\\":160,]),])\",]),\"me\":([\"gender\":2,\"life\":87664,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":879,\"family\":\"骷髅山白骨洞\",\"con\":0,\"mana\":44214,\"str\":0,\"name\":\"骷髅山白骨洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"道高德隆\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1475,\"icon\":7005,\"phy_absorb\":-20,\"no_capture\":1,\"money\":100,\"polar\":5,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":100,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":87664,\"exp\":300,\"power\":2602,\"resisit_earth\":0,\"max_mana\":44214,\"parry\":0,\"tao\":313198,\"phy_power\":6244,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7005,\"mag_power\":7025,]),\"carry\":([1:\"加持杵:([233::5C39B5B9019E2487:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"tumo-chenmai\":160,]),])','20190112173905',-1801767731,NULL),('zhengdaodian','骷髅山白骨洞','道高德隆_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":100,\\\"con\\\":100,\\\"str\\\":100,\\\"wiz\\\":100,]),54:100,52:20,53:200,50:60,51:39393,49:0,48:78828,45:80,46:0,47:300,44:100,42:400,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:39393,36:776,34:70,35:2,32:0,33::5C39B5B9019E2486:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:5,22:4516,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:4512,17:1,16:6804,15:200,14:340,12:200,13:0,11:200,10:0,9:200,8:14330,7:8279872,6:0,5:40,3:7,2:78828,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":160,\\\"dishui-chuanshi\\\":160,\\\"yuhen-yunchou\\\":160,]),])\",]),\"me\":([\"gender\":1,\"life\":88552,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":1023,\"family\":\"骷髅山白骨洞\",\"con\":0,\"mana\":44214,\"str\":0,\"name\":\"骷髅山白骨洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"道高德隆\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":1475,\"icon\":6005,\"phy_absorb\":-20,\"no_capture\":1,\"money\":100,\"polar\":5,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":100,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":88552,\"exp\":300,\"power\":2629,\"resisit_earth\":0,\"max_mana\":44214,\"parry\":0,\"tao\":330598,\"phy_power\":6309,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6005,\"mag_power\":7097,]),\"carry\":([1:\"加持杵:([233::5C39B5B9019E2485:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"tumo-chenmai\":160,]),])','20190112173905',-1032506230,NULL),('zhengdaodian','骷髅山白骨洞','渐入佳境_女','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":70,\\\"con\\\":70,\\\"str\\\":70,\\\"wiz\\\":70,]),54:100,52:20,53:200,50:60,51:21972,49:0,48:43136,45:80,46:0,47:300,44:70,42:280,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:21972,36:560,34:40,35:2,32:0,33::5C39B5BA019E249F:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:8,22:2601,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2668,17:1,16:3980,15:140,14:340,12:140,13:0,11:140,10:0,9:140,8:11065,7:1026963,6:0,5:40,3:4,2:43136,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":112,\\\"dishui-chuanshi\\\":112,\\\"yuhen-yunchou\\\":112,]),])\",]),\"me\":([\"gender\":2,\"life\":52340,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":675,\"family\":\"骷髅山白骨洞\",\"con\":0,\"mana\":25113,\"str\":0,\"name\":\"骷髅山白骨洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"渐入佳境\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":838,\"icon\":7005,\"phy_absorb\":-20,\"no_capture\":1,\"money\":70,\"polar\":5,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":70,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":52340,\"exp\":210,\"power\":1509,\"resisit_earth\":0,\"max_mana\":25113,\"parry\":0,\"tao\":113394,\"phy_power\":3621,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":7005,\"mag_power\":4073,]),\"carry\":([1:\"晃金锤:([233::5C39B5BA019E249E:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"tumo-chenmai\":112,]),])','20190112173906',215365231,NULL),('zhengdaodian','骷髅山白骨洞','渐入佳境_男','([\"pets\":([1:\"海龟:([\\\"attrib\\\":([\\\"type\\\":32768,\\\"boss_monster\\\":1,\\\"init_attrib\\\":([\\\"phy_absorb\\\":-20,\\\"speed_effect\\\":20,\\\"mana_effect\\\":200,\\\"mag_effect\\\":60,\\\"mag_absorb\\\":-20,\\\"phy_effect\\\":40,\\\"life_effect\\\":300,]),\\\"attrib_already\\\":([\\\"dex\\\":70,\\\"con\\\":70,\\\"str\\\":70,\\\"wiz\\\":70,]),54:100,52:20,53:200,50:60,51:21972,49:0,48:43136,45:80,46:0,47:300,44:70,42:280,43:0,41:100,40:120,38:0,39:\\\"海龟\\\",37:21972,36:560,34:40,35:2,32:0,33::5C39B5BA019E249D:,29:0,31:60,28:820,26:([\\\"total\\\":0,]),25:1,24:240,23:5,22:2601,20:0,19:([42:4,12:1,11:1,9:1,15:1,]),21:2668,17:1,16:3980,15:140,14:340,12:140,13:0,11:140,10:0,9:140,8:12995,7:1026963,6:0,5:40,3:5,2:43136,1:0,]),\\\"skills\\\":([\\\"nubo-kuangtao\\\":112,\\\"dishui-chuanshi\\\":112,\\\"yuhen-yunchou\\\":112,]),])\",]),\"me\":([\"gender\":1,\"life\":52340,\"max_stamina\":0,\"pot\":0,\"dodge\":0,\"def_effect\":0,\"type\":4,\"mag_effect\":80,\"resisit_water\":0,\"polar_water\":0,\"mag_absorb\":-20,\"phy_effect\":50,\"polar_earth\":0,\"attack_effect\":0,\"speed\":744,\"family\":\"骷髅山白骨洞\",\"con\":0,\"mana\":25113,\"str\":0,\"name\":\"骷髅山白骨洞弟子\",\"resisit_metal\":0,\"wiz\":0,\"accurate\":85,\"stamina\":0,\"key_title\":\"渐入佳境\",\"resisit_wood\":0,\"dex\":0,\"polar_fire\":0,\"def\":838,\"icon\":6005,\"phy_absorb\":-20,\"no_capture\":1,\"money\":70,\"polar\":5,\"no_cost_mana\":1,\"tao_effect\":20,\"level\":70,\"polar_wood\":0,\"polar_metal\":0,\"life_effect\":300,\"resisit_fire\":0,\"max_life\":52340,\"exp\":210,\"power\":1539,\"resisit_earth\":0,\"max_mana\":25113,\"parry\":0,\"tao\":128911,\"phy_power\":3693,\"mana_effect\":200,\"speed_effect\":50,\"portrait\":6005,\"mag_power\":4154,]),\"carry\":([1:\"晃金锤:([233::5C39B5BA019E249C:,232:1,47:1,\\\"type\\\":8,])\",]),\"skills\":([\"tumo-chenmai\":112,]),])','20190112173906',835139072,NULL);
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data1`
--

DROP TABLE IF EXISTS `data1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data1` (
  `path` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `branch` varchar(128) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` varchar(14) NOT NULL DEFAULT '',
  `checksum` int(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`path`,`name`,`branch`),
  KEY `name_path` (`name`,`path`) USING BTREE,
  KEY `path_time` (`path`,`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data1`
--

LOCK TABLES `data1` WRITE;
/*!40000 ALTER TABLE `data1` DISABLE KEYS */;
/*!40000 ALTER TABLE `data1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gid_info`
--

DROP TABLE IF EXISTS `gid_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gid_info` (
  `gid` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`gid`),
  KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gid_info`
--

LOCK TABLES `gid_info` WRITE;
/*!40000 ALTER TABLE `gid_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `gid_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_deposit`
--

DROP TABLE IF EXISTS `item_deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_deposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_iid` varchar(32) NOT NULL DEFAULT '',
  `item_name` varchar(128) NOT NULL DEFAULT '',
  `item_level` int(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `item_data` text NOT NULL,
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
  KEY `item_iid` (`item_iid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_deposit`
--

LOCK TABLES `item_deposit` WRITE;
/*!40000 ALTER TABLE `item_deposit` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_deposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_update`
--

DROP TABLE IF EXISTS `online_update`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `online_update` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_name` varchar(128) NOT NULL DEFAULT '',
  `server_ver` varchar(32) NOT NULL DEFAULT '',
  `server_type` varchar(16) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `checksum` int(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`update_name`,`server_ver`,`server_type`),
  KEY `ver_type` (`server_ver`,`server_type`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_update`
--

LOCK TABLES `online_update` WRITE;
/*!40000 ALTER TABLE `online_update` DISABLE KEYS */;
/*!40000 ALTER TABLE `online_update` ENABLE KEYS */;
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

--
-- Current Database: `dl_dmdb_1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dl_dmdb_1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dl_dmdb_1`;

--
-- Table structure for table `account_basic`
--

DROP TABLE IF EXISTS `account_basic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_basic` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `silver_coin` int(10) NOT NULL DEFAULT '0',
  `gold_coin` int(10) NOT NULL DEFAULT '0',
  `last_time` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`,`silver_coin`,`gold_coin`,`last_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_basic`
--

LOCK TABLES `account_basic` WRITE;
/*!40000 ALTER TABLE `account_basic` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_basic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `activity` varchar(32) NOT NULL DEFAULT '',
  `start_time` char(14) NOT NULL DEFAULT '',
  `end_time` char(14) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(255) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `activity` (`activity`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anti_cheater_log`
--

DROP TABLE IF EXISTS `anti_cheater_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anti_cheater_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(32) NOT NULL DEFAULT '',
  `para1` varchar(32) DEFAULT '',
  `para2` varchar(32) DEFAULT '',
  `para3` varchar(128) DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `type` (`type`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anti_cheater_log`
--

LOCK TABLES `anti_cheater_log` WRITE;
/*!40000 ALTER TABLE `anti_cheater_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `anti_cheater_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antiaddiction_log`
--

DROP TABLE IF EXISTS `antiaddiction_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antiaddiction_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `online_time` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antiaddiction_log`
--

LOCK TABLES `antiaddiction_log` WRITE;
/*!40000 ALTER TABLE `antiaddiction_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `antiaddiction_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apex_log`
--

DROP TABLE IF EXISTS `apex_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apex_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(3) NOT NULL DEFAULT '0',
  `kill_action` varchar(32) NOT NULL DEFAULT '',
  `task` tinyint(3) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) DEFAULT NULL,
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(3) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) DEFAULT NULL,
  `error_id` int(11) NOT NULL DEFAULT '0',
  `str_n` tinyint(3) NOT NULL DEFAULT '0',
  `ip` varchar(16) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `ip_gids` int(11) NOT NULL DEFAULT '0',
  `mac_gids` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `error_id` (`error_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apex_log`
--

LOCK TABLES `apex_log` WRITE;
/*!40000 ALTER TABLE `apex_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `apex_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apply_log`
--

DROP TABLE IF EXISTS `apply_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apply_log` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `upgrade_state` tinyint(3) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) DEFAULT NULL,
  `lv` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gold_coin` int(10) NOT NULL DEFAULT '0',
  `insider` int(10) unsigned NOT NULL DEFAULT '0',
  `item_type` tinyint(3) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `item_price` int(11) NOT NULL DEFAULT '0',
  `item_life` int(11) NOT NULL DEFAULT '0',
  `item_source` tinyint(4) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `lv_equipment` smallint(5) unsigned DEFAULT NULL,
  `para1` int(10) DEFAULT NULL,
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `name` (`item_name`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply_log`
--

LOCK TABLES `apply_log` WRITE;
/*!40000 ALTER TABLE `apply_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `apply_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_talk_log`
--

DROP TABLE IF EXISTS `auto_talk_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_talk_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` tinyint(2) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `max_lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `map` varchar(255) NOT NULL DEFAULT '',
  `call_times` int(11) NOT NULL DEFAULT '0',
  `publish` tinyint(2) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `account` (`account`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `mac` (`mac`) USING BTREE,
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_talk_log`
--

LOCK TABLES `auto_talk_log` WRITE;
/*!40000 ALTER TABLE `auto_talk_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `auto_talk_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `behavior_log`
--

DROP TABLE IF EXISTS `behavior_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `behavior_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `time_used` smallint(5) unsigned NOT NULL DEFAULT '0',
  `time_used_fd` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lv` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tao` int(10) unsigned NOT NULL DEFAULT '0',
  `upgrade_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addup_exp` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `addup_tao` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `addup_play` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_round` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_talk_times` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_friend_times` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_click_npc` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_exchange` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_click_mouse` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_move_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `time_used_stall` smallint(5) unsigned NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `behavior_log`
--

LOCK TABLES `behavior_log` WRITE;
/*!40000 ALTER TABLE `behavior_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `behavior_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block_log`
--

DROP TABLE IF EXISTS `block_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `due` int(11) NOT NULL DEFAULT '0',
  `reason_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `operator` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(255) NOT NULL DEFAULT '',
  `para3` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operator` (`operator`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `time_gid` (`update_time`,`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_log`
--

LOCK TABLES `block_log` WRITE;
/*!40000 ALTER TABLE `block_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `block_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` varchar(15) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `party_gid` varchar(32) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` tinyint(1) NOT NULL DEFAULT '0',
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `bonus_type` tinyint(4) NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '',
  `bonus_prop` varchar(32) DEFAULT NULL,
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_log`
--

LOCK TABLES `campaign_log` WRITE;
/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_log`
--

DROP TABLE IF EXISTS `channel_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '0',
  `target` varchar(32) NOT NULL DEFAULT '',
  `msg` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `sender` (`name`) USING BTREE,
  KEY `target` (`target`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_log`
--

LOCK TABLES `channel_log` WRITE;
/*!40000 ALTER TABLE `channel_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `char_basic`
--

DROP TABLE IF EXISTS `char_basic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `char_basic` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `level` int(10) DEFAULT NULL,
  `cash` int(10) DEFAULT NULL,
  `balance` int(10) DEFAULT NULL,
  `reputation` int(10) DEFAULT NULL,
  `pot` int(10) DEFAULT NULL,
  `total_score` int(10) DEFAULT NULL,
  `party_contrib` int(10) DEFAULT NULL,
  `total_played_time` int(10) DEFAULT NULL,
  `char_name` varchar(32) DEFAULT NULL,
  `insider` int(2) DEFAULT NULL,
  `polar` int(2) DEFAULT NULL,
  `last_time` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`,`gid`,`last_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `char_basic`
--

LOCK TABLES `char_basic` WRITE;
/*!40000 ALTER TABLE `char_basic` DISABLE KEYS */;
/*!40000 ALTER TABLE `char_basic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `char_cost`
--

DROP TABLE IF EXISTS `char_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `char_cost` (
  `gid` varchar(32) NOT NULL DEFAULT '',
  `silver_coin` int(10) DEFAULT NULL,
  `gold_coin` int(10) DEFAULT NULL,
  `last_time` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`,`last_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `char_cost`
--

LOCK TABLES `char_cost` WRITE;
/*!40000 ALTER TABLE `char_cost` DISABLE KEYS */;
/*!40000 ALTER TABLE `char_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `char_incre`
--

DROP TABLE IF EXISTS `char_incre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `char_incre` (
  `gid` varchar(32) NOT NULL DEFAULT '',
  `exp` int(10) DEFAULT NULL,
  `cash` int(10) DEFAULT NULL,
  `tao` int(10) DEFAULT NULL,
  `reputation` int(10) DEFAULT NULL,
  `pot` int(10) DEFAULT NULL,
  `total_score` int(10) DEFAULT NULL,
  `party_contrib` int(10) DEFAULT NULL,
  `last_time` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`,`last_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `char_incre`
--

LOCK TABLES `char_incre` WRITE;
/*!40000 ALTER TABLE `char_incre` DISABLE KEYS */;
/*!40000 ALTER TABLE `char_incre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `char_salary`
--

DROP TABLE IF EXISTS `char_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `char_salary` (
  `no` int(12) NOT NULL AUTO_INCREMENT,
  `gid` varchar(32) DEFAULT NULL,
  `silver_coin` int(12) DEFAULT NULL,
  `last_time` varchar(32) DEFAULT NULL,
  `glory` int(12) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `char_salary`
--

LOCK TABLES `char_salary` WRITE;
/*!40000 ALTER TABLE `char_salary` DISABLE KEYS */;
/*!40000 ALTER TABLE `char_salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charge_item_cost`
--

DROP TABLE IF EXISTS `charge_item_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charge_item_cost` (
  `no` int(12) NOT NULL AUTO_INCREMENT,
  `item` varchar(32) DEFAULT NULL,
  `amount` int(12) DEFAULT NULL,
  `gid` varchar(32) DEFAULT NULL,
  `account` varchar(32) DEFAULT NULL,
  `last_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`no`),
  KEY `item` (`item`,`last_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charge_item_cost`
--

LOCK TABLES `charge_item_cost` WRITE;
/*!40000 ALTER TABLE `charge_item_cost` DISABLE KEYS */;
/*!40000 ALTER TABLE `charge_item_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charge_item_sale`
--

DROP TABLE IF EXISTS `charge_item_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charge_item_sale` (
  `no` int(12) NOT NULL AUTO_INCREMENT,
  `item` varchar(32) DEFAULT NULL,
  `amount` int(12) DEFAULT NULL,
  `coin` int(12) DEFAULT NULL,
  `coin_type` varchar(32) DEFAULT NULL,
  `account` varchar(32) DEFAULT NULL,
  `last_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`no`),
  KEY `item` (`item`,`last_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charge_item_sale`
--

LOCK TABLES `charge_item_sale` WRITE;
/*!40000 ALTER TABLE `charge_item_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `charge_item_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_log`
--

DROP TABLE IF EXISTS `chat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `chat_type` varchar(32) NOT NULL DEFAULT '',
  `chat_channel` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_log`
--

LOCK TABLES `chat_log` WRITE;
/*!40000 ALTER TABLE `chat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_action_log`
--

DROP TABLE IF EXISTS `client_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_action_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) DEFAULT NULL,
  `gid` varchar(32) DEFAULT NULL,
  `mac` varchar(64) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `insider` tinyint(4) unsigned DEFAULT NULL,
  `lv` int(11) unsigned DEFAULT NULL,
  `tao` int(11) unsigned DEFAULT NULL,
  `gold_coin` int(11) unsigned DEFAULT NULL,
  `in_party` tinyint(4) unsigned DEFAULT NULL,
  `send_num` int(11) unsigned DEFAULT NULL,
  `send_gids` int(11) unsigned DEFAULT NULL,
  `receive_num` int(11) unsigned DEFAULT NULL,
  `receive_gids` int(11) unsigned DEFAULT NULL,
  `current_channel` int(11) unsigned DEFAULT NULL,
  `troop_channel` int(11) unsigned DEFAULT NULL,
  `party_channel` int(11) unsigned DEFAULT NULL,
  `team_channel` int(11) unsigned DEFAULT NULL,
  `world_channel` int(11) unsigned DEFAULT NULL,
  `whoop_channel` int(11) unsigned DEFAULT NULL,
  `para1` int(11) DEFAULT NULL,
  `para2` int(11) DEFAULT NULL,
  `para3` int(11) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `mac` (`mac`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_action_log`
--

LOCK TABLES `client_action_log` WRITE;
/*!40000 ALTER TABLE `client_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_performance_log`
--

DROP TABLE IF EXISTS `client_performance_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_performance_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `record_interval` int(11) DEFAULT NULL,
  `account` varchar(32) DEFAULT NULL,
  `gid` varchar(32) DEFAULT NULL,
  `mac` varchar(64) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `insider` tinyint(4) unsigned DEFAULT NULL,
  `lv` int(11) unsigned DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `cpu_cost` int(11) DEFAULT NULL,
  `mem_cost` varchar(128) DEFAULT NULL,
  `render_frame_rate` int(11) unsigned DEFAULT NULL,
  `cur_scene` tinyint(4) unsigned DEFAULT NULL,
  `cur_room_user` int(11) unsigned DEFAULT NULL,
  `cur_room_name` varchar(32) DEFAULT NULL,
  `cur_process_num` int(11) unsigned DEFAULT NULL,
  `minimize_window` tinyint(4) unsigned DEFAULT NULL,
  `button_type` varchar(32) DEFAULT NULL,
  `button_name` varchar(32) DEFAULT NULL,
  `timeslice` varchar(32) DEFAULT NULL,
  `button_times` int(11) unsigned DEFAULT NULL,
  `directx_version` varchar(19) DEFAULT NULL,
  `prever_download` varchar(19) DEFAULT NULL,
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(32) DEFAULT NULL,
  `para4` varchar(64) DEFAULT NULL,
  `para5` varchar(128) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `mac` (`mac`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_performance_log`
--

LOCK TABLES `client_performance_log` WRITE;
/*!40000 ALTER TABLE `client_performance_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_performance_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_consume_log`
--

DROP TABLE IF EXISTS `coin_consume_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_consume_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `coin` int(11) NOT NULL DEFAULT '0',
  `update_time` char(14) NOT NULL DEFAULT '',
  `consume_info` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `account` (`account`) USING BTREE,
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_consume_log`
--

LOCK TABLES `coin_consume_log` WRITE;
/*!40000 ALTER TABLE `coin_consume_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `coin_consume_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_cost`
--

DROP TABLE IF EXISTS `coin_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_cost` (
  `no` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `coin` int(12) DEFAULT NULL,
  `coin_type` varchar(32) DEFAULT NULL,
  `gid` varchar(32) DEFAULT NULL,
  `account` varchar(32) DEFAULT NULL,
  `last_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_cost`
--

LOCK TABLES `coin_cost` WRITE;
/*!40000 ALTER TABLE `coin_cost` DISABLE KEYS */;
/*!40000 ALTER TABLE `coin_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_order_log`
--

DROP TABLE IF EXISTS `coin_order_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_order_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `order_id` varchar(15) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(12) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `store_coin` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `tax` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `server` (`server`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_order_log`
--

LOCK TABLES `coin_order_log` WRITE;
/*!40000 ALTER TABLE `coin_order_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `coin_order_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collect_data_log`
--

DROP TABLE IF EXISTS `collect_data_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collect_data_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `cpu_id` varchar(64) NOT NULL DEFAULT '',
  `cpu_info` varchar(64) NOT NULL DEFAULT '',
  `disk_sequence` varchar(64) NOT NULL DEFAULT '',
  `mac_address` varchar(64) NOT NULL DEFAULT '',
  `video_card` varchar(64) NOT NULL DEFAULT '',
  `memory_size` int(11) NOT NULL DEFAULT '0',
  `video_memory` int(11) NOT NULL DEFAULT '0',
  `bios` varchar(64) NOT NULL DEFAULT '',
  `privilege` int(11) NOT NULL DEFAULT '0',
  `para1` varchar(64) NOT NULL DEFAULT '',
  `para2` varchar(64) NOT NULL DEFAULT '',
  `para3` varchar(64) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collect_data_log`
--

LOCK TABLES `collect_data_log` WRITE;
/*!40000 ALTER TABLE `collect_data_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `collect_data_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combat_in_map_log`
--

DROP TABLE IF EXISTS `combat_in_map_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combat_in_map_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `tao` int(11) NOT NULL DEFAULT '0',
  `family` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `map` varchar(32) NOT NULL DEFAULT '',
  `combat_times` int(11) NOT NULL DEFAULT '0',
  `combat_pet` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `char_name` (`char_name`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat_in_map_log`
--

LOCK TABLES `combat_in_map_log` WRITE;
/*!40000 ALTER TABLE `combat_in_map_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `combat_in_map_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combat_log`
--

DROP TABLE IF EXISTS `combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `in_party` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `all_round` int(11) NOT NULL DEFAULT '0',
  `abnormal_round` int(11) NOT NULL DEFAULT '0',
  `abnormal_degree` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `main_attribute` varchar(32) NOT NULL DEFAULT '0',
  `ratio_attribute` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` int(11) NOT NULL DEFAULT '0',
  `para3` varchar(32) NOT NULL DEFAULT '0',
  `para4` varchar(128) NOT NULL DEFAULT '0',
  `para5` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat_log`
--

LOCK TABLES `combat_log` WRITE;
/*!40000 ALTER TABLE `combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_hist`
--

DROP TABLE IF EXISTS `common_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_hist` (
  `id` int(11) NOT NULL DEFAULT '0',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(128) NOT NULL DEFAULT '',
  `para2` varchar(128) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  KEY `id` (`id`) USING BTREE,
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_hist`
--

LOCK TABLES `common_hist` WRITE;
/*!40000 ALTER TABLE `common_hist` DISABLE KEYS */;
/*!40000 ALTER TABLE `common_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_log`
--

DROP TABLE IF EXISTS `common_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(128) NOT NULL DEFAULT '',
  `para2` varchar(128) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_log`
--

LOCK TABLES `common_log` WRITE;
/*!40000 ALTER TABLE `common_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `common_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cost_coin_log`
--

DROP TABLE IF EXISTS `cost_coin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cost_coin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `cost_type` varchar(32) NOT NULL DEFAULT '',
  `cost` int(11) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT '0',
  `uid` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(64) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cost_coin_log`
--

LOCK TABLES `cost_coin_log` WRITE;
/*!40000 ALTER TABLE `cost_coin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cost_coin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csc_combat_log`
--

DROP TABLE IF EXISTS `csc_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csc_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `g_coin` int(11) NOT NULL DEFAULT '0',
  `s_coin` int(11) NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` int(11) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `para4` varchar(128) NOT NULL DEFAULT '',
  `para5` varchar(128) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `server_account` (`server`,`account`) USING BTREE,
  KEY `server_gid` (`server`,`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csc_combat_log`
--

LOCK TABLES `csc_combat_log` WRITE;
/*!40000 ALTER TABLE `csc_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csc_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_combat_log`
--

DROP TABLE IF EXISTS `csl_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(15) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `stage_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `match_id` varchar(32) NOT NULL DEFAULT '',
  `level_section` varchar(15) NOT NULL DEFAULT '',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `score_left` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `combat_index` (`league_id`,`season_id`,`stage_id`,`round_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_combat_log`
--

LOCK TABLES `csl_combat_log` WRITE;
/*!40000 ALTER TABLE `csl_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_match_log`
--

DROP TABLE IF EXISTS `csl_match_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_match_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `home_dist` varchar(32) NOT NULL DEFAULT '',
  `away_dist` varchar(32) NOT NULL DEFAULT '',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` int(11) unsigned NOT NULL DEFAULT '0',
  `stage_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `home_score` int(11) NOT NULL DEFAULT '0',
  `away_score` int(11) NOT NULL DEFAULT '0',
  `home_gid_num` int(11) NOT NULL DEFAULT '0',
  `away_gid_num` int(11) NOT NULL DEFAULT '0',
  `home_avg_lv` int(11) NOT NULL DEFAULT '0',
  `away_avg_lv` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `combat_index` (`league_id`,`season_id`,`stage_id`,`round_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_match_log`
--

LOCK TABLES `csl_match_log` WRITE;
/*!40000 ALTER TABLE `csl_match_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_match_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csp_combat_log`
--

DROP TABLE IF EXISTS `csp_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csp_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(15) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `match_id` varchar(32) NOT NULL DEFAULT '',
  `party_id` varchar(32) NOT NULL DEFAULT '',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `party_contrib` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `combat_index` (`league_id`,`season_id`,`round_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csp_combat_log`
--

LOCK TABLES `csp_combat_log` WRITE;
/*!40000 ALTER TABLE `csp_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csp_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csp_match_log`
--

DROP TABLE IF EXISTS `csp_match_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csp_match_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `home_dist` varchar(32) NOT NULL DEFAULT '',
  `away_dist` varchar(32) NOT NULL DEFAULT '',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` int(11) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `home_party_name` varchar(32) NOT NULL DEFAULT '0',
  `away_party_name` varchar(32) NOT NULL DEFAULT '0',
  `home_gid_num` int(11) NOT NULL DEFAULT '0',
  `away_gid_num` int(11) NOT NULL DEFAULT '0',
  `home_avg_lv` int(11) NOT NULL DEFAULT '0',
  `away_avg_lv` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `combat_index` (`league_id`,`season_id`,`round_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csp_match_log`
--

LOCK TABLES `csp_match_log` WRITE;
/*!40000 ALTER TABLE `csp_match_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csp_match_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debug_log`
--

DROP TABLE IF EXISTS `debug_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `debug_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) DEFAULT '',
  `para3` varchar(128) DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `type_action` (`type`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debug_log`
--

LOCK TABLES `debug_log` WRITE;
/*!40000 ALTER TABLE `debug_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `debug_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encourage_detail_log`
--

DROP TABLE IF EXISTS `encourage_detail_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encourage_detail_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dist` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `update_time` char(14) NOT NULL DEFAULT '',
  `encourage_type` varchar(64) NOT NULL DEFAULT '',
  `bonus_name` varchar(32) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `encourage_id` int(11) DEFAULT '0',
  `ip` varchar(16) DEFAULT '',
  `para1` varchar(32) DEFAULT '',
  `para2` varchar(255) DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encourage_detail_log`
--

LOCK TABLES `encourage_detail_log` WRITE;
/*!40000 ALTER TABLE `encourage_detail_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `encourage_detail_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_log`
--

DROP TABLE IF EXISTS `equipment_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `item_iid` varchar(32) DEFAULT '',
  `cost_item_name` varchar(32) DEFAULT '',
  `cost_item_iid` varchar(32) DEFAULT '',
  `cost` int(10) NOT NULL DEFAULT '0',
  `oper_result` tinyint(4) NOT NULL DEFAULT '0',
  `para1` varchar(32) DEFAULT '',
  `para2` varchar(128) DEFAULT '',
  `para3` varchar(255) DEFAULT '',
  `item_prop` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `equip_iid` (`item_iid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_log`
--

LOCK TABLES `equipment_log` WRITE;
/*!40000 ALTER TABLE `equipment_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipment_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `errand_log`
--

DROP TABLE IF EXISTS `errand_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `errand_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `party_gid` varchar(32) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `bonus_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '0',
  `bonus_prop` varchar(32) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `errand_log`
--

LOCK TABLES `errand_log` WRITE;
/*!40000 ALTER TABLE `errand_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `errand_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange_appraise_log`
--

DROP TABLE IF EXISTS `exchange_appraise_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange_appraise_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `exchange_time` char(14) NOT NULL DEFAULT '',
  `account1` varchar(32) NOT NULL DEFAULT '',
  `name1` varchar(32) NOT NULL DEFAULT '',
  `gid1` varchar(32) NOT NULL DEFAULT '',
  `lv1` tinyint(4) NOT NULL DEFAULT '0',
  `tao1` int(11) NOT NULL DEFAULT '0',
  `gold_coin1` int(11) NOT NULL DEFAULT '0',
  `account2` varchar(32) NOT NULL DEFAULT '',
  `name2` varchar(32) NOT NULL DEFAULT '',
  `gid2` varchar(32) NOT NULL DEFAULT '',
  `lv2` tinyint(4) NOT NULL DEFAULT '0',
  `tao2` int(11) NOT NULL DEFAULT '0',
  `gold_coin2` int(11) NOT NULL DEFAULT '0',
  `report` tinyint(4) NOT NULL DEFAULT '0',
  `star` tinyint(4) NOT NULL DEFAULT '0',
  `content` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(255) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account1` (`account1`) USING BTREE,
  KEY `account2` (`account2`) USING BTREE,
  KEY `gid1` (`gid1`) USING BTREE,
  KEY `gid2` (`gid2`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange_appraise_log`
--

LOCK TABLES `exchange_appraise_log` WRITE;
/*!40000 ALTER TABLE `exchange_appraise_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `exchange_appraise_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_baiguidi`
--

DROP TABLE IF EXISTS `game_baiguidi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_baiguidi` (
  `no` int(12) NOT NULL AUTO_INCREMENT,
  `gid` varchar(32) DEFAULT NULL,
  `level` varchar(12) DEFAULT NULL,
  `polar` int(2) DEFAULT NULL,
  `insider` int(2) DEFAULT NULL,
  `times` int(12) DEFAULT NULL,
  `last_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_baiguidi`
--

LOCK TABLES `game_baiguidi` WRITE;
/*!40000 ALTER TABLE `game_baiguidi` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_baiguidi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_chongwutaowang`
--

DROP TABLE IF EXISTS `game_chongwutaowang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_chongwutaowang` (
  `no` int(12) NOT NULL AUTO_INCREMENT,
  `gid` varchar(32) DEFAULT NULL,
  `level` varchar(12) DEFAULT NULL,
  `polar` int(2) DEFAULT NULL,
  `insider` int(2) DEFAULT NULL,
  `times` int(12) DEFAULT NULL,
  `last_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_chongwutaowang`
--

LOCK TABLES `game_chongwutaowang` WRITE;
/*!40000 ALTER TABLE `game_chongwutaowang` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_chongwutaowang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_wanyaoku`
--

DROP TABLE IF EXISTS `game_wanyaoku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_wanyaoku` (
  `no` int(12) NOT NULL AUTO_INCREMENT,
  `gid` varchar(32) DEFAULT NULL,
  `level` varchar(12) DEFAULT NULL,
  `polar` int(2) DEFAULT NULL,
  `insider` int(2) DEFAULT NULL,
  `last_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_wanyaoku`
--

LOCK TABLES `game_wanyaoku` WRITE;
/*!40000 ALTER TABLE `game_wanyaoku` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_wanyaoku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_yabiao`
--

DROP TABLE IF EXISTS `game_yabiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_yabiao` (
  `no` int(12) NOT NULL AUTO_INCREMENT,
  `gid` varchar(32) DEFAULT NULL,
  `level` varchar(12) DEFAULT NULL,
  `polar` int(2) DEFAULT NULL,
  `insider` int(2) DEFAULT NULL,
  `times` int(12) DEFAULT NULL,
  `last_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_yabiao`
--

LOCK TABLES `game_yabiao` WRITE;
/*!40000 ALTER TABLE `game_yabiao` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_yabiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gbuy_action_log`
--

DROP TABLE IF EXISTS `gbuy_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gbuy_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `gbuy_gcoin` int(11) NOT NULL DEFAULT '0',
  `gbuy_scoin` int(11) NOT NULL DEFAULT '0',
  `action` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `coin_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `coin` int(11) NOT NULL DEFAULT '0',
  `gbg_id` varchar(32) NOT NULL DEFAULT '',
  `gbg_name` varchar(32) NOT NULL DEFAULT '',
  `gbg_amount` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `gbg_id` (`gbg_id`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gbuy_action_log`
--

LOCK TABLES `gbuy_action_log` WRITE;
/*!40000 ALTER TABLE `gbuy_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gbuy_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_log`
--

DROP TABLE IF EXISTS `gift_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '0',
  `gid` varchar(32) NOT NULL DEFAULT '0',
  `lv` int(11) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) unsigned NOT NULL DEFAULT '0',
  `login_ip` varchar(32) NOT NULL DEFAULT '0',
  `mac` varchar(32) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '0',
  `gold_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `insider` varchar(32) NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_log`
--

LOCK TABLES `gift_log` WRITE;
/*!40000 ALTER TABLE `gift_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gm_log`
--

DROP TABLE IF EXISTS `gm_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gm_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `cash` int(11) NOT NULL DEFAULT '0',
  `mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` int(11) unsigned NOT NULL DEFAULT '0',
  `operator` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(255) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operator` (`operator`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `time_gid` (`update_time`,`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gm_log`
--

LOCK TABLES `gm_log` WRITE;
/*!40000 ALTER TABLE `gm_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gs_log`
--

DROP TABLE IF EXISTS `gs_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gs_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `ctime` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `server` (`server`) USING BTREE,
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gs_log`
--

LOCK TABLES `gs_log` WRITE;
/*!40000 ALTER TABLE `gs_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gs_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history_credit_log`
--

DROP TABLE IF EXISTS `history_credit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history_credit_log` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `coin` int(11) NOT NULL DEFAULT '0',
  `used` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_credit_log`
--

LOCK TABLES `history_credit_log` WRITE;
/*!40000 ALTER TABLE `history_credit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `history_credit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_action_log`
--

DROP TABLE IF EXISTS `important_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `important_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(32) NOT NULL DEFAULT '',
  `bonus_type` tinyint(4) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `party_gid` char(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_action_log`
--

LOCK TABLES `important_action_log` WRITE;
/*!40000 ALTER TABLE `important_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `important_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_log`
--

DROP TABLE IF EXISTS `important_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `important_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(128) NOT NULL DEFAULT '',
  `para2` varchar(128) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type_action` (`type`,`action`) USING BTREE,
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_log`
--

LOCK TABLES `important_log` WRITE;
/*!40000 ALTER TABLE `important_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `important_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_pet_log`
--

DROP TABLE IF EXISTS `important_pet_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `important_pet_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account_from` varchar(32) NOT NULL DEFAULT '',
  `account_to` varchar(32) NOT NULL DEFAULT '',
  `gid_from` char(16) NOT NULL DEFAULT '',
  `gid_to` char(16) NOT NULL DEFAULT '',
  `lv_from` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv_to` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `pet_iid` varchar(32) NOT NULL DEFAULT '',
  `pet_name` varchar(32) NOT NULL DEFAULT '',
  `pet_property` text NOT NULL,
  `para1` varchar(255) NOT NULL DEFAULT '',
  `para2` varchar(255) NOT NULL DEFAULT '',
  `para3` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `account_to` (`account_to`) USING BTREE,
  KEY `gid_to` (`gid_to`) USING BTREE,
  KEY `pet_iid` (`pet_iid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_pet_log`
--

LOCK TABLES `important_pet_log` WRITE;
/*!40000 ALTER TABLE `important_pet_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `important_pet_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_task_log`
--

DROP TABLE IF EXISTS `ip_task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `task` varchar(32) NOT NULL DEFAULT '',
  `num` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`time`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_task_log`
--

LOCK TABLES `ip_task_log` WRITE;
/*!40000 ALTER TABLE `ip_task_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_exchange`
--

DROP TABLE IF EXISTS `item_exchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_exchange` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(32) DEFAULT NULL,
  `amount` int(12) DEFAULT NULL,
  `total_price` int(12) DEFAULT NULL,
  `exchange_type` varchar(32) DEFAULT NULL,
  `last_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_exchange`
--

LOCK TABLES `item_exchange` WRITE;
/*!40000 ALTER TABLE `item_exchange` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_exchange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_transfer_log`
--

DROP TABLE IF EXISTS `item_transfer_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_transfer_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `action` varchar(32) NOT NULL DEFAULT '',
  `account_from` varchar(32) DEFAULT NULL,
  `account_to` varchar(32) DEFAULT NULL,
  `gid_from` varchar(16) DEFAULT NULL,
  `gid_to` varchar(16) DEFAULT NULL,
  `lv_from` tinyint(3) unsigned DEFAULT NULL,
  `lv_to` tinyint(3) unsigned DEFAULT NULL,
  `gold_coin_from` int(10) unsigned DEFAULT NULL,
  `gold_coin_to` int(10) unsigned DEFAULT NULL,
  `mac_from` char(16) DEFAULT NULL,
  `mac_to` char(16) DEFAULT NULL,
  `ip_from` varchar(15) DEFAULT NULL,
  `ip_to` varchar(15) DEFAULT NULL,
  `locality_from` varchar(64) DEFAULT NULL,
  `locality_to` varchar(64) DEFAULT NULL,
  `item_iid` varchar(32) DEFAULT NULL,
  `item_name` varchar(32) DEFAULT NULL,
  `item_amount` int(10) unsigned DEFAULT NULL,
  `transfer_type` tinyint(3) unsigned DEFAULT NULL,
  `transfer_id` varchar(32) DEFAULT NULL,
  `para1` varchar(32) DEFAULT NULL,
  `para2` varchar(255) DEFAULT NULL,
  `para3` int(10) unsigned DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `account` (`account_from`) USING BTREE,
  KEY `gid` (`gid_from`) USING BTREE,
  KEY `iid` (`item_iid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_transfer_log`
--

LOCK TABLES `item_transfer_log` WRITE;
/*!40000 ALTER TABLE `item_transfer_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_transfer_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level_up_log`
--

DROP TABLE IF EXISTS `level_up_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `level_up_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `upgrade_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(32) NOT NULL DEFAULT '',
  `time_used` bigint(20) DEFAULT NULL,
  `last_lv_up` varchar(14) NOT NULL DEFAULT '',
  `create_time` varchar(14) NOT NULL DEFAULT '',
  `newbie` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `para4` bigint(20) DEFAULT NULL,
  `para5` varchar(255) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level_up_log`
--

LOCK TABLES `level_up_log` WRITE;
/*!40000 ALTER TABLE `level_up_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `level_up_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_log`
--

DROP TABLE IF EXISTS `login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `privilege` int(11) NOT NULL DEFAULT '0',
  `login_mode` int(11) NOT NULL DEFAULT '0',
  `time_used` int(11) NOT NULL DEFAULT '0',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `insider` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `party` varchar(32) NOT NULL DEFAULT '',
  `family` varchar(32) NOT NULL DEFAULT '',
  `create_time` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `protect_type` varchar(32) NOT NULL DEFAULT '',
  `upgrade_state` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `login_ip` (`login_ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_log`
--

LOCK TABLES `login_log` WRITE;
/*!40000 ALTER TABLE `login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material1_log`
--

DROP TABLE IF EXISTS `material1_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material1_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '0',
  `lv` int(11) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) unsigned NOT NULL DEFAULT '0',
  `login_ip` varchar(32) NOT NULL DEFAULT '0',
  `mac` varchar(32) NOT NULL DEFAULT '0',
  `gold_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `insider` varchar(32) NOT NULL DEFAULT '0',
  `map` varchar(32) NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `lasted_time` int(11) unsigned NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material1_log`
--

LOCK TABLES `material1_log` WRITE;
/*!40000 ALTER TABLE `material1_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `material1_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_log`
--

DROP TABLE IF EXISTS `material_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '0',
  `gid` varchar(32) NOT NULL DEFAULT '0',
  `lv` int(11) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) unsigned NOT NULL DEFAULT '0',
  `login_ip` varchar(32) NOT NULL DEFAULT '0',
  `mac` varchar(32) NOT NULL DEFAULT '0',
  `gold_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `silver_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `insider` varchar(32) NOT NULL DEFAULT '0',
  `map` varchar(32) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `lasted_time` int(11) unsigned NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_log`
--

LOCK TABLES `material_log` WRITE;
/*!40000 ALTER TABLE `material_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `material_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money1_log`
--

DROP TABLE IF EXISTS `money1_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money1_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(32) NOT NULL DEFAULT '',
  `cash_type` tinyint(4) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money1_log`
--

LOCK TABLES `money1_log` WRITE;
/*!40000 ALTER TABLE `money1_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `money1_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money_log`
--

DROP TABLE IF EXISTS `money_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `action` tinyint(4) NOT NULL DEFAULT '0',
  `gid` char(16) NOT NULL DEFAULT '',
  `gid_op` char(16) DEFAULT NULL,
  `cash` int(11) DEFAULT NULL,
  `voucher` int(11) DEFAULT NULL,
  `after_value` varchar(64) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_log`
--

LOCK TABLES `money_log` WRITE;
/*!40000 ALTER TABLE `money_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `money_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nummary_log`
--

DROP TABLE IF EXISTS `nummary_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nummary_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` tinyint(4) unsigned DEFAULT NULL,
  `action` varchar(32) NOT NULL DEFAULT '',
  `totality` bigint(20) unsigned NOT NULL DEFAULT '0',
  `times` mediumint(9) unsigned DEFAULT NULL,
  `gids` mediumint(9) unsigned DEFAULT NULL,
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `type_action` (`type`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nummary_log`
--

LOCK TABLES `nummary_log` WRITE;
/*!40000 ALTER TABLE `nummary_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `nummary_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party_contrib_convert`
--

DROP TABLE IF EXISTS `party_contrib_convert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `party_contrib_convert` (
  `no` int(12) NOT NULL AUTO_INCREMENT,
  `party_contrib` int(12) DEFAULT NULL,
  `got` int(12) DEFAULT NULL,
  `gid` varchar(32) DEFAULT NULL,
  `last_time` varchar(32) DEFAULT NULL,
  `got_type` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_contrib_convert`
--

LOCK TABLES `party_contrib_convert` WRITE;
/*!40000 ALTER TABLE `party_contrib_convert` DISABLE KEYS */;
/*!40000 ALTER TABLE `party_contrib_convert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_level_up_log`
--

DROP TABLE IF EXISTS `pet_level_up_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_level_up_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `lv` int(4) NOT NULL DEFAULT '0',
  `last_lv_up` varchar(14) NOT NULL DEFAULT '',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) DEFAULT '',
  `para3` varchar(255) DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `iid` (`iid`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_level_up_log`
--

LOCK TABLES `pet_level_up_log` WRITE;
/*!40000 ALTER TABLE `pet_level_up_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_level_up_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_log`
--

DROP TABLE IF EXISTS `pet_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `pet_name` varchar(16) NOT NULL DEFAULT '',
  `pet_iid` varchar(32) NOT NULL DEFAULT '',
  `cost_item` varchar(16) NOT NULL DEFAULT '',
  `item_iid` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `pet_memo` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `pet_iid` (`pet_iid`) USING BTREE,
  KEY `item_iid` (`item_iid`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_log`
--

LOCK TABLES `pet_log` WRITE;
/*!40000 ALTER TABLE `pet_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plug_log`
--

DROP TABLE IF EXISTS `plug_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plug_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tool` int(11) NOT NULL DEFAULT '0',
  `time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `coins` int(11) NOT NULL DEFAULT '0',
  `relevance` int(11) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `tool` (`tool`) USING BTREE,
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plug_log`
--

LOCK TABLES `plug_log` WRITE;
/*!40000 ALTER TABLE `plug_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `plug_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_bind_log`
--

DROP TABLE IF EXISTS `property_bind_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_bind_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(16) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `para` varchar(32) DEFAULT NULL,
  `main` tinyint(4) unsigned DEFAULT '0',
  `data` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `iid` (`iid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_bind_log`
--

LOCK TABLES `property_bind_log` WRITE;
/*!40000 ALTER TABLE `property_bind_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_bind_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_platform_log`
--

DROP TABLE IF EXISTS `purchase_platform_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_platform_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `order_id` varchar(32) NOT NULL DEFAULT '',
  `order_time` int(11) unsigned NOT NULL DEFAULT '0',
  `commodity_type` int(11) unsigned NOT NULL DEFAULT '0',
  `commodity_name` varchar(64) NOT NULL DEFAULT '0',
  `commodity_iid` varchar(32) NOT NULL DEFAULT '',
  `commodity_amount` int(11) NOT NULL DEFAULT '0',
  `unit_price` int(11) NOT NULL DEFAULT '0',
  `turnover` int(11) NOT NULL DEFAULT '0',
  `tax` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(32) NOT NULL DEFAULT '0',
  `para4` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE,
  KEY `time_account` (`update_time`,`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_platform_log`
--

LOCK TABLES `purchase_platform_log` WRITE;
/*!40000 ALTER TABLE `purchase_platform_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_platform_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_log`
--

DROP TABLE IF EXISTS `report_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account1` varchar(32) NOT NULL DEFAULT '',
  `name1` varchar(32) NOT NULL DEFAULT '',
  `gid1` varchar(32) NOT NULL DEFAULT '',
  `lv1` tinyint(4) NOT NULL DEFAULT '0',
  `tao1` int(11) NOT NULL DEFAULT '0',
  `gold_coin1` int(11) NOT NULL DEFAULT '0',
  `account2` varchar(32) NOT NULL DEFAULT '',
  `name2` varchar(32) NOT NULL DEFAULT '',
  `gid2` varchar(32) NOT NULL DEFAULT '',
  `lv2` tinyint(4) NOT NULL DEFAULT '0',
  `tao2` int(11) NOT NULL DEFAULT '0',
  `gold_coin2` int(11) NOT NULL DEFAULT '0',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(255) NOT NULL DEFAULT '',
  `para4` varchar(255) NOT NULL DEFAULT '',
  `para5` varchar(255) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account1` (`account1`) USING BTREE,
  KEY `account2` (`account2`) USING BTREE,
  KEY `name2` (`name2`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_log`
--

LOCK TABLES `report_log` WRITE;
/*!40000 ALTER TABLE `report_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reputation_convert`
--

DROP TABLE IF EXISTS `reputation_convert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reputation_convert` (
  `no` int(12) NOT NULL AUTO_INCREMENT,
  `reputation` int(12) DEFAULT NULL,
  `got` int(12) DEFAULT NULL,
  `got_type` varchar(32) DEFAULT NULL,
  `gid` varchar(32) DEFAULT NULL,
  `last_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`no`),
  KEY `gid` (`gid`,`last_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reputation_convert`
--

LOCK TABLES `reputation_convert` WRITE;
/*!40000 ALTER TABLE `reputation_convert` DISABLE KEYS */;
/*!40000 ALTER TABLE `reputation_convert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `safe_log`
--

DROP TABLE IF EXISTS `safe_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `safe_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lv` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tao` int(10) unsigned NOT NULL DEFAULT '0',
  `ob_iid` varchar(32) NOT NULL DEFAULT '',
  `ob_name` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) DEFAULT NULL,
  `para2` varchar(255) DEFAULT NULL,
  `para3` int(11) DEFAULT NULL,
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `safe_log`
--

LOCK TABLES `safe_log` WRITE;
/*!40000 ALTER TABLE `safe_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `safe_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_log`
--

DROP TABLE IF EXISTS `sale_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `dist` varchar(16) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_log`
--

LOCK TABLES `sale_log` WRITE;
/*!40000 ALTER TABLE `sale_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stat`
--

DROP TABLE IF EXISTS `stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) DEFAULT NULL,
  `pid` varchar(6) DEFAULT NULL,
  `server` varchar(20) DEFAULT NULL,
  `cpu` varchar(6) DEFAULT NULL,
  `vmem` varchar(6) DEFAULT NULL,
  `rmem` varchar(6) DEFAULT NULL,
  `cpu2` varchar(6) DEFAULT NULL,
  `para1` varchar(6) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(32) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stat`
--

LOCK TABLES `stat` WRITE;
/*!40000 ALTER TABLE `stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switch_log`
--

DROP TABLE IF EXISTS `switch_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switch_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `login_mode` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `time_used` int(11) NOT NULL DEFAULT '0',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switch_log`
--

LOCK TABLES `switch_log` WRITE;
/*!40000 ALTER TABLE `switch_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `switch_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_monitor_log`
--

DROP TABLE IF EXISTS `system_monitor_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_monitor_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` tinyint(4) NOT NULL DEFAULT '0',
  `number_ih` int(11) NOT NULL DEFAULT '0',
  `number_il` int(11) NOT NULL DEFAULT '0',
  `degree` tinyint(4) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(255) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `degree` (`degree`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_monitor_log`
--

LOCK TABLES `system_monitor_log` WRITE;
/*!40000 ALTER TABLE `system_monitor_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_monitor_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tao_stat_log`
--

DROP TABLE IF EXISTS `tao_stat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tao_stat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `finish_date` char(8) NOT NULL DEFAULT '',
  `dist_id` int(11) NOT NULL DEFAULT '0',
  `dist_name` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `gid_times` int(11) NOT NULL DEFAULT '0',
  `gid_charge_times` int(11) NOT NULL DEFAULT '0',
  `lv_charge_times` int(11) NOT NULL DEFAULT '0',
  `ip_times` int(11) NOT NULL DEFAULT '0',
  `ip_gids` int(11) NOT NULL DEFAULT '0',
  `punish` tinyint(4) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `finish_date` (`finish_date`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tao_stat_log`
--

LOCK TABLES `tao_stat_log` WRITE;
/*!40000 ALTER TABLE `tao_stat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tao_stat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tao_task_log`
--

DROP TABLE IF EXISTS `tao_task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tao_task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist_id` int(11) NOT NULL DEFAULT '0',
  `dist_name` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `use_charge` tinyint(4) NOT NULL DEFAULT '0',
  `lv_charge` tinyint(4) NOT NULL DEFAULT '0',
  `lv_cha` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tao_task_log`
--

LOCK TABLES `tao_task_log` WRITE;
/*!40000 ALTER TABLE `tao_task_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tao_task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_log`
--

DROP TABLE IF EXISTS `task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(16) NOT NULL DEFAULT '',
  `dist` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `task_type` varchar(16) NOT NULL DEFAULT '',
  `task_name` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(64) NOT NULL DEFAULT '',
  `ip` varchar(16) NOT NULL DEFAULT '',
  `line` varchar(16) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` int(11) NOT NULL DEFAULT '0',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `task_type` (`task_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_log`
--

LOCK TABLES `task_log` WRITE;
/*!40000 ALTER TABLE `task_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '0',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_log`
--

LOCK TABLES `user_log` WRITE;
/*!40000 ALTER TABLE `user_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_report_ip_log`
--

DROP TABLE IF EXISTS `user_report_ip_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_report_ip_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `para1` varchar(255) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `para4` varchar(32) NOT NULL DEFAULT '',
  `para5` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_report_ip_log`
--

LOCK TABLES `user_report_ip_log` WRITE;
/*!40000 ALTER TABLE `user_report_ip_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_report_ip_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishing_log`
--

DROP TABLE IF EXISTS `wishing_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishing_log` (
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `score` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`gid`),
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishing_log`
--

LOCK TABLES `wishing_log` WRITE;
/*!40000 ALTER TABLE `wishing_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishing_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_add_point_log`
--

DROP TABLE IF EXISTS `zq_add_point_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_add_point_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `point_before` int(11) NOT NULL DEFAULT '0',
  `point_after` int(11) NOT NULL DEFAULT '0',
  `point_add` int(11) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_add_point_log`
--

LOCK TABLES `zq_add_point_log` WRITE;
/*!40000 ALTER TABLE `zq_add_point_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_add_point_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_card_log`
--

DROP TABLE IF EXISTS `zq_card_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_card_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '0',
  `bonus_prop` varchar(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_card_log`
--

LOCK TABLES `zq_card_log` WRITE;
/*!40000 ALTER TABLE `zq_card_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_card_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_combat_log`
--

DROP TABLE IF EXISTS `zq_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `total_round` int(11) NOT NULL DEFAULT '0',
  `hero_name` varchar(32) NOT NULL DEFAULT '',
  `hero_lv` int(11) NOT NULL DEFAULT '0',
  `result` tinyint(4) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_combat_log`
--

LOCK TABLES `zq_combat_log` WRITE;
/*!40000 ALTER TABLE `zq_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_cost_point_log`
--

DROP TABLE IF EXISTS `zq_cost_point_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_cost_point_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `point_before` int(11) NOT NULL DEFAULT '0',
  `point_after` int(11) NOT NULL DEFAULT '0',
  `point_cost` int(11) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_cost_point_log`
--

LOCK TABLES `zq_cost_point_log` WRITE;
/*!40000 ALTER TABLE `zq_cost_point_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_cost_point_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_errand_log`
--

DROP TABLE IF EXISTS `zq_errand_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_errand_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `bonus_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '0',
  `bonus_prop` varchar(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_errand_log`
--

LOCK TABLES `zq_errand_log` WRITE;
/*!40000 ALTER TABLE `zq_errand_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_errand_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_login_log`
--

DROP TABLE IF EXISTS `zq_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `privilege` int(11) NOT NULL DEFAULT '0',
  `login_mode` int(11) NOT NULL DEFAULT '0',
  `time_used` int(11) NOT NULL DEFAULT '0',
  `hero_lv` int(11) NOT NULL DEFAULT '0',
  `xg_point` int(11) NOT NULL DEFAULT '0',
  `card_num` int(11) NOT NULL DEFAULT '0',
  `fragment_num` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_login_log`
--

LOCK TABLES `zq_login_log` WRITE;
/*!40000 ALTER TABLE `zq_login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_lv_up_log`
--

DROP TABLE IF EXISTS `zq_lv_up_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_lv_up_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `hero_name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_lv_up_log`
--

LOCK TABLES `zq_lv_up_log` WRITE;
/*!40000 ALTER TABLE `zq_lv_up_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_lv_up_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `dl_ldb_1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dl_ldb_1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dl_ldb_1`;

--
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `activity` varchar(32) NOT NULL DEFAULT '',
  `start_time` char(14) NOT NULL DEFAULT '',
  `end_time` char(14) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(255) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `activity` (`activity`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anti_cheater_log`
--

DROP TABLE IF EXISTS `anti_cheater_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anti_cheater_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(32) NOT NULL DEFAULT '',
  `para1` varchar(32) DEFAULT '',
  `para2` varchar(32) DEFAULT '',
  `para3` varchar(128) DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `type` (`type`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anti_cheater_log`
--

LOCK TABLES `anti_cheater_log` WRITE;
/*!40000 ALTER TABLE `anti_cheater_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `anti_cheater_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antiaddiction_log`
--

DROP TABLE IF EXISTS `antiaddiction_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antiaddiction_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `online_time` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antiaddiction_log`
--

LOCK TABLES `antiaddiction_log` WRITE;
/*!40000 ALTER TABLE `antiaddiction_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `antiaddiction_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apex_log`
--

DROP TABLE IF EXISTS `apex_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apex_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(3) NOT NULL DEFAULT '0',
  `kill_action` varchar(32) NOT NULL DEFAULT '',
  `task` tinyint(3) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) DEFAULT NULL,
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(3) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) DEFAULT NULL,
  `error_id` int(11) NOT NULL DEFAULT '0',
  `str_n` tinyint(3) NOT NULL DEFAULT '0',
  `ip` varchar(16) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `ip_gids` int(11) NOT NULL DEFAULT '0',
  `mac_gids` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `error_id` (`error_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apex_log`
--

LOCK TABLES `apex_log` WRITE;
/*!40000 ALTER TABLE `apex_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `apex_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apply_log`
--

DROP TABLE IF EXISTS `apply_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apply_log` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `upgrade_state` tinyint(3) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) DEFAULT NULL,
  `lv` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gold_coin` int(10) NOT NULL DEFAULT '0',
  `insider` int(10) unsigned NOT NULL DEFAULT '0',
  `item_type` tinyint(3) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `item_price` int(11) NOT NULL DEFAULT '0',
  `item_life` int(11) NOT NULL DEFAULT '0',
  `item_source` tinyint(4) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `lv_equipment` smallint(5) unsigned DEFAULT NULL,
  `para1` int(10) DEFAULT NULL,
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `name` (`item_name`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply_log`
--

LOCK TABLES `apply_log` WRITE;
/*!40000 ALTER TABLE `apply_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `apply_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_talk_log`
--

DROP TABLE IF EXISTS `auto_talk_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_talk_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` tinyint(2) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `max_lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `map` varchar(255) NOT NULL DEFAULT '',
  `call_times` int(11) NOT NULL DEFAULT '0',
  `publish` tinyint(2) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `account` (`account`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `mac` (`mac`) USING BTREE,
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_talk_log`
--

LOCK TABLES `auto_talk_log` WRITE;
/*!40000 ALTER TABLE `auto_talk_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `auto_talk_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `behavior_log`
--

DROP TABLE IF EXISTS `behavior_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `behavior_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `time_used` smallint(5) unsigned NOT NULL DEFAULT '0',
  `time_used_fd` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lv` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tao` int(10) unsigned NOT NULL DEFAULT '0',
  `upgrade_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addup_exp` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `addup_tao` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `addup_play` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_round` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_talk_times` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_friend_times` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_click_npc` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_exchange` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_click_mouse` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_move_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `time_used_stall` smallint(5) unsigned NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `behavior_log`
--

LOCK TABLES `behavior_log` WRITE;
/*!40000 ALTER TABLE `behavior_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `behavior_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block_log`
--

DROP TABLE IF EXISTS `block_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `due` int(11) NOT NULL DEFAULT '0',
  `reason_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `operator` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(255) NOT NULL DEFAULT '',
  `para3` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operator` (`operator`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `time_gid` (`update_time`,`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_log`
--

LOCK TABLES `block_log` WRITE;
/*!40000 ALTER TABLE `block_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `block_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` varchar(15) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `party_gid` varchar(32) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` tinyint(1) NOT NULL DEFAULT '0',
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `bonus_type` tinyint(4) NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '',
  `bonus_prop` varchar(32) DEFAULT NULL,
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_log`
--

LOCK TABLES `campaign_log` WRITE;
/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_log`
--

DROP TABLE IF EXISTS `channel_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '0',
  `target` varchar(32) NOT NULL DEFAULT '',
  `msg` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `sender` (`name`) USING BTREE,
  KEY `target` (`target`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_log`
--

LOCK TABLES `channel_log` WRITE;
/*!40000 ALTER TABLE `channel_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_log`
--

DROP TABLE IF EXISTS `chat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `chat_type` varchar(32) NOT NULL DEFAULT '',
  `chat_channel` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_log`
--

LOCK TABLES `chat_log` WRITE;
/*!40000 ALTER TABLE `chat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_action_log`
--

DROP TABLE IF EXISTS `client_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_action_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) DEFAULT NULL,
  `gid` varchar(32) DEFAULT NULL,
  `mac` varchar(64) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `insider` tinyint(4) unsigned DEFAULT NULL,
  `lv` int(11) unsigned DEFAULT NULL,
  `tao` int(11) unsigned DEFAULT NULL,
  `gold_coin` int(11) unsigned DEFAULT NULL,
  `in_party` tinyint(4) unsigned DEFAULT NULL,
  `send_num` int(11) unsigned DEFAULT NULL,
  `send_gids` int(11) unsigned DEFAULT NULL,
  `receive_num` int(11) unsigned DEFAULT NULL,
  `receive_gids` int(11) unsigned DEFAULT NULL,
  `current_channel` int(11) unsigned DEFAULT NULL,
  `troop_channel` int(11) unsigned DEFAULT NULL,
  `party_channel` int(11) unsigned DEFAULT NULL,
  `team_channel` int(11) unsigned DEFAULT NULL,
  `world_channel` int(11) unsigned DEFAULT NULL,
  `whoop_channel` int(11) unsigned DEFAULT NULL,
  `para1` int(11) DEFAULT NULL,
  `para2` int(11) DEFAULT NULL,
  `para3` int(11) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `mac` (`mac`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_action_log`
--

LOCK TABLES `client_action_log` WRITE;
/*!40000 ALTER TABLE `client_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_performance_log`
--

DROP TABLE IF EXISTS `client_performance_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_performance_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `record_interval` int(11) DEFAULT NULL,
  `account` varchar(32) DEFAULT NULL,
  `gid` varchar(32) DEFAULT NULL,
  `mac` varchar(64) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `insider` tinyint(4) unsigned DEFAULT NULL,
  `lv` int(11) unsigned DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `cpu_cost` int(11) DEFAULT NULL,
  `mem_cost` varchar(128) DEFAULT NULL,
  `render_frame_rate` int(11) unsigned DEFAULT NULL,
  `cur_scene` tinyint(4) unsigned DEFAULT NULL,
  `cur_room_user` int(11) unsigned DEFAULT NULL,
  `cur_room_name` varchar(32) DEFAULT NULL,
  `cur_process_num` int(11) unsigned DEFAULT NULL,
  `minimize_window` tinyint(4) unsigned DEFAULT NULL,
  `button_type` varchar(32) DEFAULT NULL,
  `button_name` varchar(32) DEFAULT NULL,
  `timeslice` varchar(32) DEFAULT NULL,
  `button_times` int(11) unsigned DEFAULT NULL,
  `directx_version` varchar(19) DEFAULT NULL,
  `prever_download` varchar(19) DEFAULT NULL,
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(32) DEFAULT NULL,
  `para4` varchar(64) DEFAULT NULL,
  `para5` varchar(128) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `mac` (`mac`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_performance_log`
--

LOCK TABLES `client_performance_log` WRITE;
/*!40000 ALTER TABLE `client_performance_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_performance_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_consume_log`
--

DROP TABLE IF EXISTS `coin_consume_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_consume_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `coin` int(11) NOT NULL DEFAULT '0',
  `update_time` char(14) NOT NULL DEFAULT '',
  `consume_info` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `account` (`account`) USING BTREE,
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_consume_log`
--

LOCK TABLES `coin_consume_log` WRITE;
/*!40000 ALTER TABLE `coin_consume_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `coin_consume_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_order_log`
--

DROP TABLE IF EXISTS `coin_order_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_order_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `order_id` varchar(15) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(12) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `store_coin` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `tax` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `server` (`server`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_order_log`
--

LOCK TABLES `coin_order_log` WRITE;
/*!40000 ALTER TABLE `coin_order_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `coin_order_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collect_data_log`
--

DROP TABLE IF EXISTS `collect_data_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collect_data_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `cpu_id` varchar(64) NOT NULL DEFAULT '',
  `cpu_info` varchar(64) NOT NULL DEFAULT '',
  `disk_sequence` varchar(64) NOT NULL DEFAULT '',
  `mac_address` varchar(64) NOT NULL DEFAULT '',
  `video_card` varchar(64) NOT NULL DEFAULT '',
  `memory_size` int(11) NOT NULL DEFAULT '0',
  `video_memory` int(11) NOT NULL DEFAULT '0',
  `bios` varchar(64) NOT NULL DEFAULT '',
  `privilege` int(11) NOT NULL DEFAULT '0',
  `para1` varchar(64) NOT NULL DEFAULT '',
  `para2` varchar(64) NOT NULL DEFAULT '',
  `para3` varchar(64) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collect_data_log`
--

LOCK TABLES `collect_data_log` WRITE;
/*!40000 ALTER TABLE `collect_data_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `collect_data_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combat_in_map_log`
--

DROP TABLE IF EXISTS `combat_in_map_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combat_in_map_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `tao` int(11) NOT NULL DEFAULT '0',
  `family` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `map` varchar(32) NOT NULL DEFAULT '',
  `combat_times` int(11) NOT NULL DEFAULT '0',
  `combat_pet` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `char_name` (`char_name`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat_in_map_log`
--

LOCK TABLES `combat_in_map_log` WRITE;
/*!40000 ALTER TABLE `combat_in_map_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `combat_in_map_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combat_log`
--

DROP TABLE IF EXISTS `combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `in_party` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `all_round` int(11) NOT NULL DEFAULT '0',
  `abnormal_round` int(11) NOT NULL DEFAULT '0',
  `abnormal_degree` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `main_attribute` varchar(32) NOT NULL DEFAULT '0',
  `ratio_attribute` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` int(11) NOT NULL DEFAULT '0',
  `para3` varchar(32) NOT NULL DEFAULT '0',
  `para4` varchar(128) NOT NULL DEFAULT '0',
  `para5` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat_log`
--

LOCK TABLES `combat_log` WRITE;
/*!40000 ALTER TABLE `combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_hist`
--

DROP TABLE IF EXISTS `common_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_hist` (
  `id` int(11) NOT NULL DEFAULT '0',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(128) NOT NULL DEFAULT '',
  `para2` varchar(128) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  KEY `id` (`id`) USING BTREE,
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_hist`
--

LOCK TABLES `common_hist` WRITE;
/*!40000 ALTER TABLE `common_hist` DISABLE KEYS */;
/*!40000 ALTER TABLE `common_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_log`
--

DROP TABLE IF EXISTS `common_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(128) NOT NULL DEFAULT '',
  `para2` varchar(128) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_log`
--

LOCK TABLES `common_log` WRITE;
/*!40000 ALTER TABLE `common_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `common_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cost_coin_log`
--

DROP TABLE IF EXISTS `cost_coin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cost_coin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `cost_type` varchar(32) NOT NULL DEFAULT '',
  `cost` int(11) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT '0',
  `uid` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(64) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cost_coin_log`
--

LOCK TABLES `cost_coin_log` WRITE;
/*!40000 ALTER TABLE `cost_coin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cost_coin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csc_combat_log`
--

DROP TABLE IF EXISTS `csc_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csc_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `g_coin` int(11) NOT NULL DEFAULT '0',
  `s_coin` int(11) NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` int(11) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `para4` varchar(128) NOT NULL DEFAULT '',
  `para5` varchar(128) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `server_account` (`server`,`account`) USING BTREE,
  KEY `server_gid` (`server`,`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csc_combat_log`
--

LOCK TABLES `csc_combat_log` WRITE;
/*!40000 ALTER TABLE `csc_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csc_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_combat_log`
--

DROP TABLE IF EXISTS `csl_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(15) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `stage_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `match_id` varchar(32) NOT NULL DEFAULT '',
  `level_section` varchar(15) NOT NULL DEFAULT '',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `score_left` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `combat_index` (`league_id`,`season_id`,`stage_id`,`round_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_combat_log`
--

LOCK TABLES `csl_combat_log` WRITE;
/*!40000 ALTER TABLE `csl_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_match_log`
--

DROP TABLE IF EXISTS `csl_match_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_match_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `home_dist` varchar(32) NOT NULL DEFAULT '',
  `away_dist` varchar(32) NOT NULL DEFAULT '',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` int(11) unsigned NOT NULL DEFAULT '0',
  `stage_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `home_score` int(11) NOT NULL DEFAULT '0',
  `away_score` int(11) NOT NULL DEFAULT '0',
  `home_gid_num` int(11) NOT NULL DEFAULT '0',
  `away_gid_num` int(11) NOT NULL DEFAULT '0',
  `home_avg_lv` int(11) NOT NULL DEFAULT '0',
  `away_avg_lv` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `combat_index` (`league_id`,`season_id`,`stage_id`,`round_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_match_log`
--

LOCK TABLES `csl_match_log` WRITE;
/*!40000 ALTER TABLE `csl_match_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_match_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csp_combat_log`
--

DROP TABLE IF EXISTS `csp_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csp_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(15) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `match_id` varchar(32) NOT NULL DEFAULT '',
  `party_id` varchar(32) NOT NULL DEFAULT '',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `party_contrib` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `combat_index` (`league_id`,`season_id`,`round_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csp_combat_log`
--

LOCK TABLES `csp_combat_log` WRITE;
/*!40000 ALTER TABLE `csp_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csp_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csp_match_log`
--

DROP TABLE IF EXISTS `csp_match_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csp_match_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `home_dist` varchar(32) NOT NULL DEFAULT '',
  `away_dist` varchar(32) NOT NULL DEFAULT '',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` int(11) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `home_party_name` varchar(32) NOT NULL DEFAULT '0',
  `away_party_name` varchar(32) NOT NULL DEFAULT '0',
  `home_gid_num` int(11) NOT NULL DEFAULT '0',
  `away_gid_num` int(11) NOT NULL DEFAULT '0',
  `home_avg_lv` int(11) NOT NULL DEFAULT '0',
  `away_avg_lv` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `combat_index` (`league_id`,`season_id`,`round_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csp_match_log`
--

LOCK TABLES `csp_match_log` WRITE;
/*!40000 ALTER TABLE `csp_match_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csp_match_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debug_log`
--

DROP TABLE IF EXISTS `debug_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `debug_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) DEFAULT '',
  `para3` varchar(128) DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `type_action` (`type`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debug_log`
--

LOCK TABLES `debug_log` WRITE;
/*!40000 ALTER TABLE `debug_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `debug_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encourage_detail_log`
--

DROP TABLE IF EXISTS `encourage_detail_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encourage_detail_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dist` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `update_time` char(14) NOT NULL DEFAULT '',
  `encourage_type` varchar(64) NOT NULL DEFAULT '',
  `bonus_name` varchar(32) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `encourage_id` int(11) DEFAULT '0',
  `ip` varchar(16) DEFAULT '',
  `para1` varchar(32) DEFAULT '',
  `para2` varchar(255) DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encourage_detail_log`
--

LOCK TABLES `encourage_detail_log` WRITE;
/*!40000 ALTER TABLE `encourage_detail_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `encourage_detail_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_log`
--

DROP TABLE IF EXISTS `equipment_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `item_iid` varchar(32) DEFAULT '',
  `cost_item_name` varchar(32) DEFAULT '',
  `cost_item_iid` varchar(32) DEFAULT '',
  `cost` int(10) NOT NULL DEFAULT '0',
  `oper_result` tinyint(4) NOT NULL DEFAULT '0',
  `para1` varchar(32) DEFAULT '',
  `para2` varchar(128) DEFAULT '',
  `para3` varchar(255) DEFAULT '',
  `item_prop` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `equip_iid` (`item_iid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_log`
--

LOCK TABLES `equipment_log` WRITE;
/*!40000 ALTER TABLE `equipment_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipment_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `errand_log`
--

DROP TABLE IF EXISTS `errand_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `errand_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `party_gid` varchar(32) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `bonus_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '0',
  `bonus_prop` varchar(32) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `errand_log`
--

LOCK TABLES `errand_log` WRITE;
/*!40000 ALTER TABLE `errand_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `errand_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange_appraise_log`
--

DROP TABLE IF EXISTS `exchange_appraise_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange_appraise_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `exchange_time` char(14) NOT NULL DEFAULT '',
  `account1` varchar(32) NOT NULL DEFAULT '',
  `name1` varchar(32) NOT NULL DEFAULT '',
  `gid1` varchar(32) NOT NULL DEFAULT '',
  `lv1` tinyint(4) NOT NULL DEFAULT '0',
  `tao1` int(11) NOT NULL DEFAULT '0',
  `gold_coin1` int(11) NOT NULL DEFAULT '0',
  `account2` varchar(32) NOT NULL DEFAULT '',
  `name2` varchar(32) NOT NULL DEFAULT '',
  `gid2` varchar(32) NOT NULL DEFAULT '',
  `lv2` tinyint(4) NOT NULL DEFAULT '0',
  `tao2` int(11) NOT NULL DEFAULT '0',
  `gold_coin2` int(11) NOT NULL DEFAULT '0',
  `report` tinyint(4) NOT NULL DEFAULT '0',
  `star` tinyint(4) NOT NULL DEFAULT '0',
  `content` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(255) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account1` (`account1`) USING BTREE,
  KEY `account2` (`account2`) USING BTREE,
  KEY `gid1` (`gid1`) USING BTREE,
  KEY `gid2` (`gid2`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange_appraise_log`
--

LOCK TABLES `exchange_appraise_log` WRITE;
/*!40000 ALTER TABLE `exchange_appraise_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `exchange_appraise_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gbuy_action_log`
--

DROP TABLE IF EXISTS `gbuy_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gbuy_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `gbuy_gcoin` int(11) NOT NULL DEFAULT '0',
  `gbuy_scoin` int(11) NOT NULL DEFAULT '0',
  `action` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `coin_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `coin` int(11) NOT NULL DEFAULT '0',
  `gbg_id` varchar(32) NOT NULL DEFAULT '',
  `gbg_name` varchar(32) NOT NULL DEFAULT '',
  `gbg_amount` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `gbg_id` (`gbg_id`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gbuy_action_log`
--

LOCK TABLES `gbuy_action_log` WRITE;
/*!40000 ALTER TABLE `gbuy_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gbuy_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_log`
--

DROP TABLE IF EXISTS `gift_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '0',
  `gid` varchar(32) NOT NULL DEFAULT '0',
  `lv` int(11) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) unsigned NOT NULL DEFAULT '0',
  `login_ip` varchar(32) NOT NULL DEFAULT '0',
  `mac` varchar(32) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '0',
  `gold_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `insider` varchar(32) NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_log`
--

LOCK TABLES `gift_log` WRITE;
/*!40000 ALTER TABLE `gift_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gm_log`
--

DROP TABLE IF EXISTS `gm_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gm_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `cash` int(11) NOT NULL DEFAULT '0',
  `mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` int(11) unsigned NOT NULL DEFAULT '0',
  `operator` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(255) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operator` (`operator`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `time_gid` (`update_time`,`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gm_log`
--

LOCK TABLES `gm_log` WRITE;
/*!40000 ALTER TABLE `gm_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gs_log`
--

DROP TABLE IF EXISTS `gs_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gs_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `ctime` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `server` (`server`) USING BTREE,
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2924 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gs_log`
--

LOCK TABLES `gs_log` WRITE;
/*!40000 ALTER TABLE `gs_log` DISABLE KEYS */;
INSERT INTO `gs_log` VALUES (2923,'万里长城','万里长城','在线MAC数',1547285918,'20190112173838',0,'');
/*!40000 ALTER TABLE `gs_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history_credit_log`
--

DROP TABLE IF EXISTS `history_credit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history_credit_log` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `coin` int(11) NOT NULL DEFAULT '0',
  `used` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_credit_log`
--

LOCK TABLES `history_credit_log` WRITE;
/*!40000 ALTER TABLE `history_credit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `history_credit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_action_log`
--

DROP TABLE IF EXISTS `important_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `important_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(32) NOT NULL DEFAULT '',
  `bonus_type` tinyint(4) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `party_gid` char(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_action_log`
--

LOCK TABLES `important_action_log` WRITE;
/*!40000 ALTER TABLE `important_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `important_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_log`
--

DROP TABLE IF EXISTS `important_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `important_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(128) NOT NULL DEFAULT '',
  `para2` varchar(128) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type_action` (`type`,`action`) USING BTREE,
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_log`
--

LOCK TABLES `important_log` WRITE;
/*!40000 ALTER TABLE `important_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `important_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_pet_log`
--

DROP TABLE IF EXISTS `important_pet_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `important_pet_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account_from` varchar(32) NOT NULL DEFAULT '',
  `account_to` varchar(32) NOT NULL DEFAULT '',
  `gid_from` char(16) NOT NULL DEFAULT '',
  `gid_to` char(16) NOT NULL DEFAULT '',
  `lv_from` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv_to` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `pet_iid` varchar(32) NOT NULL DEFAULT '',
  `pet_name` varchar(32) NOT NULL DEFAULT '',
  `pet_property` text NOT NULL,
  `para1` varchar(255) NOT NULL DEFAULT '',
  `para2` varchar(255) NOT NULL DEFAULT '',
  `para3` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `account_to` (`account_to`) USING BTREE,
  KEY `gid_to` (`gid_to`) USING BTREE,
  KEY `pet_iid` (`pet_iid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_pet_log`
--

LOCK TABLES `important_pet_log` WRITE;
/*!40000 ALTER TABLE `important_pet_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `important_pet_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_task_log`
--

DROP TABLE IF EXISTS `ip_task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `task` varchar(32) NOT NULL DEFAULT '',
  `num` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`time`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_task_log`
--

LOCK TABLES `ip_task_log` WRITE;
/*!40000 ALTER TABLE `ip_task_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_transfer_log`
--

DROP TABLE IF EXISTS `item_transfer_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_transfer_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `action` varchar(32) NOT NULL DEFAULT '',
  `account_from` varchar(32) DEFAULT NULL,
  `account_to` varchar(32) DEFAULT NULL,
  `gid_from` varchar(16) DEFAULT NULL,
  `gid_to` varchar(16) DEFAULT NULL,
  `lv_from` tinyint(3) unsigned DEFAULT NULL,
  `lv_to` tinyint(3) unsigned DEFAULT NULL,
  `gold_coin_from` int(10) unsigned DEFAULT NULL,
  `gold_coin_to` int(10) unsigned DEFAULT NULL,
  `mac_from` char(16) DEFAULT NULL,
  `mac_to` char(16) DEFAULT NULL,
  `ip_from` varchar(15) DEFAULT NULL,
  `ip_to` varchar(15) DEFAULT NULL,
  `locality_from` varchar(64) DEFAULT NULL,
  `locality_to` varchar(64) DEFAULT NULL,
  `item_iid` varchar(32) DEFAULT NULL,
  `item_name` varchar(32) DEFAULT NULL,
  `item_amount` int(10) unsigned DEFAULT NULL,
  `transfer_type` tinyint(3) unsigned DEFAULT NULL,
  `transfer_id` varchar(32) DEFAULT NULL,
  `para1` varchar(32) DEFAULT NULL,
  `para2` varchar(255) DEFAULT NULL,
  `para3` int(10) unsigned DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `account` (`account_from`) USING BTREE,
  KEY `gid` (`gid_from`) USING BTREE,
  KEY `iid` (`item_iid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_transfer_log`
--

LOCK TABLES `item_transfer_log` WRITE;
/*!40000 ALTER TABLE `item_transfer_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_transfer_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level_up_log`
--

DROP TABLE IF EXISTS `level_up_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `level_up_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `upgrade_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(32) NOT NULL DEFAULT '',
  `time_used` bigint(20) DEFAULT NULL,
  `last_lv_up` varchar(14) NOT NULL DEFAULT '',
  `create_time` varchar(14) NOT NULL DEFAULT '',
  `newbie` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `para4` bigint(20) DEFAULT NULL,
  `para5` varchar(255) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level_up_log`
--

LOCK TABLES `level_up_log` WRITE;
/*!40000 ALTER TABLE `level_up_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `level_up_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_log`
--

DROP TABLE IF EXISTS `login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `privilege` int(11) NOT NULL DEFAULT '0',
  `login_mode` int(11) NOT NULL DEFAULT '0',
  `time_used` int(11) NOT NULL DEFAULT '0',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `insider` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `party` varchar(32) NOT NULL DEFAULT '',
  `family` varchar(32) NOT NULL DEFAULT '',
  `create_time` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `protect_type` varchar(32) NOT NULL DEFAULT '',
  `upgrade_state` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `login_ip` (`login_ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_log`
--

LOCK TABLES `login_log` WRITE;
/*!40000 ALTER TABLE `login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material1_log`
--

DROP TABLE IF EXISTS `material1_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material1_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '0',
  `lv` int(11) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) unsigned NOT NULL DEFAULT '0',
  `login_ip` varchar(32) NOT NULL DEFAULT '0',
  `mac` varchar(32) NOT NULL DEFAULT '0',
  `gold_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `insider` varchar(32) NOT NULL DEFAULT '0',
  `map` varchar(32) NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `lasted_time` int(11) unsigned NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material1_log`
--

LOCK TABLES `material1_log` WRITE;
/*!40000 ALTER TABLE `material1_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `material1_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_log`
--

DROP TABLE IF EXISTS `material_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '0',
  `gid` varchar(32) NOT NULL DEFAULT '0',
  `lv` int(11) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) unsigned NOT NULL DEFAULT '0',
  `login_ip` varchar(32) NOT NULL DEFAULT '0',
  `mac` varchar(32) NOT NULL DEFAULT '0',
  `gold_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `silver_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `insider` varchar(32) NOT NULL DEFAULT '0',
  `map` varchar(32) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `lasted_time` int(11) unsigned NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_log`
--

LOCK TABLES `material_log` WRITE;
/*!40000 ALTER TABLE `material_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `material_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money1_log`
--

DROP TABLE IF EXISTS `money1_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money1_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(32) NOT NULL DEFAULT '',
  `cash_type` tinyint(4) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money1_log`
--

LOCK TABLES `money1_log` WRITE;
/*!40000 ALTER TABLE `money1_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `money1_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money_log`
--

DROP TABLE IF EXISTS `money_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `action` tinyint(4) NOT NULL DEFAULT '0',
  `gid` char(16) NOT NULL DEFAULT '',
  `gid_op` char(16) DEFAULT NULL,
  `cash` int(11) DEFAULT NULL,
  `voucher` int(11) DEFAULT NULL,
  `after_value` varchar(64) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_log`
--

LOCK TABLES `money_log` WRITE;
/*!40000 ALTER TABLE `money_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `money_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nummary_log`
--

DROP TABLE IF EXISTS `nummary_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nummary_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` tinyint(4) unsigned DEFAULT NULL,
  `action` varchar(32) NOT NULL DEFAULT '',
  `totality` bigint(20) unsigned NOT NULL DEFAULT '0',
  `times` mediumint(9) unsigned DEFAULT NULL,
  `gids` mediumint(9) unsigned DEFAULT NULL,
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `type_action` (`type`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nummary_log`
--

LOCK TABLES `nummary_log` WRITE;
/*!40000 ALTER TABLE `nummary_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `nummary_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_level_up_log`
--

DROP TABLE IF EXISTS `pet_level_up_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_level_up_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `lv` int(4) NOT NULL DEFAULT '0',
  `last_lv_up` varchar(14) NOT NULL DEFAULT '',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) DEFAULT '',
  `para3` varchar(255) DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `iid` (`iid`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_level_up_log`
--

LOCK TABLES `pet_level_up_log` WRITE;
/*!40000 ALTER TABLE `pet_level_up_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_level_up_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_log`
--

DROP TABLE IF EXISTS `pet_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `pet_name` varchar(16) NOT NULL DEFAULT '',
  `pet_iid` varchar(32) NOT NULL DEFAULT '',
  `cost_item` varchar(16) NOT NULL DEFAULT '',
  `item_iid` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `pet_memo` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `pet_iid` (`pet_iid`) USING BTREE,
  KEY `item_iid` (`item_iid`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_log`
--

LOCK TABLES `pet_log` WRITE;
/*!40000 ALTER TABLE `pet_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plug_log`
--

DROP TABLE IF EXISTS `plug_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plug_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tool` int(11) NOT NULL DEFAULT '0',
  `time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `coins` int(11) NOT NULL DEFAULT '0',
  `relevance` int(11) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `tool` (`tool`) USING BTREE,
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plug_log`
--

LOCK TABLES `plug_log` WRITE;
/*!40000 ALTER TABLE `plug_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `plug_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_bind_log`
--

DROP TABLE IF EXISTS `property_bind_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_bind_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(16) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `para` varchar(32) DEFAULT NULL,
  `main` tinyint(4) unsigned DEFAULT '0',
  `data` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `iid` (`iid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_bind_log`
--

LOCK TABLES `property_bind_log` WRITE;
/*!40000 ALTER TABLE `property_bind_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_bind_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_platform_log`
--

DROP TABLE IF EXISTS `purchase_platform_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_platform_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `order_id` varchar(32) NOT NULL DEFAULT '',
  `order_time` int(11) unsigned NOT NULL DEFAULT '0',
  `commodity_type` int(11) unsigned NOT NULL DEFAULT '0',
  `commodity_name` varchar(64) NOT NULL DEFAULT '0',
  `commodity_iid` varchar(32) NOT NULL DEFAULT '',
  `commodity_amount` int(11) NOT NULL DEFAULT '0',
  `unit_price` int(11) NOT NULL DEFAULT '0',
  `turnover` int(11) NOT NULL DEFAULT '0',
  `tax` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(32) NOT NULL DEFAULT '0',
  `para4` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE,
  KEY `time_account` (`update_time`,`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_platform_log`
--

LOCK TABLES `purchase_platform_log` WRITE;
/*!40000 ALTER TABLE `purchase_platform_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_platform_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_log`
--

DROP TABLE IF EXISTS `report_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account1` varchar(32) NOT NULL DEFAULT '',
  `name1` varchar(32) NOT NULL DEFAULT '',
  `gid1` varchar(32) NOT NULL DEFAULT '',
  `lv1` tinyint(4) NOT NULL DEFAULT '0',
  `tao1` int(11) NOT NULL DEFAULT '0',
  `gold_coin1` int(11) NOT NULL DEFAULT '0',
  `account2` varchar(32) NOT NULL DEFAULT '',
  `name2` varchar(32) NOT NULL DEFAULT '',
  `gid2` varchar(32) NOT NULL DEFAULT '',
  `lv2` tinyint(4) NOT NULL DEFAULT '0',
  `tao2` int(11) NOT NULL DEFAULT '0',
  `gold_coin2` int(11) NOT NULL DEFAULT '0',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(255) NOT NULL DEFAULT '',
  `para4` varchar(255) NOT NULL DEFAULT '',
  `para5` varchar(255) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account1` (`account1`) USING BTREE,
  KEY `account2` (`account2`) USING BTREE,
  KEY `name2` (`name2`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_log`
--

LOCK TABLES `report_log` WRITE;
/*!40000 ALTER TABLE `report_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `safe_log`
--

DROP TABLE IF EXISTS `safe_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `safe_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lv` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tao` int(10) unsigned NOT NULL DEFAULT '0',
  `ob_iid` varchar(32) NOT NULL DEFAULT '',
  `ob_name` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) DEFAULT NULL,
  `para2` varchar(255) DEFAULT NULL,
  `para3` int(11) DEFAULT NULL,
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `safe_log`
--

LOCK TABLES `safe_log` WRITE;
/*!40000 ALTER TABLE `safe_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `safe_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_log`
--

DROP TABLE IF EXISTS `sale_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `dist` varchar(16) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_log`
--

LOCK TABLES `sale_log` WRITE;
/*!40000 ALTER TABLE `sale_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stat`
--

DROP TABLE IF EXISTS `stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) DEFAULT NULL,
  `pid` varchar(6) DEFAULT NULL,
  `server` varchar(20) DEFAULT NULL,
  `cpu` varchar(6) DEFAULT NULL,
  `vmem` varchar(6) DEFAULT NULL,
  `rmem` varchar(6) DEFAULT NULL,
  `cpu2` varchar(6) DEFAULT NULL,
  `para1` varchar(6) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(32) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stat`
--

LOCK TABLES `stat` WRITE;
/*!40000 ALTER TABLE `stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switch_log`
--

DROP TABLE IF EXISTS `switch_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switch_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `login_mode` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `time_used` int(11) NOT NULL DEFAULT '0',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switch_log`
--

LOCK TABLES `switch_log` WRITE;
/*!40000 ALTER TABLE `switch_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `switch_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_monitor_log`
--

DROP TABLE IF EXISTS `system_monitor_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_monitor_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` tinyint(4) NOT NULL DEFAULT '0',
  `number_ih` int(11) NOT NULL DEFAULT '0',
  `number_il` int(11) NOT NULL DEFAULT '0',
  `degree` tinyint(4) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(255) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `degree` (`degree`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_monitor_log`
--

LOCK TABLES `system_monitor_log` WRITE;
/*!40000 ALTER TABLE `system_monitor_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_monitor_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tao_stat_log`
--

DROP TABLE IF EXISTS `tao_stat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tao_stat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `finish_date` char(8) NOT NULL DEFAULT '',
  `dist_id` int(11) NOT NULL DEFAULT '0',
  `dist_name` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `gid_times` int(11) NOT NULL DEFAULT '0',
  `gid_charge_times` int(11) NOT NULL DEFAULT '0',
  `lv_charge_times` int(11) NOT NULL DEFAULT '0',
  `ip_times` int(11) NOT NULL DEFAULT '0',
  `ip_gids` int(11) NOT NULL DEFAULT '0',
  `punish` tinyint(4) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `finish_date` (`finish_date`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tao_stat_log`
--

LOCK TABLES `tao_stat_log` WRITE;
/*!40000 ALTER TABLE `tao_stat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tao_stat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tao_task_log`
--

DROP TABLE IF EXISTS `tao_task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tao_task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist_id` int(11) NOT NULL DEFAULT '0',
  `dist_name` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `use_charge` tinyint(4) NOT NULL DEFAULT '0',
  `lv_charge` tinyint(4) NOT NULL DEFAULT '0',
  `lv_cha` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tao_task_log`
--

LOCK TABLES `tao_task_log` WRITE;
/*!40000 ALTER TABLE `tao_task_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tao_task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_log`
--

DROP TABLE IF EXISTS `task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(16) NOT NULL DEFAULT '',
  `dist` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `task_type` varchar(16) NOT NULL DEFAULT '',
  `task_name` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(64) NOT NULL DEFAULT '',
  `ip` varchar(16) NOT NULL DEFAULT '',
  `line` varchar(16) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` int(11) NOT NULL DEFAULT '0',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `task_type` (`task_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_log`
--

LOCK TABLES `task_log` WRITE;
/*!40000 ALTER TABLE `task_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '0',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_log`
--

LOCK TABLES `user_log` WRITE;
/*!40000 ALTER TABLE `user_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_report_ip_log`
--

DROP TABLE IF EXISTS `user_report_ip_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_report_ip_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `para1` varchar(255) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `para4` varchar(32) NOT NULL DEFAULT '',
  `para5` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_report_ip_log`
--

LOCK TABLES `user_report_ip_log` WRITE;
/*!40000 ALTER TABLE `user_report_ip_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_report_ip_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishing_log`
--

DROP TABLE IF EXISTS `wishing_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishing_log` (
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `score` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`gid`),
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishing_log`
--

LOCK TABLES `wishing_log` WRITE;
/*!40000 ALTER TABLE `wishing_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishing_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_add_point_log`
--

DROP TABLE IF EXISTS `zq_add_point_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_add_point_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `point_before` int(11) NOT NULL DEFAULT '0',
  `point_after` int(11) NOT NULL DEFAULT '0',
  `point_add` int(11) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_add_point_log`
--

LOCK TABLES `zq_add_point_log` WRITE;
/*!40000 ALTER TABLE `zq_add_point_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_add_point_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_card_log`
--

DROP TABLE IF EXISTS `zq_card_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_card_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '0',
  `bonus_prop` varchar(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_card_log`
--

LOCK TABLES `zq_card_log` WRITE;
/*!40000 ALTER TABLE `zq_card_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_card_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_combat_log`
--

DROP TABLE IF EXISTS `zq_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `total_round` int(11) NOT NULL DEFAULT '0',
  `hero_name` varchar(32) NOT NULL DEFAULT '',
  `hero_lv` int(11) NOT NULL DEFAULT '0',
  `result` tinyint(4) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_combat_log`
--

LOCK TABLES `zq_combat_log` WRITE;
/*!40000 ALTER TABLE `zq_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_cost_point_log`
--

DROP TABLE IF EXISTS `zq_cost_point_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_cost_point_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `point_before` int(11) NOT NULL DEFAULT '0',
  `point_after` int(11) NOT NULL DEFAULT '0',
  `point_cost` int(11) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_cost_point_log`
--

LOCK TABLES `zq_cost_point_log` WRITE;
/*!40000 ALTER TABLE `zq_cost_point_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_cost_point_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_errand_log`
--

DROP TABLE IF EXISTS `zq_errand_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_errand_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `bonus_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '0',
  `bonus_prop` varchar(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_errand_log`
--

LOCK TABLES `zq_errand_log` WRITE;
/*!40000 ALTER TABLE `zq_errand_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_errand_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_login_log`
--

DROP TABLE IF EXISTS `zq_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `privilege` int(11) NOT NULL DEFAULT '0',
  `login_mode` int(11) NOT NULL DEFAULT '0',
  `time_used` int(11) NOT NULL DEFAULT '0',
  `hero_lv` int(11) NOT NULL DEFAULT '0',
  `xg_point` int(11) NOT NULL DEFAULT '0',
  `card_num` int(11) NOT NULL DEFAULT '0',
  `fragment_num` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_login_log`
--

LOCK TABLES `zq_login_log` WRITE;
/*!40000 ALTER TABLE `zq_login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_lv_up_log`
--

DROP TABLE IF EXISTS `zq_lv_up_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_lv_up_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `hero_name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_lv_up_log`
--

LOCK TABLES `zq_lv_up_log` WRITE;
/*!40000 ALTER TABLE `zq_lv_up_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_lv_up_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `dl_ldb_all`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dl_ldb_all` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dl_ldb_all`;

--
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `activity` varchar(32) NOT NULL DEFAULT '',
  `start_time` char(14) NOT NULL DEFAULT '',
  `end_time` char(14) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(255) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `activity` (`activity`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anti_cheater_log`
--

DROP TABLE IF EXISTS `anti_cheater_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anti_cheater_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(32) NOT NULL DEFAULT '',
  `para1` varchar(32) DEFAULT '',
  `para2` varchar(32) DEFAULT '',
  `para3` varchar(128) DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `type` (`type`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anti_cheater_log`
--

LOCK TABLES `anti_cheater_log` WRITE;
/*!40000 ALTER TABLE `anti_cheater_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `anti_cheater_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antiaddiction_log`
--

DROP TABLE IF EXISTS `antiaddiction_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antiaddiction_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `online_time` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antiaddiction_log`
--

LOCK TABLES `antiaddiction_log` WRITE;
/*!40000 ALTER TABLE `antiaddiction_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `antiaddiction_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apex_log`
--

DROP TABLE IF EXISTS `apex_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apex_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(3) NOT NULL DEFAULT '0',
  `kill_action` varchar(32) NOT NULL DEFAULT '',
  `task` tinyint(3) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) DEFAULT NULL,
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(3) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) DEFAULT NULL,
  `error_id` int(11) NOT NULL DEFAULT '0',
  `str_n` tinyint(3) NOT NULL DEFAULT '0',
  `ip` varchar(16) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `ip_gids` int(11) NOT NULL DEFAULT '0',
  `mac_gids` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `error_id` (`error_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apex_log`
--

LOCK TABLES `apex_log` WRITE;
/*!40000 ALTER TABLE `apex_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `apex_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apply_log`
--

DROP TABLE IF EXISTS `apply_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apply_log` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `upgrade_state` tinyint(3) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) DEFAULT NULL,
  `lv` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gold_coin` int(10) NOT NULL DEFAULT '0',
  `insider` int(10) unsigned NOT NULL DEFAULT '0',
  `item_type` tinyint(3) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `item_price` int(11) NOT NULL DEFAULT '0',
  `item_life` int(11) NOT NULL DEFAULT '0',
  `item_source` tinyint(4) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `lv_equipment` smallint(5) unsigned DEFAULT NULL,
  `para1` int(10) DEFAULT NULL,
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `name` (`item_name`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply_log`
--

LOCK TABLES `apply_log` WRITE;
/*!40000 ALTER TABLE `apply_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `apply_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_talk_log`
--

DROP TABLE IF EXISTS `auto_talk_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_talk_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` tinyint(2) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `max_lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `map` varchar(255) NOT NULL DEFAULT '',
  `call_times` int(11) NOT NULL DEFAULT '0',
  `publish` tinyint(2) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `account` (`account`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `mac` (`mac`) USING BTREE,
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_talk_log`
--

LOCK TABLES `auto_talk_log` WRITE;
/*!40000 ALTER TABLE `auto_talk_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `auto_talk_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `behavior_log`
--

DROP TABLE IF EXISTS `behavior_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `behavior_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `time_used` smallint(5) unsigned NOT NULL DEFAULT '0',
  `time_used_fd` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lv` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tao` int(10) unsigned NOT NULL DEFAULT '0',
  `upgrade_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addup_exp` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `addup_tao` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `addup_play` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_round` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_talk_times` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_friend_times` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_click_npc` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_exchange` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_click_mouse` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_move_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `time_used_stall` smallint(5) unsigned NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `behavior_log`
--

LOCK TABLES `behavior_log` WRITE;
/*!40000 ALTER TABLE `behavior_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `behavior_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block_log`
--

DROP TABLE IF EXISTS `block_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `due` int(11) NOT NULL DEFAULT '0',
  `reason_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `operator` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(255) NOT NULL DEFAULT '',
  `para3` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operator` (`operator`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `time_gid` (`update_time`,`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_log`
--

LOCK TABLES `block_log` WRITE;
/*!40000 ALTER TABLE `block_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `block_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` varchar(15) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `party_gid` varchar(32) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` tinyint(1) NOT NULL DEFAULT '0',
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `bonus_type` tinyint(4) NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '',
  `bonus_prop` varchar(32) DEFAULT NULL,
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_log`
--

LOCK TABLES `campaign_log` WRITE;
/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_log`
--

DROP TABLE IF EXISTS `channel_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '0',
  `target` varchar(32) NOT NULL DEFAULT '',
  `msg` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `sender` (`name`) USING BTREE,
  KEY `target` (`target`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_log`
--

LOCK TABLES `channel_log` WRITE;
/*!40000 ALTER TABLE `channel_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_log`
--

DROP TABLE IF EXISTS `chat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `chat_type` varchar(32) NOT NULL DEFAULT '',
  `chat_channel` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_log`
--

LOCK TABLES `chat_log` WRITE;
/*!40000 ALTER TABLE `chat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_action_log`
--

DROP TABLE IF EXISTS `client_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_action_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) DEFAULT NULL,
  `gid` varchar(32) DEFAULT NULL,
  `mac` varchar(64) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `insider` tinyint(4) unsigned DEFAULT NULL,
  `lv` int(11) unsigned DEFAULT NULL,
  `tao` int(11) unsigned DEFAULT NULL,
  `gold_coin` int(11) unsigned DEFAULT NULL,
  `in_party` tinyint(4) unsigned DEFAULT NULL,
  `send_num` int(11) unsigned DEFAULT NULL,
  `send_gids` int(11) unsigned DEFAULT NULL,
  `receive_num` int(11) unsigned DEFAULT NULL,
  `receive_gids` int(11) unsigned DEFAULT NULL,
  `current_channel` int(11) unsigned DEFAULT NULL,
  `troop_channel` int(11) unsigned DEFAULT NULL,
  `party_channel` int(11) unsigned DEFAULT NULL,
  `team_channel` int(11) unsigned DEFAULT NULL,
  `world_channel` int(11) unsigned DEFAULT NULL,
  `whoop_channel` int(11) unsigned DEFAULT NULL,
  `para1` int(11) DEFAULT NULL,
  `para2` int(11) DEFAULT NULL,
  `para3` int(11) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `mac` (`mac`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_action_log`
--

LOCK TABLES `client_action_log` WRITE;
/*!40000 ALTER TABLE `client_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_performance_log`
--

DROP TABLE IF EXISTS `client_performance_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_performance_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `record_interval` int(11) DEFAULT NULL,
  `account` varchar(32) DEFAULT NULL,
  `gid` varchar(32) DEFAULT NULL,
  `mac` varchar(64) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `insider` tinyint(4) unsigned DEFAULT NULL,
  `lv` int(11) unsigned DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `cpu_cost` int(11) DEFAULT NULL,
  `mem_cost` varchar(128) DEFAULT NULL,
  `render_frame_rate` int(11) unsigned DEFAULT NULL,
  `cur_scene` tinyint(4) unsigned DEFAULT NULL,
  `cur_room_user` int(11) unsigned DEFAULT NULL,
  `cur_room_name` varchar(32) DEFAULT NULL,
  `cur_process_num` int(11) unsigned DEFAULT NULL,
  `minimize_window` tinyint(4) unsigned DEFAULT NULL,
  `button_type` varchar(32) DEFAULT NULL,
  `button_name` varchar(32) DEFAULT NULL,
  `timeslice` varchar(32) DEFAULT NULL,
  `button_times` int(11) unsigned DEFAULT NULL,
  `directx_version` varchar(19) DEFAULT NULL,
  `prever_download` varchar(19) DEFAULT NULL,
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(32) DEFAULT NULL,
  `para4` varchar(64) DEFAULT NULL,
  `para5` varchar(128) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `mac` (`mac`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_performance_log`
--

LOCK TABLES `client_performance_log` WRITE;
/*!40000 ALTER TABLE `client_performance_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_performance_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_consume_log`
--

DROP TABLE IF EXISTS `coin_consume_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_consume_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `coin` int(11) NOT NULL DEFAULT '0',
  `update_time` char(14) NOT NULL DEFAULT '',
  `consume_info` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `account` (`account`) USING BTREE,
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_consume_log`
--

LOCK TABLES `coin_consume_log` WRITE;
/*!40000 ALTER TABLE `coin_consume_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `coin_consume_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_order_log`
--

DROP TABLE IF EXISTS `coin_order_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_order_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `order_id` varchar(15) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(12) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `store_coin` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `tax` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `server` (`server`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_order_log`
--

LOCK TABLES `coin_order_log` WRITE;
/*!40000 ALTER TABLE `coin_order_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `coin_order_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collect_data_log`
--

DROP TABLE IF EXISTS `collect_data_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collect_data_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `cpu_id` varchar(64) NOT NULL DEFAULT '',
  `cpu_info` varchar(64) NOT NULL DEFAULT '',
  `disk_sequence` varchar(64) NOT NULL DEFAULT '',
  `mac_address` varchar(64) NOT NULL DEFAULT '',
  `video_card` varchar(64) NOT NULL DEFAULT '',
  `memory_size` int(11) NOT NULL DEFAULT '0',
  `video_memory` int(11) NOT NULL DEFAULT '0',
  `bios` varchar(64) NOT NULL DEFAULT '',
  `privilege` int(11) NOT NULL DEFAULT '0',
  `para1` varchar(64) NOT NULL DEFAULT '',
  `para2` varchar(64) NOT NULL DEFAULT '',
  `para3` varchar(64) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collect_data_log`
--

LOCK TABLES `collect_data_log` WRITE;
/*!40000 ALTER TABLE `collect_data_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `collect_data_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combat_in_map_log`
--

DROP TABLE IF EXISTS `combat_in_map_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combat_in_map_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `tao` int(11) NOT NULL DEFAULT '0',
  `family` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `map` varchar(32) NOT NULL DEFAULT '',
  `combat_times` int(11) NOT NULL DEFAULT '0',
  `combat_pet` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `char_name` (`char_name`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat_in_map_log`
--

LOCK TABLES `combat_in_map_log` WRITE;
/*!40000 ALTER TABLE `combat_in_map_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `combat_in_map_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combat_log`
--

DROP TABLE IF EXISTS `combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `in_party` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `all_round` int(11) NOT NULL DEFAULT '0',
  `abnormal_round` int(11) NOT NULL DEFAULT '0',
  `abnormal_degree` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `main_attribute` varchar(32) NOT NULL DEFAULT '0',
  `ratio_attribute` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` int(11) NOT NULL DEFAULT '0',
  `para3` varchar(32) NOT NULL DEFAULT '0',
  `para4` varchar(128) NOT NULL DEFAULT '0',
  `para5` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat_log`
--

LOCK TABLES `combat_log` WRITE;
/*!40000 ALTER TABLE `combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_hist`
--

DROP TABLE IF EXISTS `common_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_hist` (
  `id` int(11) NOT NULL DEFAULT '0',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(128) NOT NULL DEFAULT '',
  `para2` varchar(128) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  KEY `id` (`id`) USING BTREE,
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_hist`
--

LOCK TABLES `common_hist` WRITE;
/*!40000 ALTER TABLE `common_hist` DISABLE KEYS */;
/*!40000 ALTER TABLE `common_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_log`
--

DROP TABLE IF EXISTS `common_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(128) NOT NULL DEFAULT '',
  `para2` varchar(128) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_log`
--

LOCK TABLES `common_log` WRITE;
/*!40000 ALTER TABLE `common_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `common_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cost_coin_log`
--

DROP TABLE IF EXISTS `cost_coin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cost_coin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `cost_type` varchar(32) NOT NULL DEFAULT '',
  `cost` int(11) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT '0',
  `uid` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(64) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cost_coin_log`
--

LOCK TABLES `cost_coin_log` WRITE;
/*!40000 ALTER TABLE `cost_coin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cost_coin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csc_combat_log`
--

DROP TABLE IF EXISTS `csc_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csc_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `g_coin` int(11) NOT NULL DEFAULT '0',
  `s_coin` int(11) NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` int(11) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `para4` varchar(128) NOT NULL DEFAULT '',
  `para5` varchar(128) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `server_account` (`server`,`account`) USING BTREE,
  KEY `server_gid` (`server`,`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csc_combat_log`
--

LOCK TABLES `csc_combat_log` WRITE;
/*!40000 ALTER TABLE `csc_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csc_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_combat_log`
--

DROP TABLE IF EXISTS `csl_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(15) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `stage_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `match_id` varchar(32) NOT NULL DEFAULT '',
  `level_section` varchar(15) NOT NULL DEFAULT '',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `score_left` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `combat_index` (`league_id`,`season_id`,`stage_id`,`round_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_combat_log`
--

LOCK TABLES `csl_combat_log` WRITE;
/*!40000 ALTER TABLE `csl_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_match_log`
--

DROP TABLE IF EXISTS `csl_match_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_match_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `home_dist` varchar(32) NOT NULL DEFAULT '',
  `away_dist` varchar(32) NOT NULL DEFAULT '',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` int(11) unsigned NOT NULL DEFAULT '0',
  `stage_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `home_score` int(11) NOT NULL DEFAULT '0',
  `away_score` int(11) NOT NULL DEFAULT '0',
  `home_gid_num` int(11) NOT NULL DEFAULT '0',
  `away_gid_num` int(11) NOT NULL DEFAULT '0',
  `home_avg_lv` int(11) NOT NULL DEFAULT '0',
  `away_avg_lv` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `combat_index` (`league_id`,`season_id`,`stage_id`,`round_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_match_log`
--

LOCK TABLES `csl_match_log` WRITE;
/*!40000 ALTER TABLE `csl_match_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_match_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csp_combat_log`
--

DROP TABLE IF EXISTS `csp_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csp_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(15) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `match_id` varchar(32) NOT NULL DEFAULT '',
  `party_id` varchar(32) NOT NULL DEFAULT '',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `party_contrib` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `combat_index` (`league_id`,`season_id`,`round_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csp_combat_log`
--

LOCK TABLES `csp_combat_log` WRITE;
/*!40000 ALTER TABLE `csp_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csp_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csp_match_log`
--

DROP TABLE IF EXISTS `csp_match_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csp_match_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `home_dist` varchar(32) NOT NULL DEFAULT '',
  `away_dist` varchar(32) NOT NULL DEFAULT '',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` int(11) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `home_party_name` varchar(32) NOT NULL DEFAULT '0',
  `away_party_name` varchar(32) NOT NULL DEFAULT '0',
  `home_gid_num` int(11) NOT NULL DEFAULT '0',
  `away_gid_num` int(11) NOT NULL DEFAULT '0',
  `home_avg_lv` int(11) NOT NULL DEFAULT '0',
  `away_avg_lv` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `combat_index` (`league_id`,`season_id`,`round_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csp_match_log`
--

LOCK TABLES `csp_match_log` WRITE;
/*!40000 ALTER TABLE `csp_match_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csp_match_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debug_log`
--

DROP TABLE IF EXISTS `debug_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `debug_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) DEFAULT '',
  `para3` varchar(128) DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `type_action` (`type`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debug_log`
--

LOCK TABLES `debug_log` WRITE;
/*!40000 ALTER TABLE `debug_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `debug_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encourage_detail_log`
--

DROP TABLE IF EXISTS `encourage_detail_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encourage_detail_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dist` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `update_time` char(14) NOT NULL DEFAULT '',
  `encourage_type` varchar(64) NOT NULL DEFAULT '',
  `bonus_name` varchar(32) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `encourage_id` int(11) DEFAULT '0',
  `ip` varchar(16) DEFAULT '',
  `para1` varchar(32) DEFAULT '',
  `para2` varchar(255) DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encourage_detail_log`
--

LOCK TABLES `encourage_detail_log` WRITE;
/*!40000 ALTER TABLE `encourage_detail_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `encourage_detail_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_log`
--

DROP TABLE IF EXISTS `equipment_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `item_iid` varchar(32) DEFAULT '',
  `cost_item_name` varchar(32) DEFAULT '',
  `cost_item_iid` varchar(32) DEFAULT '',
  `cost` int(10) NOT NULL DEFAULT '0',
  `oper_result` tinyint(4) NOT NULL DEFAULT '0',
  `para1` varchar(32) DEFAULT '',
  `para2` varchar(128) DEFAULT '',
  `para3` varchar(255) DEFAULT '',
  `item_prop` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `equip_iid` (`item_iid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_log`
--

LOCK TABLES `equipment_log` WRITE;
/*!40000 ALTER TABLE `equipment_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipment_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `errand_log`
--

DROP TABLE IF EXISTS `errand_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `errand_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `party_gid` varchar(32) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `bonus_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '0',
  `bonus_prop` varchar(32) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `errand_log`
--

LOCK TABLES `errand_log` WRITE;
/*!40000 ALTER TABLE `errand_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `errand_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange_appraise_log`
--

DROP TABLE IF EXISTS `exchange_appraise_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange_appraise_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `exchange_time` char(14) NOT NULL DEFAULT '',
  `account1` varchar(32) NOT NULL DEFAULT '',
  `name1` varchar(32) NOT NULL DEFAULT '',
  `gid1` varchar(32) NOT NULL DEFAULT '',
  `lv1` tinyint(4) NOT NULL DEFAULT '0',
  `tao1` int(11) NOT NULL DEFAULT '0',
  `gold_coin1` int(11) NOT NULL DEFAULT '0',
  `account2` varchar(32) NOT NULL DEFAULT '',
  `name2` varchar(32) NOT NULL DEFAULT '',
  `gid2` varchar(32) NOT NULL DEFAULT '',
  `lv2` tinyint(4) NOT NULL DEFAULT '0',
  `tao2` int(11) NOT NULL DEFAULT '0',
  `gold_coin2` int(11) NOT NULL DEFAULT '0',
  `report` tinyint(4) NOT NULL DEFAULT '0',
  `star` tinyint(4) NOT NULL DEFAULT '0',
  `content` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(255) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account1` (`account1`) USING BTREE,
  KEY `account2` (`account2`) USING BTREE,
  KEY `gid1` (`gid1`) USING BTREE,
  KEY `gid2` (`gid2`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange_appraise_log`
--

LOCK TABLES `exchange_appraise_log` WRITE;
/*!40000 ALTER TABLE `exchange_appraise_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `exchange_appraise_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gbuy_action_log`
--

DROP TABLE IF EXISTS `gbuy_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gbuy_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `gbuy_gcoin` int(11) NOT NULL DEFAULT '0',
  `gbuy_scoin` int(11) NOT NULL DEFAULT '0',
  `action` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `coin_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `coin` int(11) NOT NULL DEFAULT '0',
  `gbg_id` varchar(32) NOT NULL DEFAULT '',
  `gbg_name` varchar(32) NOT NULL DEFAULT '',
  `gbg_amount` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `gbg_id` (`gbg_id`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gbuy_action_log`
--

LOCK TABLES `gbuy_action_log` WRITE;
/*!40000 ALTER TABLE `gbuy_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gbuy_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_log`
--

DROP TABLE IF EXISTS `gift_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '0',
  `gid` varchar(32) NOT NULL DEFAULT '0',
  `lv` int(11) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) unsigned NOT NULL DEFAULT '0',
  `login_ip` varchar(32) NOT NULL DEFAULT '0',
  `mac` varchar(32) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '0',
  `gold_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `insider` varchar(32) NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_log`
--

LOCK TABLES `gift_log` WRITE;
/*!40000 ALTER TABLE `gift_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gm_log`
--

DROP TABLE IF EXISTS `gm_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gm_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `cash` int(11) NOT NULL DEFAULT '0',
  `mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` int(11) unsigned NOT NULL DEFAULT '0',
  `operator` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(255) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operator` (`operator`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `time_gid` (`update_time`,`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gm_log`
--

LOCK TABLES `gm_log` WRITE;
/*!40000 ALTER TABLE `gm_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gs_log`
--

DROP TABLE IF EXISTS `gs_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gs_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `ctime` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `server` (`server`) USING BTREE,
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gs_log`
--

LOCK TABLES `gs_log` WRITE;
/*!40000 ALTER TABLE `gs_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gs_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history_credit_log`
--

DROP TABLE IF EXISTS `history_credit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history_credit_log` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `coin` int(11) NOT NULL DEFAULT '0',
  `used` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_credit_log`
--

LOCK TABLES `history_credit_log` WRITE;
/*!40000 ALTER TABLE `history_credit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `history_credit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_action_log`
--

DROP TABLE IF EXISTS `important_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `important_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(32) NOT NULL DEFAULT '',
  `bonus_type` tinyint(4) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `party_gid` char(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_action_log`
--

LOCK TABLES `important_action_log` WRITE;
/*!40000 ALTER TABLE `important_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `important_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_log`
--

DROP TABLE IF EXISTS `important_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `important_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(128) NOT NULL DEFAULT '',
  `para2` varchar(128) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type_action` (`type`,`action`) USING BTREE,
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_log`
--

LOCK TABLES `important_log` WRITE;
/*!40000 ALTER TABLE `important_log` DISABLE KEYS */;
INSERT INTO `important_log` VALUES (1,'20180418224254','csa_daili','score_wishing',1,'wishing_generate','16_1','','','([\"max_score\":133330,\"score\":0,\"bonus_index\":\"16_1\",\"version\":1,\"1\":({}),\"2\":([]),])'),(2,'20180418224258','csa_daili','score_wishing',1,'wishing_generate','10_2','','','([\"max_score\":66660,\"score\":0,\"bonus_index\":\"10_2\",\"version\":1,\"1\":({}),\"2\":([]),])'),(3,'20180418224258','csa_daili','score_wishing',1,'wishing_generate','50_3','','','([\"max_score\":16666650,\"score\":0,\"bonus_index\":\"50_3\",\"version\":1,\"1\":({}),\"2\":([]),])'),(4,'20180418224258','csa_daili','score_wishing',1,'wishing_generate','6_4','','','([\"max_score\":266660,\"score\":0,\"bonus_index\":\"6_4\",\"version\":1,\"1\":({}),\"2\":([]),])'),(5,'20180418224258','csa_daili','score_wishing',1,'wishing_generate','44_5','','','([\"max_score\":1000,\"score\":0,\"bonus_index\":\"44_5\",\"version\":1,\"1\":({}),\"2\":([]),])'),(6,'20180418224259','csa_daili','score_wishing',1,'wishing_generate','22_8','','','([\"max_score\":1986,\"score\":0,\"bonus_index\":\"22_8\",\"version\":1,\"1\":({}),\"2\":([]),])'),(7,'20180418224259','csa_daili','score_wishing',1,'wishing_generate','32_9','','','([\"max_score\":53,\"score\":0,\"bonus_index\":\"32_9\",\"version\":1,\"1\":({}),\"2\":([]),])'),(8,'20180418224259','csa_daili','score_wishing',1,'wishing_generate','47_10','','','([\"max_score\":14,\"score\":0,\"bonus_index\":\"47_10\",\"version\":1,\"1\":({}),\"2\":([]),])'),(9,'20180418224259','csa_daili','score_wishing',1,'wishing_generate','28_12','','','([\"max_score\":66,\"score\":0,\"bonus_index\":\"28_12\",\"version\":1,\"1\":({}),\"2\":([]),])'),(10,'20180418224259','csa_daili','score_wishing',1,'wishing_generate','40_6','','','([\"max_score\":21,\"score\":0,\"bonus_index\":\"40_6\",\"version\":1,\"1\":({}),\"2\":([]),])'),(11,'20180418224300','csa_daili','score_wishing',1,'wishing_generate','45_7','','','([\"max_score\":21,\"score\":0,\"bonus_index\":\"45_7\",\"version\":1,\"1\":({}),\"2\":([]),])'),(12,'20180418224300','csa_daili','score_wishing',1,'wishing_generate','20_11','','','([\"max_score\":1440,\"score\":0,\"bonus_index\":\"20_11\",\"version\":1,\"1\":({}),\"2\":([]),])'),(13,'20180419062008','csa_daili','score_wishing',1,'wishing_generate','11_1','','','([\"max_score\":100000,\"score\":0,\"bonus_index\":\"11_1\",\"version\":1,\"1\":({}),\"2\":([]),])'),(14,'20180419062008','csa_daili','score_wishing',1,'wishing_generate','1_2','','','([\"max_score\":6666660,\"score\":0,\"bonus_index\":\"1_2\",\"version\":1,\"1\":({}),\"2\":([]),])'),(15,'20180419062008','csa_daili','score_wishing',1,'wishing_generate','4_3','','','([\"max_score\":266660,\"score\":0,\"bonus_index\":\"4_3\",\"version\":1,\"1\":({}),\"2\":([]),])'),(16,'20180419062008','csa_daili','score_wishing',1,'wishing_generate','34_5','','','([\"max_score\":106,\"score\":0,\"bonus_index\":\"34_5\",\"version\":1,\"1\":({}),\"2\":([]),])'),(17,'20180419062008','csa_daili','score_wishing',1,'wishing_generate','23_7','','','([\"max_score\":3773,\"score\":0,\"bonus_index\":\"23_7\",\"version\":1,\"1\":({}),\"2\":([]),])'),(18,'20180419062012','csa_daili','score_wishing',1,'wishing_generate','44_8','','','([\"max_score\":1000,\"score\":0,\"bonus_index\":\"44_8\",\"version\":1,\"1\":({}),\"2\":([]),])'),(19,'20180419062012','csa_daili','score_wishing',1,'wishing_generate','48_9','','','([\"max_score\":21,\"score\":0,\"bonus_index\":\"48_9\",\"version\":1,\"1\":({}),\"2\":([]),])'),(20,'20180419062012','csa_daili','score_wishing',1,'wishing_generate','21_11','','','([\"max_score\":3333,\"score\":0,\"bonus_index\":\"21_11\",\"version\":1,\"1\":({}),\"2\":([]),])'),(21,'20180419062013','csa_daili','score_wishing',1,'wishing_generate','50_4','','','([\"max_score\":16666650,\"score\":0,\"bonus_index\":\"50_4\",\"version\":1,\"1\":({}),\"2\":([]),])'),(22,'20180419062013','csa_daili','score_wishing',1,'wishing_generate','36_10','','','([\"max_score\":186,\"score\":0,\"bonus_index\":\"36_10\",\"version\":1,\"1\":({}),\"2\":([]),])'),(23,'20180419062017','csa_daili','score_wishing',1,'wishing_generate','35_6','','','([\"max_score\":320,\"score\":0,\"bonus_index\":\"35_6\",\"version\":1,\"1\":({}),\"2\":([]),])'),(24,'20180419062021','csa_daili','score_wishing',1,'wishing_generate','41_12','','','([\"max_score\":21,\"score\":0,\"bonus_index\":\"41_12\",\"version\":1,\"1\":({}),\"2\":([]),])');
/*!40000 ALTER TABLE `important_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_pet_log`
--

DROP TABLE IF EXISTS `important_pet_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `important_pet_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account_from` varchar(32) NOT NULL DEFAULT '',
  `account_to` varchar(32) NOT NULL DEFAULT '',
  `gid_from` char(16) NOT NULL DEFAULT '',
  `gid_to` char(16) NOT NULL DEFAULT '',
  `lv_from` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv_to` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `pet_iid` varchar(32) NOT NULL DEFAULT '',
  `pet_name` varchar(32) NOT NULL DEFAULT '',
  `pet_property` text NOT NULL,
  `para1` varchar(255) NOT NULL DEFAULT '',
  `para2` varchar(255) NOT NULL DEFAULT '',
  `para3` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `account_to` (`account_to`) USING BTREE,
  KEY `gid_to` (`gid_to`) USING BTREE,
  KEY `pet_iid` (`pet_iid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_pet_log`
--

LOCK TABLES `important_pet_log` WRITE;
/*!40000 ALTER TABLE `important_pet_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `important_pet_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_task_log`
--

DROP TABLE IF EXISTS `ip_task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `task` varchar(32) NOT NULL DEFAULT '',
  `num` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`time`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_task_log`
--

LOCK TABLES `ip_task_log` WRITE;
/*!40000 ALTER TABLE `ip_task_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_transfer_log`
--

DROP TABLE IF EXISTS `item_transfer_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_transfer_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `action` varchar(32) NOT NULL DEFAULT '',
  `account_from` varchar(32) DEFAULT NULL,
  `account_to` varchar(32) DEFAULT NULL,
  `gid_from` varchar(16) DEFAULT NULL,
  `gid_to` varchar(16) DEFAULT NULL,
  `lv_from` tinyint(3) unsigned DEFAULT NULL,
  `lv_to` tinyint(3) unsigned DEFAULT NULL,
  `gold_coin_from` int(10) unsigned DEFAULT NULL,
  `gold_coin_to` int(10) unsigned DEFAULT NULL,
  `mac_from` char(16) DEFAULT NULL,
  `mac_to` char(16) DEFAULT NULL,
  `ip_from` varchar(15) DEFAULT NULL,
  `ip_to` varchar(15) DEFAULT NULL,
  `locality_from` varchar(64) DEFAULT NULL,
  `locality_to` varchar(64) DEFAULT NULL,
  `item_iid` varchar(32) DEFAULT NULL,
  `item_name` varchar(32) DEFAULT NULL,
  `item_amount` int(10) unsigned DEFAULT NULL,
  `transfer_type` tinyint(3) unsigned DEFAULT NULL,
  `transfer_id` varchar(32) DEFAULT NULL,
  `para1` varchar(32) DEFAULT NULL,
  `para2` varchar(255) DEFAULT NULL,
  `para3` int(10) unsigned DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `account` (`account_from`) USING BTREE,
  KEY `gid` (`gid_from`) USING BTREE,
  KEY `iid` (`item_iid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_transfer_log`
--

LOCK TABLES `item_transfer_log` WRITE;
/*!40000 ALTER TABLE `item_transfer_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_transfer_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level_up_log`
--

DROP TABLE IF EXISTS `level_up_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `level_up_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `upgrade_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(32) NOT NULL DEFAULT '',
  `time_used` bigint(20) DEFAULT NULL,
  `last_lv_up` varchar(14) NOT NULL DEFAULT '',
  `create_time` varchar(14) NOT NULL DEFAULT '',
  `newbie` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `para4` bigint(20) DEFAULT NULL,
  `para5` varchar(255) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level_up_log`
--

LOCK TABLES `level_up_log` WRITE;
/*!40000 ALTER TABLE `level_up_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `level_up_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_log`
--

DROP TABLE IF EXISTS `login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `privilege` int(11) NOT NULL DEFAULT '0',
  `login_mode` int(11) NOT NULL DEFAULT '0',
  `time_used` int(11) NOT NULL DEFAULT '0',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `insider` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `party` varchar(32) NOT NULL DEFAULT '',
  `family` varchar(32) NOT NULL DEFAULT '',
  `create_time` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `protect_type` varchar(32) NOT NULL DEFAULT '',
  `upgrade_state` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `login_ip` (`login_ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_log`
--

LOCK TABLES `login_log` WRITE;
/*!40000 ALTER TABLE `login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material1_log`
--

DROP TABLE IF EXISTS `material1_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material1_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '0',
  `lv` int(11) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) unsigned NOT NULL DEFAULT '0',
  `login_ip` varchar(32) NOT NULL DEFAULT '0',
  `mac` varchar(32) NOT NULL DEFAULT '0',
  `gold_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `insider` varchar(32) NOT NULL DEFAULT '0',
  `map` varchar(32) NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `lasted_time` int(11) unsigned NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material1_log`
--

LOCK TABLES `material1_log` WRITE;
/*!40000 ALTER TABLE `material1_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `material1_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_log`
--

DROP TABLE IF EXISTS `material_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '0',
  `gid` varchar(32) NOT NULL DEFAULT '0',
  `lv` int(11) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) unsigned NOT NULL DEFAULT '0',
  `login_ip` varchar(32) NOT NULL DEFAULT '0',
  `mac` varchar(32) NOT NULL DEFAULT '0',
  `gold_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `silver_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `insider` varchar(32) NOT NULL DEFAULT '0',
  `map` varchar(32) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `lasted_time` int(11) unsigned NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_log`
--

LOCK TABLES `material_log` WRITE;
/*!40000 ALTER TABLE `material_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `material_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money1_log`
--

DROP TABLE IF EXISTS `money1_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money1_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(32) NOT NULL DEFAULT '',
  `cash_type` tinyint(4) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money1_log`
--

LOCK TABLES `money1_log` WRITE;
/*!40000 ALTER TABLE `money1_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `money1_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money_log`
--

DROP TABLE IF EXISTS `money_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `action` tinyint(4) NOT NULL DEFAULT '0',
  `gid` char(16) NOT NULL DEFAULT '',
  `gid_op` char(16) DEFAULT NULL,
  `cash` int(11) DEFAULT NULL,
  `voucher` int(11) DEFAULT NULL,
  `after_value` varchar(64) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_log`
--

LOCK TABLES `money_log` WRITE;
/*!40000 ALTER TABLE `money_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `money_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nummary_log`
--

DROP TABLE IF EXISTS `nummary_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nummary_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` tinyint(4) unsigned DEFAULT NULL,
  `action` varchar(32) NOT NULL DEFAULT '',
  `totality` bigint(20) unsigned NOT NULL DEFAULT '0',
  `times` mediumint(9) unsigned DEFAULT NULL,
  `gids` mediumint(9) unsigned DEFAULT NULL,
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `type_action` (`type`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nummary_log`
--

LOCK TABLES `nummary_log` WRITE;
/*!40000 ALTER TABLE `nummary_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `nummary_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_level_up_log`
--

DROP TABLE IF EXISTS `pet_level_up_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_level_up_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `lv` int(4) NOT NULL DEFAULT '0',
  `last_lv_up` varchar(14) NOT NULL DEFAULT '',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) DEFAULT '',
  `para3` varchar(255) DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `iid` (`iid`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_level_up_log`
--

LOCK TABLES `pet_level_up_log` WRITE;
/*!40000 ALTER TABLE `pet_level_up_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_level_up_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_log`
--

DROP TABLE IF EXISTS `pet_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `pet_name` varchar(16) NOT NULL DEFAULT '',
  `pet_iid` varchar(32) NOT NULL DEFAULT '',
  `cost_item` varchar(16) NOT NULL DEFAULT '',
  `item_iid` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `pet_memo` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `pet_iid` (`pet_iid`) USING BTREE,
  KEY `item_iid` (`item_iid`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_log`
--

LOCK TABLES `pet_log` WRITE;
/*!40000 ALTER TABLE `pet_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plug_log`
--

DROP TABLE IF EXISTS `plug_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plug_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tool` int(11) NOT NULL DEFAULT '0',
  `time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `coins` int(11) NOT NULL DEFAULT '0',
  `relevance` int(11) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `tool` (`tool`) USING BTREE,
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plug_log`
--

LOCK TABLES `plug_log` WRITE;
/*!40000 ALTER TABLE `plug_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `plug_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_bind_log`
--

DROP TABLE IF EXISTS `property_bind_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_bind_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(16) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `para` varchar(32) DEFAULT NULL,
  `main` tinyint(4) unsigned DEFAULT '0',
  `data` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `iid` (`iid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_bind_log`
--

LOCK TABLES `property_bind_log` WRITE;
/*!40000 ALTER TABLE `property_bind_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_bind_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_platform_log`
--

DROP TABLE IF EXISTS `purchase_platform_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_platform_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `order_id` varchar(32) NOT NULL DEFAULT '',
  `order_time` int(11) unsigned NOT NULL DEFAULT '0',
  `commodity_type` int(11) unsigned NOT NULL DEFAULT '0',
  `commodity_name` varchar(64) NOT NULL DEFAULT '0',
  `commodity_iid` varchar(32) NOT NULL DEFAULT '',
  `commodity_amount` int(11) NOT NULL DEFAULT '0',
  `unit_price` int(11) NOT NULL DEFAULT '0',
  `turnover` int(11) NOT NULL DEFAULT '0',
  `tax` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(32) NOT NULL DEFAULT '0',
  `para4` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE,
  KEY `time_account` (`update_time`,`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_platform_log`
--

LOCK TABLES `purchase_platform_log` WRITE;
/*!40000 ALTER TABLE `purchase_platform_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_platform_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_log`
--

DROP TABLE IF EXISTS `report_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account1` varchar(32) NOT NULL DEFAULT '',
  `name1` varchar(32) NOT NULL DEFAULT '',
  `gid1` varchar(32) NOT NULL DEFAULT '',
  `lv1` tinyint(4) NOT NULL DEFAULT '0',
  `tao1` int(11) NOT NULL DEFAULT '0',
  `gold_coin1` int(11) NOT NULL DEFAULT '0',
  `account2` varchar(32) NOT NULL DEFAULT '',
  `name2` varchar(32) NOT NULL DEFAULT '',
  `gid2` varchar(32) NOT NULL DEFAULT '',
  `lv2` tinyint(4) NOT NULL DEFAULT '0',
  `tao2` int(11) NOT NULL DEFAULT '0',
  `gold_coin2` int(11) NOT NULL DEFAULT '0',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(255) NOT NULL DEFAULT '',
  `para4` varchar(255) NOT NULL DEFAULT '',
  `para5` varchar(255) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account1` (`account1`) USING BTREE,
  KEY `account2` (`account2`) USING BTREE,
  KEY `name2` (`name2`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_log`
--

LOCK TABLES `report_log` WRITE;
/*!40000 ALTER TABLE `report_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `safe_log`
--

DROP TABLE IF EXISTS `safe_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `safe_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lv` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tao` int(10) unsigned NOT NULL DEFAULT '0',
  `ob_iid` varchar(32) NOT NULL DEFAULT '',
  `ob_name` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) DEFAULT NULL,
  `para2` varchar(255) DEFAULT NULL,
  `para3` int(11) DEFAULT NULL,
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `safe_log`
--

LOCK TABLES `safe_log` WRITE;
/*!40000 ALTER TABLE `safe_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `safe_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_log`
--

DROP TABLE IF EXISTS `sale_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `dist` varchar(16) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_log`
--

LOCK TABLES `sale_log` WRITE;
/*!40000 ALTER TABLE `sale_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stat`
--

DROP TABLE IF EXISTS `stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) DEFAULT NULL,
  `pid` varchar(6) DEFAULT NULL,
  `server` varchar(20) DEFAULT NULL,
  `cpu` varchar(6) DEFAULT NULL,
  `vmem` varchar(6) DEFAULT NULL,
  `rmem` varchar(6) DEFAULT NULL,
  `cpu2` varchar(6) DEFAULT NULL,
  `para1` varchar(6) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(32) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stat`
--

LOCK TABLES `stat` WRITE;
/*!40000 ALTER TABLE `stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switch_log`
--

DROP TABLE IF EXISTS `switch_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switch_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `login_mode` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `time_used` int(11) NOT NULL DEFAULT '0',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switch_log`
--

LOCK TABLES `switch_log` WRITE;
/*!40000 ALTER TABLE `switch_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `switch_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_monitor_log`
--

DROP TABLE IF EXISTS `system_monitor_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_monitor_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` tinyint(4) NOT NULL DEFAULT '0',
  `number_ih` int(11) NOT NULL DEFAULT '0',
  `number_il` int(11) NOT NULL DEFAULT '0',
  `degree` tinyint(4) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(255) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `degree` (`degree`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_monitor_log`
--

LOCK TABLES `system_monitor_log` WRITE;
/*!40000 ALTER TABLE `system_monitor_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_monitor_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tao_stat_log`
--

DROP TABLE IF EXISTS `tao_stat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tao_stat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `finish_date` char(8) NOT NULL DEFAULT '',
  `dist_id` int(11) NOT NULL DEFAULT '0',
  `dist_name` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `gid_times` int(11) NOT NULL DEFAULT '0',
  `gid_charge_times` int(11) NOT NULL DEFAULT '0',
  `lv_charge_times` int(11) NOT NULL DEFAULT '0',
  `ip_times` int(11) NOT NULL DEFAULT '0',
  `ip_gids` int(11) NOT NULL DEFAULT '0',
  `punish` tinyint(4) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `finish_date` (`finish_date`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tao_stat_log`
--

LOCK TABLES `tao_stat_log` WRITE;
/*!40000 ALTER TABLE `tao_stat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tao_stat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tao_task_log`
--

DROP TABLE IF EXISTS `tao_task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tao_task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist_id` int(11) NOT NULL DEFAULT '0',
  `dist_name` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `use_charge` tinyint(4) NOT NULL DEFAULT '0',
  `lv_charge` tinyint(4) NOT NULL DEFAULT '0',
  `lv_cha` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tao_task_log`
--

LOCK TABLES `tao_task_log` WRITE;
/*!40000 ALTER TABLE `tao_task_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tao_task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_log`
--

DROP TABLE IF EXISTS `task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(16) NOT NULL DEFAULT '',
  `dist` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `task_type` varchar(16) NOT NULL DEFAULT '',
  `task_name` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(64) NOT NULL DEFAULT '',
  `ip` varchar(16) NOT NULL DEFAULT '',
  `line` varchar(16) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` int(11) NOT NULL DEFAULT '0',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `task_type` (`task_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_log`
--

LOCK TABLES `task_log` WRITE;
/*!40000 ALTER TABLE `task_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '0',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_log`
--

LOCK TABLES `user_log` WRITE;
/*!40000 ALTER TABLE `user_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_report_ip_log`
--

DROP TABLE IF EXISTS `user_report_ip_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_report_ip_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `para1` varchar(255) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `para4` varchar(32) NOT NULL DEFAULT '',
  `para5` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_report_ip_log`
--

LOCK TABLES `user_report_ip_log` WRITE;
/*!40000 ALTER TABLE `user_report_ip_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_report_ip_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishing_log`
--

DROP TABLE IF EXISTS `wishing_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishing_log` (
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `score` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`gid`),
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishing_log`
--

LOCK TABLES `wishing_log` WRITE;
/*!40000 ALTER TABLE `wishing_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishing_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_add_point_log`
--

DROP TABLE IF EXISTS `zq_add_point_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_add_point_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `point_before` int(11) NOT NULL DEFAULT '0',
  `point_after` int(11) NOT NULL DEFAULT '0',
  `point_add` int(11) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_add_point_log`
--

LOCK TABLES `zq_add_point_log` WRITE;
/*!40000 ALTER TABLE `zq_add_point_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_add_point_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_card_log`
--

DROP TABLE IF EXISTS `zq_card_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_card_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '0',
  `bonus_prop` varchar(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_card_log`
--

LOCK TABLES `zq_card_log` WRITE;
/*!40000 ALTER TABLE `zq_card_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_card_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_combat_log`
--

DROP TABLE IF EXISTS `zq_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `total_round` int(11) NOT NULL DEFAULT '0',
  `hero_name` varchar(32) NOT NULL DEFAULT '',
  `hero_lv` int(11) NOT NULL DEFAULT '0',
  `result` tinyint(4) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_combat_log`
--

LOCK TABLES `zq_combat_log` WRITE;
/*!40000 ALTER TABLE `zq_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_cost_point_log`
--

DROP TABLE IF EXISTS `zq_cost_point_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_cost_point_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `point_before` int(11) NOT NULL DEFAULT '0',
  `point_after` int(11) NOT NULL DEFAULT '0',
  `point_cost` int(11) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_cost_point_log`
--

LOCK TABLES `zq_cost_point_log` WRITE;
/*!40000 ALTER TABLE `zq_cost_point_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_cost_point_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_errand_log`
--

DROP TABLE IF EXISTS `zq_errand_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_errand_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `bonus_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '0',
  `bonus_prop` varchar(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_errand_log`
--

LOCK TABLES `zq_errand_log` WRITE;
/*!40000 ALTER TABLE `zq_errand_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_errand_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_login_log`
--

DROP TABLE IF EXISTS `zq_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `privilege` int(11) NOT NULL DEFAULT '0',
  `login_mode` int(11) NOT NULL DEFAULT '0',
  `time_used` int(11) NOT NULL DEFAULT '0',
  `hero_lv` int(11) NOT NULL DEFAULT '0',
  `xg_point` int(11) NOT NULL DEFAULT '0',
  `card_num` int(11) NOT NULL DEFAULT '0',
  `fragment_num` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_login_log`
--

LOCK TABLES `zq_login_log` WRITE;
/*!40000 ALTER TABLE `zq_login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_lv_up_log`
--

DROP TABLE IF EXISTS `zq_lv_up_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_lv_up_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `hero_name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`) USING BTREE,
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_lv_up_log`
--

LOCK TABLES `zq_lv_up_log` WRITE;
/*!40000 ALTER TABLE `zq_lv_up_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_lv_up_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `dl_mdb_1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dl_mdb_1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dl_mdb_1`;

--
-- Table structure for table `acc_info`
--

DROP TABLE IF EXISTS `acc_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_info` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `expired_time` varchar(14) NOT NULL DEFAULT '',
  `points` int(11) NOT NULL DEFAULT '0',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_info`
--

LOCK TABLES `acc_info` WRITE;
/*!40000 ALTER TABLE `acc_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_info_copy`
--

DROP TABLE IF EXISTS `acc_info_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_info_copy` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `expired_time` varchar(14) NOT NULL DEFAULT '',
  `points` int(11) NOT NULL DEFAULT '0',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_info_copy`
--

LOCK TABLES `acc_info_copy` WRITE;
/*!40000 ALTER TABLE `acc_info_copy` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_info_copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `blocked_time` varchar(14) NOT NULL DEFAULT '',
  `blocked_reason` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `protect` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `birthday` varchar(8) NOT NULL DEFAULT '',
  `id_type` varchar(32) NOT NULL DEFAULT '',
  `id_num` varchar(32) NOT NULL DEFAULT '',
  `tel` varchar(32) NOT NULL DEFAULT '',
  `mobile` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `privilege` int(11) unsigned NOT NULL DEFAULT '0',
  `account_id` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `permit_ip` varchar(15) NOT NULL DEFAULT '',
  `permit_id` varchar(16) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`)
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
-- Table structure for table `admin_log`
--

DROP TABLE IF EXISTS `admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `msg` varchar(255) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_log`
--

LOCK TABLES `admin_log` WRITE;
/*!40000 ALTER TABLE `admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arena_user_info`
--

DROP TABLE IF EXISTS `arena_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arena_user_info` (
  `path` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `gid` varchar(128) NOT NULL DEFAULT '',
  `dist` varchar(128) NOT NULL DEFAULT '',
  `tt_score` int(32) NOT NULL DEFAULT '0',
  `w_score` int(32) NOT NULL DEFAULT '0',
  `tao` int(32) NOT NULL DEFAULT '0',
  `wcoin` int(32) NOT NULL DEFAULT '0',
  `family` varchar(128) NOT NULL DEFAULT '',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `checksum` int(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`path`),
  KEY `tt_score` (`tt_score`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arena_user_info`
--

LOCK TABLES `arena_user_info` WRITE;
/*!40000 ALTER TABLE `arena_user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena_user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `char_info`
--

DROP TABLE IF EXISTS `char_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `char_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `charge_items_value` int(11) NOT NULL DEFAULT '0',
  `glory` int(11) NOT NULL DEFAULT '0',
  `create_time` varchar(16) NOT NULL DEFAULT '',
  `first_login_time` varchar(16) NOT NULL DEFAULT '',
  `last_login_time` varchar(16) NOT NULL DEFAULT '',
  `last_logout_time` varchar(16) NOT NULL DEFAULT '',
  `first_login_ip` varchar(16) NOT NULL DEFAULT '',
  `last_login_ip` varchar(16) NOT NULL DEFAULT '',
  `first_login_mac` varchar(32) NOT NULL DEFAULT '',
  `last_login_mac` varchar(32) NOT NULL DEFAULT '',
  `service_member_end_time` varchar(16) NOT NULL DEFAULT '',
  `family` varchar(32) NOT NULL DEFAULT '',
  `family_title` varchar(32) NOT NULL DEFAULT '',
  `activity_info` text NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `month_tao` int(11) NOT NULL DEFAULT '0',
  `month_tao_ti` char(14) NOT NULL DEFAULT '',
  `total_score` int(11) NOT NULL DEFAULT '0',
  `char_status` varchar(32) NOT NULL DEFAULT '',
  `party_name` varchar(32) NOT NULL DEFAULT '',
  `party_job` varchar(32) NOT NULL DEFAULT '',
  `party_contrib` int(11) DEFAULT NULL,
  `portrait` int(11) NOT NULL DEFAULT '0',
  `deny_login` int(11) NOT NULL DEFAULT '0',
  `last_privilege` int(11) NOT NULL DEFAULT '0',
  `icon` int(11) NOT NULL DEFAULT '0',
  `cash` int(11) NOT NULL DEFAULT '0',
  `balance` int(11) NOT NULL DEFAULT '0',
  `auto_stall` int(11) NOT NULL DEFAULT '0',
  `regal` int(11) NOT NULL DEFAULT '0',
  `gender` int(11) NOT NULL DEFAULT '0',
  `nice` int(11) NOT NULL DEFAULT '0',
  `title` varchar(32) NOT NULL DEFAULT '',
  `str` int(11) NOT NULL DEFAULT '0',
  `con` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `wiz` int(11) NOT NULL DEFAULT '0',
  `phy_power` int(11) NOT NULL DEFAULT '0',
  `mag_power` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `def` int(11) NOT NULL DEFAULT '0',
  `tortoise` int(11) NOT NULL DEFAULT '0',
  `reputation` int(11) NOT NULL DEFAULT '0',
  `wrestle_score` int(11) DEFAULT NULL,
  `newbie_survey_answer` int(11) NOT NULL DEFAULT '0',
  `tower_num` int(11) NOT NULL DEFAULT '0',
  `tower_time` int(11) NOT NULL DEFAULT '0',
  `tongtt_num` int(11) NOT NULL DEFAULT '0',
  `vip_score` int(11) NOT NULL DEFAULT '0',
  `tongtt_time` int(11) NOT NULL DEFAULT '0',
  `question_score` int(11) NOT NULL DEFAULT '0',
  `question_cost` int(11) NOT NULL DEFAULT '0',
  `last_question_time` int(11) NOT NULL DEFAULT '0',
  `arena_level` int(11) NOT NULL DEFAULT '0',
  `arena_exp` int(11) NOT NULL DEFAULT '0',
  `arena_score` int(11) NOT NULL DEFAULT '0',
  `kill_pkers` int(11) NOT NULL DEFAULT '0',
  `kill_officers` int(11) NOT NULL DEFAULT '0',
  `achieve` int(11) NOT NULL DEFAULT '0',
  `qixjh_round` int(11) NOT NULL DEFAULT '0',
  `qixjh_type` int(11) NOT NULL DEFAULT '0',
  `qixjh_time` int(11) NOT NULL DEFAULT '0',
  `tunt_name` varchar(32) NOT NULL DEFAULT '',
  `tunt_time` int(11) NOT NULL DEFAULT '0',
  `shid_name` varchar(32) NOT NULL DEFAULT '',
  `shid_time` int(11) NOT NULL DEFAULT '0',
  `kuilw_name` varchar(32) NOT NULL DEFAULT '',
  `kuilw_time` int(11) NOT NULL DEFAULT '0',
  `acc_blocked_time` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`dist`,`gid`),
  KEY `account` (`account`) USING BTREE,
  KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `char_info`
--

LOCK TABLES `char_info` WRITE;
/*!40000 ALTER TABLE `char_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `char_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_info`
--

DROP TABLE IF EXISTS `child_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `wisdom` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `physique` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `str_effect` int(11) NOT NULL DEFAULT '0',
  `wit_effect` int(11) NOT NULL DEFAULT '0',
  `dex_effect` int(11) NOT NULL DEFAULT '0',
  `phy_effect` int(11) NOT NULL DEFAULT '0',
  `save_to_text` text NOT NULL,
  PRIMARY KEY (`dist`,`iid`),
  KEY `iid` (`iid`) USING BTREE,
  KEY `owner` (`owner`) USING BTREE,
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_info`
--

LOCK TABLES `child_info` WRITE;
/*!40000 ALTER TABLE `child_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `child_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_info`
--

DROP TABLE IF EXISTS `city_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_info` (
  `city` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `party_name` varchar(32) NOT NULL DEFAULT '',
  `party_gid` varchar(32) NOT NULL DEFAULT '',
  `level` int(8) NOT NULL DEFAULT '1',
  `buildings` text,
  `memo` text,
  PRIMARY KEY (`city`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_info`
--

LOCK TABLES `city_info` WRITE;
/*!40000 ALTER TABLE `city_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `city_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citywar_info`
--

DROP TABLE IF EXISTS `citywar_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citywar_info` (
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `start_time` varchar(14) NOT NULL DEFAULT '',
  `end_time` varchar(14) NOT NULL DEFAULT '',
  `city_name` varchar(32) NOT NULL DEFAULT '',
  `defense_dist` varchar(32) NOT NULL DEFAULT '',
  `attack_dist` varchar(128) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(255) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`start_time`,`city_name`),
  KEY `start_time` (`start_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citywar_info`
--

LOCK TABLES `citywar_info` WRITE;
/*!40000 ALTER TABLE `citywar_info` DISABLE KEYS */;
INSERT INTO `citywar_info` VALUES ('20180413154753','20180418210000','20180418230000','临江','','牡丹花城,蜀南竹海','','',''),('20180413154753','20180418210000','20180418230000','廉州','','','','',''),('20180413154753','20180418210000','20180418230000','兴化','','喜羊羊,无双倾城','','',''),('20180413154753','20180418210000','20180418230000','饶州','','群星聚会,奇门遁甲,黄埔风云','','',''),('20180413154753','20180418210000','20180418230000','韶州','','混沌初开,2013','','',''),('20180413154753','20180418210000','20180418230000','汀州','','','','',''),('20180413154753','20180418210000','20180418230000','严州','','2015,月满西楼','','',''),('20180413154753','20180418210000','20180418230000','岳州','','','','',''),('20180413154753','20180418210000','20180418230000','郧阳','','福星高照,千里婵娟','','',''),('20180413154753','20180418210000','20180418230000','袁州','','武当雄风,林海雪原','','',''),('20180413154753','20180418210000','20180418230000','南安','','橘子洲头,星罗棋布','','',''),('20180413154753','20180418210000','20180418230000','宝庆','','','','',''),('20180413154753','20180418210000','20180418230000','承天','','','','',''),('20180413154753','20180418210000','20180418230000','辰州','','黄鹤楼,霸者无双','','',''),('20180413154753','20180418210000','20180418230000','处州','','','','',''),('20180413154753','20180418210000','20180418230000','德安','','','','',''),('20180413154753','20180418210000','20180418230000','广信','','避暑山庄,2014','','',''),('20180413154753','20180418210000','20180418230000','衡州','','雪战到底,卢沟晓月','','',''),('20180413154753','20180418210000','20180418230000','建宁','','2012,勇者无惧','','',''),('20180413154753','20180418210000','20180418230000','建昌','','乐山大佛,忆江南','','',''),('20180425152353','20180425210000','20180425230000','临渝','','乐山大佛,钱塘观潮','','',''),('20180425152353','20180425210000','20180425230000','临川','','','','',''),('20180425152353','20180425210000','20180425230000','清河','','林海雪原,橘子洲头','','',''),('20180425152353','20180425210000','20180425230000','上庸','','','','',''),('20180425152353','20180425210000','20180425230000','宛丘','','','','',''),('20180425152353','20180425210000','20180425230000','望山','','星罗棋布,霸者无双,香格里拉','','',''),('20180425152353','20180425210000','20180425230000','武阳','','2014,忆江南,万里长城','','',''),('20180425152353','20180425210000','20180425230000','渔阳','','','','',''),('20180425152353','20180425210000','20180425230000','真定','','','','',''),('20180425152353','20180425210000','20180425230000','颖川','','','','',''),('20180425152353','20180425210000','20180425230000','荥阳','','','','',''),('20180425152353','20180425210000','20180425230000','逍遥','','','','',''),('20180425152353','20180425210000','20180425230000','南皮','','','','',''),('20180425152353','20180425210000','20180425230000','治莒','','','','',''),('20180425152353','20180425210000','20180425230000','柴桑','','华山论剑,蜀南竹海','','',''),('20180425152353','20180425210000','20180425230000','城阳','','群星聚会,物华天宝,奇门遁甲','','',''),('20180425152353','20180425210000','20180425230000','东平','','','','',''),('20180425152354','20180425210000','20180425230000','奉高','','牡丹花城,长白天池','','',''),('20180425152353','20180425210000','20180425230000','汉寿','','黄埔风云,北京古都,避暑山庄','','',''),('20180425152353','20180425210000','20180425230000','即墨','','武当雄风,逐鹿中原','','',''),('20180427152350','20180502210000','20180502230000','零陵','','','','',''),('20180427152350','20180502210000','20180502230000','黎阳','','天府情缘,黄鹤楼','','',''),('20180427152350','20180502210000','20180502230000','青溪','','','','',''),('20180427152350','20180502210000','20180502230000','青州','','落英缤纷,喜羊羊','','',''),('20180427152350','20180502210000','20180502230000','寿春','','','','',''),('20180427152350','20180502210000','20180502230000','始兴','','2015,卢沟晓月','','',''),('20180427152350','20180502210000','20180502230000','始安','','千里婵娟,雪战到底','','',''),('20180427152351','20180502210000','20180502230000','襄平','','','','',''),('20180427152351','20180502210000','20180502230000','武乡','','','','',''),('20180427152350','20180502210000','20180502230000','郁林','','','','',''),('20180427152350','20180502210000','20180502230000','豫章','','','','',''),('20180427152350','20180502210000','20180502230000','滨海','','','','',''),('20180427152350','20180502210000','20180502230000','海滨','','','','',''),('20180427152350','20180502210000','20180502230000','湖西','','勇者无惧,福星高照,雪山飞狐','','',''),('20180427152351','20180502210000','20180502230000','湖东','','','','',''),('20180427152350','20180502210000','20180502230000','湖口','','','','',''),('20180427152351','20180502210000','20180502230000','金城','','','','',''),('20180427152351','20180502210000','20180502230000','江畔','','','','',''),('20180427152350','20180502210000','20180502230000','江洲','','','','',''),('20180427152350','20180502210000','20180502230000','江口','','','','',''),('20180511113026','20180516210000','20180516230000','临江','','牡丹花城,蜀南竹海','','',''),('20180511113026','20180516210000','20180516230000','廉州','','','','',''),('20180511113026','20180516210000','20180516230000','兴化','','喜羊羊,无双倾城','','',''),('20180511113026','20180516210000','20180516230000','饶州','','群星聚会,奇门遁甲,黄埔风云','','',''),('20180511113026','20180516210000','20180516230000','韶州','','混沌初开,2013','','',''),('20180511113026','20180516210000','20180516230000','汀州','','','','',''),('20180511113026','20180516210000','20180516230000','严州','','2015,月满西楼','','',''),('20180511113026','20180516210000','20180516230000','岳州','','','','',''),('20180511113026','20180516210000','20180516230000','郧阳','','福星高照,千里婵娟','','',''),('20180511113026','20180516210000','20180516230000','袁州','','武当雄风,林海雪原','','',''),('20180511113026','20180516210000','20180516230000','南安','','橘子洲头,星罗棋布','','',''),('20180511113026','20180516210000','20180516230000','宝庆','','','','',''),('20180511113026','20180516210000','20180516230000','承天','','','','',''),('20180511113026','20180516210000','20180516230000','辰州','','黄鹤楼,霸者无双','','',''),('20180511113026','20180516210000','20180516230000','处州','','','','',''),('20180511113026','20180516210000','20180516230000','德安','','','','',''),('20180511113026','20180516210000','20180516230000','广信','','避暑山庄,2014','','',''),('20180511113026','20180516210000','20180516230000','衡州','','雪战到底,卢沟晓月','','',''),('20180511113026','20180516210000','20180516230000','建宁','','2012,勇者无惧','','',''),('20180511113026','20180516210000','20180516230000','建昌','','乐山大佛,忆江南','','',''),('20180731201557','20180801210000','20180801230000','马湖','','','','',''),('20180731201557','20180801210000','20180801230000','龙安','','群雄逐鹿,混沌初开','','',''),('20180731201557','20180801210000','20180801230000','潞安','','','','',''),('20180731201557','20180801210000','20180801230000','叙州','','','','',''),('20180731201557','20180801210000','20180801230000','瑞州','','','','',''),('20180731201557','20180801210000','20180801230000','汝宁','','','','',''),('20180731201557','20180801210000','20180801230000','顺庆','','','','',''),('20180731201557','20180801210000','20180801230000','卫辉','','','','',''),('20180731201557','20180801210000','20180801230000','乌蒙','','','','',''),('20180731201557','20180801210000','20180801230000','乌撒','','','','',''),('20180731201557','20180801210000','20180801230000','彰德','','无双倾城,2012','','',''),('20180731201557','20180801210000','20180801230000','夔州','','','','',''),('20180731201557','20180801210000','20180801230000','南康','','','','',''),('20180731201557','20180801210000','20180801230000','平阳','','','','',''),('20180731201557','20180801210000','20180801230000','保宁','','','','',''),('20180731201557','20180801210000','20180801230000','东川','','','','',''),('20180731201557','20180801210000','20180801230000','汾州','','月满西楼,2013','','',''),('20180731201557','20180801210000','20180801230000','归德','','','','',''),('20180731201557','20180801210000','20180801230000','巩昌','','','','',''),('20180731201557','20180801210000','20180801230000','怀庆','','','','',''),('20180808164037','20180808210000','20180808230000','临江','','牡丹花城,蜀南竹海','','',''),('20180808164037','20180808210000','20180808230000','廉州','','','','',''),('20180808164037','20180808210000','20180808230000','兴化','','喜羊羊,无双倾城','','',''),('20180808164037','20180808210000','20180808230000','饶州','','群星聚会,奇门遁甲,黄埔风云','','',''),('20180808164037','20180808210000','20180808230000','韶州','','混沌初开,2013','','',''),('20180808164037','20180808210000','20180808230000','汀州','','','','',''),('20180808164037','20180808210000','20180808230000','严州','','2015,月满西楼','','',''),('20180808164037','20180808210000','20180808230000','岳州','','','','',''),('20180808164037','20180808210000','20180808230000','郧阳','','福星高照,千里婵娟','','',''),('20180808164037','20180808210000','20180808230000','袁州','','武当雄风,林海雪原','','',''),('20180808164037','20180808210000','20180808230000','南安','','橘子洲头,星罗棋布','','',''),('20180808164037','20180808210000','20180808230000','宝庆','','','','',''),('20180808164037','20180808210000','20180808230000','承天','','','','',''),('20180808164037','20180808210000','20180808230000','辰州','','黄鹤楼,霸者无双','','',''),('20180808164037','20180808210000','20180808230000','处州','','','','',''),('20180808164037','20180808210000','20180808230000','德安','','','','',''),('20180808164037','20180808210000','20180808230000','广信','','避暑山庄,2014','','',''),('20180808164037','20180808210000','20180808230000','衡州','','雪战到底,卢沟晓月','','',''),('20180808164037','20180808210000','20180808230000','建宁','','2012,勇者无惧','','',''),('20180808164037','20180808210000','20180808230000','建昌','','乐山大佛,忆江南','','',''),('20180822125639','20180822210000','20180822230000','零陵','','','','',''),('20180822125639','20180822210000','20180822230000','黎阳','','天府情缘,黄鹤楼','','',''),('20180822125639','20180822210000','20180822230000','青溪','','','','',''),('20180822125639','20180822210000','20180822230000','青州','','落英缤纷,喜羊羊','','',''),('20180822125639','20180822210000','20180822230000','寿春','','','','',''),('20180822125639','20180822210000','20180822230000','始兴','','2015,卢沟晓月','','',''),('20180822125639','20180822210000','20180822230000','始安','','千里婵娟,雪战到底','','',''),('20180822125639','20180822210000','20180822230000','襄平','','','','',''),('20180822125639','20180822210000','20180822230000','武乡','','','','',''),('20180822125639','20180822210000','20180822230000','郁林','','','','',''),('20180822125639','20180822210000','20180822230000','豫章','','','','',''),('20180822125639','20180822210000','20180822230000','滨海','','','','',''),('20180822125639','20180822210000','20180822230000','海滨','','','','',''),('20180822125639','20180822210000','20180822230000','湖西','','勇者无惧,福星高照,雪山飞狐','','',''),('20180822125639','20180822210000','20180822230000','湖东','','','','',''),('20180822125639','20180822210000','20180822230000','湖口','','','','',''),('20180822125639','20180822210000','20180822230000','金城','','','','',''),('20180822125639','20180822210000','20180822230000','江畔','','','','',''),('20180822125639','20180822210000','20180822230000','江洲','','','','',''),('20180822125639','20180822210000','20180822230000','江口','','','','',''),('20180830121718','20180905210000','20180905230000','临江','','牡丹花城,蜀南竹海','','',''),('20180830121718','20180905210000','20180905230000','廉州','','','','',''),('20180830121718','20180905210000','20180905230000','兴化','','喜羊羊,无双倾城','','',''),('20180830121718','20180905210000','20180905230000','饶州','','群星聚会,奇门遁甲,黄埔风云','','',''),('20180830121718','20180905210000','20180905230000','韶州','','混沌初开,2013','','',''),('20180830121718','20180905210000','20180905230000','汀州','','','','',''),('20180830121718','20180905210000','20180905230000','严州','','2015,月满西楼','','',''),('20180830121718','20180905210000','20180905230000','岳州','','','','',''),('20180830121718','20180905210000','20180905230000','郧阳','','福星高照,千里婵娟','','',''),('20180830121718','20180905210000','20180905230000','袁州','','武当雄风,林海雪原','','',''),('20180830121718','20180905210000','20180905230000','南安','','橘子洲头,星罗棋布','','',''),('20180830121718','20180905210000','20180905230000','宝庆','','','','',''),('20180830121718','20180905210000','20180905230000','承天','','','','',''),('20180830121718','20180905210000','20180905230000','辰州','','黄鹤楼,霸者无双','','',''),('20180830121718','20180905210000','20180905230000','处州','','','','',''),('20180830121718','20180905210000','20180905230000','德安','','','','',''),('20180830121718','20180905210000','20180905230000','广信','','避暑山庄,2014','','',''),('20180830121718','20180905210000','20180905230000','衡州','','雪战到底,卢沟晓月','','',''),('20180830121718','20180905210000','20180905230000','建宁','','2012,勇者无惧','','',''),('20180830121718','20180905210000','20180905230000','建昌','','乐山大佛,忆江南','','',''),('20180908140932','20180912210000','20180912230000','临渝','','乐山大佛,钱塘观潮','','',''),('20180908140932','20180912210000','20180912230000','临川','','','','',''),('20180908140932','20180912210000','20180912230000','清河','','林海雪原,橘子洲头','','',''),('20180908140932','20180912210000','20180912230000','上庸','','','','',''),('20180908140932','20180912210000','20180912230000','宛丘','','','','',''),('20180908140932','20180912210000','20180912230000','望山','','星罗棋布,霸者无双,香格里拉','','',''),('20180908140932','20180912210000','20180912230000','武阳','','2014,忆江南,万里长城','','',''),('20180908140932','20180912210000','20180912230000','渔阳','','','','',''),('20180908140932','20180912210000','20180912230000','真定','','','','',''),('20180908140932','20180912210000','20180912230000','颖川','','','','',''),('20180908140932','20180912210000','20180912230000','荥阳','','','','',''),('20180908140932','20180912210000','20180912230000','逍遥','','','','',''),('20180908140932','20180912210000','20180912230000','南皮','','','','',''),('20180908140932','20180912210000','20180912230000','治莒','','','','',''),('20180908140932','20180912210000','20180912230000','柴桑','','华山论剑,蜀南竹海','','',''),('20180908140932','20180912210000','20180912230000','城阳','','群星聚会,物华天宝,奇门遁甲','','',''),('20180908140932','20180912210000','20180912230000','东平','','','','',''),('20180908140933','20180912210000','20180912230000','奉高','','牡丹花城,长白天池','','',''),('20180908140932','20180912210000','20180912230000','汉寿','','黄埔风云,北京古都,避暑山庄','','',''),('20180908140932','20180912210000','20180912230000','即墨','','武当雄风,逐鹿中原','','','');
/*!40000 ALTER TABLE `citywar_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combat_recording`
--

DROP TABLE IF EXISTS `combat_recording`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combat_recording` (
  `version` varchar(32) NOT NULL DEFAULT '',
  `combat_id` varchar(32) NOT NULL DEFAULT '',
  `msg_index` int(32) NOT NULL DEFAULT '0',
  `content` text,
  `time` varchar(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`combat_id`,`msg_index`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat_recording`
--

LOCK TABLES `combat_recording` WRITE;
/*!40000 ALTER TABLE `combat_recording` DISABLE KEYS */;
/*!40000 ALTER TABLE `combat_recording` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csc_sign_info`
--

DROP TABLE IF EXISTS `csc_sign_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csc_sign_info` (
  `csc` varchar(128) NOT NULL DEFAULT '',
  `path` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `time` varchar(14) NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`csc`,`path`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csc_sign_info`
--

LOCK TABLES `csc_sign_info` WRITE;
/*!40000 ALTER TABLE `csc_sign_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `csc_sign_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_dist_info`
--

DROP TABLE IF EXISTS `csl_dist_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_dist_info` (
  `season` int(11) NOT NULL DEFAULT '0',
  `league_id` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `stage` tinyint(4) NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`season`,`league_id`,`dist`),
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_dist_info`
--

LOCK TABLES `csl_dist_info` WRITE;
/*!40000 ALTER TABLE `csl_dist_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_dist_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_match_info`
--

DROP TABLE IF EXISTS `csl_match_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_match_info` (
  `season` int(11) NOT NULL DEFAULT '0',
  `league_id` varchar(32) NOT NULL DEFAULT '',
  `round` int(11) NOT NULL DEFAULT '0',
  `match_id` varchar(32) NOT NULL DEFAULT '',
  `stage` tinyint(4) NOT NULL DEFAULT '0',
  `matchday` int(11) NOT NULL DEFAULT '0',
  `start_time` char(14) NOT NULL DEFAULT '',
  `home_dist` varchar(32) NOT NULL DEFAULT '',
  `away_dist` varchar(32) NOT NULL DEFAULT '',
  `home_point` tinyint(4) NOT NULL DEFAULT '0',
  `away_point` tinyint(4) NOT NULL DEFAULT '0',
  `home_score` int(11) NOT NULL DEFAULT '0',
  `away_score` int(11) NOT NULL DEFAULT '0',
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`season`,`league_id`,`round`,`match_id`),
  KEY `home_dist` (`home_dist`) USING BTREE,
  KEY `away_dist` (`away_dist`) USING BTREE,
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_match_info`
--

LOCK TABLES `csl_match_info` WRITE;
/*!40000 ALTER TABLE `csl_match_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_match_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_person_info`
--

DROP TABLE IF EXISTS `csl_person_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_person_info` (
  `season` int(11) NOT NULL DEFAULT '0',
  `league_id` varchar(32) NOT NULL DEFAULT '',
  `round` int(11) NOT NULL DEFAULT '0',
  `match_id` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `level_section` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `contrib` int(11) NOT NULL DEFAULT '0',
  `combat` int(11) NOT NULL DEFAULT '0',
  `victory` int(11) NOT NULL DEFAULT '0',
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`season`,`league_id`,`round`,`match_id`,`dist`,`level_section`,`gid`),
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_person_info`
--

LOCK TABLES `csl_person_info` WRITE;
/*!40000 ALTER TABLE `csl_person_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_person_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csw_sign_info`
--

DROP TABLE IF EXISTS `csw_sign_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csw_sign_info` (
  `csw_name` varchar(128) DEFAULT NULL,
  `path` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `content` text,
  `time` varchar(64) DEFAULT NULL,
  `para1` varchar(128) DEFAULT NULL,
  `para2` varchar(255) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`path`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csw_sign_info`
--

LOCK TABLES `csw_sign_info` WRITE;
/*!40000 ALTER TABLE `csw_sign_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `csw_sign_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `draft_info`
--

DROP TABLE IF EXISTS `draft_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `draft_info` (
  `season` varchar(32) NOT NULL DEFAULT '',
  `stage` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `gender` int(8) NOT NULL DEFAULT '1',
  `cur_votes` int(32) NOT NULL DEFAULT '0',
  `total_votes` int(32) NOT NULL DEFAULT '0',
  `flowers` int(32) NOT NULL DEFAULT '0',
  `di_declare` varchar(255) NOT NULL DEFAULT '',
  `images` text,
  `memo` text,
  PRIMARY KEY (`season`,`stage`,`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `draft_info`
--

LOCK TABLES `draft_info` WRITE;
/*!40000 ALTER TABLE `draft_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `draft_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_pet_info`
--

DROP TABLE IF EXISTS `important_pet_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `important_pet_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT '0',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `env` varchar(128) NOT NULL DEFAULT '',
  `longevity` int(11) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `loyalty` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `martial` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `con` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `wiz` int(11) NOT NULL DEFAULT '0',
  `phy_power` int(11) NOT NULL DEFAULT '0',
  `mag_power` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `def` int(11) NOT NULL DEFAULT '0',
  `pet_upgraded` int(11) NOT NULL DEFAULT '0',
  `save_to_text` text NOT NULL,
  PRIMARY KEY (`dist`,`owner`,`pos`,`env`),
  KEY `iid` (`iid`) USING BTREE,
  KEY `env` (`dist`,`env`) USING BTREE,
  KEY `owner` (`owner`) USING BTREE,
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_pet_info`
--

LOCK TABLES `important_pet_info` WRITE;
/*!40000 ALTER TABLE `important_pet_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `important_pet_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_info`
--

DROP TABLE IF EXISTS `item_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `env` varchar(128) NOT NULL DEFAULT '',
  `durability` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `rebuild_level` int(11) NOT NULL DEFAULT '0',
  `color` varchar(16) NOT NULL DEFAULT '0',
  `suit_level` int(11) NOT NULL DEFAULT '0',
  `req_level` int(11) NOT NULL DEFAULT '0',
  `perfect_degree` int(11) NOT NULL DEFAULT '0',
  `save_to_text` text NOT NULL,
  PRIMARY KEY (`owner`,`dist`,`pos`,`env`),
  KEY `iid` (`iid`) USING BTREE,
  KEY `env` (`dist`,`env`) USING BTREE,
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_info`
--

LOCK TABLES `item_info` WRITE;
/*!40000 ALTER TABLE `item_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_info`
--

DROP TABLE IF EXISTS `login_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_info` (
  `id` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `login_mode` varchar(32) NOT NULL DEFAULT '',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_info`
--

LOCK TABLES `login_info` WRITE;
/*!40000 ALTER TABLE `login_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ns_top_info`
--

DROP TABLE IF EXISTS `ns_top_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ns_top_info` (
  `gid` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `regal` int(11) NOT NULL DEFAULT '0',
  `def` int(11) NOT NULL DEFAULT '0',
  `phy_power` int(11) NOT NULL DEFAULT '0',
  `mag_power` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `memo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ns_top_info`
--

LOCK TABLES `ns_top_info` WRITE;
/*!40000 ALTER TABLE `ns_top_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ns_top_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paonan_user_info`
--

DROP TABLE IF EXISTS `paonan_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paonan_user_info` (
  `account` varchar(128) NOT NULL DEFAULT '',
  `gid` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `dist` varchar(128) NOT NULL DEFAULT '',
  `daily_task` varchar(128) NOT NULL DEFAULT '',
  `achieve_task` varchar(128) NOT NULL DEFAULT '',
  `update_time` varchar(128) NOT NULL DEFAULT '',
  `memo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paonan_user_info`
--

LOCK TABLES `paonan_user_info` WRITE;
/*!40000 ALTER TABLE `paonan_user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `paonan_user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party_basic_info`
--

DROP TABLE IF EXISTS `party_basic_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `party_basic_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `creator` varchar(100) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `icon_state` tinyint(2) NOT NULL DEFAULT '0',
  `temp_icon` text NOT NULL,
  `construct` int(11) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT '0',
  `last_give_party_money_time` varchar(16) NOT NULL DEFAULT '',
  `base_construct` int(11) NOT NULL DEFAULT '0',
  `last_pay_score_time` varchar(16) NOT NULL DEFAULT '',
  `last_save_time` varchar(16) NOT NULL DEFAULT '',
  `annouce` text NOT NULL,
  `skill_state` int(11) NOT NULL DEFAULT '0',
  `last_activity_time` varchar(16) NOT NULL DEFAULT '',
  `war_victory` int(11) NOT NULL DEFAULT '0',
  `pay_rate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dist`,`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_basic_info`
--

LOCK TABLES `party_basic_info` WRITE;
/*!40000 ALTER TABLE `party_basic_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `party_basic_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party_members_info`
--

DROP TABLE IF EXISTS `party_members_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `party_members_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `party_contrib` int(11) NOT NULL DEFAULT '0',
  `party_job` varchar(100) NOT NULL DEFAULT '',
  `party_activity` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `member_gid` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`dist`,`gid`,`member_gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_members_info`
--

LOCK TABLES `party_members_info` WRITE;
/*!40000 ALTER TABLE `party_members_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `party_members_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party_skills_info`
--

DROP TABLE IF EXISTS `party_skills_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `party_skills_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `skill_score` int(11) NOT NULL DEFAULT '0',
  `skill_level` int(11) NOT NULL DEFAULT '0',
  `skill_next_level_score` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `skill` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`dist`,`gid`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_skills_info`
--

LOCK TABLES `party_skills_info` WRITE;
/*!40000 ALTER TABLE `party_skills_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `party_skills_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_info`
--

DROP TABLE IF EXISTS `pet_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT '0',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `env` varchar(128) NOT NULL DEFAULT '',
  `longevity` int(11) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `loyalty` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `martial` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `con` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `wiz` int(11) NOT NULL DEFAULT '0',
  `phy_power` int(11) NOT NULL DEFAULT '0',
  `mag_power` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `def` int(11) NOT NULL DEFAULT '0',
  `pet_upgraded` int(11) NOT NULL DEFAULT '0',
  `save_to_text` text NOT NULL,
  PRIMARY KEY (`dist`,`owner`,`pos`,`env`),
  KEY `iid` (`iid`) USING BTREE,
  KEY `env` (`dist`,`env`) USING BTREE,
  KEY `owner` (`owner`) USING BTREE,
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_info`
--

LOCK TABLES `pet_info` WRITE;
/*!40000 ALTER TABLE `pet_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_status`
--

DROP TABLE IF EXISTS `server_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_status` (
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `available` int(11) NOT NULL DEFAULT '0',
  `online` int(11) NOT NULL DEFAULT '0',
  `max_user` int(11) NOT NULL DEFAULT '0',
  `cpu_cost` int(11) NOT NULL DEFAULT '0',
  `cpu_satisfy` int(11) NOT NULL DEFAULT '0',
  `report_time` varchar(32) NOT NULL DEFAULT '',
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
-- Table structure for table `shop_info`
--

DROP TABLE IF EXISTS `shop_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '',
  `shop_id` varchar(128) NOT NULL DEFAULT '',
  `shop_name` varchar(64) NOT NULL DEFAULT '',
  `shop_owner` varchar(32) NOT NULL DEFAULT '',
  `shop_counters` int(11) NOT NULL DEFAULT '0',
  `shop_base_money` int(11) NOT NULL DEFAULT '0',
  `shop_run_money` int(11) NOT NULL DEFAULT '0',
  `shop_state` varchar(20) NOT NULL DEFAULT '',
  `shop_level` int(11) NOT NULL DEFAULT '0',
  `shop_type` varchar(20) NOT NULL DEFAULT '',
  `shop_credit_rank` int(11) NOT NULL DEFAULT '0',
  `shop_credit_value` int(11) NOT NULL DEFAULT '0',
  `shop_rate` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`dist`,`owner`,`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_info`
--

LOCK TABLES `shop_info` WRITE;
/*!40000 ALTER TABLE `shop_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sync_info`
--

DROP TABLE IF EXISTS `sync_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sync_info` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sync_info`
--

LOCK TABLES `sync_info` WRITE;
/*!40000 ALTER TABLE `sync_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `sync_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_char`
--

DROP TABLE IF EXISTS `top_char`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_char` (
  `top_index` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `val` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`top_index`,`rank`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_char`
--

LOCK TABLES `top_char` WRITE;
/*!40000 ALTER TABLE `top_char` DISABLE KEYS */;
/*!40000 ALTER TABLE `top_char` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_pet`
--

DROP TABLE IF EXISTS `top_pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_pet` (
  `top_index` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `val` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`top_index`,`rank`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_pet`
--

LOCK TABLES `top_pet` WRITE;
/*!40000 ALTER TABLE `top_pet` DISABLE KEYS */;
/*!40000 ALTER TABLE `top_pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_tongtt`
--

DROP TABLE IF EXISTS `top_tongtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_tongtt` (
  `top_index` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `over_lv` int(11) NOT NULL DEFAULT '0',
  `used_ti` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`top_index`,`rank`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_tongtt`
--

LOCK TABLES `top_tongtt` WRITE;
/*!40000 ALTER TABLE `top_tongtt` DISABLE KEYS */;
/*!40000 ALTER TABLE `top_tongtt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_char_info`
--

DROP TABLE IF EXISTS `upgrade_char_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_char_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `create_time` varchar(16) NOT NULL DEFAULT '',
  `upgrade_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `last_login_time` varchar(16) NOT NULL DEFAULT '',
  `last_logout_time` varchar(16) NOT NULL DEFAULT '',
  `family` varchar(32) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `icon` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `con` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `wiz` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`dist`,`gid`),
  KEY `account` (`account`) USING BTREE,
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_char_info`
--

LOCK TABLES `upgrade_char_info` WRITE;
/*!40000 ALTER TABLE `upgrade_char_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `upgrade_char_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `dl_mdb_all`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dl_mdb_all` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dl_mdb_all`;

--
-- Table structure for table `acc_info`
--

DROP TABLE IF EXISTS `acc_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_info` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `expired_time` varchar(14) NOT NULL DEFAULT '',
  `points` int(11) NOT NULL DEFAULT '0',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_info`
--

LOCK TABLES `acc_info` WRITE;
/*!40000 ALTER TABLE `acc_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_info_copy`
--

DROP TABLE IF EXISTS `acc_info_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_info_copy` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `expired_time` varchar(14) NOT NULL DEFAULT '',
  `points` int(11) NOT NULL DEFAULT '0',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_info_copy`
--

LOCK TABLES `acc_info_copy` WRITE;
/*!40000 ALTER TABLE `acc_info_copy` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_info_copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `blocked_time` varchar(14) NOT NULL DEFAULT '',
  `blocked_reason` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `protect` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `birthday` varchar(8) NOT NULL DEFAULT '',
  `id_type` varchar(32) NOT NULL DEFAULT '',
  `id_num` varchar(32) NOT NULL DEFAULT '',
  `tel` varchar(32) NOT NULL DEFAULT '',
  `mobile` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `privilege` int(11) unsigned NOT NULL DEFAULT '0',
  `account_id` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `permit_ip` varchar(15) NOT NULL DEFAULT '',
  `permit_id` varchar(16) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`)
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
-- Table structure for table `admin_log`
--

DROP TABLE IF EXISTS `admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `msg` varchar(255) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_log`
--

LOCK TABLES `admin_log` WRITE;
/*!40000 ALTER TABLE `admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arena_user_info`
--

DROP TABLE IF EXISTS `arena_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arena_user_info` (
  `path` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `gid` varchar(128) NOT NULL DEFAULT '',
  `dist` varchar(128) NOT NULL DEFAULT '',
  `tt_score` int(32) NOT NULL DEFAULT '0',
  `w_score` int(32) NOT NULL DEFAULT '0',
  `tao` int(32) NOT NULL DEFAULT '0',
  `wcoin` int(32) NOT NULL DEFAULT '0',
  `family` varchar(128) NOT NULL DEFAULT '',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `checksum` int(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`path`),
  KEY `tt_score` (`tt_score`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arena_user_info`
--

LOCK TABLES `arena_user_info` WRITE;
/*!40000 ALTER TABLE `arena_user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena_user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `char_info`
--

DROP TABLE IF EXISTS `char_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `char_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `charge_items_value` int(11) NOT NULL DEFAULT '0',
  `glory` int(11) NOT NULL DEFAULT '0',
  `create_time` varchar(16) NOT NULL DEFAULT '',
  `first_login_time` varchar(16) NOT NULL DEFAULT '',
  `last_login_time` varchar(16) NOT NULL DEFAULT '',
  `last_logout_time` varchar(16) NOT NULL DEFAULT '',
  `first_login_ip` varchar(16) NOT NULL DEFAULT '',
  `last_login_ip` varchar(16) NOT NULL DEFAULT '',
  `first_login_mac` varchar(32) NOT NULL DEFAULT '',
  `last_login_mac` varchar(32) NOT NULL DEFAULT '',
  `service_member_end_time` varchar(16) NOT NULL DEFAULT '',
  `family` varchar(32) NOT NULL DEFAULT '',
  `family_title` varchar(32) NOT NULL DEFAULT '',
  `activity_info` text NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `month_tao` int(11) NOT NULL DEFAULT '0',
  `month_tao_ti` char(14) NOT NULL DEFAULT '',
  `total_score` int(11) NOT NULL DEFAULT '0',
  `char_status` varchar(32) NOT NULL DEFAULT '',
  `party_name` varchar(32) NOT NULL DEFAULT '',
  `party_job` varchar(32) NOT NULL DEFAULT '',
  `party_contrib` int(11) DEFAULT NULL,
  `portrait` int(11) NOT NULL DEFAULT '0',
  `deny_login` int(11) NOT NULL DEFAULT '0',
  `last_privilege` int(11) NOT NULL DEFAULT '0',
  `icon` int(11) NOT NULL DEFAULT '0',
  `cash` int(11) NOT NULL DEFAULT '0',
  `balance` int(11) NOT NULL DEFAULT '0',
  `auto_stall` int(11) NOT NULL DEFAULT '0',
  `regal` int(11) NOT NULL DEFAULT '0',
  `gender` int(11) NOT NULL DEFAULT '0',
  `nice` int(11) NOT NULL DEFAULT '0',
  `title` varchar(32) NOT NULL DEFAULT '',
  `str` int(11) NOT NULL DEFAULT '0',
  `con` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `wiz` int(11) NOT NULL DEFAULT '0',
  `phy_power` int(11) NOT NULL DEFAULT '0',
  `mag_power` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `def` int(11) NOT NULL DEFAULT '0',
  `tortoise` int(11) NOT NULL DEFAULT '0',
  `reputation` int(11) NOT NULL DEFAULT '0',
  `wrestle_score` int(11) DEFAULT NULL,
  `newbie_survey_answer` int(11) NOT NULL DEFAULT '0',
  `tower_num` int(11) NOT NULL DEFAULT '0',
  `tower_time` int(11) NOT NULL DEFAULT '0',
  `tongtt_num` int(11) NOT NULL DEFAULT '0',
  `vip_score` int(11) NOT NULL DEFAULT '0',
  `tongtt_time` int(11) NOT NULL DEFAULT '0',
  `question_score` int(11) NOT NULL DEFAULT '0',
  `question_cost` int(11) NOT NULL DEFAULT '0',
  `last_question_time` int(11) NOT NULL DEFAULT '0',
  `arena_level` int(11) NOT NULL DEFAULT '0',
  `arena_exp` int(11) NOT NULL DEFAULT '0',
  `arena_score` int(11) NOT NULL DEFAULT '0',
  `kill_pkers` int(11) NOT NULL DEFAULT '0',
  `kill_officers` int(11) NOT NULL DEFAULT '0',
  `achieve` int(11) NOT NULL DEFAULT '0',
  `qixjh_round` int(11) NOT NULL DEFAULT '0',
  `qixjh_type` int(11) NOT NULL DEFAULT '0',
  `qixjh_time` int(11) NOT NULL DEFAULT '0',
  `tunt_name` varchar(32) NOT NULL DEFAULT '',
  `tunt_time` int(11) NOT NULL DEFAULT '0',
  `shid_name` varchar(32) NOT NULL DEFAULT '',
  `shid_time` int(11) NOT NULL DEFAULT '0',
  `kuilw_name` varchar(32) NOT NULL DEFAULT '',
  `kuilw_time` int(11) NOT NULL DEFAULT '0',
  `acc_blocked_time` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`dist`,`gid`),
  KEY `account` (`account`) USING BTREE,
  KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `char_info`
--

LOCK TABLES `char_info` WRITE;
/*!40000 ALTER TABLE `char_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `char_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_info`
--

DROP TABLE IF EXISTS `child_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `wisdom` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `physique` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `str_effect` int(11) NOT NULL DEFAULT '0',
  `wit_effect` int(11) NOT NULL DEFAULT '0',
  `dex_effect` int(11) NOT NULL DEFAULT '0',
  `phy_effect` int(11) NOT NULL DEFAULT '0',
  `save_to_text` text NOT NULL,
  PRIMARY KEY (`dist`,`iid`),
  KEY `iid` (`iid`) USING BTREE,
  KEY `owner` (`owner`) USING BTREE,
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_info`
--

LOCK TABLES `child_info` WRITE;
/*!40000 ALTER TABLE `child_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `child_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_info`
--

DROP TABLE IF EXISTS `city_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_info` (
  `city` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `party_name` varchar(32) NOT NULL DEFAULT '',
  `party_gid` varchar(32) NOT NULL DEFAULT '',
  `level` int(8) NOT NULL DEFAULT '1',
  `buildings` text,
  `memo` text,
  PRIMARY KEY (`city`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_info`
--

LOCK TABLES `city_info` WRITE;
/*!40000 ALTER TABLE `city_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `city_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citywar_info`
--

DROP TABLE IF EXISTS `citywar_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citywar_info` (
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `start_time` varchar(14) NOT NULL DEFAULT '',
  `end_time` varchar(14) NOT NULL DEFAULT '',
  `city_name` varchar(32) NOT NULL DEFAULT '',
  `defense_dist` varchar(32) NOT NULL DEFAULT '',
  `attack_dist` varchar(128) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(255) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`start_time`,`city_name`),
  KEY `start_time` (`start_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citywar_info`
--

LOCK TABLES `citywar_info` WRITE;
/*!40000 ALTER TABLE `citywar_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `citywar_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combat_recording`
--

DROP TABLE IF EXISTS `combat_recording`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combat_recording` (
  `version` varchar(32) NOT NULL DEFAULT '',
  `combat_id` varchar(32) NOT NULL DEFAULT '',
  `msg_index` int(32) NOT NULL DEFAULT '0',
  `content` text,
  `time` varchar(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`combat_id`,`msg_index`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat_recording`
--

LOCK TABLES `combat_recording` WRITE;
/*!40000 ALTER TABLE `combat_recording` DISABLE KEYS */;
/*!40000 ALTER TABLE `combat_recording` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csc_sign_info`
--

DROP TABLE IF EXISTS `csc_sign_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csc_sign_info` (
  `csc` varchar(128) NOT NULL DEFAULT '',
  `path` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `time` varchar(14) NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`csc`,`path`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csc_sign_info`
--

LOCK TABLES `csc_sign_info` WRITE;
/*!40000 ALTER TABLE `csc_sign_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `csc_sign_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_dist_info`
--

DROP TABLE IF EXISTS `csl_dist_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_dist_info` (
  `season` int(11) NOT NULL DEFAULT '0',
  `league_id` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `stage` tinyint(4) NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`season`,`league_id`,`dist`),
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_dist_info`
--

LOCK TABLES `csl_dist_info` WRITE;
/*!40000 ALTER TABLE `csl_dist_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_dist_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_match_info`
--

DROP TABLE IF EXISTS `csl_match_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_match_info` (
  `season` int(11) NOT NULL DEFAULT '0',
  `league_id` varchar(32) NOT NULL DEFAULT '',
  `round` int(11) NOT NULL DEFAULT '0',
  `match_id` varchar(32) NOT NULL DEFAULT '',
  `stage` tinyint(4) NOT NULL DEFAULT '0',
  `matchday` int(11) NOT NULL DEFAULT '0',
  `start_time` char(14) NOT NULL DEFAULT '',
  `home_dist` varchar(32) NOT NULL DEFAULT '',
  `away_dist` varchar(32) NOT NULL DEFAULT '',
  `home_point` tinyint(4) NOT NULL DEFAULT '0',
  `away_point` tinyint(4) NOT NULL DEFAULT '0',
  `home_score` int(11) NOT NULL DEFAULT '0',
  `away_score` int(11) NOT NULL DEFAULT '0',
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`season`,`league_id`,`round`,`match_id`),
  KEY `home_dist` (`home_dist`) USING BTREE,
  KEY `away_dist` (`away_dist`) USING BTREE,
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_match_info`
--

LOCK TABLES `csl_match_info` WRITE;
/*!40000 ALTER TABLE `csl_match_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_match_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_person_info`
--

DROP TABLE IF EXISTS `csl_person_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_person_info` (
  `season` int(11) NOT NULL DEFAULT '0',
  `league_id` varchar(32) NOT NULL DEFAULT '',
  `round` int(11) NOT NULL DEFAULT '0',
  `match_id` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `level_section` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `contrib` int(11) NOT NULL DEFAULT '0',
  `combat` int(11) NOT NULL DEFAULT '0',
  `victory` int(11) NOT NULL DEFAULT '0',
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`season`,`league_id`,`round`,`match_id`,`dist`,`level_section`,`gid`),
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_person_info`
--

LOCK TABLES `csl_person_info` WRITE;
/*!40000 ALTER TABLE `csl_person_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_person_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csw_sign_info`
--

DROP TABLE IF EXISTS `csw_sign_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csw_sign_info` (
  `csw_name` varchar(128) DEFAULT NULL,
  `path` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `content` text,
  `time` varchar(64) DEFAULT NULL,
  `para1` varchar(128) DEFAULT NULL,
  `para2` varchar(255) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`path`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csw_sign_info`
--

LOCK TABLES `csw_sign_info` WRITE;
/*!40000 ALTER TABLE `csw_sign_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `csw_sign_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `draft_info`
--

DROP TABLE IF EXISTS `draft_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `draft_info` (
  `season` varchar(32) NOT NULL DEFAULT '',
  `stage` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `gender` int(8) NOT NULL DEFAULT '1',
  `cur_votes` int(32) NOT NULL DEFAULT '0',
  `total_votes` int(32) NOT NULL DEFAULT '0',
  `flowers` int(32) NOT NULL DEFAULT '0',
  `di_declare` varchar(255) NOT NULL DEFAULT '',
  `images` text,
  `memo` text,
  PRIMARY KEY (`season`,`stage`,`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `draft_info`
--

LOCK TABLES `draft_info` WRITE;
/*!40000 ALTER TABLE `draft_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `draft_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_pet_info`
--

DROP TABLE IF EXISTS `important_pet_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `important_pet_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT '0',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `env` varchar(128) NOT NULL DEFAULT '',
  `longevity` int(11) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `loyalty` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `martial` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `con` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `wiz` int(11) NOT NULL DEFAULT '0',
  `phy_power` int(11) NOT NULL DEFAULT '0',
  `mag_power` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `def` int(11) NOT NULL DEFAULT '0',
  `pet_upgraded` int(11) NOT NULL DEFAULT '0',
  `save_to_text` text NOT NULL,
  PRIMARY KEY (`dist`,`owner`,`pos`,`env`),
  KEY `iid` (`iid`) USING BTREE,
  KEY `env` (`dist`,`env`) USING BTREE,
  KEY `owner` (`owner`) USING BTREE,
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_pet_info`
--

LOCK TABLES `important_pet_info` WRITE;
/*!40000 ALTER TABLE `important_pet_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `important_pet_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_info`
--

DROP TABLE IF EXISTS `item_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `env` varchar(128) NOT NULL DEFAULT '',
  `durability` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `rebuild_level` int(11) NOT NULL DEFAULT '0',
  `color` varchar(16) NOT NULL DEFAULT '0',
  `suit_level` int(11) NOT NULL DEFAULT '0',
  `req_level` int(11) NOT NULL DEFAULT '0',
  `perfect_degree` int(11) NOT NULL DEFAULT '0',
  `save_to_text` text NOT NULL,
  PRIMARY KEY (`owner`,`dist`,`pos`,`env`),
  KEY `iid` (`iid`) USING BTREE,
  KEY `env` (`dist`,`env`) USING BTREE,
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_info`
--

LOCK TABLES `item_info` WRITE;
/*!40000 ALTER TABLE `item_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_info`
--

DROP TABLE IF EXISTS `login_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_info` (
  `id` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `login_mode` varchar(32) NOT NULL DEFAULT '',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_info`
--

LOCK TABLES `login_info` WRITE;
/*!40000 ALTER TABLE `login_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ns_top_info`
--

DROP TABLE IF EXISTS `ns_top_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ns_top_info` (
  `gid` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `regal` int(11) NOT NULL DEFAULT '0',
  `def` int(11) NOT NULL DEFAULT '0',
  `phy_power` int(11) NOT NULL DEFAULT '0',
  `mag_power` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `memo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ns_top_info`
--

LOCK TABLES `ns_top_info` WRITE;
/*!40000 ALTER TABLE `ns_top_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ns_top_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paonan_user_info`
--

DROP TABLE IF EXISTS `paonan_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paonan_user_info` (
  `account` varchar(128) NOT NULL DEFAULT '',
  `gid` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `dist` varchar(128) NOT NULL DEFAULT '',
  `daily_task` varchar(128) NOT NULL DEFAULT '',
  `achieve_task` varchar(128) NOT NULL DEFAULT '',
  `update_time` varchar(128) NOT NULL DEFAULT '',
  `memo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paonan_user_info`
--

LOCK TABLES `paonan_user_info` WRITE;
/*!40000 ALTER TABLE `paonan_user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `paonan_user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party_basic_info`
--

DROP TABLE IF EXISTS `party_basic_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `party_basic_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `creator` varchar(100) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `icon_state` tinyint(2) NOT NULL DEFAULT '0',
  `temp_icon` text NOT NULL,
  `construct` int(11) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT '0',
  `last_give_party_money_time` varchar(16) NOT NULL DEFAULT '',
  `base_construct` int(11) NOT NULL DEFAULT '0',
  `last_pay_score_time` varchar(16) NOT NULL DEFAULT '',
  `last_save_time` varchar(16) NOT NULL DEFAULT '',
  `annouce` text NOT NULL,
  `skill_state` int(11) NOT NULL DEFAULT '0',
  `last_activity_time` varchar(16) NOT NULL DEFAULT '',
  `war_victory` int(11) NOT NULL DEFAULT '0',
  `pay_rate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dist`,`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_basic_info`
--

LOCK TABLES `party_basic_info` WRITE;
/*!40000 ALTER TABLE `party_basic_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `party_basic_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party_members_info`
--

DROP TABLE IF EXISTS `party_members_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `party_members_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `party_contrib` int(11) NOT NULL DEFAULT '0',
  `party_job` varchar(100) NOT NULL DEFAULT '',
  `party_activity` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `member_gid` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`dist`,`gid`,`member_gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_members_info`
--

LOCK TABLES `party_members_info` WRITE;
/*!40000 ALTER TABLE `party_members_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `party_members_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party_skills_info`
--

DROP TABLE IF EXISTS `party_skills_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `party_skills_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `skill_score` int(11) NOT NULL DEFAULT '0',
  `skill_level` int(11) NOT NULL DEFAULT '0',
  `skill_next_level_score` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `skill` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`dist`,`gid`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_skills_info`
--

LOCK TABLES `party_skills_info` WRITE;
/*!40000 ALTER TABLE `party_skills_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `party_skills_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_info`
--

DROP TABLE IF EXISTS `pet_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT '0',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `env` varchar(128) NOT NULL DEFAULT '',
  `longevity` int(11) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `loyalty` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `martial` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `con` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `wiz` int(11) NOT NULL DEFAULT '0',
  `phy_power` int(11) NOT NULL DEFAULT '0',
  `mag_power` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `def` int(11) NOT NULL DEFAULT '0',
  `pet_upgraded` int(11) NOT NULL DEFAULT '0',
  `save_to_text` text NOT NULL,
  PRIMARY KEY (`dist`,`owner`,`pos`,`env`),
  KEY `iid` (`iid`) USING BTREE,
  KEY `env` (`dist`,`env`) USING BTREE,
  KEY `owner` (`owner`) USING BTREE,
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_info`
--

LOCK TABLES `pet_info` WRITE;
/*!40000 ALTER TABLE `pet_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_status`
--

DROP TABLE IF EXISTS `server_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_status` (
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `available` int(11) NOT NULL DEFAULT '0',
  `online` int(11) NOT NULL DEFAULT '0',
  `max_user` int(11) NOT NULL DEFAULT '0',
  `cpu_cost` int(11) NOT NULL DEFAULT '0',
  `cpu_satisfy` int(11) NOT NULL DEFAULT '0',
  `report_time` varchar(32) NOT NULL DEFAULT '',
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
-- Table structure for table `shop_info`
--

DROP TABLE IF EXISTS `shop_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '',
  `shop_id` varchar(128) NOT NULL DEFAULT '',
  `shop_name` varchar(64) NOT NULL DEFAULT '',
  `shop_owner` varchar(32) NOT NULL DEFAULT '',
  `shop_counters` int(11) NOT NULL DEFAULT '0',
  `shop_base_money` int(11) NOT NULL DEFAULT '0',
  `shop_run_money` int(11) NOT NULL DEFAULT '0',
  `shop_state` varchar(20) NOT NULL DEFAULT '',
  `shop_level` int(11) NOT NULL DEFAULT '0',
  `shop_type` varchar(20) NOT NULL DEFAULT '',
  `shop_credit_rank` int(11) NOT NULL DEFAULT '0',
  `shop_credit_value` int(11) NOT NULL DEFAULT '0',
  `shop_rate` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`dist`,`owner`,`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_info`
--

LOCK TABLES `shop_info` WRITE;
/*!40000 ALTER TABLE `shop_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sync_info`
--

DROP TABLE IF EXISTS `sync_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sync_info` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sync_info`
--

LOCK TABLES `sync_info` WRITE;
/*!40000 ALTER TABLE `sync_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `sync_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_char`
--

DROP TABLE IF EXISTS `top_char`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_char` (
  `top_index` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `val` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`top_index`,`rank`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_char`
--

LOCK TABLES `top_char` WRITE;
/*!40000 ALTER TABLE `top_char` DISABLE KEYS */;
/*!40000 ALTER TABLE `top_char` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_pet`
--

DROP TABLE IF EXISTS `top_pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_pet` (
  `top_index` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `val` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`top_index`,`rank`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_pet`
--

LOCK TABLES `top_pet` WRITE;
/*!40000 ALTER TABLE `top_pet` DISABLE KEYS */;
/*!40000 ALTER TABLE `top_pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_tongtt`
--

DROP TABLE IF EXISTS `top_tongtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_tongtt` (
  `top_index` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `over_lv` int(11) NOT NULL DEFAULT '0',
  `used_ti` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`top_index`,`rank`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_tongtt`
--

LOCK TABLES `top_tongtt` WRITE;
/*!40000 ALTER TABLE `top_tongtt` DISABLE KEYS */;
/*!40000 ALTER TABLE `top_tongtt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_char_info`
--

DROP TABLE IF EXISTS `upgrade_char_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_char_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `create_time` varchar(16) NOT NULL DEFAULT '',
  `upgrade_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `last_login_time` varchar(16) NOT NULL DEFAULT '',
  `last_logout_time` varchar(16) NOT NULL DEFAULT '',
  `family` varchar(32) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `icon` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `con` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `wiz` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`dist`,`gid`),
  KEY `account` (`account`) USING BTREE,
  KEY `update_time` (`update_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_char_info`
--

LOCK TABLES `upgrade_char_info` WRITE;
/*!40000 ALTER TABLE `upgrade_char_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `upgrade_char_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `dl_tdb_1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dl_tdb_1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dl_tdb_1`;

--
-- Table structure for table `lottery`
--

DROP TABLE IF EXISTS `lottery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lottery` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `lottery_iid` varchar(32) NOT NULL DEFAULT '',
  `lottery_no` varchar(32) NOT NULL DEFAULT '',
  `lottery_info` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lottery`
--

LOCK TABLES `lottery` WRITE;
/*!40000 ALTER TABLE `lottery` DISABLE KEYS */;
/*!40000 ALTER TABLE `lottery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merge_treasure_ids`
--

DROP TABLE IF EXISTS `merge_treasure_ids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merge_treasure_ids` (
  `id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merge_treasure_ids`
--

LOCK TABLES `merge_treasure_ids` WRITE;
/*!40000 ALTER TABLE `merge_treasure_ids` DISABLE KEYS */;
/*!40000 ALTER TABLE `merge_treasure_ids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trading_log`
--

DROP TABLE IF EXISTS `trading_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trading_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(128) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trading_log`
--

LOCK TABLES `trading_log` WRITE;
/*!40000 ALTER TABLE `trading_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `trading_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trading_platform_log`
--

DROP TABLE IF EXISTS `trading_platform_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trading_platform_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `commodity_type` int(11) unsigned NOT NULL DEFAULT '0',
  `commodity_id` varchar(64) NOT NULL DEFAULT '',
  `commodity_iid` varchar(128) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `service_costs` float NOT NULL DEFAULT '0',
  `tax` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(32) NOT NULL DEFAULT '0',
  `para4` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`) USING BTREE,
  KEY `commodity_id` (`commodity_id`) USING BTREE,
  KEY `time_account` (`update_time`,`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trading_platform_log`
--

LOCK TABLES `trading_platform_log` WRITE;
/*!40000 ALTER TABLE `trading_platform_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `trading_platform_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trading_record`
--

DROP TABLE IF EXISTS `trading_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trading_record` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `seller` varchar(32) NOT NULL DEFAULT '',
  `seller_account` varchar(32) NOT NULL DEFAULT '',
  `seller_dist` varchar(32) NOT NULL DEFAULT '',
  `buyer` varchar(32) NOT NULL DEFAULT '',
  `buyer_account` varchar(32) NOT NULL DEFAULT '',
  `buyer_dist` varchar(32) NOT NULL DEFAULT '',
  `price` int(11) NOT NULL DEFAULT '0',
  `service_charge` float NOT NULL DEFAULT '0',
  `item_order_id` varchar(255) NOT NULL DEFAULT '',
  `update_time` char(14) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trading_record`
--

LOCK TABLES `trading_record` WRITE;
/*!40000 ALTER TABLE `trading_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `trading_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_log`
--

DROP TABLE IF EXISTS `transaction_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_log` (
  `transaction_id` varchar(32) NOT NULL DEFAULT '',
  `goods_id` varchar(255) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `content` mediumtext,
  `module` varchar(32) DEFAULT NULL,
  `func` varchar(32) DEFAULT NULL,
  `para` varchar(255) DEFAULT NULL,
  `result` text,
  `http_got` tinyint(4) NOT NULL DEFAULT '0',
  `repeat_times` tinyint(4) NOT NULL DEFAULT '0',
  `update_time` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_log`
--

LOCK TABLES `transaction_log` WRITE;
/*!40000 ALTER TABLE `transaction_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treasure_info`
--

DROP TABLE IF EXISTS `treasure_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treasure_info` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `sale_duration` int(11) NOT NULL DEFAULT '0',
  `org_price` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `org_upset_price` int(11) NOT NULL DEFAULT '0',
  `upset_price` int(11) NOT NULL DEFAULT '0',
  `times` int(11) NOT NULL DEFAULT '0',
  `change_time` int(11) NOT NULL DEFAULT '0',
  `buyer` varchar(32) DEFAULT NULL,
  `buyer_account` varchar(32) DEFAULT NULL,
  `buyer_dist` varchar(32) NOT NULL DEFAULT '',
  `seller` varchar(32) NOT NULL DEFAULT '',
  `seller_account` varchar(32) NOT NULL DEFAULT '',
  `seller_dist` varchar(32) NOT NULL DEFAULT '',
  `simple_info` varchar(255) NOT NULL DEFAULT '',
  `particular_info` text,
  `snapshot` text,
  `xml` mediumtext NOT NULL,
  `unique_id` varchar(128) NOT NULL DEFAULT '',
  `issue_time` varchar(32) NOT NULL DEFAULT '',
  `appointer` varchar(32) NOT NULL DEFAULT '',
  `sale_method` tinyint(4) NOT NULL DEFAULT '0',
  `checksum` int(32) NOT NULL DEFAULT '0',
  `snapshot_upgrade` text,
  `snapshot_equip` text,
  `snapshot_upg_equip` text,
  `snapshot_item` text,
  `snapshot_pet` text,
  `snapshot_guard` text,
  `snapshot_child` text,
  PRIMARY KEY (`id`),
  KEY `seller` (`seller`) USING BTREE,
  KEY `buyer` (`buyer`) USING BTREE,
  KEY `appointer` (`appointer`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treasure_info`
--

LOCK TABLES `treasure_info` WRITE;
/*!40000 ALTER TABLE `treasure_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `treasure_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-17 21:59:25
