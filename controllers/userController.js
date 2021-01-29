var cloudinary = require('cloudinary').v2;
const dotenv = require("dotenv");
const db = require('../database/mysql');
const moment = require('moment-timezone');

dotenv.config();


const upload = async (profilepic) => {
	try {

		if (profilepic.mimetype === 'image/jpeg' || profilepic.mimetype === 'image/png') {
			const image = await cloudinary.uploader.upload(profilepic.tempFilePath, (results) => results);
			profilepic = image.url;
			return profilepic;
		}

	} catch (err) {
		profilepic = 'err';
		console.log('err', err);
	}

};







cloudinary.config({
	cloud_name: process.env.CLOUDINARY_NAME,
	api_key: process.env.CLOUDINARY_API_KEY,
	api_secret: process.env.CLOUDINARY_API_SECRET,
});

exports.createForum = async (req, res) => {
	const { topic, content } = req.body;
	const { username } = req.userdata;
	db.getConnection((err, connection) => {
		if (err) throw err;
		else {
			let date = new Date();
			let re = date.toLocaleString();
			let createdAt = moment(re).tz('Rwanda').format();
			connection.query("INSERT INTO forums SET ?", {
				username: username,
				topic: topic,
				content: content,
				createdat: createdAt

			}, (err, result) => {
				if (err) throw err;
				else {
					res.send({
						status: 200,
						message: "Created Successfully!!!!"
					});
				}
				connection.release();
			});
		}
	});
};
exports.deleteForum = async (req, res) => {
	const { id } = req.query;
	db.getConnection((err, connection) => {
		if (err) throw err;
		else {
			connection.query("SELECT * FROM forums WHERE id=?", [id], (err, result) => {
				if (err) throw err;
				else {
					connection.query("DELETE FROM forums WHERE id=?", [id], (err, results) => {
						if (err) throw err;
						else {
							connection.query("DELETE FROM comments WHERE topicid=?", [id], (err, results) => {
								if (err) throw err;
								else {
									res.send({
										status: 200
									});
								}
								connection.release();
							});
						}

					});
				}
			});
		}
	});
};
exports.viewEditForumTopic = async (req, res) => {
	const { id } = req.query;
	db.getConnection((err, connection) => {
		if (err) throw err;
		else {
			connection.query("SELECT * FROM forums WHERE id=?", [id], (err, result) => {
				console.log('v', result);
				if (err) throw err;
				else {
					let Id = result[0].id;
					res.send({
						status: 200,
						Id,
						data: { forum: result }
					});
				}
				connection.release();
			});
		}
	});
};






exports.editForum = async (req, res) => {
	const { id } = req.query;
	const { topic } = req.body;
	db.getConnection((err, connection) => {
		if (err) throw err;
		else {
			connection.query("SELECT * FROM forums WHERE id=?", [id], (err, result) => {
				if (err) throw err;
				else {
					let date = new Date();
					let editedAt = date.toLocaleString();
					connection.query("UPDATE forums SET topic=?,edited=? WHERE id=?", [topic, editedAt, id], (err, results) => {
						if (err) throw err;
						else {
							res.send({
								status: 200
							});
						}
						connection.release();
					});
				}
			});
		}
	});
};

exports.createComment = async (req, res) => {
	const { username } = req.userdata;
	const { comment } = req.body;
	const { id } = req.query;
	db.getConnection((err, connection) => {
		if (err) throw err;
		else {
			let date = new Date();
			let re = date.toLocaleString();
			let createdAt = moment(re).tz('Rwanda').format();
			connection.query("INSERT INTO comments SET ?", {
				topicid: id,
				username: username,
				comment: comment,
				createdat: createdAt
			}, (err, result) => {
				if (err) throw err;
				else {
					connection.query("SELECT * from forums WHERE id=?", [id], (err, results) => {
						if (err) throw err;
						else {
							let forumOwner = results[0].username;
							let forumTopic = results[0].topic;
							connection.query("INSERT INTO notification SET ?", {
								username: username,
								topicid: id,
								owner: forumOwner,
								topic: forumTopic
							}, (err, results) => {
								if (err) throw err;
								else {
									res.send({
										status: 200
									});
								}
								connection.release();
							});
						}
					});

				}

			});
		}
	});
};
exports.editComment = async (req, res) => {
	const { id } = req.query;
	const { newcomment } = req.body;
	db.getConnection((err, connection) => {
		if (err) throw err;
		else {
			connection.query("SELECT * FROM comments WHERE id=?", [id], (err, result) => {
				if (err) throw err;
				else {
					let date = new Date();
					let re = date.toLocaleString();
					let createdAt = moment(re).tz('Rwanda').format();
					connection.query("UPDATE comments SET comment=?, edited=? WHERE id=?", [newcomment, createdAt, id], (err, results) => {
						if (err) throw err;
						else {
							res.send({
								status: 200
							});
						}
						connection.release();
					});
				}
			});
		}
	});
};
exports.deleteComment = async (req, res) => {
	const { id } = req.query;
	db.getConnection((err, connection) => {
		if (err) throw err;
		else {
			connection.query("SELECT * FROM comments WHERE id=?", [id], (err, result) => {
				if (err) throw err;
				else {
					connection.query("DELETE FROM comments WHERE id=?", [id], (err, results) => {
						if (err) throw err;
						else {
							res.send({
								status: 200
							});
						}
						connection.release();
					});
				}
			});
		}
	});
};

