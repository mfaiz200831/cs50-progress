-- Represent artists/singers
CREATE TABLE "artists" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL
);

-- Represent songs linked to artists
CREATE TABLE "songs" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "duration" INTEGER NOT NULL,
    "artist_id" INTEGER,
    FOREIGN KEY("artist_id") REFERENCES "artists"("id")
);

-- Create an index for faster searching by song title
CREATE INDEX "title_index" ON "songs" ("title");

