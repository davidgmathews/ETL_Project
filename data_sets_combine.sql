-- ETL Project
-- Joey Ashcroft

USE world_development_db;

SELECT count(*) FROM olympic_data;
SELECT * FROM olympic_data;
SELECT * FROM world_dev_data;

-- Joins the tables
SELECT count(*)
FROM olympic_data od
	LEFT JOIN world_dev_data wd ON od.country_name = wd.country_name 
    AND od.`year` = wd.`year`;