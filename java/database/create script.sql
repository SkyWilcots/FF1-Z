INSERT INTO dimension(
	dimension_id,
	dimension_name,
	dimension_code,
	description
)
VALUES(
	0,
	'The Interdimensional Rift',
	'000',
	'The beginning, end, and intersection of all worlds. It''s so massive that stumbling in without a way through or back is probably a fate worse than death. We''ve not yet probed the full depths of the Rift, and I doubt we ever will in our lifetime, but there seems to be one creature that can navigate the void as though it has been there since its inception...'
);

INSERT INTO dimension (
	dimension_name,
	dimension_code,
	description)
VALUES (
	'World of Cosmos',
	'1-Z',
	'Our planet, given form by Cosmos, and the crystals she created. In our current era, Onrac and Cornelia have made significant advances in technology, leading to great prosperity for all. However, the world has been in a state of decline and decay as Chaos seems to be returning. But as the prophecy goes, when the winds die, the sea languishes, and the earth rots, the four Warriors of Light shall come.'
);

INSERT INTO dimension (
	dimension_name,
	dimension_code,
	description)
VALUES (
	'The Great Garden',
	'2-A',
	'Altan''s home world--one where the scent of wild roses carries in the wind wherever one goes. According to information from him, there was once a despotic emperor named Mateus Palamecia, whose ruthlessness and tenacity almost allowed him to conquer the entire globe. That was a long time ago, it seems, as Altan claims the heroes responsible for the peace he lives under have long since died a peaceful death. It seems this world does not have crystals the way ours does.'
);

INSERT INTO dimension (
	dimension_name,
	dimension_code,
	description)
VALUES (
	'World of Light',
	'3-A',
	'A world not too unlike our own, this land that floats along the clouds seems to carry with it the power of four crystals of light. Reports indicate that there is a counterbalance of energy equal to that of the crystals somewhere in this dimension. Is it possible this world has crystals of darkness as well? What does this say about the state of equilibrium in that world--or ours, for that matter?'
);
	
	INSERT INTO dimension (
	dimension_name,
	dimension_code,
	description)
VALUES (
	'Blue Planet',
	'4-A',
	'Another world that apparently has crystal energy signatures--16 of them. Four have been found on the earth''s surface, four more presumably under its stratum, and another eight seeming to come from the stars. Despite this abundance of crystal energy on this planet, the world seems to still be in an era not unlike ours during the Earth-Sky Wars.'
);
	
	INSERT INTO dimension (
	dimension_name,
	dimension_code,
	description)
VALUES (
	'Rift-Torn World',
	'5-R',
	'This dimension seems to be riddled with portals leading into the Interdimensional Rift, quite similar to the recent phenomenon we have been experiencing in recent months. However, unlike our relatively miniscule pockets, these portals have carved holes into entire continents, mountains and seas. Is this what awaits our world if they can''t be closed?'
	);
	
	INSERT INTO dimension (
	dimension_name,
	dimension_code,
	description)
VALUES (
		'World of Balance',
		'6-A',
		'A universe with neither crystals nor magic. One would think this world would be nearly uninhabitable, but humans do well enough with the power of steam technology. Apparently the world''s balance hinges on the counterbalancing of three strong energy readings hidden somewhere beneath the earth''s surface.'
);

	INSERT INTO dimension (
	dimension_name,
	dimension_code,
	description)
VALUES (
	'Fount of Life',
	'7-L',
	'Reports indicate an extremely powerful energy signature buried within the planet''s core. It''s much like the energy readings given off by the crystals of our home world, yet singular, and massive. An interesting question was posed as to what technology would be required to harness all of that energy on this world.'
	);
	
	
	
INSERT INTO dimension (
	dimension_name,
	dimension_code,
	description)
