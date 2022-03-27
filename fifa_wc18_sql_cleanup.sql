/*
FIFA World Cup data set cleaning

     Author: Daniel Vazquez
Description: The following scripts are used to clean up the tables obtained
             from data scrapping rosters and fixtures from FIFA World Cup
			 tournaments. It also serves as data exploration for stats from
			 previous tournaments.

			 Steps:
			   1. Data Cleaning
			      a. Remove extra row from 'Groups' table
				  b. Create 'Age' field in 'Players' table
				  c. Separate 'Captain' string from Players
				  d. Replace 'Player_position' data for the true position names
*/

-- USE world_cups;

-- Display All
SELECT * FROM Matches;
SELECT * FROM Players;
SELECT * FROM Groups;


-- 1. Data Cleaning
---------------------------------------------------------------------------- 80

-- a. Remove extra row from 'Groups' table
DELETE TOP(1) FROM Groups;

-- b. Create 'Age' field in 'Players' table
ALTER TABLE Players
ADD Age char(2);
-- Update the 'Age' field to the players current age at the start of the
-- tournament: June 14, 2018.
UPDATE Players
SET Age = DATEDIFF(year, Date_of_Birth, CAST('2018-06-14' AS Date)) FROM Players;

-- c. Separate 'Captain' string from Players
ALTER TABLE Players
ADD Captain varchar(3)
-- Populate the 'Captain' field by checking whether players are marked as
-- team captain or not in the 'Player' field.
UPDATE Players
SET Captain = CASE 
                WHEN Player LIKE '%(captain)%' THEN 'Yes'
				ELSE 'No'
		      END FROM Players;
-- Remove the 'captain' flag from the 'Player' field.
UPDATE Players
SET Player = REPLACE(Player, '(Captain)', '') FROM Players;

-- d. Replace 'Player_position' data for the true position names
UPDATE Players
SET Player_position = CASE
                        WHEN Player_position = 'GK' THEN 'Goalkeeper'
						WHEN Player_position = 'DF' THEN 'Defender'
						WHEN Player_position = 'MF' THEN 'Midfielder'
						WHEN Player_position = 'FW' THEN 'Forward'
					  END FROM Players;

