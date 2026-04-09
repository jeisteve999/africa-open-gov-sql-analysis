CREATE DATABASE Africa; 


-- Union of tables 
select * into Africa_roads from Kenya UNION ALL Select * from Morocco UNION ALL select * from Egypt_part_1 UNION ALL select * from Egypt_part_2 UNION ALL select* from Botswana UNION ALL select * from SouthAfrica_part_1 UNION ALL select * from SouthAfrica_part_2 

select * from Africa_roads

SELECT name FROM sys.tables ORDER BY name

-- Total Road Length by Country
select country, ROUND(sum(cast(Rd_length as FLOAT)), 2) AS Total_Road_Length from Africa_roads group by Country order by Total_Road_Length

-- Number of roads per country 

select Country, count(*) AS total_roads FROM Africa_roads GROUP BY Country;

-- Numbers of roads paved 

select Country, count(*) AS roads_paved FROM Africa_roads where surface = 'Paved' GROUP BY Country;

-- Numbers of roads Unpaved 

select Country, count(*) AS roads_paved FROM Africa_roads where surface = 'Unpaved' GROUP BY Country;

-- Medium length per road and country 

select Country, AVG(CAST(Rd_length AS float)) as Average_road_length FROM Africa_roads group by Country;


-- Total Road Length — Egypt
SELECT  'Egypt' AS Country, ROUND(SUM(CAST(Rd_length AS FLOAT)),2) AS Total_Road_Length FROM ( SELECT * FROM Egypt_part_1 UNION ALL SELECT * FROM Egypt_part_2) Egypt

-- State of roads in Egypt

SELECT 'Egypt' AS Country, surface, COUNT(*) AS road_state FROM Africa_roads WHERE Country LIKE 'Egypt%' GROUP BY surface ORDER BY surface;


-- Total Roads Egypt 

select 'Egypt' as Country, COUNT(*) as Total_roads from (select * from Egypt_part_1 UNION ALL SELECT * FROM Egypt_part_2) Egypt

