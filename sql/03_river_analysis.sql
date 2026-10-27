create or replace table river_buffer as 
select OGC_FID, NAMOBJ, st_buffer(geom, 50) as buffer_50 from river;