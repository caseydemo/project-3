CREATE TABLE heroes (
    id serial PRIMARY key,
    name text UNIQUE NOT NULL,
    link text UNIQUE NOT NULL,
    quote text NOT null,
    biography text NOT NULL,
    image_url VARCHAR(300),
    image_large varchar(300)
);
CREATE TABLE buddies (
    id serial PRIMARY key,
    name text UNIQUE NOT NULL,
    link text UNIQUE NOT NULL,
    friendGroup INTEGER NOT NULL
);
INSERT INTO buddies (name, link, friendGroup) VALUES ('Logan Ninefingers', '<a href="/logan.php" target="_blank"> Logan Ninefingers </a>', 1);
INSERT INTO buddies (name, link, friendGroup) VALUES ('Black Dow', '<a href="/blackdow.php" target="_blank"> Black Dow </a>', 1);
INSERT INTO buddies (name, link, friendGroup) VALUES ('Rudd Threetrees', '<a href="/threetrees.php" target="_blank"> Rudd Threetrees </a>', 1);
INSERT INTO buddies (name, link, friendGroup) VALUES ('Tul Duru Thunderhead', '<a href="/thunderhead.php" target="_blank"> Tul Duru Thunderhead </a>', 1);
INSERT INTO buddies (name, link, friendGroup) VALUES ('Whirrun of Bligh', '<a href="/whirrun.php" target="_blank"> Whirrun of Bligh </a>', 1);
INSERT INTO buddies (name, link, friendGroup) VALUES ('Sand dan Glokta', '<a href="/glokta.php" target="_blank"> Sand dan Glokta </a>', 2);
INSERT INTO buddies (name, link, friendGroup) VALUES ('Bayaz', '<a href="/Bayaz.php" target="_blank"> Bayaz </a>', 2);
INSERT INTO buddies (name, link, friendGroup) VALUES ('Ishri', '<a href="/Ishri.php" target="_blank"> Ishri </a>', 3);

SELECT * FROM BUDDIES;

-- northmen
SELECT * FROM buddies WHERE friendgroup=1;


-- union
SELECT * FROM buddies WHERE friendgroup=2;

-- Ghurkish
SELECT * FROM buddies WHERE friendgroup=3;




INSERT INTO heroes (link, name, quote, biography, image_url, image_large) VALUES ('<a href="/logan.php" target="_blank"> Logan Ninefingers </a>', 'Logan Ninefingers', '"There are few men with more blood on their hands than me. None, that I know of. The Bloody-Nine they call me, my enemies, and there’s a lot of ’em."', 'Logen Ninefingers is an expert warrior, adept in both calculated tactics and acting instinctively in a fight; he''s arguably the deadliest fighter in the series. Crummock-i-Phail calls him "the king of killers." He generally uses a sword in battle, and also carries an abundance of daggers. However, he claims to be proficient with many different weapons, as a champion never knows what he might be called on to fight with in a duel in the circle. Despite most people outside The North considering him a dim-witted savage, he’s surprisingly thoughtful and has a bit of a philosophical side. He comes across as a pretty decent guy, a man of integrity who killed only when had to when he was under Bethod. In truth, he wasn''t. As a younger man he relished fighting and bloodshed and the feared respect it earned him. When cornered in a fight, he descends into a berserker rage and becomes The Bloody Nine, which is why most of the North fears and hates him. It is unclear if his berserker persona is demonic/spiritual possession or a split personality. He seems to have no conscious control when he becomes The Bloody Nine, killing ally and enemy alike, and often doesn''t remember these episodes. Haunted by his past, he hopes to become a better man, though he often finds himself getting drawn into bloody confrontations. But, can he really escape his past? There''s a part of him that doesn''t want to escape violence, that finds protection from scores against him through the fear he creates.', '<img class="portrait" src="https://pbs.twimg.com/profile_images/664889963180384256/MrRvjPqk.jpg">', '<img class="image_large" src="https://pre00.deviantart.net/eeb7/th/pre/f/2013/066/4/7/nine_fingers_by_vassdeviant-d5xb7n0.jpg">');

