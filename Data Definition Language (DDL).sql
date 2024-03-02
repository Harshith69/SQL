-- Data Definition Language (DDL) commands in SQL

-- CREATE TABLE: Creating a table in the database
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    HireDate DATE);
	
-- ALTER TABLE: Used to modify an existing table structure
ALTER TABLE Employees
ADD Email VARCHAR(100);

-- RENAME TABLE: Used to change the name of an existing table in the database
ALTER TABLE employees RENAME TO staff;

-- TRUNCATE TABLE: Used to remove all rows from a table, effectively resetting the table's data while retaining its structure
TRUNCATE TABLE staff;

-- DROP TABLE: Used to delete an existing table from the database
DROP TABLE staff;

-- CREATE INDEX: Used to create an index on one or more columns of a table, which can improve the performance of data retrieval operations
create index idx on staff(firstname);

-- DROP INDEX: Used to remove an existing index from a table
DROP index idx 

-- CREATE CONSTRAINT: Used to define constraints that ensure data integrity. Constraints include PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL and CHECK
ALTER TABLE staff
ADD CONSTRAINT not_null_email CHECK (email IS NOT NULL);

-- Removing Constraints: Used to remove a constraint from an existing table
ALTER TABLE staff
DROP CONSTRAINT not_null_email;


