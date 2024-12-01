const { Pool } = require('pg');
require('dotenv').config();

// Create a new pool instance
const pool = new Pool({
    user: process.env.DB_USER || 'your_database_user',
    host: process.env.DB_HOST || 'localhost',
    database: process.env.DB_NAME || 'your database_name',
    password: process.env.DB_PASSWORD || 'your_database_password',
    port: process.env.DB_PORT || 5432,
    max: 20, // Maximum number of connections in the pool
    idleTimeoutMillis: 30000, // Time a connection can remain idle before being closed
    connectionTimeoutMillis: 2000, // Time to wait for a connection before throwing an error
});

// Test the connection
pool.connect((err, clinet, release) => {
    if (err) {
        console.error('Error acquiring client', err.stack);
    } else {
        console.log("Connected to PostgreSQL database");
        release(); // Release the client back to the pool
    }
})

module.exports = pool;