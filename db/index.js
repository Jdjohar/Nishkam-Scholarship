const { Pool } = require('pg')

const pool = new Pool({
  AZURE_POSTGRESQL_DATABASE:"postgres",
  AZURE_POSTGRESQL_HOST:"nishkamnewsletter.postgres.database.azure.com",
  AZURE_POSTGRESQL_PASSWORD:"Zsxedc@123@",
  AZURE_POSTGRESQL_USER:"nishkam@nishkamnewsletter",
  AZURE_POSTGRESQL_PORT:"5432",
  AZURE_POSTGRESQL_SSL:"true",
  ssl:{ rejectUnauthorized: true }
});
module.exports = {
  query: (text, params) => pool.query(text, params),
}