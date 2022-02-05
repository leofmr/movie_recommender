CREATE DATABASE IF NOT EXISTS movielensDB;

USE movielensDB;

CREATE TABLE movies (
    movieId int NOT NULL,
    title text,
    genres text
);

SET GLOBAL local_infile=true;

LOAD DATA INFILE '/docker-entrypoint-initdb.d/movies.csv'
INTO TABLE movies
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(movieId,title,genres);