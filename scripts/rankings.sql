--Select all columns from the university_rankings table
SELECT *
FROM university_rankings;

--Insert details of a new university into the university_rankings table
INSERT INTO university_rankings (institution, country, world_rank, score, year)
VALUES ('Duke Tech', 'USA', 350, 60.5, 2014);


--Figure out how many universities from Japan show up in the global top 200 in 2013 (total: 6)
SELECT institution
FROM university_rankings
WHERE country = 'Japan' AND world_rank <= 200 AND year = 2013;

--Update the score for University of Oxford in 2014 by +1.2 points
UPDATE university_rankings
SET score = score + 1.2
WHERE institution = 'University of Oxford' AND year = 2014;

--Delete all scores below 45 for the year 2015
DELETE FROM university_rankings
WHERE score < 45 AND year = 2015;

--Show final state of the university_rankings table
SELECT *
FROM university_rankings;