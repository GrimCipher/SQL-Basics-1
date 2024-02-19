
CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INTEGER,
    height INTEGER,
    city VARCHAR(50),
    favorite_color VARCHAR(20)
);

-- Insert data
INSERT INTO person (name, age, height, city, favorite_color) VALUES
    ('Alice', 25, 165, 'New York', 'Blue'),
    ('Bob', 30, 180, 'Los Angeles', 'Red'),
    ('Charlie', 20, 170, 'Chicago', 'Green'),
    ('David', 35, 175, 'Houston', 'Yellow'),
    ('Eve', 18, 160, 'Miami', 'Purple');

-- Select by height tallest to shortest
SELECT * FROM person ORDER BY height DESC;

-- Select by height shortest to tallest
SELECT * FROM person ORDER BY height;

-- Select by age oldest to youngest
SELECT * FROM person ORDER BY age DESC;

-- Select people older than 20
SELECT * FROM person WHERE age > 20;

-- Select people exactly 18
SELECT * FROM person WHERE age = 18;

-- Select people younger than 20 and older than 30
SELECT * FROM person WHERE age < 20 OR age > 30;

-- Select people not 27
SELECT * FROM person WHERE age <> 27;

-- Select people whose favorite color is not red
SELECT * FROM person WHERE favorite_color <> 'Red';

-- Select people whose favorite color is not red and not blue
SELECT * FROM person WHERE favorite_color NOT IN ('Red', 'Blue');

-- Select people whose favorite color is orange or green
SELECT * FROM person WHERE favorite_color IN ('Orange', 'Green');

-- Select people whose favorite color is orange, green, or blue
SELECT * FROM person WHERE favorite_color IN ('Orange', 'Green', 'Blue');

-- Select people whose favorite color is yellow or purple
SELECT * FROM person WHERE favorite_color IN ('Yellow', 'Purple');
