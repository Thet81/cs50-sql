--return all normal ocan temperatures at 50m of depth, as well as their respective degress of latitude and longitude
SELECT "50m","latitude","longitude" FROM "normals" WHERE ("latitude" >= 0 AND "latitude" <=20) AND ("longitude" >= 55 AND "longitude" <= 75);
