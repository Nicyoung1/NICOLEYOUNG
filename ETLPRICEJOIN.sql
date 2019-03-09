Create database HOTELPRICE; 
USE HOTELPRICE; 
SELECT * FROM rosewood_major_otas_lowest_los1_2guests;
rename table rosewood_major_otas_lowest_los1_2guests to los1;
rename table rosewood_major_otas_lowest_los3_2guests to los3;
alter table los1 add column los1 INT default 1; 
alter table los3 add column los3 INT default 3;
USE HOTELPRICE; 
select * 
from los1 l1
join los3 l3 on l3.Date = l1.Date; 



  
