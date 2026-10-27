INSTALL spatial;
LOAD spatial;

create or replace table adm as 
SELECT * FROM st_read('data/shp/KOTA BEKASI/ADMINISTRASIDESA_AR_25K.shp');

select * from adm limit 5;

select 
    ST_GeometryType(geom) as geometry_type,
    count (*) as jumlah_adm
from adm 
group by ST_GeometryType(geom);

create or replace table river as 
select * from st_read('data/shp/KOTA BEKASI/SUNGAI_LN_25K.shp');

select * from river limit 5;

create or replace table aoi as 
select * from st_read('data/shp/KOTA BEKASI/SUNGAI_AR_25K.shp');

select * from aoi limit 5;

create or replace table bps as 
select * from read_csv('data\population')