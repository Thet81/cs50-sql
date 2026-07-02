--counts the number of episodes released in Cyberchase first 8 years, from 2002 to 2007, inclusive
SELECT COUNT(*) AS "total_episodes" FROM "episodes" WHERE "air_date" BETWEEN "2002-01-01" AND "2007-12-31";
