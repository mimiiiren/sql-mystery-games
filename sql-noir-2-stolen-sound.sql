-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
  -- 2. Any notes or insights as SQL comments
  -- 3. Your final conclusion: who did it?
SELECT *
FROM crime_scene
WHERE date = 19830715;
A prized vinyl record was stolen from the store during a busy evening.

SELECT *
FROM witnesses
WHERE id = 65;

SELECT *
FROM witnesses
WHERE crime_scene_id = 65;
id	crime_scene_id	clue
28	65	I saw a man wearing a red bandana rushing out of the store.
75	65	The main thing I remember is that he had a distinctive gold watch on his wrist.

SELECT *
FROM suspects
WHERE bandana_color = "red"
AND accessory = 'gold watch';
id	name	bandana_color	accessory
35	Tony Ramirez	red	gold watch
44	Mickey Rivera	red	gold watch
97	Rico Delgado	red	gold watch

SELECT *
FROM interviews
WHERE suspect_id = 97;

SELECT *
FROM suspects
WHERE id = 97;
Answer: Rico Delgado