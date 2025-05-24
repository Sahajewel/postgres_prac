create table students_profile(
    id SERIAL PRIMARY KEY,
    roll int,
    name VARCHAR(25),
    age int,
    department text,
    score NUMERIC(5,2),
    status text,
    last_login DATE);

    INSERT INTO students_profile(roll,name,age,department,score,status,last_login) VALUES 
    (101,'Tanu',23,'Math',88,'Passed', current_date),
    (102,'Manu',25,'Phusics',78,'Passed', current_date),
    (103,'Sanu',22,'Chemistry',38,'Failed', current_date),
    (104,'Ganu',24,'Biology',28,'Failed', current_date),
    (105,'Anu',21,'Higher Math',95,'Passed', current_date);
    SELECT * FROM students_profile;
    DROP Table students_profile;
    ALTER Table students_profile
    add COLUMN email VARCHAR(25) UNIQUE;
ALTER Table students_profile
RENAME COLUMN email to student_eemail;
UPDATE students_profile set student_eemail='tanu@gmail.com' WHERE id = 1;
UPDATE students_profile set student_eemail='tanu@gmail.com' WHERE id = 2;
UPDATE students_profile set student_eemail='sanu@gmail.com' WHERE id = 3;
UPDATE students_profile set student_eemail='ganu@gmail.com' WHERE id = 4;
UPDATE students_profile set student_eemail='anu@gmail.com' WHERE id = 5;
ALTER Table students_profile
DROP COLUMN status;
SELECT * from students_profile
WHERE score > 70 and score is NOT NULL;
SELECT * from students_profile
WHERE not department  = 'Chemistry';
SELECT * FROM students_profile
WHERE age BETWEEN 18 AND 25;
SELECT * FROM students_profile;
SELECT  count(*) as student_name FROM students_profile;
SELECT department, avg(score) from students_profile
GROUP BY department;
SELECT min(age) FROM students_profile;
SELECT * FROM students_profile
WHERE score < 50;
UPDATE students_profile
 SET status = 'Failed'
 WHERE score < 50;




