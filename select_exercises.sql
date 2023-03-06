USE codeup_test_db;

SELECT name
FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date
FROM albums
WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

# SELECT  'The genre for nevermind' AS '====EXERCISE 3';

SELECT genre
FROM albums
WHERE name = 'Nevermind';

SELECT name
FROM albums
WHERE release_date between 1990 AND 1999;

SELECT name
FROM albums
WHERE sales < 20;

SELECT name FROM albums
WHERE genre LIKE '%rock%';


