    -- Insert a new artist
INSERT INTO "artists" ("name") VALUES ('Ed Sheeran');

-- Insert a new song linked to that artist
INSERT INTO "songs" ("title", "duration", "artist_id") VALUES ('Shape of You', 233, 1);

-- Select all songs with their respective artists
SELECT "songs"."title", "artists"."name", "songs"."duration"
FROM "songs"
JOIN "artists" ON "songs"."artist_id" = "artists"."id";

-- Update a song's duration
UPDATE "songs" SET "duration" = 240 WHERE "title" = 'Shape of You';

-- Delete a song
DELETE FROM "songs" WHERE "title" = 'Shape of You';
