/* QUERY 1 */
SELECT *
FROM students
WHERE date_of_birth >= '1990-01-01' AND date_of_birth < '1991-01-01'

/* QUERY 2 */
SELECT * 
FROM courses
WHERE cfu > 10

/* QUERY 3 */
SELECT *
FROM students
WHERE date_of_birth <= '1993-01-01'

/* QUERY 4 */
SELECT *
FROM courses
WHERE period = 'I semestre'
AND year = 1

/* QUERY 5 */
SELECT *
FROM degrees
WHERE level ='magistrale'

/* QUERY 6 */
SELECT COUNT(*)
FROM departments

/* QUERY 7 */
SELECT COUNT(teacher_id)
FROM teachers
WHERE office_number IS NOT NULL

/* QUERY 8 */
INSERT INTO students
(52, 244, 'Andrea', 'Gulli', '2004-09-23', 'GLLNDR04P23B111I', '2022-11-15', '69220034', 'andreagulli11@gmail.com'),

/* QUERY 9 */
UPDATE teachers
SET office_number = 126
WHERE id = 58;

/* QUERY 10 */
DELETE FROM students
WHERE id = 52

/* QUERY INNER JOIN 
1 */
SELECT * 
FROM `students`
INNER JOIN degrees ON degree_id = students.degree_id 
WHERE degree_id = 4; 

/* 2 */
SELECT * 
FROM departments
INNER JOIN degrees ON departments.id = departments.id
WHERE departments.id = 7
AND LEVEL = 'magistrale'

/* 3 */
SELECT * 
FROM teachers
INNER JOIN course_teacher ON teachers.id
INNER JOIN courses ON course_teacher.course_id = courses.id
WHERE course_teacher.teacher_id = 44

/* 4 */
SELECT * 
FROM students
INNER JOIN degrees ON students.degree_id = degrees.id
INNER JOIN departments ON departments.id = degrees.department_id
ORDER BY students.name ASC

/* 5 */
SELECT *
FROM course_teacher
INNER JOIN teachers ON course_teacher.teacher_id = teachers.id
INNER JOIN courses ON courses.id = course_teacher.course_id

/* 6 */
SELECT *
FROM teachers
INNER JOIN course_teacher ON course_teacher.teacher_id = teachers.id
INNER JOIN courses ON course_teacher.course_id = courses.id
INNER JOIN degrees ON courses.degree_id = degrees.id
INNER JOIN departments ON degrees.department_id = departments.id
AND departments.name = 'dipartimento di matematica'