VALUES (
	'Time-Bent Landscape',
	'8-G',
	'No accurate readings could be gathered from this dimension. Interestingly, remote recordings from probes seem to indicate time as being in constant chaotic flux. This has made return trips for our probes impossible at this time. Because of the potential risks the temporal instability presents, this world has been deemed a serious hazard for even our probes. Human travel will likely never be viable there.'
	);
	
INSERT INTO dimension (
	dimension_name,
	dimension_code)
VALUES (
	'Gaia',
	'9-A');
	
INSERT INTO dimension (
	dimension_name,
	dimension_code)
VALUES (
	'Dreaming Planet',
	'10-S'
);
	
	INSERT INTO dimension (
	dimension_name,
	dimension_code)
VALUES (
	'Dreaming City',
	'10-Z'
);
	
INSERT INTO dimension (
	dimension_name,
	dimension_code)
VALUES (
	'Vana''diel',
	'11-A'
);
	
	INSERT INTO dimension (
	dimension_name,
	dimension_code)
VALUES (
	'World of Scions and Gods',
	'12-A'
);	
	
	
INSERT INTO location(
	dimension_id,
	location_name,
	description
)
VALUES(
(SELECT dimension_id FROM dimension WHERE dimension_name = 'World of Cosmos'),
'The Kingdom of Cornelia',
'Cornelia -- a prospering kingdom at the heart of the world. At the seat of the throne sits a kind king who has seen the lands prosper since the end of the Earth-Sky Wars. His daughter, Princess Sarah, seems to be quite popular among the people, as she regularly plays the lute at the city square for all to hear.'

);

INSERT INTO location(
	dimension_id,
	location_name,
	description
)
VALUES(
	(SELECT dimension_id FROM dimension WHERE dimension_code = '2-A'),
	'Mysidia',
	'Altan''s hometown. A thriving magic city full of knowledge seated in a tropical continent. Altan claims it is the birthplace of a famous wizard from the era he references often, known as Minwu during the Wild Rose Rebellion. Judging by Altan''s own affinity for magic, one would assume many individuals who live in Mysidia practice the art of magic.'
);

INSERT INTO dimension (
	dimension_name,
	dimension_code,
	description)
VALUES (
	'The Emperor''s Garden',
	'2-P',
	'A different version of Altan''s home world. A world where Emperor Palamecia''s might has spread through out the land, as many cities and kingdoms have been occupied by Palamecia forces. The princess Hilda and her adviser are nowhere to be found.'
);

--Forgot using a single query to put multiple values in is a thing.
INSERT INTO location(
	dimension_id,
	location_name,
	description
)
VALUES(
(SELECT dimension_id FROM dimension WHERE dimension_name = 'World of Cosmos'),
'Pravoka',
'A bustling port town known for many things by many people. For gourmands, it''s known for its decadent seafood markets. For athletes, its blitzball scene. And for wandering drifters, it is known for being a hotspot for many raids by pirates and sahaguins where villainy and skullduggery abound. Indeed, those who cannot protect themselves are often robbed of gold and life alike, and the one villain who stands above the rest in this city is the great pirate, Captain Bikke.'
),
((SELECT dimension_id FROM dimension WHERE dimension_name = 'World of Cosmos'),
'Watercrest University',
 'Built near Crescent Lake City, the prestigious Watercrest University is an academia home to many wizards, magi and apsiring scholars alike, turning the place into what amounts to a veritable university town. The entrance exams to the university are notoriously difficult, and usually it is only the elite are granted admittance. Lukahn, the headmaster of the university, is a very influential figure involved in the management of the city.'
),
((SELECT dimension_id FROM dimension WHERE dimension_name = 'World of Cosmos'),
 'Onrac',
'Onrac is a city-state where much entertainment prevails. Once long ago, the Onrac was known for its advanced military, incredible technological breakthroughs and scientific research, but many protests and a change in political hands saw this city bury its past behind a golden veil of the arts. Many auditoriums and museums, and even a large blitzball stadium dot the city. Very few are lucky to meet Nerissa in person, as she is a popular socialite, fashion model, and even a world-famous blitzball player for the Onrac Abes.'
)


