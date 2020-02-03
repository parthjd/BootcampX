select students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration
FROM assignment_submissions
  JOIN students on students.id = student_id
group by students.name, students.end_date
HAVING students.end_date is NULL
ORDER by average_assignment_duration DESC;