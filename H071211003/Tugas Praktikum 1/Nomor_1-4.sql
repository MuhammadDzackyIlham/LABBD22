-- USE offices;
-- Nomor 1
CREATE TABLE offices (
officeCode VARCHAR (10) NOT NULL,
city VARCHAR (50) NOT NULL,
phone VARCHAR (50) NOT NULL,
addressline1 VARCHAR (50) NOT NULL,
addressline2 VARCHAR (50),
state VARCHAR (50),
country VARCHAR (50) NOT NULL,
PRIMARY KEY (officeCode)
);

-- Nomor 2
DESC offices;

-- Nomor 3
ALTER TABLE offices MODIFY COLUMN phone INT (20) NOT NULL;

-- Nomor 4
ALTER TABLE offices DROP COLUMN addressline2;
DESC offices;
