
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