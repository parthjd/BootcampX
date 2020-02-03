select students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration, AVG(assignments.duration) as average_estimated_duration
FROM assignment_submissions
  JOIN students on students.id = student_id
  JOIN assignments ON assignments.id = assignment_id
WHERE students.end_date is NULL
group by students.name, students.end_date
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER by average_assignment_duration ASC;