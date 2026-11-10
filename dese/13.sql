SELECT "schools"."name", "schools"."city"
FROM "schools"
JOIN "expenditures" ON "schools"."district_id" = "expenditures"."district_id"
WHERE "expenditures"."per_pupil_expenditure" > (SELECT AVG("per_pupil_expenditure") FROM "expenditures");
