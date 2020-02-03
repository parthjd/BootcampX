CREATE TABLE assignments
(
  id serial PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  content TEXT,
  day integer,
  chapter integer,
  duration integer
);

CREATE TABLE assignment_submissions
(
  id SERIAL NOT NULL PRIMARY KEY,
  -- primary key column
  assignment_id integer references assignments(id) ON delete cascade,
  student_id integer REFERENCES students(id) on DELETE CASCADE,
  duration integer,
  submission_date DATE
  -- specify more columns here
);
