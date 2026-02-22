-- FIFA DATA ANALYSIS PROJECT - POSTGRESQL


-- Create FIFA table to store player dataset
CREATE TABLE fifa (
    id INT,
    name TEXT,
    age INT,
    nationality VARCHAR(50),
    overall INT,
    potential INT,
    club VARCHAR(50),
    value NUMERIC,
    wage INT,
    preferred_foot VARCHAR(255),
    jersey_number INT,
    joined DATE,
    height VARCHAR(255),
    weight INT,
    penalties INT
);


-- Set date format to Day-Month-Year to match dataset format
ALTER DATABASE postgres SET datestyle = 'ISO, DMY';

-- Check current date style
show datestyle;

-- View table structure (column names and datatypes)
select column_name,data_type from information_schema.columns where table_name  = 'fifa';

-- View complete dataset
select *from fifa;

-- Count total records before loading (sanity check)
select count(*) as cnt  from fifa;

-- Import CSV file into table
\COPY public.fifa FROM 'C:\\Users\\91955\\OneDrive\\Desktop\\srinu\\SQL_Koti\\4924387-Data_Analysis_assignment_SQL\\Data_Analysis_apr22_2024\\fifa.csv' CSV HEADER;



-- Query

-- How many players are their in  dataset
select count(*) as cnt from fifa;


-- How many nationalities do these players belong to?
select count(distinct nationality) as nat_cnt from fifa;


-- Which nationality has the highest number of players, what are the top 3 nationalities by # of players ?
select  nationality,count(*) as play_cnt from fifa 
group by nationality order by play_cnt desc limit 3;


-- What is the total wage given to all players? What’s the average and standard deviation?
select
sum(wage) as sum_wage,
avg(wage) as avg_wage,
stddev(wage) as stddev_wage
from fifa;


-- Which player has the highest wage? Who has the lowest ?
select name, wage from fifa where wage = (select MAX(wage) from fifa);
-- Who has the lowest ?
select name, wage from fifa where wage = (select MIN(wage) from fifa);


-- The player having the best overall rating? Worst overall rating?
select name, overall from fifa order by overall desc limit 1;
--  Worst overall rating?
select name, overall from fifa order by overall ASC limit 1;


--Club having the highest total of overall rating? Highest Average of overall rating?
select club, sum(overall) as total_overall from fifa 
group by club order by total_overall DESC limit 1;
-- Highest Average of overall rating?
select club, avg(overall) as avg_overall from fifa 
group by club order by avg_overall desc limit 1;


-- What  are the top 5 clubs based on the average rating of their players
select club,avg(overall) as avg_overall from fifa group by club order by avg_overall desc limit 5;


-- What is the distribution of players whose preferred foot is left vs right?
select preferred_foot,count(*) as cnt from fifa group by preferred_foot;


-- Which jersey number is the luckiest?
select jersey_number,count(*) as cnt from fifa group by jersey_number order by cnt desc limit 1;


-- What is the frequency distribution of nationalities among players whose club name starts with M?
select nationality, count(*) as freq_dis from fifa where club 
LIKE 'M%'group by nationality order by freq_dis DESC;


-- How many players have joined their respective clubs in the date range 20 May 2018 to 10 April 2019(both inclusive)?
select count(*) as play_join from fifa where joined between '20 May 2018' and  '10 April 2019';


-- How many players have joined their respective clubs date wise?
select joined,count(*) as play_join from fifa group by joined order by joined;


-- How many players have joined their respective clubs yearly?
SELECT EXTRACT(YEAR FROM joined) AS year, COUNT(*) AS play_join_year
FROM fifa GROUP BY year ORDER BY year;
