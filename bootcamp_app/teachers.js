const { Pool } = require("pg");

const pool = new Pool({
  user: "vagrant",
  password: "123",
  host: "localhost",
  database: "bootcamp"
});

const input = process.argv.slice(2);

pool
  .query(
    `
select teachers.name as teacher, cohorts.name as cohort
from assistance_requests
  JOIN teachers on teachers.id = teacher_id
  JOIN students on students.id = student_id
  JOIN cohorts on cohorts.id = cohort_id
WHERE cohorts.name LIKE '%${input[0]}%'
GROUP BY cohorts.name, teachers.name
ORDER BY teacher;
  `
  )

  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.cohort}: ${user.teacher}`);
    });
  })
  .catch(err => {
    console.error("query error", err.stack);
  });
