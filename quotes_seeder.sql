USE quotes_db;

TRUNCATE quotes;


# This is an example of a single record being added to db
INSERT INTO quotes (author_first_name, author_last_name, quote)
VALUES ('Douglas', 'Adams', 'I love deadlines. I love the whooshing noise they make as they go by.');


# This is an example of multiple records being added to db
INSERT INTO quotes (author_first_name, author_last_name, quote)
VALUES  ('Douglas', 'Adams', 'Don''t panic'),
        ('Douglas', 'Adams', 'Time is an illusion. Lunchtime doubly so.'),
        ('Mark', 'Twain', 'Clothes make the man. Naked people have little or no influence on society.'),
        ('Kurt', 'Vonnegut', 'The universe is a big place, perhaps the biggest.');

# This is an example of a default value being added
INSERT INTO quotes (author_first_name, author_last_name, quote)
VALUES (DEFAULT, 'Orsinger', 'TAKE THE LOOP OUT!'),
        (DEFAULT, 'Cotto', 'Reroute yourself');
