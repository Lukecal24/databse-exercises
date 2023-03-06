USE codeup_test_db;


TRUNCATE albums;

-- Insert records for albums with over 30 million sales
INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES
    ('Playboi Carti', 'Whole Lotta Red', '2020-12-25', 'Rap', 81.2),
    ('Michael Jackson', 'Thriller', '1982-11-30','Pop', 66.0),
    ('AC/DC', 'Back in Black', '1980-07-25', 'Hard rock', 50.0),
    ('Whitney Houston', 'The Bodyguard', '1992-11-17', 'Soundtrack', 45.7),
    ('Meat Loaf', 'Bat Out of Hell', '1977-10-21', 'Rock', 43.0),
    ('Eagles', 'Their Greatest Hits (1971–1975)', '1976-02-17', 'Rock', 42.0),
    ('Bee Gees / Various artists', 'Saturday Night Fever', '1977-11-15', 'Disco', 40.0),
    ('Fleetwood Mac', 'Rumours', '1977-02-04', 'Rock', 40.0),
    ('Shania Twain', 'Come On Over', '1997-11-04', 'Country', 39.0 ),
    ('Led Zeppelin', 'Led Zeppelin IV', '1971-11-08', 'Rock', 37.0),
    ('Celine Dion', 'Falling into You', '1996-03-11', 'Pop', 32.0 );
