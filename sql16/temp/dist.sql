-- 从 dl_adb_all.sql 提取的所有关于区的 sql

-- config 表太多这里就不写了

-- ccs
INSERT INTO `ccs` VALUES ('ccs_daili','118.24.7.124',8110,'问道一区',1,'',NULL);

-- server
INSERT INTO `server` VALUES ('三线','','118.24.7.124',8162,1200,'问道一区',1,'','','','',0,0,0,0,3,'','','',0,NULL);
INSERT INTO `server` VALUES ('一线','','118.24.7.124',8160,1200,'问道一区',1,'network','','','',0,0,0,600,1,'apex1','','',0,NULL);
INSERT INTO `server` VALUES ('二线','','118.24.7.124',8161,1200,'问道一区',1,'','','','',0,0,0,0,2,'','','',0,NULL);

-- district
INSERT INTO `district` VALUES ('问道一区','','login/new_char/permit_wizard/new_account/new_party',1,'spa_jiangw','csa_daili','',NULL);

-- dba
INSERT INTO `dba` VALUES ('dba_daili','118.24.7.124',8120,'问道一区','',1,NULL);

-- csa
INSERT INTO `csa` VALUES ('csa_daili','118.24.7.124','6101',7,'问道一区','',0,'',0,'');

-- cs_ccs
INSERT INTO `cs_ccs` VALUES ('ccs_daili','LEAGUE_SOURCE/PARTYWAR_SOURCE/ARENA_SOURCE/BOTTLE_SOURCE/DRAFT_SOURCE/SDDH_SOURCE/EVERYONE_PK_SOURCE/CELEBRITY_SOURCE/SAMSUNG_SOURCE/CITYWAR_SOURCE/XGAME_SOURCE/ACTIVITY_SOURCE\r\n','*','128.24.7.124',8110,1,'问道一区','',NULL);
