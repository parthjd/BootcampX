select count(assistance_requests.*) as total_assistances, name
from students
  JOIN assistance_requests on students.id = student_id
GROUP BY students.name
HAVING students.name = 'Elliot Dickinson';