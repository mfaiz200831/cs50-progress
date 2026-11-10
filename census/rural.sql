CREATE VIEW "rural" AS
SELECT * FROM "census"
WHERE "locality" LIKE '%rural%';
wget https://cdn.cs50.net/sql/2024/x/psets/4/private.zip
