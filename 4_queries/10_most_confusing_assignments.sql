select assignments.id, assignments.name, assignments.day, assignments.chapter, count(assistance_requests.*) as total_requests
from assistance_requests
  JOIN assignments on assignments.id = assignment_id
group BY assignments.id, assignments
.name, assignments.day, assignments.chapter
ORDER by  total_requests DESC;
