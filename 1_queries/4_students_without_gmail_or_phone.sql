select id, name, email, cohort_id
from students
where email not like '%gmail.com'
  AND phone is NULL
  