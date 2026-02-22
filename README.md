<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>FIFA Data Analysis Project — PostgreSQL</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            line-height: 1.6;
            margin: 40px;
            background-color: #f9f9f9;
            color: #333;
        }
        h1, h2, h3 {
            color: #0b5ed7;
        }
        code {
            background-color: #eee;
            padding: 4px 6px;
            border-radius: 4px;
        }
        pre {
            background: #272822;
            color: #f8f8f2;
            padding: 15px;
            overflow-x: auto;
            border-radius: 6px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 15px;
            background-color: #fff;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #e9f2ff;
        }
        ul {
            margin-left: 20px;
        }
        .section {
            margin-bottom: 35px;
        }
    </style>
</head>

<body>

<h1>⚽ FIFA Data Analysis Project — PostgreSQL</h1>

<p>
A SQL-based data analysis project using the FIFA Players dataset. This project demonstrates how to store,
manage, and analyze real-world sports data using PostgreSQL — extracting meaningful insights about player
performance, wages, nationalities, and club statistics.
</p>

<div class="section">
<h2>📌 Project Overview</h2>
<p>
The FIFA Players dataset contains extensive information about professional football players including their
personal details, performance ratings, salaries, nationalities, and club associations. This project uses SQL
queries to transform raw data into actionable insights.
</p>
</div>

<div class="section">
<h2>🗂️ Repository Structure</h2>
<pre>
fifa-data-analysis/
│
├── Fifa.csv                    # Raw FIFA players dataset
├── FIFA_Project_Queries.sql    # All SQL queries for analysis
├── fifa_project.docx           # Project problem statement & documentation
└── README.md                   # Project overview (this file)
</pre>
</div>

<div class="section">
<h2>🛠️ Tech Stack</h2>
<ul>
<li><strong>Database:</strong> PostgreSQL</li>
<li><strong>Language:</strong> SQL</li>
<li><strong>Tool:</strong> pgAdmin / psql terminal</li>
</ul>
</div>

<div class="section">
<h2>📋 Dataset Description</h2>
<p>The dataset contains 15 columns covering player details:</p>

<table>
<tr>
<th>Column</th>
<th>Data Type</th>
<th>Description</th>
</tr>
<tr><td>id</td><td>INT</td><td>Unique player ID</td></tr>
<tr><td>name</td><td>TEXT</td><td>Player name</td></tr>
<tr><td>age</td><td>INT</td><td>Player age</td></tr>
<tr><td>nationality</td><td>VARCHAR</td><td>Player's country</td></tr>
<tr><td>overall</td><td>INT</td><td>Overall performance rating</td></tr>
<tr><td>potential</td><td>INT</td><td>Potential rating</td></tr>
<tr><td>club</td><td>VARCHAR</td><td>Current club name</td></tr>
<tr><td>value</td><td>NUMERIC</td><td>Market value (in currency units)</td></tr>
<tr><td>wage</td><td>INT</td><td>Weekly wage</td></tr>
<tr><td>preferred_foot</td><td>VARCHAR</td><td>Left or Right</td></tr>
<tr><td>jersey_number</td><td>INT</td><td>Jersey number</td></tr>
<tr><td>joined</td><td>DATE</td><td>Date player joined the club</td></tr>
<tr><td>height</td><td>VARCHAR</td><td>Player height</td></tr>
<tr><td>weight</td><td>INT</td><td>Player weight</td></tr>
<tr><td>penalties</td><td>INT</td><td>Penalty skill rating</td></tr>
</table>
</div>

<div class="section">
<h2>⚙️ Setup Instructions</h2>

<h3>1. Clone the Repository</h3>
<pre>
git clone https://github.com/vijaya2327/fifa-data-analysis.git
cd fifa-data-analysis
</pre>

<h3>2. Create the Database Table</h3>
<p>Run the CREATE TABLE statement from <code>FIFA_Project_Queries.sql</code> in your PostgreSQL client.</p>

<h3>3. Set Date Format</h3>
<pre>
ALTER DATABASE postgres SET datestyle = 'ISO, DMY';
</pre>

<h3>4. Load the Dataset</h3>
<pre>
\COPY public.fifa FROM 'C:\Users\91955\OneDrive\Desktop\srinu\SQL_Koti\SQL_Projects\FIFA_Data Analysis_SQL\Fifa.csv' CSV HEADER;
</pre>


</div>

<div class="section">
<h2>🔍 Analysis Queries</h2>
<p>The project answers the following business questions:</p>

<ol>
<li>How many players are in the dataset?</li>
<li>How many unique nationalities are represented?</li>
<li>Which are the top 3 nationalities by player count?</li>
<li>What is the total, average, and standard deviation of player wages?</li>
<li>Which player has the highest and lowest wage?</li>
<li>Who has the best and worst overall rating?</li>
<li>Which club has the highest total and average overall rating?</li>
<li>What are the top 5 clubs by average player rating?</li>
<li>What is the distribution of left-footed vs right-footed players?</li>
<li>Which jersey number is the most common (luckiest)?</li>
<li>Nationality frequency for clubs starting with 'M'?</li>
<li>How many players joined clubs between May 20, 2018 and April 10, 2019?</li>
<li>How many players joined their clubs date-wise?</li>
<li>How many players joined their clubs year-wise?</li>
</ol>
</div>

<div class="section">
<h2>📊 Key Insights</h2>
<ul>
<li>The dataset provides a comprehensive view of player distribution across multiple nationalities and clubs.</li>
<li>Wage analysis reveals significant variation between top-earning and lowest-earning players.</li>
<li>Club-level aggregations help identify the strongest squads based on overall ratings.</li>
<li>Recruitment trend analysis shows joining patterns across years.</li>
</ul>
</div>

<div class="section">
<h2>👤 Author</h2>
<p>
Vijaya Kumari<br>
Data Analysis Project — PostgreSQL<br>
📅 Feb 2026
</p>
</div>

<div class="section">
<h2>📄 License</h2>
<p>
This project is for educational purposes only. The FIFA dataset is publicly available and used here for
learning and analytical practice.
</p>
</div>

</body>
</html>
