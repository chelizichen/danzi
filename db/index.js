const mysql = require('mysql')
const pool = mysql.createPool({
    'host':"127.0.0.1",
    'port':"3306",
    'database':"ys_community",
    'connectionLimit':"20",
    'password':'123456',
    'user':"root"
})

module.exports = {pool}