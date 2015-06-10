use bi;

DROP TABLE IF EXISTS dprpt_snapshot_d_offact_offlineactivity_ss;
CREATE TABLE dprpt_snapshot_d_offact_offlineactivity_ss (
act_user_key string,
offlineactivityid int,
begintime string,
endtime string,
applybegintime string,
applyendtime string,
cityid int,
property int,
type int,
mode int,
joincount int,
activity_addtime string,
userid bigint,
phoneno string,
extracount bigint,
confirmstatus int,
role int,
activityuser_addtime string,
first_addtime string,
first_offlineactivityid int,
review_cnt bigint,
applysource int,
status int
)
STORED AS RCFILE
;


