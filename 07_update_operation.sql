-- update
SELECT
  *
FROM
  students;


UPDATE students
SET
  email = 'default@gmail.com'
WHERE
  email IS NULL;


UPDATE students
SET
  first_name = 'Maruf', age = 24
WHERE
  student_id = '5002';

