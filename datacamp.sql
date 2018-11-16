
-- Sql Problem from datacamp 
-- Get the title and net profit (the amount a film grossed, minus its budget)
--  for all films. Alias the net profit as net_profit

-- Solution


SELECT title, gross - budget AS net_profit
FROM films;

-- Problem 2
-- Get the title and duration in hours for all films. The duration is in minutes, 
-- so you'll need to divide by 60.0 to get the duration in hours. Alias the duration in hours as duration_hours.

-- Solution 2
 SELECT title,
 		duration / 60 AS duration_hours
 FROM films 


-- Problem 3
 -- Get the average duration in hours for all films, aliased as avg_duration_hours.

 -- Solution

SELECT AVG(duration)/60.0 as avg_duration_hours
FROM films


Problem 4
-- Get the percentage of people who are no 
-- longer alive. Alias the result as percentage_dead. Remember to use 100.0 and not 100!

SELECT  COUNT(deathdate) * 100.0 / COUNT(*) As percentage_dead
FROM people

-- Get the number of years between the newest film and oldest film. Alias the result as difference

SELECT MAX(release_year) - MIN(release_year) AS  difference
FROM films

-- Get the number of decades the films table covers. Alias the result as number_of_decades. 
-- The top half of your fraction should be enclosed in parentheses.

SELECT (MAX(release_year)- MIN(release_year))/10.0 AS number_of_decades
FROM films 


SELECT name  
FROM people
ORDER BY  name DESC



SELECT title
FROM films
WHERE release_year IN (2000,2012) ORDER BY release_year

SELECT * 
FROM films
WHERE release_year <> 2015
ORDER BY duration

SELECT title,gross 
FROM films 
WHERE title LIKE 'M%'
ORDER BY title

SELECT imdb_score, film_id
FROM reviews
ORDER BY imdb_score DESC

SELECT title
FROM films
ORDER BY title DESC
 
 SELECT name,birthdate
FROM people
ORDER BY birthdate,name

SELECT release_year , title, duration
FROM films
ORDER BY release_year,duration

-- Get the release year and count of films released in each year.

SELECT release_year, count(*)
FROM films
GROUP BY release_year
ORDER BY count DESC;

-- Get the release year and average duration of all films, grouped by release year.

SELECT release_year, AVG(duration)
FROM films
GROUP BY release_year
ORDER BY release_year;

-- Get the release year and largest budget for all films, grouped by release year.

SELECT release_year, MAX(budget)
FROM films
GROUP BY release_year
ORDER BY release_year;