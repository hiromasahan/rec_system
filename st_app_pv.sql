drop table IF EXISTS st_app_pv;
create table st_app_pv as 
select ts,app_custno_decoder(uid) as cust_no, app_custno_decoder(hbone_no) as hbone_no,pageid,htag
from app_pv_hbone where dt >= date_sub(TO_DATE(FROM_UNIXTIME(UNIX_TIMESTAMP())),100) and hbone_no is not null ;