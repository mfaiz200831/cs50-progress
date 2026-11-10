# Database Design

## Scope
The purpose of this database is to manage a music catalog similar to Spotify or Apple Music, storing information about artists and their respective songs, allowing users to track tracks, durations, and manage song libraries efficiently.

## Entities
The database consists of two primary entities:
* **Artists**: Stores information about musicians or singers.
    * `id`: Primary key, auto-incrementing integer uniquely identifying each artist.
    * `name`: Text field storing the artist's name.
* **Songs**: Stores information about individual musical tracks.
    * `id`: Primary key, auto-incrementing integer uniquely identifying each song.
    * `title`: Text field storing the song title.
    * `duration`: Integer representing the duration of the song in seconds.
    * `artist_id`: Foreign key referencing `artists(id)`, linking each song to its creator.

## Relationships
The relationship between `artists` and `songs` is a **one-to-many** relationship:
* One artist can have multiple songs associated with them.
* Each song is linked to one primary artist via the `artist_id` foreign key.

## Optimizations
* An index (`title_index`) has been created on the `songs` table for the `title` column to drastically speed up search queries looking up songs by name.
*
