#1.�������� � ��� ������ ��������, �������� � 2018 ����
SELECT name_album, date_album FROM Albums
WHERE date_album = 2018;


#2.�������� � ����������������� ������ ����������� �����
SELECT  name_track, duration_track FROM Music_Track
ORDER BY duration_track DESC
LIMIT 1;

#3.�������� ������, ����������������� ������� �� ����� 3,5 ������ (210 ������)
SELECT name_track FROM Music_Track
WHERE duration_track >= 210;


#4.�������� ���������, �������� � ������ � 2018 �� 2020 ��� ������������
SELECT name_collection FROM Collection_Music
WHERE date_collection BETWEEN '2018' AND '2020';


#5.�����������, ��� ��� ������� �� 1 �����
SELECT name_author FROM Authors
WHERE name_author NOT LIKE '% %';


#6.�������� ������, ������� �������� ����� "���"/"my"
SELECT name_track FROM Music_Track
WHERE name_track iLIKE '%my%' OR name_track iLIKE '%���%';