,((SELECT dimension_id FROM dimension WHERE dimension_name = 'Rift-Torn World'),
'Great Forest of Moore',
'A sprawling forest full of creatures both common and rare. It is said that somehwere in this forest sits a large tree with the power to seal away evil. With the many talismans that hang on the trunk of this tree, it seems nearly full to bursting.'
);

INSERT INTO location(
	dimension_id,
	location_name,
	description
)
VALUES(
(SELECT dimension_id FROM dimension WHERE dimension_name = 'World of Cosmos'),
'Melmond',
'A quiet town full of modest simple farmers. Once a hotspot for those looking for quality farmer''s market foodstuffs, this town has been experiencing quite a terrible plague lately. Livestock and citizens have been catching terrible disease, and crops have had the worst yield in centuries this year. The people and the land are dying. Father John, Jerid and Elize are the local priests who are working very hard to heal the sick and pray for the crystals'' light to shine again on this town.'

);

--I encountered a 23503 error while trying to insert values into the local_creature and stranger_creature tables first. 
--What I can do is insert values into creature first, then distinguish the creature as either a local_creature, or a stranger_creature.

INSERT INTO creature(
	name,
	lv,
	str_value,
	dex_value,
	con_value,
	int_value,
	wis_value,
	cha_value
)
VALUES 
('Luthien Dervin',
 8,
 10,
 16,
 15,
 20,
 13,
 11
),

('Iomene Dervin',
 8,
 18,
 12,
 16,
 11,
 12,
 18
),

('Guiscard Durendal',
 8,
 7,
 18,
 11,
 11,
 18,
 18
),

('Altan',
 8,
 10,
 14,
 11,
 19,
 14,
 13
),

('Shuvuuvu',
6,
12,
16,
14,
14,
10,
18
);

INSERT INTO local_creature(
	name,
	home_locale_id,
	description
)
VALUES

(
(SELECT name FROM creature WHERE name = 'Luthien Dervin'),
(SELECT location_id FROM location WHERE location_name = 'Watercrest University'),	
'A standoffish scholar and blue mage. Her sometimes poor temperament can be attributed to her peers--and her estranged mother--mistreating her from a young age for her relation to the infamous Elfheim terrorist, Astos. Since becoming a Warrior of Light, she seems to have three objectives in mind: Find her missing older sister Mayora; Prove to the world that she is better than her familial association with Astos; And finally, kill Astos.'
),

(
(SELECT name FROM creature WHERE name = 'Iomene Dervin'),
(SELECT location_id FROM location WHERE location_name = 'Onrac'),
'A jolly elf woman with many occupations under her belt, incluing being Luthien''s grandmother, a red mage, a former militiawoman, and a former movie actress. Despite looking to be in her late 20s, she claims to be more than 108 years old. Her youth apparently is the result of some form of science, but even Luthien doesn''the know the details to that.'
),

(
(SELECT name FROM creature WHERE name = 'Guiscard Durendal'),
(SELECT location_id FROM location WHERE location_name = 'Pravoka'),
'An elf from the streets of Pravoka. Having served for a short time as a deckmate for the Syldra Pirates, he decided to branch out into starting a business of his own selling weapons. His reasons for taking up the mantle as Warrior of Light is to gain further fame and sales in his weapons business.'
);

INSERT INTO stranger_creature(
			creature_id,
			name,
			home_dimension_id,
			home_locale_id,
			description)
VALUES
(
(SELECT creature_id FROM creature WHERE name = 'Altan'),
'Altan',
(SELECT d.dimension_id FROM dimension d JOIN location loc ON d.dimension_id = loc.dimension_id WHERE location_name = 'Mysidia'),
(SELECT location_id FROM location WHERE location_name = 'Mysidia'),
'A curious time mage whose magic bends time and space. He apparently stumbled into this world from the place called ''Mysidia'' after experimenting with magic a bit too far out of his grasp. His lax demeanor towards most things makes one seem like he doesn''t care about anything at all, but he is very calculating and precise when the time comes to act. Although he has been designated the role of Warrior of Light in this world, he misses his own, and is willing to undergo any trials or studies to return.'
),

