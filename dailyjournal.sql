CREATE TABLE `Entries` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`concept`	TEXT NOT NULL,
	`entry`	TEXT NOT NULL,
    `mood_id` INTEGER NOT NULL, 
    `date` TEXT NOT NULL,
    `time_spent` TEXT NOT NULL,
    FOREIGN KEY(`mood_id`) REFERENCES `Mood`(`id`)
);

CREATE TABLE `Moods` (
    `id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `label` TEXT NOT NULL
);

INSERT INTO `Moods` VALUES (null, "Content");
INSERT INTO `Moods` VALUES (null, "Excited");
INSERT INTO `Moods` VALUES (null, "Frustrated");
INSERT INTO `Moods` VALUES (null, "Reflective");
INSERT INTO `Entries` VALUES (null, "Sql", "Today we worked on setting up daily journal, and continued to work on Nashville Kennels", 1, "1/19/2022", 1)
INSERT INTO `Entries` VALUES (null, "Python", "Today we worked on chapter 15 and Truncheons and Flagons API", 1, "1/20/2022", 4)
SELECT * FROM `Mood`
SELECT * FROM `Entries` 

SELECT
            a.id,
            a.concept,
            a.entry,
            a.mood_id,
            a.date,
            a.time_spent,
            m.mood mood
        FROM entries a
        WHERE a.id = ?
        """, ( id, )) 

SELECT
            a.id,
            a.concept,
            a.entry,
            a.mood_id,
            a.date,
            a.time_spent,
            m.id,
            m.label
        FROM Entries a
        JOIN Moods m 
            ON m.id = a.mood_id