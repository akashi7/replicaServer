const db = require('../database/mysql');

exports.adminViewAllUsers = (req, res) => {
  db.getConnection((err, connection) => {
    if (err) throw err;
    else {
      connection.query("SELECT * FROM users ORDER BY id DESC", (err, result) => {
        if (err) throw err;
        else {
          res.send({
            status: 200,
            data: { people: result }
          });
        }
        connection.release();
      });
    }
  });
};
exports.adminViewUser = (req, res) => {
  const { id } = req.query;
  db.getConnection((err, connection) => {
    if (err) throw err;
    else {
      connection.query("SELECT * FROM users WHERE id=?", [id], (err, result) => {
        if (err) throw err;
        else {
          const { username } = result[0];
          res.send({
            status: 200,
            data: { userPro: result },
            username
          });
        }
        connection.release();
      });
    }
  });
};