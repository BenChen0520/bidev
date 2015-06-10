use bi;

DROP TABLE IF EXISTS dpdm_incr_d_usr_mapp_call;

CREATE TABLE dpdm_incr_d_usr_mapp_call (
user_id int,
shop_id int,
call_cnt int
)
PARTITIONED BY (hp_cal_dt string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\005'
LINES TERMINATED BY '\n'
STORED AS RCFILE;
ALTER TABLE dpdm_incr_d_usr_mapp_call SET SERDEPROPERTIES('serialization.NULL.format' = '');
