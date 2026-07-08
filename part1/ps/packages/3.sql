SELECT * FROM "packages" WHERE "from_address_id" = (
    SELECT id FROM "addresses" WHERE "address" LIKE "109 Tileston%"
) AND "to_address_id" = (
    SELECT id FROM "addresses" WHERE "address" LIKE "%728 Maple%"
);

SELECT * FROM "scans" WHERE "package_id" = (
    SELECT id FROM "packages" WHERE "from_address_id" = (
    SELECT id FROM "addresses" WHERE "address" LIKE "109 Tileston%"
) AND "to_address_id" = (
    SELECT id FROM "addresses" WHERE "address" LIKE "%728 Maple%"
)
) ORDER BY "timestamp" DESC LIMIT 1;

SELECT * FROM "addresses" WHERE "address" LIKe "%109 Tileston%";