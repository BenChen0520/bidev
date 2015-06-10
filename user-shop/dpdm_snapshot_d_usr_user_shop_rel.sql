use bi;


DROP TABLE IF EXISTS dpdm_snapshot_d_usr_user_shop_rel;
CREATE TABLE dpdm_snapshot_d_usr_user_shop_rel (
user_id int,
shop_id int,
tg_quantity int,
tg_amount double,
ta_quantity int,
ta_amount double,
mopay_quantity int,
mopay_amount double,
yy_quantity int,
yy_amount double,
review_cnt int,
shopwish_tag int,
checkin_tag int,
call_cnt int,
shopgrp_id int
)
PARTITIONED BY (hp_cal_dt string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\005'
LINES TERMINATED BY '\n'
STORED AS RCFILE;
ALTER TABLE dpdm_snapshot_d_usr_user_shop_rel SET SERDEPROPERTIES('serialization.NULL.format' = '');
