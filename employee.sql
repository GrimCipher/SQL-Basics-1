-- List first and last names of employees living in Calgary
SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

-- Find birthdate for the youngest employee
SELECT birthdate FROM employee ORDER BY birthdate DESC LIMIT 1;

-- Find birthdate for the oldest employee
SELECT birthdate FROM employee ORDER BY birthdate LIMIT 1;

-- Find employees who report to Nancy Edwards
SELECT * FROM employee WHERE reports_to = (SELECT employee_id FROM employee WHERE first_name = 'Nancy' AND last_name = 'Edwards');

-- Count people living in Lethbridge
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';
