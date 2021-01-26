CREATE TABLE Songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(70) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Albums(id)
);

CREATE TABLE Albums (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(70) NOT NULL,
    artist VARCHAR(70) NOT NULL,
    year_published INTEGER NOT NULL
);

INSERT INTO Songs
    (name, album_id)
VALUES
    ('Time', 1),
    ('Money', 1),
    ('Come Together', 2),
    ('Downbound Train', 4),
    ('Cynical', 5)
; 

INSERT INTO Albums
    (name, artist, year_published)
VALUES
    ('The Dark Side of the Moon', 'Pink Floyd', 1973),
    ('Abbey Road', 'The Beatles', 1969),
    ('Hotel California', 'Eagles', 1976),
    ('Born in the U.S.A.', 'Bruce Springsteen', 1984),
    ('California', 'Blink-182', 2016)
;


/* Queries */

-- SELECT * FROM Songs;

-- SELECT * FROM Albums;

SELECT Songs.name, Albums.name FROM Albums
JOIN Songs ON Albums.id = Songs.album_id

/*
 * TODO: Find all albums published between 1970 and 1980.
 */

/*
 * TODO: Find all songs on albums published between 1970 and 1980. 
 *(Hint: Use a table join.)
 */
 
/*
 * TODO: Find all songs on albums with names containing 'California'.
 */