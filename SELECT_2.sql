#1.���������� ������������ � ������ �����
SELECT name_genre,COUNT(name_author) FROM Authors
JOIN AuthorsGenre ON Authors.id = AuthorsGenre.author_id
JOIN Music_Genre ON AuthorsGenre.genre_id = Music_Genre.id
GROUP BY name_genre;
   
#2.���������� ������, �������� � ������� 2019-2020 �����
SELECT date_album,COUNT(name_track) FROM Albums a
JOIN Music_Track m  ON a.id = m.album_id
WHERE a.date_album  >= 2019 AND a.date_album <= 2020
GROUP BY date_album;
   
#3.������� ����������������� ������ �� ������� �������
SELECT name_album,AVG(duration_track) FROM Albums a
JOIN Music_Track m  ON a.id = m.album_id
GROUP BY name_album;
    
#4.��� �����������, ������� �� ��������� ������� � 2020 ����
SELECT name_author,date_album FROM Albums al
JOIN AuthorsAlbums aa  ON al.id = aa.album_id
JOIN Authors au  ON aa.author_id = au.id
WHERE al.date_album != 2020;
   
#5.�������� ���������, � ������� ������������ ���������� ����������� (�������� ����)
SELECT name_collection FROM Collection_Music c
JOIN TrackCollection tc  ON c.id = tc.collection_id
JOIN Music_Track m  ON tc.track_id = m.id
JOIN Albums a  ON m.album_id = a.id
JOIN AuthorsAlbums aa  ON a.id = aa.album_id
JOIN Authors au  ON aa.author_id = au.id
WHERE au.name_author iLIKE 'author_6';
        
#6.�������� ��������, � ������� ������������ ����������� ����� 1 �����
SELECT name_album FROM Albums a
JOIN AuthorsAlbums aa  ON a.id = aa.album_id
JOIN Authors au  ON aa.author_id = au.id
JOIN AuthorsGenre ag  ON au.id = ag.author_id
GROUP BY au.name_author, a.name_album
HAVING count(ag.genre_id) > 1;      

#7.������������ ������, ������� �� ������ � ��������
SELECT name_track FROM Music_Track m
LEFT JOIN TrackCollection tc ON m.id = tc.track_id
WHERE tc.track_id IS NULL;

#8.�����������(-��), ����������� ����� �������� �� ����������������� ���� (������������ ����� ������ ����� ���� ���������)
SELECT au.name_author, m.duration_track FROM Authors au
JOIN AuthorsAlbums aa ON au.id = aa.author_id
JOIN Albums a ON aa.album_id = a.id
JOIN Music_Track m ON a.id = m.album_id
WHERE m.duration_track IN (SELECT MIN(duration_track) FROM Music_Track);

#9.�������� ��������, ���������� ���������� ���������� ������
SELECT a.name_album, COUNT(m.id) FROM Albums a
JOIN Music_Track m  ON a.id = m.album_id
GROUP BY a.name_album 
HAVING count(m.id) in (
	SELECT COUNT (m.id)
	FROM Albums a
	JOIN Music_Track m  ON a.id = m.album_id
	GROUP BY a.name_album
	ORDER BY count(m.id)
	LIMIT 1);