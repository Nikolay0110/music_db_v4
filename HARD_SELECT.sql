-- 1. Количество исполнителей в каждом жанре.
SELECT genre_name AS "Название жанра", COUNT(genre_id) AS "Количество исполнителей" 
FROM genre  LEFT JOIN genre_executor 
ON genre.id = genre_executor.genre_id
GROUP BY genre_name;



-- 2. Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT title_album AS "Название альбома", year_album AS "Год выпуска",  COUNT(album_id) AS "Количество треков"
FROM album LEFT JOIN track 
ON album.id = track.album_id
WHERE year_album BETWEEN 2019 AND 2020
GROUP BY title_album, year_album;



-- 3. Средняя продолжительность треков по каждому альбому.
SELECT title_album AS "Название альбома", ROUND(AVG(duration)) AS "Средняя продолжительность треков"
FROM album LEFT JOIN track
ON album.id = track.album_id
GROUP BY title_album;



-- 4. Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT nick_name AS "Исполнитель"
FROM executor 
LEFT JOIN executor_album ON executor.id = executor_album.executor_id
LEFT JOIN album ON executor_album.id = album.id
WHERE year_album != 2020
GROUP BY nick_name
HAVING COUNT(*) != 1;



-- 5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами). 
SELECT title_collection AS "Название сборника"
FROM collection
JOIN track_collection ON collection.id = track_collection.collection_id
JOIN track ON track_collection.track_id = track.id
JOIN album ON track.album_id = album.id
JOIN executor_album ON album.id = executor_album.album_id
JOIN executor ON executor_album.executor_id = executor.id
WHERE nick_name iLIKE '%eminem%'
GROUP BY title_collection
HAVING count(*) >= 1;



-- 6. Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT title_album AS "Названия альбомов"
FROM album
LEFT JOIN executor_album ON album.id = executor_album.album_id
LEFT JOIN executor ON executor_album.executor_id = executor.id
LEFT JOIN genre_executor ON executor.id = genre_executor.executor_id
GROUP BY title_album 
HAVING COUNT(*) != 1;



-- 7. Наименования треков, которые не входят в сборники.
SELECT track_name
FROM track
LEFT JOIN track_collection ON track.id = track_collection.track_id
LEFT JOIN collection ON track_collection.collection_id = collection.id
WHERE collection_id IS NULL;



-- 8. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
SELECT nick_name
FROM executor
LEFT JOIN executor_album ON executor.id = executor_album.executor_id
LEFT JOIN album ON executor_album.album_id = album.id
LEFT JOIN track ON album.id = track.album_id
GROUP BY nick_name
HAVING count(*) != MIN(duration)
LIMIT 1;



-- 9. Названия альбомов, содержащих наименьшее количество треков.
SELECT title_album, count(track.album_id) AS m
FROM album 
JOIN track ON album.id = track.album_id
GROUP BY title_album
ORDER BY m
LIMIT 3;


