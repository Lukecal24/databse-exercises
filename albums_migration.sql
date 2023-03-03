USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
        artist VARCHAR(50) DEFAULT 'NONE',
        name VARCHAR(100) NOT NULL,
        release_date date,
        sales DECIMAL(4,2),
        genre VARCHAR(50),
    PRIMARY KEY (id)
)

INSERT INTO albums(artist, name, release_date, sales, genre) VALUES('Playboi Carti', 'Whole Lotta Red', '2020-12-25', 80.00, 'Rap');