INSERT INTO heroes (link, name, quote, biography, image_url, image_large) VALUES ('<a href="/blackdow.php" target="_blank"> Black Dow </a>', 'Black Dow', '"This ain''t for you, to kill a man tied up. It''s for work like this, you bring along a man like me."','Black Dow is a hard, gaunt man, with black hair hacked short and cold flat eyes. He has a nasty scar where his ear used to be. Collem West describes him as the most evil-looking man he''d ever seen, violence itself. He often flashes a menacing grin.Dow has a black reputation, hence the Name, and is the most savage and merciless member of the crew. He''s an unrepentant killer and rapist, with no qualms about killing women or children. His humour is very abrasive and snarky, and he''s often belligerent and sharp-tongued, especially with Tul Duru. Although he has a hair-trigger temper, he seems to be able to turn it off just as quickly.','<img class="portrait" src="https://vignette.wikia.nocookie.net/firstlaw/images/2/2d/Dow.png/revision/latest?cb=20150313100315">', '<img class="image_large" src="https://vignette.wikia.nocookie.net/firstlaw/images/d/d2/Black_Dow.png/revision/latest?cb=20150330034846">');
INSERT INTO heroes (link, name, quote, biography, image_url, image_large) VALUES ('<a href="/threetrees.php" target="_blank"> Rudd Threetrees </a>', 'Rudd Threetrees', '"Rock of Uffrith, they called him. No bigger name in all the North. Great fighter. Great leader. Great friend. Lifetime o’ battles. Stood face to face with the Bloody-Nine, then shoulder to shoulder with him. Never took an easy path, if he thought it was the wrong one. Never stepped back from a fight, if he thought it had to be done. I stood with him, walked with him, fought with him, ten years, all over the North. I’ve no complaints."', 'Threetrees is a great, broad-chested old veteran warrior of great renown with grey creeping up in his beard and tangled hair. He''s known for his patience, always taking his moment to think things through before making a decision, and is very tactical in planning his attacks. He holds to the "old way", a now old-fashioned Northern sense of honour, despite his circumstances. In battle, he wields a big round shield and a sword, which allows him to fight more or less defensively depending on the situation.', '<img class="portrait" src="https://vignette.wikia.nocookie.net/firstlaw/images/b/b4/Threetrees.png/revision/latest/scale-to-width-down/382?cb=20150313100656">', '<img class="image_large" src="https://vignette.wikia.nocookie.net/firstlaw/images/d/d2/Threetrees-MathiaArkoniel.jpg/revision/latest/scale-to-width-down/350?cb=20140310101715">');

INSERT INTO heroes (link, name, quote, biography, image_url, image_large) VALUES ('<a href="/thunderhead.php" target="_blank"> Tul Duru Thunderhead </a>', 'Tul Duru Thunderhead', '"The Thunderhead was a different animal. Once that big ox got properly riled there was no calming him. Not without ten strong men and a lot of rope."', 'Tul is truly a giant of a man with a thick beard; most people consider him the biggest man they''ve ever seen. Few men can stand against Tul''s massive bulk and big heavy sword in battle, other than Logen Ninefingers of course, but then again the Bloody-Nine is a different sort of man. Tul has a deep, booming voice, and a laugh like thunder, which is probably where he gets his Name. He''s probably the most basically decent member of Logen''s band, and well liked by most men in The North, except for Black Dow; the pair don''t get on, and invariably bicker. You really won''t like him when he''s angry, but luckily he''s quite slow to get stirred up. ', '<img class="portrait" src="https://vignette.wikia.nocookie.net/firstlaw/images/f/f3/Tul_Duru_Thunderhead.png/revision/latest?cb=20150330035347">', '<img class="image_large" src="https://vignette.wikia.nocookie.net/firstlaw/images/2/29/Tull_Duru_1.jpg/revision/latest?cb=20130827153609">');
INSERT INTO heroes (link, name, quote, biography, image_url, image_large) VALUES ('<a href="/whirrun.php" target="_blank"> Whirrun of Bligh </a>', 'Whirrun of Bligh', '"Armour is part of a state of mind in which you admit the possibility of being hit."', 'Whirrun of Bligh is a famous Named Man from the utmost North, who wields the Father of Swords, an impossibly large two-handed sword. Whirrun is a tall and lean man, with a strange valley accent. He acts like a weird oddball most of the time, and most of the crew consider him mad. He has a fearsome reputation as a dangerous fighter', '<img class="portrait" src="https://orig00.deviantart.net/0159/f/2014/174/f/a/the_heros__whirrun_of_bligh_by_yapattack-d7mxfrp.jpg">', '<img class="image_large" src="http://i.imgur.com/6davs.png">');


