SELECT id, name, cohort_id
from students
where end_date is NULL
ORDER BY cohort_id;