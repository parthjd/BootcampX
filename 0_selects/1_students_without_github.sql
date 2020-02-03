SELECT id, name, email, cohort_id
from students
where github is NULL
ORDER BY cohort_id;