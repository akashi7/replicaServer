const db = require('../database/mysql');

exports.homeview = async (req, res) => {
	db.getConnection((err, connection) => {
		if (err) throw err;
		else {
			connection.query("SELECT * FROM forums ORDER BY id DESC", (err, result) => {
				console.log('result', result);
				if (err) throw err;
				else {
					res.send({
						status: 200,
						data: { forums: result }
					});
				}
				connection.release();
			});
		}
	});
};
exports.forumDetails = async (req, res) => {
	const { id } = req.query;
	db.getConnection((err, connection) => {
		if (err) throw err;
		else {
			connection.query("SELECT * FROM forums WHERE id=?", [id], (err, result) => {
				if (err) throw err;
				else {
					connection.query("SELECT * FROM comments WHERE id=?", [id], (err, results) => {
						if (err) throw err;
						else {
							res.send({
								status: 200,
								data: { content: result, comments: results }
							});
						}
						connection.release();
					});
				}
			});
		}
	});

};