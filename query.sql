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


