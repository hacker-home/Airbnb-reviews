DROP DATABASE IF EXISTS airbnb;
CREATE DATABASE airbnb;
USE DATABASE airbnb;

DROP SCHEMA if exists airbnb
CASCADE;
CREATE SCHEMA airbnb;


DROP TABLE IF EXISTS bnb_locations
CASCADE;
DROP TABLE IF EXISTS bnb_reviews
CASCADE;

CREATE TABLE bnb_locations
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE bnb_reviews
(
  review_id SERIAL PRIMARY KEY,
  loc_id INTEGER NOT NULL,
  name VARCHAR(50) NOT NULL,
  gender boolean NOT NULL,
  profilePicNum integer NOT NULL,
  date VARCHAR(20) NOT NULL ,
  sentence text NOT NULL,
  accuracy_rating decimal NOT NULL,
  communication_rating decimal NOT NULL,
  cleanliness_rating decimal NOT NULL,
  location_rating decimal NOT NULL,
  check_in_rating decimal NOT NULL,

  value_rating decimal NOT NULL,
  overall_rating decimal NOT NULL,
  FOREIGN KEY (loc_id) REFERENCES bnb_locations (id)
);

\COPY bnb_locations FROM './locations.csv' DELIMITER ',' CSV HEADER;
\COPY bnb_reviews FROM './reviews.csv' DELIMITER ',' CSV HEADER;

-- insert into bnb_reviews (name, loc_id, gender, profilePicNum, date, sentence, accuracy_rating, communication_rating, cleanliness_rating, location_rating, check_in_rating, value_rating, overall_rating)VALUES ('test name', 4, 'true', 1, 'todays date', 'sentence test', 1.1,1.2,1.3,1.4,1.5,1.6,1.7);
-- insert into bnb_reviews (name, gender, profilePicNum, date, sentence, accuracy_rating, communication_rating, cleanliness_rating, location_rating, check_in_rating, value_rating, overall_rating)VALUES ('test name', 'true', 1, 'July 1988', 'sentence test', 1.1,1.2,1.3,1.4,1.5,1.6,1.7);
-- insert into bnb_reviews (name, gender, profilePicNum, date, sentence, accuracy_rating, communication_rating, cleanliness_rating, location_rating, check_in_rating, value_rating, overall_rating) VALUES (Minnie, 0, 31, October 2005, Eveniet iure et voluptas illo iste repellendus. Labore ut at perspiciatis voluptatum. Et voluptas a consequatur ut. Amet commodi nostrum voluptas in placeat enim. Excepturi recusandae modi maxime id velit. Eum ipsam porro doloribus qui maxime., 3, 3.4, 2, 2.7, 0, 3.6, 2.5)