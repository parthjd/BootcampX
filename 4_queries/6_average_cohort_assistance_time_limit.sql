select cohorts.name, AVG(completed_at - started_at) as average_assistance_time
from assistance_requests
  JOIN students on students.id = student_id
  join cohorts on  cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER by average_assistance_time DESC
limit 1;