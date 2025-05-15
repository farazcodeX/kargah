DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS projects;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    job_title VARCHAR(50),
    birth_year INT,
    email VARCHAR(100)
);
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget DECIMAL(12, 2)
);

INSERT INTO employees (employee_id, full_name, job_title, birth_year, email) VALUES
(1, 'Faraz', 'Game dev', 2005, 'farazn8564@gmail.com'),
(2, 'ilia', 'Front-end dev', 2005, 'hunterDoh069@gmail.com'),
(3, 'eliot', 'just a tech', 2004, 'mrRobot#01@gmail.com'),
(4, 'amir', 'Back-end phy + django', 2004, 'amirClear099@gmail.com'),
(5, 'new faraz', 'software dev', 2004, 'farazCodex0690@gmail.com');

INSERT INTO projects (project_id, project_name, start_date, end_date, budget) VALUES
(1, 'connecting my chess with chess engine ai', '2025-06-01', '2025-07-10', 0),
(2, 'building huge chat app with sp boot ', '2025-06-15', '2025-09-15', 75000.00),
(3, 'creating huge online game using unity + connect with created chat app', '2025-07-01', NULL, 40000.00),
(4, 'create rpg open wrold souls game with unity and publish', '2025-08-01', NULL, 30000.00),
(5, 'learn unreal engine + blender for making games in another level', '2026-01-10', null, 60000.00);

ALTER TABLE employees ADD bonus DECIMAL(10, 2);

ALTER TABLE employees DROP COLUMN birth_year;

SELECT * FROM employees;

SELECT * FROM projects
WHERE end_date IS NULL OR end_date > CURRENT_DATE;
