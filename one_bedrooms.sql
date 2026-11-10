CREATE VIEW "one_bedrooms" AS
SELECT "id", "property_type", "host_name", "accommodates"
FROM "listings"
WHERE "bedrooms" = 1;
wget https://cdn.cs50.net/sql/2024/x/psets/5/snap.zip
