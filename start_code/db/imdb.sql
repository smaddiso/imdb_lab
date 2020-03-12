DROP TABLE IF EXISTS castings; -- FK drops first
DROP TABLE IF EXISTS stars;
DROP TABLE IF EXISTS movies;


CREATE TABLE stars (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);

CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  genre VARCHAR(255)
);

CREATE TABLE castings (
  id SERIAL PRIMARY KEY,
  fee INT,
  movie_id INT REFERENCES movies(id),
  star_id INT REFERENCES stars(id)
);
