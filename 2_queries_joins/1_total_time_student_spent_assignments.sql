select sum(assignment_submissions.duration) as total_duration
from assignment_submissions
  JOIN students ON students.id = student_id
where name = 'Ibrahim Schimmel';