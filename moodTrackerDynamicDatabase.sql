/* Mood Tracker App SQL Database*/

CREATE TABLE moodTable (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    mood TEXT,
    happiness INTEGER,
    date TEXT,
    notes TEXT);
    
INSERT INTO moodTable (mood, happiness, date, notes)
    VALUES ("Angry", 4, "1-12-2020", "got into a fight at school");
INSERT INTO moodTable (mood, happiness, date, notes)
    VALUES ("Excited", 9, "2-12-2020", "Taylor Swift announced a new album");
INSERT INTO moodTable (mood, happiness, date, notes)
    VALUES ("Sad", 6, "3-12-2020", "fell in a puddle");
INSERT INTO moodTable (mood, happiness, date, notes)
    VALUES ("Happy", 10, "4-12-2020", "Listened to new Taylor Swift album");
INSERT INTO moodTable (mood, happiness, date, notes)
    VALUES ("Relieved", 7, "5-12-2020", "Finished an exam today");
INSERT INTO moodTable (mood, happiness, date, notes)
    VALUES ("Mad", 1, "6-12-2020", "Broke my arm in hockey");
INSERT INTO moodTable (mood, happiness, date, notes)
    VALUES ("Energetic", 7, "7-12-2020", "Last exam is tomorrow");
INSERT INTO moodTable (mood, happiness, date, notes)
    VALUES ("Happy", 10, "8-12-2020", "Finished my last exam");
INSERT INTO moodTable (mood, happiness, date, notes)
    VALUES ("Upset", 5, "8-12-2020", "Hurt my back carrying boxes");

SELECT * FROM moodTable;

UPDATE moodTable SET notes = "Last exam is tomorrow at 3pm" WHERE id = 7;
UPDATE moodTable SET date = "9-12-2020" WHERE id = 9;

SELECT * FROM moodTable;

DELETE FROM moodTable WHERE id = 3;

SELECT * FROM moodTable;