#1.название и год выхода альбомов, вышедших в 2018 году
SELECT name_album, date_album FROM Albums
WHERE date_album = 2018;


#2.название и продолжительность самого длительного трека
SELECT  name_track, duration_track FROM Music_Track
ORDER BY duration_track DESC
LIMIT 1;

#3.название треков, продолжительность которых не менее 3,5 минуты (210 секунд)
SELECT name_track FROM Music_Track
WHERE duration_track >= 210;


#4.названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT name_collection FROM Collection_Music
WHERE date_collection BETWEEN '2018' AND '2020';


#5.исполнители, чье имя состоит из 1 слова
SELECT name_author FROM Authors
WHERE name_author NOT LIKE '% %';


#6.название треков, которые содержат слово "мой"/"my"
SELECT name_track FROM Music_Track
WHERE name_track iLIKE '%my%' OR name_track iLIKE '%мой%';

