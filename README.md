⚽ FIFA Data Analysis Project — PostgreSQL
A SQL-based data analysis project using the FIFA Players dataset. This project demonstrates how to store, manage, and analyze real-world sports data using PostgreSQL — extracting meaningful insights about player performance, wages, nationalities, and club statistics.

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
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Data Description</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        h2 {
            text-align: center;
        }
        table {
            border-collapse: collapse;
            width: 70%;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid #000;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<h2>Data Description</h2>

<table>
    <tr>
        <th>Column</th>
        <th>Data Type</th>
        <th>Description</th>
    </tr>
    <tr>
        <td>id</td>
        <td>INT</td>
        <td>Unique player ID</td>
    </tr>
    <tr>
        <td>name</td>
        <td>TEXT</td>
        <td>Player name</td>
    </tr>
    <tr>
        <td>age</td>
        <td>INT</td>
        <td>Player age</td>
    </tr>
    <tr>
        <td>nationality</td>
        <td>VARCHAR</td>
        <td>Player's country</td>
    </tr>
    <tr>
        <td>overall</td>
        <td>INT</td>
        <td>Overall performance rating</td>
    </tr>
    <tr>
        <td>potential</td>
        <td>INT</td>
        <td>Potential rating</td>
    </tr>
    <tr>
        <td>club</td>
        <td>VARCHAR</td>
        <td>Current club name</td>
    </tr>
    <tr>
        <td>value</td>
        <td>NUMERIC</td>
        <td>Market value (in currency units)</td>
    </tr>
    <tr>
        <td>wage</td>
        <td>INT</td>
        <td>Weekly wage</td>
    </tr>
    <tr>
        <td>preferred_foot</td>
        <td>VARCHAR</td>
        <td>Left or Right</td>
    </tr>
    <tr>
        <td>jersey_number</td>
        <td>INT</td>
        <td>Jersey number</td>
    </tr>
    <tr>
        <td>joined</td>
        <td>DATE</td>
        <td>Date player joined the club</td>
    </tr>
    <tr>
        <td>height</td>
        <td>VARCHAR</td>
        <td>Player height</td>
    </tr>
    <tr>
        <td>weight</td>
        <td>INT</td>
        <td>Player weight</td>
    </tr>
    <tr>
        <td>penalties</td>
        <td>INT</td>
        <td>Penalty skill rating</td>
    </tr>
</table>

</body>
</html>

⚙️ Setup Instructions
1. Clone the Repository
bashgit clone https://github.com/your-username/fifa-data-analysis.git
cd fifa-data-analysis
2. Create the Database Table
Run the CREATE TABLE statement from FIFA_Project_Queries.sql in your PostgreSQL client.
3. Set Date Format
sqlALTER DATABASE postgres SET datestyle = 'ISO, DMY';
4. Load the Dataset
In the psql terminal, run:
bash\\COPY public.fifa FROM '/your/path/to/Fifa.csv' CSV HEADER;

⚠️ Replace /your/path/to/Fifa.csv with the actual path on your machine.
If using pgAdmin, use COPY (without backslash) and ensure the file is accessible by the PostgreSQL server.


🔍 Analysis Queries
The project answers the following business questions:
#Question1How many players are in the dataset?2How many unique nationalities are represented?3Which are the top 3 nationalities by player count?4What is the total, average, and standard deviation of player wages?5Which player has the highest and lowest wage?6Who has the best and worst overall rating?7Which club has the highest total and average overall rating?8What are the top 5 clubs by average player rating?9What is the distribution of left-footed vs right-footed players?10Which jersey number is the most common (luckiest)?11Nationality frequency for clubs starting with 'M'?12How many players joined clubs between May 20, 2018 and April 10, 2019?13How many players joined their clubs date-wise?14How many players joined their clubs year-wise?

📊 Key Insights

The dataset provides a comprehensive view of player distribution across multiple nationalities and clubs.
Wage analysis reveals significant variation between top-earning and lowest-earning players.
Club-level aggregations help identify the strongest squads based on overall ratings.
Recruitment trend analysis shows joining patterns across years.


👤 Author
Srinu
Data Analysis Project — PostgreSQL
📅 April 2024

📄 License
This project is for educational purposes only. The FIFA dataset is publicly available and used here for learning and analytical practice.
