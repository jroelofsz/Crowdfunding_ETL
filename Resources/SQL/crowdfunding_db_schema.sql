--created crowdfunding db
CREATE DATABASE crowdfunding_db;

--create contacts table
CREATE TABLE contacts (
	contact_id int PRIMARY KEY,
	first_name varchar(40),
	last_name varchar(40),
	email varchar(150)
);

CREATE TABLE category (
	category_id varchar(4) PRIMARY KEY,
	category char(25)
);

CREATE TABLE subcategory (
	subcategory_id varchar(8) PRIMARY KEY,
	subcategory char(25)
);

CREATE TABLE campaign (
	cf_id int PRIMARY KEY,
	contact_id int,
	company_name varchar(255),
	description varchar(255),
	goal real,
	pledged real,
	outcome char(10),
	backers_count int,
	country char(2),
	currency char(3),
	launch_date timestamp,
	end_date timestamp,
	category_id varchar(4),
	subcategory_id varchar(8),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);

--please import the data into the tables before running the SQL below
SELECT *
FROM contacts

SELECT * 
FROM category

SELECT * 
FROM subcategory

SELECT *
FROM campaign
