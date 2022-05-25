INSERT INTO Authors(id, name_author)
VALUES	(1, 'author_1'),
	(2, 'author_2'),
	(3, 'author_3'),
    	(4, 'author 4'),
    	(5, 'author_5'),
    	(6, 'author_6'),
    	(7, 'author 7'),
    	(8, 'author_8'),
    	(9, 'author_9');

INSERT INTO Music_Genre(id, name_genre)
VALUES	(1, 'pop'),
    	(2, 'rock'),
    	(3, 'hip hop'),
    	(4, 'chanson'),
    	(5, 'electronic');

INSERT INTO AuthorsGenre(id, author_id, genre_id)
VALUES	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 3),
	(4, 4, 4),
	(5, 5, 5),
	(6, 6, 1),
	(7, 7, 2),
	(8, 8, 3),
    	(9, 9, 4);    

INSERT INTO Albums(id, name_album, date_album)
VALUES	(1, 'album_name_1', '1992'),
    	(2, 'album_name_2', '1986'),
    	(3, 'album_name_3', '2010'),
    	(4, 'album_name_4', '2015'),
    	(5, 'album_name_5', '2018'),
    	(6, 'album_name_6', '2019'),
    	(7, 'album_name_7', '2020'),
	(8, 'album_name_8', '2019'),
    	(9, 'album_name_9', '2009');

INSERT INTO AuthorsAlbums(id, author_id, album_id)
VALUES	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 3),
	(4, 4, 4),
	(5, 5, 5),
	(6, 6, 6),
	(7, 7, 7),
	(8, 8, 8),
    	(9, 9, 9);

INSERT INTO Music_Track(id, name_track, duration_track, album_id)
VALUES	(1, 'track_1', 180, 1),
    	(2, 'track_2', 223, 2),
    	(3, 'track_3', 200, 2),
    	(4, 'track_4', 170, 3),
    	(5, 'track_5', 182, 5),
    	(6, 'track_6', 215, 8),
    	(7, 'track_7', 300, 7),
    	(8, 'track_8', 302, 6),
    	(9, 'track_9', 189, 4),
    	(10, 'my_10', 190, 4),
    	(11, 'track_11', 167, 7),
    	(12, 'track_12', 199, 3),
    	(13, 'track_13', 205, 1),
    	(14, 'track_14', 400, 5),
    	(15, 'мой_15', 123, 9);
    	
INSERT INTO Collection_Music(id, name_collection, date_collection)
VALUES	(1, 'collection_1', '1999'),
    	(2, 'collection_2', '2014'),
    	(3, 'collection_3', '2016'),
    	(4, 'collection_4', '2020'),
    	(5, 'collection_5', '2021'),
    	(6, 'collection_6', '2022'),
    	(7, 'collection_7', '2019'),
    	(8, 'collection_8', '2001');

INSERT INTO TrackCollection(id, track_id, collection_id)
VALUES	(1, 1, 8),
	(2, 2, 1),
	(3, 3, 1),
	(4, 4, 2),
	(5, 5, 7),
	(6, 6, 5),
	(7, 7, 6),
	(8, 8, 4),
	(9, 9, 3),
	(10, 10, 3),
	(11, 11, 6),
	(12, 12, 2),
	(13, 13, 8),
	(14, 14, 7),
    	(15, 15, 2);