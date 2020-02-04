select teachers.name as teacher, cohorts.name as cohort
from assistance_requests
  JOIN teachers on teachers.id = teacher_id
  JOIN students on students.id = student_id
  JOIN cohorts on cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY cohorts.name, teachers.name
ORDER BY teacher;