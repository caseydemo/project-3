CREATE TABLE heroes (
    id serial PRIMARY key,
    name varchar(50) UNIQUE NOT NULL,
    about_me varchar(250) NOT null,
    biography text NOT NULL,
    image_url VARCHAR(300)
);

INSERT INTO heroes (name, quote, biography, image_url) VALUES ('Logan Ninefingers', 'There are few men with more blood on their hands than me. None, that I know of. The Bloody-Nine they call me, my enemies, and there’s a lot of ’em. Always more enemies, and fewer friends. Blood gets you nothing but more blood. It follows me now, always, like my shadow, and like my shadow I can never be free of it. I should never be free of it. I’ve earned it. I’ve deserved it. I’ve sought it out. Such is my punishment.', 'also known as The Bloody-Nine, is an aging Northman with a black name and even blacker past, who strives to turn from the path of senseless violence he has followed for so long.', '<img class="portrait" src="https://pbs.twimg.com/profile_images/664889963180384256/MrRvjPqk.jpg">');
INSERT INTO heroes (name, quote, biography, image_url) VALUES ('Black Dow','This ain''t for you, to kill a man tied up. It''s for work like this, you bring along a man like me.','Black Dow is a hard, gaunt man, with black hair hacked short and cold flat eyes. He has a nasty scar where his ear used to be. Collem West describes him as the most evil-looking man he''d ever seen, violence itself. He often flashes a menacing grin.Dow has a black reputation, hence the Name, and is the most savage and merciless member of the crew. He''s an unrepentant killer and rapist, with no qualms about killing women or children. His humour is very abrasive and snarky, and he''s often belligerent and sharp-tongued, especially with Tul Duru. Although he has a hair-trigger temper, he seems to be able to turn it off just as quickly.','<img class="portrait" src="https://vignette.wikia.nocookie.net/firstlaw/images/2/2d/Dow.png/revision/latest?cb=20150313100315">');
INSERT INTO heroes (name, quote, biography, image_url) VALUES ('Rudd Threetrees', '"Rudd Threetrees. Rock of Uffrith, they called him. No bigger name in all the North. Great fighter. Great leader. Great friend. Lifetime o’ battles. Stood face to face with the Bloody-Nine, then shoulder to shoulder with him. Never took an easy path, if he thought it was the wrong one. Never stepped back from a fight, if he thought it had to be done. I stood with him, walked with him, fought with him, ten years, all over the North. I’ve no complaints."', 'Threetrees is a great, broad-chested old veteran warrior of great renown with grey creeping up in his beard and tangled hair. He''s known for his patience, always taking his moment to think things through before making a decision, and is very tactical in planning his attacks. He holds to the "old way", a now old-fashioned Northern sense of honour, despite his circumstances. In battle, he wields a big round shield and a sword, which allows him to fight more or less defensively depending on the situation.', '<img class="portrait" src="https://vignette.wikia.nocookie.net/firstlaw/images/b/b4/Threetrees.png/revision/latest/scale-to-width-down/382?cb=20150313100656">');
INSERT INTO heroes (name, quote, biography, image_url) VALUES ('Tul Duru Thunderhead', '"The Thunderhead was a different animal. Once that big ox got properly riled there was no calming him. Not without ten strong men and a lot of rope."', 'Tul is truly a giant of a man with a thick beard; most people consider him the biggest man they''ve ever seen. Few men can stand against Tul''s massive bulk and big heavy sword in battle, other than Logen Ninefingers of course, but then again the Bloody-Nine is a different sort of man. Tul has a deep, booming voice, and a laugh like thunder, which is probably where he gets his Name. He''s probably the most basically decent member of Logen''s band, and well liked by most men in The North, except for Black Dow; the pair don''t get on, and invariably bicker. You really won''t like him when he''s angry, but luckily he''s quite slow to get stirred up. ', '<img class="portrait" src="https://vignette.wikia.nocookie.net/firstlaw/images/f/f3/Tul_Duru_Thunderhead.png/revision/latest?cb=20150330035347">');
INSERT INTO heroes (name, quote, biography, image_url) VALUES ('Whirrun of Bligh', '"Armour is part of a state of mind in which you admit the possibility of being hit."', 'Whirrun of Bligh is a famous Named Man from the utmost North, who wields the Father of Swords, an impossibly large two-handed sword. Whirrun is a tall and lean man, with a strange valley accent. He acts like a weird oddball most of the time, and most of the crew consider him mad. He has a fearsome reputation as a dangerous fighter', '<img class="portrait" src="https://orig00.deviantart.net/0159/f/2014/174/f/a/the_heros__whirrun_of_bligh_by_yapattack-d7mxfrp.jpg">');





CREATE TABLE relationship_types (
    id serial PRIMARY key,
    type varchar(20) UNIQUE NOT NULL
);

INSERT INTO relationship_types (type) VALUES ('Friend');
INSERT INTO relationship_types (type) VALUES ('Enemy');

CREATE TABLE relationships (
    id serial PRIMARY key,
    hero1_id INTEGER REFERENCES heroes (id),
    hero2_id INTEGER REFERENCES heroes (id),
    type_id INTEGER REFERENCES relationship_types (id)
);

INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (1, 2, 1);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (2, 1, 1);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (2, 3, 2);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (4, 1, 2);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (4, 2, 2);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (4, 3, 2);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (4, 5, 2);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (3, 1, 1);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (3, 2, 1);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (3, 5, 1);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (5, 1, 1);
INSERT INTO relationships (hero1_id, hero2_id, type_id) VALUES (5, 3, 1);

CREATE TABLE abilities (
    id serial PRIMARY key,
    ability VARCHAR(50)
);

INSERT INTO abilities (ability) VALUES ('Super Strength');
INSERT INTO abilities (ability) VALUES ('Flying');
INSERT INTO abilities (ability) VALUES ('Telekinesis');
INSERT INTO abilities (ability) VALUES ('Telepathy');
INSERT INTO abilities (ability) VALUES ('Frost Breath');
INSERT INTO abilities (ability) VALUES ('Super Speed');
INSERT INTO abilities (ability) VALUES ('X-Ray Vision');

CREATE TABLE ability_hero (
    id serial PRIMARY key,
    hero_id INTEGER REFERENCES heroes (id),
    ability_id INTEGER REFERENCES abilities (id)
);

INSERT INTO ability_hero (hero_id, ability_id) VALUES (1, 5);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (2, 3);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (2, 4);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (3, 1);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (4, 2);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (4, 6);
INSERT INTO ability_hero (hero_id, ability_id) VALUES (5, 7);
 