(
(SELECT creature_id FROM creature WHERE name = 'Shuvuuvu'),
'Shuvuuvu',
(SELECT d.dimension_id FROM dimension d JOIN location loc ON d.dimension_id = loc.dimension_id WHERE location_name = 'Great Forest of Moore'),
(SELECT location_id FROM location WHERE location_name = 'Great Forest of Moore'),
'Originally a black chocobo, this harpy-like lass was found as a squatter in a ship off the dock of Fisherman''s Horizon. Since receiving her human form from a dragon in the Rift, she has gained some skill in wind magic and illusory spells, and has apparently used it to great effect stealing gold from pirates in Pravoka. Despite all this, her heart is set on finding best friend Krile, and returning back home to her world--that is, if it still exists anymore.'
);


INSERT INTO resides_in (
creature_id,
dimension_id
)
VALUES
(
(SELECT creature_id FROM creature WHERE name = 'Luthien Dervin'),
(SELECT home_dimension_id FROM local_creature WHERE name = 'Luthien Dervin')
),
(
(SELECT creature_id FROM creature WHERE name = 'Iomene Dervin'),
(SELECT home_dimension_id FROM local_creature WHERE name = 'Iomene Dervin')
),
(
(SELECT creature_id FROM creature WHERE name = 'Guiscard Durendal'),
(SELECT home_dimension_id FROM local_creature WHERE name = 'Guiscard Durendal')
),
(
(SELECT creature_id FROM creature WHERE name = 'Altan'),
(SELECT home_dimension_id FROM stranger_creature WHERE name = 'Altan')
),
(
(SELECT creature_id FROM creature WHERE name = 'Shuvuuvu'),
(SELECT home_dimension_id FROM stranger_creature WHERE name = 'Shuvuuvu')
);

--Query to call on all of the currently existing locales 
	SELECT l.location_name, d.dimension_code, l.description AS City_Description FROM location l
	JOIN dimension d ON l.dimension_id = d.dimension_id;
	
	SELECT * FROM creature;
	SELECT * FROM stranger_creature;
	SELECT * from dimension;
	SELECT * FROM resides_in;
	
--Query to call on Local Creatures and and their home city and homeworld, as well as a description
	SELECT lc.local_id, lc.name, d.dimension_name AS homeworld, l.location_name AS hometown, lc.description FROM local_creature lc
	JOIN dimension d ON lc.home_dimension_id = d.dimension_id
	JOIN location l ON lc.home_locale_id = l.location_id;
	
--Query to call on the names of all creatures, local or stranger, along with their Level, home city and homeworld
--...I was going to say "As well as a description," but that won't work.
--Note to self, add the description column to Creature table instead of splitting it between the local and stranger tables.
SELECT DISTINCT ON (c.name) c.name, c.LV, d.dimension_name AS homeworld, loc.location_name AS hometown
FROM creature c
JOIN resides_in r ON c.creature_id = r.creature_id
JOIN dimension d ON r.dimension_id = d.dimension_id
JOIN location loc ON d.dimension_id = loc.dimension_id
ORDER BY c.name, c.creature_id; -- this one sorts by name in alphabetical order


SELECT DISTINCT ON (c.creature_id) c.name, c.LV, d.dimension_name AS homeworld, loc.location_name AS hometown
FROM creature c
JOIN resides_in r ON c.creature_id = r.creature_id
JOIN dimension d ON r.dimension_id = d.dimension_id
JOIN location loc ON d.dimension_id = loc.dimension_id
ORDER BY c.creature_id, c.name; -- This one sorts by creature ID