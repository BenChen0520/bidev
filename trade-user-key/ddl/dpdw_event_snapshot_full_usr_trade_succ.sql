use bi;

DROP TABLE IF EXISTS dpdw_event_snapshot_full_usr_trade_succ;
CREATE TABLE dpdw_event_snapshot_full_usr_trade_succ (
org_user_id int,
user_id int,
mobile_no string,
dpid bigint,
order_pk string,
order_id int,
orderitem_id int,
product_type int,
platform int,
app_flg int,
success_ts string
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\005'
LINES TERMINATED BY '\n'
STORED AS RCFILE;
ALTER TABLE dpdw_event_snapshot_full_usr_trade_succ SET SERDEPROPERTIES('serialization.NULL.format' = '');
