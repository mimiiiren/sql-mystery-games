-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
  -- 2. Any notes or insights as SQL comments
  -- 3. Your final conclusion: who did it?

SELECT * 
FROM crime_scene
WHERE type = "theft" 
AND date >= 19800000
AND date < 19900000;
A briefcase containing sensitive documents vanished. A witness reported a man in a trench coat with a scar on his left cheek fleeing the scene.

SELECT * 
FROM suspects
WHERE attire LIKE '%trench coat%'
AND scar LIKE '%left cheek%';
id	name	attire	scar
3	Frankie Lombardi	trench coat	left cheek
183	Vincent Malone	trench coat	left cheek

SELECT * 
FROM interviews
WHERE suspect_id = 183;
ANSWER: Vincent Malone