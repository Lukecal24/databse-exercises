USE codeup_test_db;


TRUNCATE albums;

-- Insert records for albums with over 30 million sales
INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES
    ('Playboi Carti', 'Whole Lotta Red', 2020, 'Rap', 81.2),
    ('Michael Jackson', 'Thriller', 1982,'Pop', 66.0),
    ('AC/DC', 'Back in Black', 1980, 'Hard rock', 50.0),
    ('Whitney Houston', 'The Bodyguard', 1992, 'Soundtrack', 45.7),
    ('Meat Loaf', 'Bat Out of Hell', 1977, 'Rock', 43.0),
    ('Eagles', 'Their Greatest Hits (1971–1975)', 1976, 'Rock', 42.0),
    ('Bee Gees / Various artists', 'Saturday Night Fever', 1977, 'Disco', 40.0),
    ('Fleetwood Mac', 'Rumours', 1977, 'Rock', 40.0),
    ('The Beatles', 'Sgt. Peppers Lonely Hearts Club Band', 1967, 'Rock', 13.1),
    ('Pink Floyd', 'The Dark Side of the Moon', 1973, 'Progressive rock', 24.2),
    ('Shania Twain', 'Come On Over', 1997, 'Country', 39.0 ),
    ('Led Zeppelin', 'Led Zeppelin IV', 1971, 'Rock', 37.0),
    ('Nirvana', 'Nevermind', 1991, 'Grunge, Alternative rock', 16.7),
    ('Celine Dion', 'Falling into You', 1996, 'Pop', 32.0 );
