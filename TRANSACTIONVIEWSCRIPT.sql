SELECT * FROM hoteltransaction.`res_statistics01.01_12.31`;
RENAME TABLE hoteltransaction.`res_statistics01.01_12.31` to resstat;
select * from resstat;
alter table resstat
drop column `BUSINESS_DATE`; 
SELECT * FROM RESSTAT; 
alter table resstat
drop column 
`CF_MASTER_SEQ`;
ALTER TABLE RESSTAT
DROP COLUMN
`MKT_RESORT_ROOM`;
ALTER TABLE RESSTAT
DROP COLUMN
`GUEST_DAY`;
ALTER TABLE RESSTAT
DROP COLUMN
`ARRIVAL_DAY`;
ALTER TABLE RESSTAT
DROP COLUMN
`ARRIVAL_MKT`;
; 
USE HOTELPRICE; 
SELECT * FROM RESSTAT; 
SELECT * FROM RESSTAT
WHERE MARKET_CODE = "BAR";
SELECT * FROM RESSTAT; 
SELECT * FROM RESSTAT
WHERE MARKET_CODE = "BAR" OR MARKET_CODE ="OTA";   

 
 