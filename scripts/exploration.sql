-- Examine the university_rankings table by selecting all columns
SELECT *
FROM university_rankings;  

-- Find the total number of rows in the university_rankings table
SELECT COUNT(*)
FROM university_rankings;

-- Find the total number of American universities in the university_rankings table
SELECT COUNT(*)
FROM university_rankings
WHERE country = 'USA';

-- Find the average score of all universities in the university_rankings table
SELECT AVG(score) AS average_score
FROM university_rankings;  

-- Find the average score of universities in the USA
SELECT AVG(score) AS average_usa_score
FROM university_rankings
WHERE country = 'USA';

-- Find the highest score in the university_rankings table
SELECT MAX(score) AS highest_score
FROM university_rankings; 

-- Find the lowest score in the university_rankings table
SELECT MIN(score) AS lowest score
FROM university_rankings;

-- Group the universities by country and count how many universities are from each country
SELECT country, COUNT(*) AS university_count
FROM university_rankings
GROUP BY country
ORDER BY university_count DESC;

-- Find the number of unique countries represented in the university_rankings table
SELECT COUNT(DISTINCT country) AS unique_countries
FROM university_rankings;   

-- Sum the scores of all universities in the university_rankings table by country
SELECT country, SUM(score) AS total_score
FROM university_rankings
GROUP BY country
ORDER BY total_score DESC;  