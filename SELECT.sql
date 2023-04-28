--Название и год выхода альбомов, вышедших в 2018 году
SELECT title_album, year_album
FROM album
WHERE year_album = 2018
;

--Название и продолжительность самого длительного трека
SELECT track_name, duration
FROM track
WHERE duration = (
    SELECT MAX(duration)
    FROM track
);

--Название треков, продолжительность которых не менее 3,5 минут
SELECT track_name
FROM track
WHERE duration >= 210
;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT title_collection
FROM collection
WHERE year_collection BETWEEN 2018 AND 2020
;

--Исполнители, чьё имя состоит из одного слова
SELECT nick_name FROM executor WHERE nick_name NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my»

SELECT track_name FROM track 
WHERE track_name ILIKE ANY (ARRAY['%my%', '%мой%']);