exports.afterSignup = async (req, res) => {
	const { username } = req.query;
	db.getConnection((err, connection) => {
		if (err) throw err;
		else {
			connection.query("SELECT * FROM users WHERE username =?", [username], (err, result) => {
				if (err) throw err;
				else {
					res.send({
						status: 200,
						data: { profile: result }
					});
				}
			});
		}
	});
};

exports.viewForum = async (req, res) => {
	const { id } = req.query;
	db.getConnection((err, connection) => {
		if (err) throw err;
		else {
			connection.query("SELECT * FROM forums WHERE id=?", [id], (err, result) => {
				if (err) throw err;
				else {
					connection.query("SELECT * FROM comments WHERE topicid=?", [id], (err, results) => {
						if (err) throw err;
						else {
							res.send({
								status: 200,
								data: { topic: result, message: results }
							});
						}
						connection.release();
					});
				}
			});
		}
	});
};
exports.viewEditForum = async (req, res) => {
	const { id } = req.query;
	const { username } = req.userdata;
	db.getConnection((err, connection) => {
		if (err) throw err;
		connection.query("SELECT * FROM comments WHERE id=?  AND username =?", [id, username], (err, results) => {
			console.log('re', results);
			if (err) throw err;

			else {
				res.send({
					status: 200,
					data: { message: results }
				});
			}
			connection.release();
		});
	});
};

exports.userViewProfile = async (req, res) => {
	const { username } = req.userdata;
	db.getConnection((err, connection) => {
		if (err) throw err;
		else {
			connection.query("SELECT * FROM users WHERE username =?", [username], (err, result) => {
				if (err) throw err;
				else {
					connection.query("SELECT * FROM forums WHERE username=? ORDER BY id DESC", [username], (err, results) => {
						if (err) throw err;
						else {
							res.send({
								status: 200,
								data: { profile: result, forums: results }
							});
						}
						connection.release();
					});
				}
			});
		}
	});
};

exports.userViewOthersProfile = async (req, res) => {
	const { username } = req.query;
	db.getConnection((err, connection) => {
		if (err) throw err;
		else {
			connection.query("SELECT * FROM users WHERE username=?", [username], (err, result) => {
				if (err) throw err;
				else {
					connection.query("SELECT * FROM forums WHERE username=? ORDER BY id DESC ", [username], (err, results) => {
						if (err) throw err;
						else {
							connection.query("SELECT COUNT(*) AS allforums   FROM forums  WHERE username =?", [username], (err, resultss) => {
								if (err) throw err;
								else {
									let username = result[0].username;
									res.send({
										status: 200,
										username,
										data: { profile: result, forums: results, all: resultss }
									});
								}
								connection.release();
							});
						}
					});
				}
			});
		}
	});
};
exports.viewMessageUser = async (req, res) => {
	const { id } = req.query;
	db.getConnection((err, connection) => {
		if (err) throw err;
		else {
			connection.query("SELECT * FROM users WHERE id=?", [id], (err, result) => {
				if (err) throw err;
				else {
					let username = result[0].username;
					let id = result[0].id;
					res.send({
						status: 200,
						username,
						id
					});
				}
				connection.release();
			});
		}
	});
};

exports.getUserMessages = async (req, res) => {
	const { id } = req.query;
	const { username } = req.userdata;
	db.getConnection((err, connection) => {
		if (err) throw err;
		else {
			connection.query("SELECT * FROM users WHERE id=?", [id], (err, result) => {
				if (err) throw err;
				else {
					let receiverName = result[0].username;
					connection.query("SELECT * FROM messages WHERE sender_username=? AND receiver_username=? OR receiver_username=? AND sender_username=? ", [username, receiverName, username, receiverName], (err, results) => {
						console.log('e', results);
						if (err) throw err;
						else {
							res.send({
								status: 200,
								data: { chat: results }
							});
						}
						connection.release();
					});
				}
			});
		}
	});
};

exports.sendMessage = async (req, res) => {
	const { username } = req.userdata;
	const { id } = req.query;

	const { message } = req.body;

	db.getConnection((err, connection) => {
		if (err) throw err;
		else {
			connection.query("SELECT * FROM users WHERE id=?", [id], (err, result) => {
				if (err) throw err;
				else {
					let receiver = result[0].username;
					let sender = username;
					let date = new Date();
					let createdAt = date.toLocaleString();
					connection.query("INSERT INTO messages SET ?", {
						sender_username: sender,
						receiver_username: receiver,
						createdat: createdAt,
						message: message,
						sendermessages: message
					}, (err, results) => {
						if (err) throw err;
						else {
							connection.query("SELECT * FROM messages WHERE sender_username=? AND receiver_username=? ", [username, receiver], (err, resultss) => {
								if (err) throw err;
								else {
									res.send({
										status: 200,
										message
									});
								}
							});
						}
						connection.release();
					});
				}
			});
		}
	});
};

exports.uploadPhoto = async (req, res) => {
	const { photo = '' } = req.files || {};
	const { username } = req.userdata;

	let Photo = await upload(photo);
	if (Photo) {
		db.getConnection((err, connection) => {
			if (err) throw err;
			else {
				connection.query("UPDATE users SET photo=? WHERE username=?", [Photo, username], (err, result) => {
					if (err) throw err;
					else {
						res.send({
							status: 200
						});
					}
					connection.release();
				});
			}
		});
	}
	else {
		res.send({
			status: 405,
			message: 'Error uploading Photo'
		});
	}
};