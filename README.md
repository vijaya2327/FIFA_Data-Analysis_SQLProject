# ⚽ FIFA Data Analysis Project — PostgreSQL
A SQL-based data analysis project using the FIFA Players dataset. This project demonstrates how to store, manage, and analyze real-world sports data using  PostgreSQL — extracting meaningful insights about player performance, wages, nationalities, and club statistics.

📌 Project Overview
The FIFA Players dataset contains extensive information about professional football players including their personal details, performance ratings, salaries, nationalities, and club associations. This project uses SQL queries to transform raw data into actionable insights.

🗂️ Repository Structure
fifa-data-analysis/
│
├── Fifa.csv                    # Raw FIFA players dataset
├── FIFA_Project_Queries.sql    # All SQL queries for analysis
├── fifa_project.docx           # Project problem statement & documentation
└── README.md                   # Project overview (this file)

🛠️ Tech Stack

Database: PostgreSQL

Language: SQL

Tool: pgAdmin / psql terminal


📋 Dataset Description
The dataset contains 15 columns covering player details:
Column              Data Type           Description

  id                   INT              Unique player ID
  name                TEXT              Player name
  age                  INT              Player age
nationality          VARCHAR            Player's country
overall                INT              Overall performance rating
potential              INT              Potential rating
club                 VARCHAR            Current club name
value                NUMERIC            Market value (in currency units)
wage                   INT              Weekly wage
preferred_foot       VARCHAR            Left or Right
jersey_number          INT              Jersey number  
joined                 DATE             Date player joined the club
height               VARCHAR            Player height
weight                 INT              Player weight
penalties              INT              Penalty skill rating

 ⚙️ Setup Instructions
1. Clone the Repository:
bashgit clone https://github.com/vijaya2327/fifa-data-analysis.git
cd fifa-data-analysis
2. Create the Database Table
Run the CREATE TABLE statement from FIFA_Project_Queries.sql in your PostgreSQL client.
3. Set Date Format
sqlALTER DATABASE postgres SET datestyle = 'ISO, DMY';
4. Load the Dataset
In the psql terminal, run:
bash\\COPY public.fifa FROM '/your/path/to/Fifa.csv' CSV HEADER;



 🔍 Analysis Queries
The project answers the following business questions:
#            Question
1            How many players are in the dataset?
2            How many unique nationalities are represented?
3            Which are the top 3 nationalities by player count?
4            What is the total, average, and standard deviation of player wages?
5            Which player has the highest and lowest wage?
6            Who has the best and worst overall rating?
7            Which club has the highest total and average overall rating?
8            What are the top 5 clubs by average player rating?
9            What is the distribution of left-footed vs right-footed players?
10           Which jersey number is the most common (luckiest)?
11           Nationality frequency for clubs starting with 'M'?
12           How many players joined clubs between May 20, 2018 and April 10, 2019?
13           How many players joined their clubs date-wise?
14           How many players joined their clubs year-wise?

📊 Key Insights

1.The dataset provides a comprehensive view of player distribution across multiple nationalities and clubs.
2.Wage analysis reveals significant variation between top-earning and lowest-earning players.
3.Club-level aggregations help identify the strongest squads based on overall ratings.
4.Recruitment trend analysis shows joining patterns across years.


👤 Author
Vijaya Kumari
Data Analysis Project — PostgreSQL
📅 Feb 2026

📄 License
This project is for educational purposes only. The FIFA dataset is publicly available and used here for learning and analytical practice.