INSERT INTO heroes (link, name, quote, biography, image_url, image_large) VALUES ('<a href="/glokta.php" target="_blank"> Sand dan Glokta </a>', 'Sand dan Glokta', '"Every man has his excuses, and the more vile the man becomes, the more touching the story has to be. What is my story now, I wonder? "', 'Sand dan Glokta is only thirty-five, but his visit to the Emperor''s prisons has left him severely crippled, appearing far older, and in constant physical pain. Most notable is his useless left leg, which is prone to spasms of intense pain; possibly the result of muscle death or simply repeated breakages. He walks with a hunch, limping and leaning heavily on a cane, wincing with every step; stairs are his bitter enemy. He needs to urinate sitting down, and must be helped getting out of bed by his elderly servant Barnam, often after losing control of his bowels. Half his teeth have been removed, but where the teeth were removed above, they were left below, so that he cannot eat solid foods[2]. He describes every day is its own little hell. He dresses in the Inquisitions traditional black, and broad-brimmed hat.', '<img class="portrait" src="https://s-media-cache-ak0.pinimg.com/originals/4c/ca/a4/4ccaa47ca433e3b3e15a7b991e2a01f7.jpg">', '<img class="image_large" src="https://img00.deviantart.net/18f8/i/2017/078/f/a/sand_dan_glokta_by_kabudragon-db2x7px.jpg">');


INSERT INTO heroes (link, name, quote, biography, image_url, image_large) VALUES ('<a href="/Bayaz.php" target="_blank"> Bayaz </a>', 'Bayaz', '"Say one thing for the First of the Magi, say he’s a cheating bastard. "', 'Long ago in the Old Time, Juvens took Bayaz as his first apprentice, and trained him in the principles of the High Art. But soon after, his master took another, a boy from Kanta called Khalul. From the beginning they argued, too proud and jealous of one another, even as Juvens took more apprentices; twelve in all - the Order of the Magi. After the horror of the war with Glustrod, Juvens interceded in the feud between Bayaz and Khalul, lest they kill each other. He sent them away to the great libraries he had built; Bayaz to the north and Khalul to the south. Juvens hoped it would cool their tempers, but it only made it worse and they each plotted revenge. Desperate for more power, Bayaz sought another master — Juvens'' brother Kanedias.', '<img class="portrait" src="https://vignette.wikia.nocookie.net/firstlaw/images/b/be/First_of_the_magi_at_tea_by_ccs1989-d47xvvy.jpg/revision/latest/scale-to-width-down/355?cb=20150316072535">', '<img class="image_large" src="https://vignette.wikia.nocookie.net/firstlaw/images/e/e5/4-bayaz-small.jpg/revision/latest?cb=20160404201543">');


INSERT INTO heroes (link, name, quote, biography, image_url, image_large) VALUES ('<a href="/Ishri.php" target="_blank"> Ishri </a>', 'Ishri', '" All I need now is for that vanishing devil Ishri to spring out of my horse’s arse and give me my death of shock "', 'Ishri, also known as The East Wind, is a powerful Gurkish Eater, and one of the more dangerous of the disciples of the Magus Khalul. She works widely throughout Styria and The North against factions supported by Bayaz. Ishri is a tall dark-skinned woman with perfect white teeth and black eyes. She moves with an improbably nimbleness, and dresses her impossibly thin body in white bandages from neck to toe, often covered in a long coat. She delights in surprising and provoking people.', '<img class="portrait" src="https://vignette.wikia.nocookie.net/firstlaw/images/9/92/Ishri_by_erkahoth-d8d3c31.jpg/revision/latest?cb=20160514181255">', '<img class="image_large" src="https://vignette.wikia.nocookie.net/firstlaw/images/1/18/Ishri_by_drreginaldfunk-d74hv3h.jpg/revision/latest?cb=20150630184228">');


INSERT INTO heroes (link, name, quote, biography, image_url, image_large) VALUES ('<a href="/glokta.php" target="_blank"> Sand dan Glokta </a>', 'Sand dan Glokta', '"All I need now is for that vanishing devil Ishri to spring out of my horse’s arse and give me my death of shock "', 'Ishri, also known as The East Wind, is a powerful Gurkish Eater, and one of the more dangerous of the disciples of the Magus Khalul. She works widely throughout Styria and The North against factions supported by Bayaz. Ishri is a tall dark-skinned woman with perfect white teeth and black eyes. She moves with an improbably nimbleness, and dresses her impossibly thin body in white bandages from neck to toe, often covered in a long coat. She delights in surprising and provoking people.', '<img class="portrait" src="">', '<img src="https://vignette.wikia.nocookie.net/firstlaw/images/1/18/Ishri_by_drreginaldfunk-d74hv3h.jpg/revision/latest?cb=20150630184228">');


CREATE TABLE buddies (
    id serial PRIMARY key,
    name VARCHAR(50)
);





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
 