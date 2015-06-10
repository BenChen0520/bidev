use bi;

DROP TABLE IF EXISTS dpdm_snapshot_d_usr_user_shop_rel_list;
CREATE TABLE dpdm_snapshot_d_usr_user_shop_rel_list (
user_id int,
fan_shop_list array<int>,
potential_shop_list array<int>
)
PARTITIONED BY (hp_cal_dt string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\005'
COLLECTION ITEMS TERMINATED BY '\002'
MAP KEYS TERMINATED BY '\003'
LINES TERMINATED BY '\n'
STORED AS RCFILE;
ALTER TABLE dpdm_snapshot_d_usr_user_shop_rel_list SET SERDEPROPERTIES('serialization.NULL.format' = '');

