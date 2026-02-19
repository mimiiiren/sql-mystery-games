-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
  -- 2. Any notes or insights as SQL comments
  -- 3. Your final conclusion: who did it?
SELECT *
FROM crime_scene
WHERE location = 'Coral Bay Marina' AND date = 19860814;

id	date	location	description
43	19860814	Coral Bay Marina	The body of an 
unidentified man was found near the docks. 
Two people were seen nearby: one who lives on 
300ish "Ocean Drive" and another whose first name 
ends with "ul" and his last name ends with "ez".

SELECT *
FROM person
WHERE address LIKE '% Ocean Drive' OR name LIKE '%ul %ez%';
101	Carlos Mendez	Los Ojos	Fisherman	369 Ocean Drive
102	Raul Gutierrez	The Cobra	Nightclub Owner	45 Sunset Ave

-- SELECT *
-- FROM confessions
-- WHERE person_id = 101 OR person_id = 102;

-- id	person_id	confession
-- 96	101	This is just a misunderstanding.
-- 97	102	Alright! Ive been running a blackmail operation

-- -- SELECT *
-- -- FROM surveillance_records
-- -- WHERE person_id = 101 OR person_id = 102;
-- -- id	person_id	hotel_checkin_id	suspicious_activity
-- -- 101	101	45	Asked for room service menu
-- -- 102	102	12	NULL

-- -- SELECT *
-- -- FROM hotel_checkins
-- -- WHERE id = 45 OR id = 12;

-- -- id	person_id	hotel_name	check_in_date
-- -- 12	17	Sunset Shore Hotel	19860813
-- -- 45	79	Coastal View Hotel	19860813

SELECT *
FROM interviews
WHERE person_id = 101 OR person_id = 102;
id	person_id	transcript
101	101	I saw someone check into a hotel on August 13. The guy looked nervous.
103	102	I heard someone checked into a hotel with "Sunset" in the name.

 SELECT *
   FROM hotel_checkins
WHERE check_in_date = 19860813 AND hotel_name LIKE '%Sunset%'

   SELECT *
   FROM hotel_checkins
JOIN surveillance_records
ON hotel_checkins.id = surveillance_records.hotel_checkin_id
WHERE check_in_date = 19860813 AND hotel_name LIKE '%Sunset%'
---return MANY results. how to narrow down?
34	39	Sunset Coast Inn	19860813	6	6	34	Spotted entering late at night
2	27	Sunset Bay Hotel	19860813	8	8	2	Left suddenly at 3 AM


SELECT *
FROM hotel_checkins
WHERE person_id = 8;
id	person_id	hotel_name	check_in_date
55	8	Sunset Palm Resort	19860813

id	name	alias	occupation	address
8	Thomas Brown	The Fox	Dock Worker	234 Port Street

Answer: Thomas Brown
