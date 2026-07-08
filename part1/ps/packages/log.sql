
-- *** The Lost Letter ***
-- as a clerk, I have some clue which are
-- the address where the letter was sent from
-- the address where the letter was sent to
-- by using the address provided I can find the package id like so:
SELECT "id" FROM "packages" WHERE "from_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" LIKE "%900 Somerville Avenue%") AND "to_address_id" = (
        SELECT "id" FROM "addresses" WHERE "address" LIKE "%2 Finn%") AND "contents" LIKE "%congratulatory%"; 
-- now that I get back the correct id for package, I can query all columns from scans table including action by using that id
SELECT * FROM "scans" WHERE "package_id" = (
    SELECT "id" FROM "packages" WHERE "from_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" LIKE "%900 Somerville Avenue%") AND "to_address_id" = (
        SELECT "id" FROM "addresses" WHERE "address" LIKE "%2 Finn%") AND "contents" LIKE "%congratulatory%");
-- *** The Devious Delivery ***
SELECT * FROM "scans" WHERE "package_id" = (
    SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL
);
-- *** The Forgotten Gift ***
SELECT * FROM "scans" WHERE "package_id" = (
    SELECT "id" FROM "packages" WHERE "from_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" = "109 Tileston Street"
) AND "to_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" = "728 Maple Place"
)
);

