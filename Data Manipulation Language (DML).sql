-- Data Manipulation Language (DML) commands in SQL

-- INSERT: Used to insert new rows into a table
INSERT INTO staff (employeeid, firstName, lastName, departmentid, hiredate, email) VALUES (1, 'Harshith', 'N', 45, '2021-04-20','harshith@gmail.com');

-- UPDATE: Used to modify existing rows in a table
UPDATE staff SET DepartmentID = 2 WHERE employeeid = 1;

-- DELETE: Used to remove rows from a table
DELETE FROM staff WHERE employeeid = 1;
