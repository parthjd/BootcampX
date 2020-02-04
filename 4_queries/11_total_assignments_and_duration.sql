select day, count(assignments.*) as number_of_assignments, sum(duration) as total_duration
from assignments
GROUP BY assignments.day
ORDER BY day;