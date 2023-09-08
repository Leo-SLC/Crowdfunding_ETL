--Create a table for Contacts

CREATE TABLE contacts (
    contact_id int PRIMARY KEY NOT NULL,
    first_name VARCHAR (50)  NOT NULL,
    last_name VARCHAR (50)  NOT NULL,
    email VARCHAR (100)  NOT NULL,
	primary key (contact_id)
);

--Create a table for Categories

CREATE TABLE category (
    category_id VARCHAR(20) PRIMARY KEY NOT NULL,
    category VARCHAR(20) NOT NULL
    primary key (category_id)
);

--Create a table for Subcategories

CREATE TABLE subcategory (
    subcategory_id VARCHAR(20) PRIMARY KEY NOT NULL,
    subcategory VARCHAR (50) NOT NULL,
    primary key (subcategory_id)
);

--Create a table for Campaigns

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR(200) NOT NULL,
    description VARCHAR(250) NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(50) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(50) NOT NULL,
    currency VARCHAR (100) NOT NULL,
    launched_date DATE NOT NULL, 
    end_date DATE NOT NULL,
    category_id VARCHAR(20) NOT NULL,
    subcategory_id VARCHAR(20) NOT NULL
    
    FOREIGN KEY(contact_id) REFERENCES contacts(contact_id)
    FOREIGN KEY(category_id) REFERENCES category (category_id)
    FOREIGN KEY(subcategory_id) REFERENCES subcategory(subcategory_id)
);


--cf_id,contact_id,company_name,description,goal,pledged,outcome,backers_count,country,currency,launched_date,end_date,category_id,subcategory_id