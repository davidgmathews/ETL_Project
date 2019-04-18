-- ETL Project
-- Joey Ashcroft

USE world_development_db;

SELECT count(*) FROM olympic_data;
SELECT * FROM olympic_data;
SELECT * FROM world_dev_data;
SELECT * FROM health_data;

-- Joins the tables

#SELECT wd.country_name, od.country_name, wd.`year`, od.`year`
SELECT *
FROM olympic_data od
	LEFT JOIN world_dev_data wd ON wd.country_name = od.country_name 
    AND wd.`year` = od.`year`
    LEFT JOIN health_data hd ON hd.country_name = od.country_name
    AND hd.`year`= od.`year`
;
    
    
    
#organize data to prepare for join
CREATE INDEX idx_country_year on olympic_data(country_name(10), `year`);  
CREATE INDEX idx_country_year__ on world_dev_data(country_name(10), `year`(4));  
    
        
    
    
    
    
    
    
    
