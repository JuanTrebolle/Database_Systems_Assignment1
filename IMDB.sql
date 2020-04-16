--CREATE SCHEMA IMDB;
--SET SCHEMA 'IMDB';
--CREATE DOMAIN name AS VARCHAR(100);
--CREATE DOMAIN URL AS VARCHAR(1000);
--CREATE DOMAIN description AS VARCHAR(100);
--CREATE DOMAIN username AS VARCHAR(100);
--CREATE DOMAIN email AS VARCHAR(100);
--CREATE DOMAIN password AS VARCHAR(100);
--CREATE DOMAIN rating AS DECIMAL(1)CHECK(value>=0 AND value<=5);
--CREATE DOMAIN title AS VARCHAR(100);
--CREATE DOMAIN production_year AS DECIMAL(4);
--CREATE DOMAIN status AS VARCHAR(100)CHECK(value = 'released' OR value = 'completed' OR value = 'post-production' OR value = 'filming' OR value = 'announced');
--CREATE DOMAIN average_review AS DECIMAL(3,2);
--CREATE DOMAIN actor AS BOOLEAN;
--CREATE DOMAIN director AS BOOLEAN;
--CREATE DOMAIN producer AS BOOLEAN;
--CREATE DOMAIN writer AS BOOLEAN;
--CREATE DOMAIN birthday AS DATE;
--CREATE DOMAIN gender AS CHAR(1) CHECK(value = 'M' OR value='F');
--CREATE DOMAIN place_of_birth AS VARCHAR(100);
--CREATE DOMAIN biography AS VARCHAR(1000);
--CREATE DOMAIN n_movies AS DECIMAL(2)CHECK(value>=0);
--CREATE DOMAIN age AS DECIMAL(2)CHECK(value >=0);
--CREATE DOMAIN country AS VARCHAR(100);
/*
CREATE TABLE Production_companies(
	name Name,
	country "IMDB"."Country",
PRIMARY KEY(name));
CREATE TABLE Person(
	name Name,
	birthday "IMDB"."Birthday",
	gender "IMDB"."gender",
	place_of_birth "IMDB"."place_of_birth",
	biography "IMDB"."biography",
	number_of_movies "IMDB"."n_movies",
	age "IMDB"."age",
	PRIMARY KEY(name));
Create TABLE Users(
	name Name,
	username "IMDB"."username",
	email "IMDB"."email",
	password "IMDB"."password",
	PRIMARY KEY(username));
	
CREATE TABLE Post_a_review(
	rating "IMDB"."rating",
	description "IMDB"."description",
	username "IMDB"."username",
	title "IMDB"."title",
	PRIMARY KEY(rating, title, username)
)

CREATE TABLE Movie(
	title "IMDB"."title",
	production_year "IMDB"."production_year",
	status "IMDB"."status",
	average_review "IMDB"."average_review",
	post_a_review Post_a_review
	PRIMARY KEY(title));
ALTER TABLE Movie
ADD FOREIGN KEY(post_a_review) REFERENCES Users(username);
CREATE DOMAIN is_associated_with AS VARCHAR(100);
CREATE TABLE Image(
	URL "IMDB"."url" PRIMARY KEY,
	description "IMDB"."description",
	is_associated_with "IMDB"."is_associated_with"
);
ALTER TABLE Image 
ADD FOREIGN KEY(is_associated_with) REFERENCES Movie(title);
CREATE TABLE has_participated(
	actor "IMDB"."actor",
	director "IMDB"."director",
	producer "IMDB"."producer",
	writer "IMDB"."writer",
	title "IMDB"."title",
	name "IMDB"."Name",
	PRIMARY KEY(name, title));
ALTER TABLE has_participated
ADD FOREIGN KEY (name) REFERENCES Person(name);
ALTER TABLE has_participated
ADD FOREIGN KEY (title) REFERENCES Movie(title);

CREATE TABLE Person_image(
	URL "IMDB"."url",
	name "IMDB"."Name",
	PRIMARY KEY(URL, name));
	
ALTER TABLE Person_image
ADD FOREIGN KEY (URL) REFERENCES Image(URL);

ALTER TABLE Person_image
ADD FOREIGN KEY(name) REFERENCES Person(name);

CREATE TABLE Production_companies_movies(
	name "IMDB"."Name",
	title "IMDB"."title",
	PRIMARY KEY(name, title)
);

ALTER TABLE Production_companies_movies
ADD FOREIGN KEY(name)REFERENCES Production_companies(name);

ALTER TABLE Production_companies_movies
ADD FOREIGN KEY(title)REFERENCES Movie(title);


INSERT INTO Movie(title,production_year,status,average_review)
VALUES('Joker', '2019', 'released', '5');

INSERT INTO Post_a_review(rating, description, username, title)
VALUES('5', 'los angulos rectos de la iluminación me fascina, 15/26', 'el_fricking_Amo', 'Joker');*/



