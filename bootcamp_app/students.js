const { Pool } = require("pg");

const pool = new Pool({
  user: "vagrant",
  password: "123",
  host: "localhost",
  database: "bootcamp"
});

const input = process.argv.slice(2);
const values = [`%${input[0]}%`, `${input[1]}`];

const queryString = `
  SELECT students.id, students.name, cohorts.name as cohort_name
  FROM students
  JOIN cohorts ON cohorts.id = cohort_id
  WHERE cohorts.name LIKE $1
  GROUP BY cohorts.name, students.id
  LIMIT $2
  `;

pool
  .query(queryString, values)

  .then(res => {
    res.rows.forEach(user => {
      console.log(
        `${user.name} has an id of ${user.id} and was in the ${user.cohort_name} cohort`
      );
    });
  })
  .catch(err => {
    console.error("query error", err.stack);
  });
