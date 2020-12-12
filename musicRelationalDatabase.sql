/* Joins a database of singers to a database of songs */
CREATE TABLE singers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT);
    
INSERT INTO singers (fullname) VALUES ("Macklemore");
INSERT INTO singers (fullname) VALUES ("Taylor Swift");
INSERT INTO singers (fullname) VALUES ("Tyler the Creator");
INSERT INTO singers (fullname) VALUES ("Lil Uzi Vert");

CREATE table songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    singer_id INTEGER,
    song_name TEXT);

INSERT INTO songs (singer_id, song_name) VALUES (1, "My Oh My");
INSERT INTO songs (singer_id, song_name) VALUES (1, "Glorious");
INSERT INTO songs (singer_id, song_name) VALUES (2, "Wildest Dream");
INSERT INTO songs (singer_id, song_name) VALUES (2, "Love Story");
INSERT INTO songs (singer_id, song_name) VALUES (3, "Earfquake");
INSERT INTO songs (singer_id, song_name) VALUES (4, "The Way Life Goes");
INSERT INTO songs (singer_id, song_name) VALUES (4, "That Way");
INSERT INTO songs (singer_id, song_name) VALUES (4, "P2");

SELECT singers.fullname, songs.song_name FROM singers
    JOIN songs
    ON singers.id = songs.singer_id;