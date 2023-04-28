INSERT INTO genre(id, genre_name) 
VALUES 
    (1, 'Rap'),
    (2, 'Rock'),
    (3, 'Pop'),
    (4, 'Jazz'),
    (5, 'Electro house');

INSERT INTO executor(id, nick_name) 
VALUES
    (1, 'Eminem'),
    (2, '50 Cent'),
    (3, 'Rammstein'),
    (4, 'Король и Шут'),
    (5, 'Rihanna'),
    (6, 'Dua Lipa'),
    (7, 'Frank Sinatra'),
    (8, 'Louis Armstrong'),
    (9, 'David Guetta'),
    (10, 'Armin Van Buuren');

INSERT INTO genre_executor(genre_id, executor_id) 
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (2, 4),
    (3, 5),
    (3, 6),
    (4, 7),
    (4, 8),
    (5, 9),
    (5, 10),
	(2, 9),
	(1, 10);
   
INSERT INTO album(id, title_album, year_album) 
VALUES
    (1, 'Kamikaze', 2018),
    (2, 'Music to Be Murdered By', 2020),
    (3, 'Curtis', 2007),
    (4, 'Animal Ambition', 2014),
    (5, 'Rammstein', 2019),
    (6, 'Reise, Reise', 2004),
    (7, 'Театр демона', 2010),
    (8, 'Бунт на корабле', 2004),
    (9, 'Anti', 2016),
    (10, 'Unapologetic', 2012),
    (11, 'Dua Lipa', 2017),
    (12, 'Future Nostalgia', 2020),
    (13, 'Point Of No Return', 1962),
    (14, 'Softly, As I Leave You', 1964),
    (15, 'The California Concerts', 1992),
    (16, 'Hot Fives & Sevens', 2000),
    (17, 'Listen', 2014),
    (18, '7', 2018),
    (19, 'Embrace', 2015),
    (20, 'Balance', 2019);

INSERT INTO executor_album(executor_id, album_id)
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (2, 4),
    (3, 5),
    (3, 6),
    (4, 7),
    (4, 8),
    (5, 9),
    (5, 10),
    (6, 11),
    (6, 12),
    (7, 13),
    (7, 14),
    (8, 15),
    (8, 16),
    (9, 17),
    (9, 18),
    (10, 19),
    (10, 20),
	(9, 2),
	(6, 1);

	
   
INSERT INTO track(id, track_name, duration, album_id)
VALUES
    (1, 'The Ringer', 337, 1),
    (2, 'Greatest', 226, 1),
    (3, 'Premonition', 174, 2),
    (4, 'Unaccommodating', 217, 2),
    (5, 'Gun my Go Off', 192, 3),
    (6, 'Man Down', 169, 3),
    (7, 'Hold On my', 226, 4),
    (8, 'Animal Ambition', 188, 4),
    (9, 'Ausländer', 231, 5),
    (10, 'Zeig Dich', 255, 5),
    (11, 'Reise, Reise', 251, 6),
    (12, 'Dalai Lama', 338, 6),
    (13, 'Мой Театральный демон', 213, 7),
    (14, 'Танец злобного гения', 235, NULL),
    (15, 'Мой флот', 131, 8),
    (16, 'Раненый воин', 102, 8),
    (17, 'James Joint', 72, 9),
    (18, 'Yeah, I Said It', 132, 9),
    (19, 'Diamonds', 226, 10),
    (20, 'Pour It Up', 161, 10),
    (21, 'Genesis', 205, 11),
    (22, 'Begging', 194, 11),
    (23, 'Levitating', 203, 12),
    (24, 'Love Again', 258, 12),
    (25, 'A Man Alone', 312, NULL),
    (26, 'The Main Event Live', 248, 13),
    (27, 'Ring-A-Ding-Ding', 290, 14),
    (28, 'Sinatra And Strings', 241, 14),
    (29, 'The Young Louis Armstrong', 248, 15),
    (30, 'Stardust', 212, 15),
    (31, 'Paris Session', 240, 16),
    (32, 'Latter Day Louis', 186, 16),
    (33, 'Dangerous', 203, 17),
    (34, 'No Money No Love', 237, 17),
    (35, 'Say my Name', 199, 18),
    (36, '2U', 195, 18),
    (37, 'Another You', 190, 19),
    (38, 'Strong Ones', 188, 19),
    (39, 'Something Real', 179, 20),
    (40, 'Sunny Days', 210, 20);

INSERT INTO collection(id, title_collection, year_collection)
VALUES
    (1, 'Make you money', 2012),
    (2, 'Some body', 2020),
    (3, 'Rise up', 2021),
    (4, 'All day, all night', 2022),
    (5, 'Danger', 2015),
    (6, 'Single song', 1990),
    (7, 'Paris', 2017),
    (8, 'String', 2019),
    (9, 'Santara', 2016),
    (10, 'Dance with me', 2018);

INSERT INTO track_collection(track_id, collection_id)
VALUES  
    (1, 1),
    (2, 1), 
    (3, 1),
    (4, 2),
    (5, 2),
    (6, 2),
    (7, 3),
    (8, 3),
    (9, 3),
    (10, 4),
    (11, 4),
    (12, 4),
    (13, 4),
    (14, 5),
    (15, 5),
    (16, 5),
    (17, 6),
    (18, 6),
    (19, 6),
    (20, 7),
    (21, 7),
    (22, 7),
    (23, 8),
    (24, 9),
    (25, 10),
    (26, 10),
    (27, 10),
    (28, 10),
    (29, NULL),
    (30, NULL),
    (31, NULL),
    (32, NULL),
    (33, NULL),
    (34, NULL),
    (35, NULL),
    (36, NULL),
    (37, NULL),
    (38, NULL),
    (39, NULL),
    (40, NULL);