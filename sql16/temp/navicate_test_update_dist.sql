-- ccs table
SELECT * FROM `dl_adb_all`.`ccs` as `t` WHERE `t`.`ccs` = 'ccs_daili';

UPDATE `dl_adb_all`.`ccs` as `t` SET `t`.`dist` = '问道一区' WHERE `t`.`ccs` = 'ccs_daili';

-- server table
SELECT * FROM `dl_adb_all`.`server`;

UPDATE `dl_adb_all`.`server` as `t` SET `t`.`dist` = '问道一区';

-- district table
SELECT * FROM `dl_adb_all`.`district` as `t` WHERE `t`.`csa` = 'csa_daili';
UPDATE `dl_adb_all`.`district` as `t` SET `t`.`dist` = '问道一区' WHERE `t`.`csa` = 'csa_daili';

-- dba table
SELECT * FROM `dl_adb_all`.`dba` as `t` WHERE `t`.`dba` = 'dba_daili';
UPDATE `dl_adb_all`.`dba` as `t` SET `t`.`dist` = '问道一区' WHERE `t`.`dba` = 'dba_daili';

-- csa table 
SELECT * FROM `dl_adb_all`.`csa` as `t` WHERE `t`.`csa` = 'csa_daili';
UPDATE `dl_adb_all`.`csa` as `t` SET `t`.`cs_dist` = '问道一区' WHERE `t`.`csa` = 'csa_daili';

-- cs_ccs table
SELECT * FROM `dl_adb_all`.`cs_ccs` as `t` WHERE `t`.`ccs` = 'ccs_daili';
UPDATE `dl_adb_all`.`cs_ccs` as `t` SET `t`.`dist` = '问道一区' WHERE `t`.`ccs` = 'ccs_daili';

