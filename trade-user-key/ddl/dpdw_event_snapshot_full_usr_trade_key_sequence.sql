use bi;

DROP TABLE IF EXISTS dpdw_event_snapshot_full_usr_trade_key_sequence;
CREATE TABLE dpdw_event_snapshot_full_usr_trade_key_sequence (
user_finl_key string,
user_ini_key string,
user_id int,
org_user_id int,
mobile_no string,
dpid bigint,
order_pk string,
order_id int,
orderitem_id int,
success_ts string,
product_type int,
app_flg int,
ini_trade_sequence int,
finl_trade_sequence int
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\005'
LINES TERMINATED BY '\n'
STORED AS RCFILE;
ALTER TABLE dpdw_event_snapshot_full_usr_trade_key_sequence SET SERDEPROPERTIES('serialization.NULL.format' = '');
