-- 用于 nodejs 解析生成新的更新 ip 语句的模板 sql

-- 更新 aaa 表
UPDATE `dl_adb_all`.`aaa` as `t` SET `t`.`ip` = '118.24.7.124' WHERE `t`.`aaa` = 'aaa_daili';

-- 更新 ccs 表
UPDATE `dl_adb_all`.`ccs` as `t` SET `t`.`ip` = '118.24.7.124' WHERE `t`.`ccs` = 'ccs_daili';

-- 更新 csa 表
UPDATE `dl_adb_all`.`csa` as `t` SET `t`.`ip` = '118.24.7.124' WHERE `t`.`csa` = 'csa_daili';

-- 更新 cta 表
UPDATE `dl_adb_all`.`cta` as `t` SET `t`.`ip` = '118.24.7.124' WHERE `t`.`access_adb_user` = 'root';

-- 更新 dba 表
UPDATE `dl_adb_all`.`dba` as `t` SET `t`.`ip` = '118.24.7.124' WHERE `t`.`dba` = 'dba_daili';
UPDATE `dl_adb_all`.`dba` as `t` SET `t`.`ip` = '118.24.7.124' WHERE `t`.`dba` = 'dba_jiangw_pk';

-- 更新 ldba 表
UPDATE `dl_adb_all`.`ldba` as `t` SET `t`.`ip` = '118.24.7.124' WHERE `t`.`ldba` = 'ldba_jiangw';
UPDATE `dl_adb_all`.`ldba` as `t` SET `t`.`ip` = '118.24.7.124' WHERE `t`.`ldba` = 'ldba_jiangw_pk';

-- 更新 spa 表
UPDATE `dl_adb_all`.`spa` as `t` SET `t`.`ip` = '118.24.7.124' WHERE `t`.`spa` = 'spa_jiangw';
UPDATE `dl_adb_all`.`spa` as `t` SET `t`.`ip` = '118.24.7.124' WHERE `t`.`spa` = 'spa_jiangw_pk';

-- 更新 tts 表
UPDATE `dl_adb_all`.`tts` as `t` SET `t`.`ip` = '118.24.7.124' WHERE `t`.`tts` = 'tts_jiangw';