-- Record your SQL detective process here!  Write down: 
--   1. The SQL queries you ran
--   2. Any notes or insights as SQL comments
--   3. Your final conclusion: who did it?

-- Using these SQL clauses will help you solve the mystery: 
--    SELECT, FROM, WHERE, AND, OR, ORDER BY, LIMIT, LIKE, DISTINCT, BETWEEN, AS

-- writing a comment like this

-- selecting all columns from the crime scene report

SELECT * FROM crime_scene_report;

SELECT *
FROM crime_scene_report
WHERE date = 20180115 AND type = "murder";

SELECT *
FROM person
WHERE name LIKE "Annabel%" AND address_street_name = "Franklin Ave";

SELECT *
FROM interview
WHERE person_id = 16371;
	I saw the murder happen, and I recognized the killer from my gym when 
    I was working out last week on January the 9th.

SELECT *
FROM interview
WHERE person_id = 14887	
I heard a gunshot and then saw a man run out. 
He had a "Get Fit Now Gym" bag. 
The membership number on the bag started with "48Z". 
Only gold members have those bags. 
The man got into a car with a plate that included "H42W".

SELECT *
FROM get_fit_now_check_in
WHERE check_in_date = 20180109 AND membership_id LIKE "48Z%";
membership_id	check_in_date	check_in_time	check_out_time
48Z7A	20180109	1600	1730
48Z55	20180109	1530	1700

SELECT *
FROM get_fit_now_member
WHERE id = "48Z55";
id	person_id	name	membership_start_date	membership_status
48Z55	67318	Jeremy Bowers	20160101	gold

INSERT INTO solution VALUES (1, 'Jeremy Bowers');
        
        SELECT value FROM solution;