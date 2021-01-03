const mysql = require('mysql');

var db = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: 'Akashikabuto7',
    database: 'sidelist',
    charset: 'utf8mb4'
});


module.exports = db;