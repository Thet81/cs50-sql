--count how many prints by Hokusai include "Fuji" in the English title
SELECT COUNT(*)  AS "total" FROM "views" WHERE "artist" = "Hokusai" AND "english_title" LIKE "%Fuji%";	

