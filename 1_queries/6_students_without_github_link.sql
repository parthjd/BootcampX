select name, email, phone
from students
where github is NULL
  and end_date is NOT NULL;