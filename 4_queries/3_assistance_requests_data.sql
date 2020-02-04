select teachers.name as teacher, students.name as student, assignments.name as assignment,
  completed_at - started_at as duration
from assistance_requests
  JOIN teachers on teachers.id = teacher_id
  join students on students.id = student_id
  JOIN assignments on assignments.id = assignment_id
ORDER BY duration;