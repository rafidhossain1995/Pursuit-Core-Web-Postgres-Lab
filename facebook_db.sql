-- Data Base And Table Creation

DROP DATABASE IF EXISTS facebook_db;
CREATE DATABASE facebook_db;

\c facebook_db;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS likes;


CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INTEGER
);

CREATE TABLE posts(
    id SERIAL PRIMARY KEY,
    poster_id INT REFERENCES users(id),
    body TEXT
);

CREATE TABLE likes(
    id SERIAL PRIMARY KEY,
    liker_id INT REFERENCES users(id),
    post_id INT REFERENCES posts(id)
);

INSERT INTO users(name, age)
    VALUES('Rafid', 24),
        ('Brandon', 23),
        ('Corey', 29),
        ('Dani', 28),
        ('Maria', 35);

INSERT INTO posts(body, poster_id)
    VALUES('Good Morning Everyone', 1),
        ('Getting Ready To Code Today', 2),
        ('Hello World', 2),
        ('Have A Blessed Morning', 2),
        ('What is Everyone doing for lunch?', 3),
        ('Getting Ready to code soon!', 4),
        ('Pursuit is great', 5);

INSERT INTO likes(liker_id, post_id)
    VALUES (1,1),
           (1,2),
           (1,3),
           (1,4),
           (1,5),
           (2,2),
           (2,3),
           (2,4),
           (2,9),
           (2,10),
           (2,11),
           (3,2),
           (3,3),
           (3,4),
           (3,9),
           (3,10),
           (3,11),
           (3,1),
           (3,8)


            




