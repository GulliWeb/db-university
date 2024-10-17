# 🎓 University Database Queries

This project demonstrates how to perform basic queries on a database named `university` using PHPMyAdmin. The operations include:

- 🔍 **SELECT**: to retrieve data
- ✏️ **INSERT**: to add new records
- 🛠️ **UPDATE**: to modify existing records
- ❌ **DELETE**: to remove records

## 📂 Database Overview

The `university` database contains tables related to students, courses, professors, and academic programs. The key tables are:

- **students**: Contains information about students enrolled in the university.
- **teachers**: Contains data about the professors teaching the courses.
- **courses**: Holds details about the courses offered by the university.
- **course_teacher**: Maps teachers to the courses they instruct.
- **degrees**: Lists different degree programs available at the university.
- **departments**: Provides information about various academic departments.
- **exams**: Contains data about the exams for each course.
- **exam_student**: Maps students to their respective exams.

## ⚙️ How to Use

1. Open PHPMyAdmin.
2. Select the `university` database.
3. Execute the desired SQL queries (SELECT, INSERT, UPDATE, DELETE) to interact with the data.

## 📊 Example Queries

### Basic Queries

- **Retrieve all students**:
  ```sql
  SELECT * FROM students;

- **Add a new course**:
  ```sql
  INSERT INTO courses (name, degree_id)
  VALUES ('Introduction to Programming', 1);

### Queries with INNER JOIN

- **Get all courses along with their teachers**:
  ```sql
  SELECT *
  FROM course_teacher
  INNER JOIN teachers ON course_teacher.teacher_id = teachers.id
  INNER JOIN courses ON courses.id = course_teacher.course_id;  

### Queries with GROUP BY

- **Count the number of students in each degree program**:
  ```sql
  SELECT degrees.degree_name, COUNT(students.id) AS student_count
  FROM students
  INNER JOIN degrees ON students.degree_id = degrees.id
  GROUP BY degrees.degree_name;  

## 📋 Conclusion

This README provides a comprehensive overview of the `university` database and showcases how to perform various SQL operations using PHPMyAdmin. The examples provided illustrate basic queries, the use of `JOIN` to combine data from multiple tables, and the application of `GROUP BY` for aggregation.
