select teachers.name, count(assistance_requests.*) as total_assistances
from teachers
  JOIN assistance_requests on teachers.id = teacher_id
GROUP BY teachers.name
HAVING teachers.name = 'Waylon Boehm';