select id, name, cohort_id
from students
where email IS null or phone IS NULL; 