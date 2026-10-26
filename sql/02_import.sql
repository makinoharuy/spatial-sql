INSTALL spatial;
LOAD spatial;

create or replace table adm as 
SELECT * FROM st_read('data/shp/KOTA BEKASI/ADMINISTRASIDESA_AR_25K.shp');

select * from adm limit 5

select 
    ST_GeometryType(geom) as geometry_type,
    count (*) as jumlah_adm
from adm 
group by ST_GeometryType(geom);

