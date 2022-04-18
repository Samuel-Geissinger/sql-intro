-- Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)
CREATE TABLE person(
    person_id SERIAL PRIMARY KEY,
    person_name VARCHAR(80) NOT NULL,
    person_age INTEGER,
    person_height INTEGER,
    person_city VARCHAR(40),
    person_favorite_color VARCHAR(40)
);


-- Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.
INSERT INTO person (person_name, person_age, person_height, person_city, person_favorite_color)
VALUES 
	('Sam', 23, 190, 'Harrisburg', 'Yellow'),
	('Trent', 29, 190, 'Provo', 'Blue'),
	('Jhon', 18, 150, 'Berlin', 'White'),
	('Todd', 57, 185, 'Boston', 'Red'),
	('Bethany', 20, 168, 'Mystic', 'Green');



-- Select all the people in the person table by height from tallest to shortest.
SELECT * FROM person
ORDER BY person_height DESC;

-- Select all the people in the person table by height from shortest to tallest.
SELECT * FROM person
ORDER BY person_height ASC;

-- Select all the people in the person table by age from oldest to youngest.
SELECT * FROM person
ORDER BY person_age DESC;

-- Select all the people in the person table older than age 20.
SELECT * FROM person
WHERE person_age > 20;

-- Select all the people in the person table that are exactly 18.
SELECT * FROM person
WHERE person_age = 18;

-- Select all the people in the person table that are less than 20 and older than 30.
SELECT * FROM person
WHERE person_age < 20 OR person_age > 30;

-- Select all the people in the person table that are not 27 (use not equals).
SELECT * FROM person
WHERE person_age != 27;

-- Select all the people in the person table where their favorite color is not red.
SELECT * FROM person
WHERE person_favorite_color != 'Red';

-- Select all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM person
WHERE person_favorite_color NOT IN('Red', 'Blue')

-- Select all the people in the person table where their favorite color is orange or green.
SELECT * FROM person
WHERE person_favorite_color IN('Orange', 'Green')

-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM person
WHERE person_favorite_color IN('Orange', 'Green', 'Blue')

-- Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT * FROM person
WHERE person_favorite_color IN('Yellow', 'Purple')


