-- Data Base And Table Creation

DROP DATABASE IF EXISTS facebook_db;
CREATE DATABASE facebook_db;

\c facebook_db;

DROP TABLE if EXISTS users;
DROP TABLE if EXISTS posts;
DROP TABLE if EXISTS likes;


CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name STRING,
    age INTEGER
);

CREATE TABLE posts(
    id SERIAL PRIMARY KEY,
    poster_id INT REFERENCES users(id),
    body STRING
);

CREATE TABLE likes(
    id SERIAL PRIMARY KEY,
    liker_id INT REFERENCES users(id),
    post_id INT REFERENCES posts(id)
);




