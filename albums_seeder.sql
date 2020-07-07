USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES  ('Michael Jackson', 'Thriller', 1982, 'Pop/Rock/R&B', 47.3),
        ('AC/DC', 'Back in Black', 1980, 'Hard Rock',26.1);
--       ('Mark', 'Twain', 'Clothes make the man. Naked people have little or no influence on society.'),
--         ('Kurt', 'Vonnegut', 'The universe is a big place, perhaps the biggest.');

-- Pink Floyd,The Dark Side of the Moon,1973,Progressive rock,24.2
-- Meat Loaf,Bat Out of Hell,1977,Hard rock/Progressive rock,21.5
-- Whitney Houston / Various artists,The Bodyguard,1992,R&B/Soul/Pop/Soundtrack,28.4