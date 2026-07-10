SELECT "city","type",COUNT(*) AS "total" FROM "schools" WHERE "type" LIKE "%Public%" GROUP BY "city" ORDER BY "total" DESC, "city" LIMIT 10;

