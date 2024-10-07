--created crowdfunding db
--CREATE DATABASE crowdfunding_db;

--create contacts table
CREATE TABLE contacts (
	contact_id int PRIMARY KEY,
	first_name varchar(40),
	last_name varchar(40),
	email varchar(150)
);

CREATE TABLE category (
	category_id varchar(4) PRIMARY KEY,
	category char(12)
);

CREATE TABLE subcategory (
	subcategory_id varchar(4) PRIMARY KEY,
	subcategory char(12)
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
	launch_date date,
	end_date date,
	category_id varchar(4),
	subcategory_id varchar(8),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);

--import data
COPY contacts(contact_id,first_name,last_name,email)
FROM 'C:\sampledb\persons.csv'
DELIMITER ','
CSV HEADER;