--display the names of all school districts and the number of pupils
SELECT "name","pupils" FROM "districts" JOIN "expenditures" ON districts.id = expenditures.district_id;
