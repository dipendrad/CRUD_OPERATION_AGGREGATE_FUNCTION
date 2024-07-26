use mydatabase;
-- Create the table
CREATE TABLE football_players (
    player_id VARCHAR(10) PRIMARY KEY,
    match_id VARCHAR(10),
    player_name VARCHAR(100),
    country VARCHAR(50),
    total_matches INT,
    total_goals INT,
    debut_year INT,
    last_match_year INT
);

-- Insert sample data
INSERT INTO football_players (player_id, match_id, player_name, country, total_matches, total_goals, debut_year, last_match_year) VALUES
('pid01', 'mid01', 'Lionel Messi', 'Argentina', 100, 30, 2010, 2020),
('pid02', 'mid02', 'Cristiano Ronaldo', 'Portugal', 80, 20, 2012, 2021),
('pid03', 'mid03', 'Neymar Jr', 'Brazil', 120, 50, 2009, 2019),
('pid04', 'mid04', 'Kylian Mbappe', 'France', 60, 10, 2015, 2021),
('pid05', 'mid05', 'Mohamed Salah', 'Egypt', 90, 40, 2011, 2020),
('pid06', 'mid06', 'Robert Lewandowski', 'Poland', 110, 45, 2010, 2022),
('pid07', 'mid07', 'Kevin De Bruyne', 'Belgium', 70, 15, 2014, 2020),
('pid08', 'mid08', 'Sergio Ramos', 'Spain', 95, 35, 2011, 2019),
('pid09', 'mid09', 'Paul Pogba', 'France', 85, 25, 2013, 2021),
('pid10', 'mid10', 'Gareth Bale', 'Wales', 130, 60, 2008, 2018),
('pid11', 'mid11', 'Antoine Griezmann', 'France', 75, 22, 2013, 2020),
('pid12', 'mid12', 'Luka Modric', 'Croatia', 50, 10, 2016, 2021),
('pid13', 'mid13', 'Kane Harry', 'England', 65, 18, 2014, 2019),
('pid14', 'mid14', 'Luis Suarez', 'Uruguay', 105, 42, 2011, 2020),
('pid15', 'pid15', 'Zlatan Ibrahimovic', 'Sweden', 115, 48, 2010, 2021);

-- Create a new record
INSERT INTO football_players (player_id, match_id, player_name, country, total_matches, total_goals, debut_year, last_match_year)
VALUES ('pid16', 'mid16', 'Eden Hazard', 'Belgium', 55, 12, 2016, 2021);

-- Read a record
SELECT * FROM football_players
WHERE player_id = 'pid01';

-- Update a record
UPDATE football_players
SET total_goals = 35
WHERE player_id = 'pid01';

-- Delete a record
DELETE FROM football_players
WHERE player_id = 'pid16';

-- Count the total number of players
SELECT COUNT(*) AS total_players
FROM football_players;

-- Sum of total matches
SELECT SUM(total_matches) AS total_matches
FROM football_players;

-- Average number of goals
SELECT AVG(total_goals) AS average_goals
FROM football_players;

-- Minimum number of matches played
SELECT MIN(total_matches) AS min_matches
FROM football_players;

-- Maximum number of goals scored
SELECT MAX(total_goals) AS max_goals
FROM football_players;

-- Total goals by country
SELECT country, SUM(total_goals) AS total_goals
FROM football_players
GROUP BY country;

-- Average goals by debut year
SELECT debut_year, AVG(total_goals) AS average_goals
FROM football_players
GROUP BY debut_year;

