--Count the number of players who bat(or batted) right-handed and throw(or threw) left-handed, or vice versa
SELECT COUNT(*) AS "total" FROM "players" WHERE ("bats" = "R" AND "thorws" = "L") OR ("bats" = "L" AND "throws" = "R");
