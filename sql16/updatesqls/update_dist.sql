-- 用于 nodejs 解析生成新的更新 dist 语句的模板 sql

-- 更新 ccs 表
UPDATE `dl_adb_all`.`ccs` as `t` SET `t`.`dist` = '问道一区' WHERE `t`.`ccs` = 'ccs_daili';

-- 更新 server 表
UPDATE `dl_adb_all`.`server` as `t` SET `t`.`dist` = '问道一区';

-- 更新 district 表
UPDATE `dl_adb_all`.`district` as `t` SET `t`.`dist` = '问道一区' WHERE `t`.`csa` = 'csa_daili';

-- 更新 dba 表
UPDATE `dl_adb_all`.`dba` as `t` SET `t`.`dist` = '问道一区' WHERE `t`.`dba` = 'dba_daili';

-- 更新 csa 表
UPDATE `dl_adb_all`.`csa` as `t` SET `t`.`cs_dist` = '问道一区' WHERE `t`.`csa` = 'csa_daili';

-- 更新 cs_ccs 表
UPDATE `dl_adb_all`.`cs_ccs` as `t` SET `t`.`dist` = '问道一区' WHERE `t`.`ccs` = 'ccs_daili';