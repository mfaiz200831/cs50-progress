DROP TABLE IF EXISTS "meteorites_temp";
DROP TABLE IF EXISTS "meteorites";

CREATE TABLE "meteorites_temp" (
    "name" TEXT,
    "id" INTEGER,
    "nametype" TEXT,
    "class" TEXT,
    "mass" REAL,
    "fall" TEXT,          -- keep the CSV name here
    "year" NUMERIC,
    "lat" REAL,
    "long" REAL
);

.mode csv
.headers on
.import meteorites.csv meteorites_temp

DELETE FROM "meteorites_temp" WHERE "nametype" = 'Relict';

UPDATE "meteorites_temp" SET "mass" = NULL WHERE "mass" = '';
UPDATE "meteorites_temp" SET "year" = NULL WHERE "year" = '';
UPDATE "meteorites_temp" SET "lat"  = NULL WHERE "lat"  = '';
UPDATE "meteorites_temp" SET "long" = NULL WHERE "long" = '';

UPDATE "meteorites_temp" SET "mass" = ROUND("mass", 2);
UPDATE "meteorites_temp" SET "lat"  = ROUND("lat", 2);
UPDATE "meteorites_temp" SET "long" = ROUND("long", 2);

CREATE TABLE "meteorites" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "name" TEXT,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT,     -- ← correct name
    "year" INTEGER,
    "lat" REAL,
    "long" REAL
);

INSERT INTO "meteorites" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", "mass", "fall", "year", "lat", "long"
FROM "meteorites_temp"
ORDER BY "year" ASC, "name" ASC;

