-- Navicate ≤‚ ‘ SQL

-- aaa table
SELECT * FROM `dl_adb_all`.`aaa` as `t` WHERE `t`.`aaa` = 'aaa_daili';

UPDATE `dl_adb_all`.`aaa` as `t` SET `t`.`ip` = '118.24.7.124' WHERE `t`.`aaa` = 'aaa_daili';

-- css table
SELECT * FROM `dl_adb_all`.`ccs` as `t` WHERE `t`.`ccs` = 'ccs_daili';

UPDATE `dl_adb_all`.`ccs` as `t` SET `t`.`ip` = '118.24.7.124' WHERE `t`.`ccs` = 'ccs_daili';

-- csa table
SELECT * FROM `dl_adb_all`.`csa` as `t` WHERE `t`.`csa` = 'csa_daili';

UPDATE `dl_adb_all`.`csa` as `t` SET `t`.`ip` = '118.24.7.124' WHERE `t`.`csa` = 'csa_daili';

-- cta table
SELECT * FROM `dl_adb_all`.`cta` as `t` WHERE `t`.`access_adb_user` = 'root';

UPDATE `dl_adb_all`.`cta` as `t` SET `t`.`ip` = '118.24.7.124' WHERE `t`.`access_adb_user` = 'root';

-- dba table
SELECT * FROM `dl_adb_all`.`dba` as `t` WHERE `t`.`dba` = 'dba_daili';
SELECT * FROM `dl_adb_all`.`dba` as `t` WHERE `t`.`dba` = 'dba_jiangw_pk';

UPDATE `dl_adb_all`.`dba` as `t` SET `t`.`ip` = '118.24.7.124' WHERE `t`.`dba` = 'dba_daili';
UPDATE `dl_adb_all`.`dba` as `t` SET `t`.`ip` = '118.24.7.124' WHERE `t`.`dba` = 'dba_jiangw_pk';

-- ldba table
SELECT * FROM `dl_adb_all`.`ldba` as `t` WHERE `t`.`ldba` = 'ldba_jiangw';
SELECT * FROM `dl_adb_all`.`ldba` as `t` WHERE `t`.`ldba` = 'ldba_jiangw_pk';

UPDATE `dl_adb_all`.`ldba` as `t` SET `t`.`ip` = '118.24.7.124' WHERE `t`.`ldba` = 'ldba_jiangw';
UPDATE `dl_adb_all`.`ldba` as `t` SET `t`.`ip` = '118.24.7.124' WHERE `t`.`ldba` = 'ldba_jiangw_pk';

-- spa table
SELECT * FROM `dl_adb_all`.`spa` as `t` WHERE `t`.`spa` = 'spa_jiangw';
SELECT * FROM `dl_adb_all`.`spa` as `t` WHERE `t`.`spa` = 'spa_jiangw_pk';

UPDATE `dl_adb_all`.`spa` as `t` SET `t`.`ip` = '118.24.7.124' WHERE `t`.`spa` = 'spa_jiangw';
UPDATE `dl_adb_all`.`spa` as `t` SET `t`.`ip` = '118.24.7.124' WHERE `t`.`spa` = 'spa_jiangw_pk';

-- tts table
SELECT * FROM `dl_adb_all`.`tts` as `t` WHERE `t`.`tts` = 'tts_jiangw';

UPDATE `dl_adb_all`.`tts` as `t` SET `t`.`ip` = '118.24.7.124' WHERE `t`.`tts` = 'tts_jiangw';
