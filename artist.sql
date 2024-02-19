
INSERT INTO artist (name, country) VALUES
    ('Zed', 'Canada'),
    ('Yasmine', 'France'),
    ('Xavier', 'Spain');

-- Select 10 artists in reverse alphabetical order
SELECT * FROM artist ORDER BY name DESC LIMIT 10;

-- Select 5 artists in alphabetical order
SELECT * FROM artist ORDER BY name LIMIT 5;

-- Select artists starting with 'Black'
SELECT * FROM artist WHERE name LIKE 'Black%';

-- Select artists containing 'Black'
SELECT * FROM artist WHERE name LIKE '%Black%';
