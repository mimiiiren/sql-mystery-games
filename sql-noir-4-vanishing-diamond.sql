-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
  -- 2. Any notes or insights as SQL comments
  -- 3. Your final conclusion: who did it?

SELECT *
FROM crime_scene
WHERE location = 'Fontainebleau Hotel';
id	date	location	description
48	19870520	Fontainebleau Hotel	The Heart of Atlantis necklace disappeared. 
Many guests were questioned but only two of them gave valuable clues. 
One of them is a really famous actor. 
The other one is a woman who works as a consultant for a big company and her first name 
ends with "an".

SELECT *
FROM guest
WHERE occupation = 'Actor' 
id	name	occupation	invitation_code
43	Ruby Baker	Actor	VIP-R
129	Clint Eastwood	Actor	VIP-G
164	River Bowers	Actor	VIP-B
189	Sage Dillon	Actor	VIP-G
192	Phoenix Pitts	Actor	VIP-G
SELECT *
FROM witness_statements
WHERE guest_id IN (143, 129, 164, 189, 192);

id	guest_id	clue
50	129	I overheard someone say, Meet me at the marina dock 3

SELECT *
FROM guest
WHERE occupation LIKE '%Consultant%' AND name LIKE '%an%';

id	name	occupation	invitation_code
116	Vivian Nair	Consultant	VIP-R

SELECT *
FROM witness_statements
WHERE guest_id = 116;
id	guest_id	clue
16	116	I saw someone holding an invitation ending with "-R". 
He was wearing a navy suit and a white tie.

SELECT *
FROM attire_registry
WHERE note LIKE '%white tie%';

id	guest_id	note
30	156	navy suit, white tie
42	145	navy suit, white tie
48	105	navy suit, white tie
53	112	navy suit, white tie
58	190	navy suit, white tie
61	189	navy suit, white tie
63	167	navy suit, white tie
67	190	navy suit, white tie

-- SELECT *
-- FROM marina_rentals
-- JOIN attire_registry
-- ON marina_rentals.renter_guest_id = attire_registry.guest_id
-- WHERE marina_rentals.dock_number = 3 AND attire_registry.note LIKE '%white tie%';
-- id	dock_number	renter_guest_id	rental_date	boat_name	id	guest_id	note
-- 9	3	112	19870520	Sea Serenade	53	112	navy suit, white tie
-- 19	3	145	19870520	Wave Seeker	42	145	navy suit, white tie
-- 24	3	167	19870520	Wind Song	63	167	navy suit, white tie
-- 34	3	190	19870520	Ocean Spirit	58	190	navy suit, white tie
-- 34	3	190	19870520	Ocean Spirit	67	190	navy suit, white tie
-- 44	3	105	19870520	Coastal Spirit	48	105	navy suit, white tie
-- 54	3	112	19871028	Blue Spirit	53	112	navy suit, white tie
-- 64	3	167	19871028	Wind Moon	63	167	navy suit, white tie
-- 74	3	156	19871028	Ocean Star II	30	156	navy suit, white tie
-- 79	3	112	19871028	Sunset Wave II	53	112	navy suit, white tie
-- 84	3	145	19871028	Coastal Lady	42	145	navy suit, white tie

-- SELECT *
-- FROM witness_statements
-- WHERE guest_id IN (112, 145, 167, 190, 105, 112, 167, 156, 112, 145);
-- id	guest_id	clue
-- 3	167	During my evening jog, I noticed a black van parked outside with its lights off for over two hours.

SELECT *
FROM final_interviews
WHERE guest_id IN (112, 145, 167, 190, 105, 112, 167, 156, 112, 145);
id	guest_id	confession
105	105	I was the one who took the crystal. I guess I need a lawyer now?

SELECT *
FROM guest
WHERE id = 105;
105	Mike Manning	Wealth Reallocation Expert	VIP-R

ANSWER: Mike Manning	
