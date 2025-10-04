# Intro to Databases (IDS 706 Week 6)
## Project Description 
This repository shows the exploration and execution of basic CRUD operations on the University Rankings Dataset, which contains rankings from 2012 to 2015. 

## Step-by-Step Instructions
1. Download the pre-built SQLite database into my project folder, which I opened on VSCode. 
2. Connect to SQLite database by installing the SQLite extension on VSCode. 
![SQLite Extension]('images/sqlite_extension.png') 
3. Create a new `.sql` file to add the query. 
4. To run the query, press `CMD + Shift + P` and select `>SQLite: Run Query`. Alternatively, you can highlight your query, right-click, and select `Run Selected Query`. 

## Basic Analysis
To explore the `university_rankings` table, I executed several SQL queries to gain insights into the dataset. First, I retrieved all columns to examine the complete data available, then found the total number of universities listed (2201), which provided an overview of the dataset's size. Next, I specifically counted the American universities to assess their representation (574). I also calculated the overall average score of all universities (47.81) and then focused on the average score of U.S. institutions (51.85), which highlighted their above-average performance. Additionally, I identified the highest and lowest scores in the table, grouped universities by country to count how many are represented from each, and determined the number of unique countries featured in the rankings (59). Finally, I summed the scores by country to understand overall academic performance distribution. These queries collectively offered a comprehensive analysis of the university rankings. 

## CRUD Operations
CRUD stands for Create, Read, Update, and Delete. These operations represent the fundamental tasks you can perform when interacting with a database. Each operation serves a unique purpose:
- Create: Add new records to the database.
- Read: Retrieve existing records from the database.
- Update: Modify existing records in the database.
- Delete: Remove records from the database.

### Create 
Using `INSERT INTO`, I added the information for a new university: 
```
INSERT INTO university_rankings (institution, country, world_rank, score, year)
VALUES ('Duke Tech', 'USA', 350, 60.5, 2014);
```

### Read
After executing the following query, I found that there are a total of six universities from Japan show up in the global top 200 in 2013: 
```
SELECT institution
FROM university_rankings
WHERE country = 'Japan' AND world_rank <= 200 AND year = 2013;
```
![Japanese Universities]('images/japan_universities.png')

### Update
I updated the score for the University of Oxford in 2014 by running the following query: 
```
UPDATE university_rankings
SET score = score + 1.2
WHERE institution = 'University of Oxford' AND year = 2014;
```
The original score, 97.51, was updated to  98.71. 

### Delete
To delete rows for the universities with a score below 45 in 2015, I ran the following query: 
```
DELETE FROM university_rankings
WHERE score < 45 AND year = 2015;
``` 

