const db = require('../database/mysql');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const dontev = require('dotenv');

dontev.config();


exports.register = async (req, res) => {
	const { username, email, password, fname, lname, confirmpassword } = req.body;
	db.getConnection((err, connection) => {
		if (err) throw err;
		else {
			connection.query("SELECT * FROM users WHERE email =?", [email], async (err, result) => {
				if (err) throw err;
				else if (result.length > 0) {
					res.send({
						status: 410,
						message: 'Email already exist'
					});
				}
				else if (confirmpassword !== password) {
					res.send({
						status: 419,
						message: 'Passwords do not match !!!'
					});
				}
				else {
					connection.query("SELECT * FROM users WHERE username=?", [username], async (err, results) => {
						if (err) throw err;
						else if (results.length > 0) {
							res.send({
								status: 411,
								message: 'username already taken'
							});
						}
						else {
							let hashedpassword = await bcrypt.hash(password, 8);
							connection.query("INSERT INTO users SET ?", {
								username: username,
								email: email,
								fname: fname,
								lname: lname,
								password: hashedpassword
							}, (err, results) => {
								if (err) throw err;
								else {
									res.send({
										status: 200,
										message: 'User created ',
										username
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

exports.Login = async (req, res) => {
	const { email, password } = req.body;
	console.log(req.body);
	db.getConnection((err, connection) => {
		if (err) throw err;
		else {
			connection.query("SELECT * FROM users WHERE email=?", [email], async (err, result) => {
				if (err) throw err;
				else {
					if (result.length < 1) {
						res.send({
							status: 408,
							message: 'User does not exist'
						});
					}
					if (!(await bcrypt.compare(password, result[0].password))) {
						res.send({
							status: 419,
							message: "Wrong password "
						});
					}
					else {
						if (result[0].username === 'admin') {
							const { id, username, isadmin } = result[0];
							const token = jwt.sign(
								{ id, isadmin, username },
								process.env.JWT_SECRET,
								{
									expiresIn: process.env.JWT_EXPIRES_IN,
								}
							);
							res.send({
								status: 208,
								message: ` ${username} loged in`,
								token,
								username
							});
						}
						else {
							const { id, username, isadmin } = result[0];
							const token = jwt.sign(
								{ id, isadmin, username },
								process.env.JWT_SECRET,
								{
									expiresIn: process.env.JWT_EXPIRES_IN,
								}
							);
							res.send({
								status: 200,
								message: ` ${username} loged in`,
								token,
								username
							});
						}
					}
					connection.release();
				}
			});
		}
	});
};
exports.reporterSignup = async (req, res) => {
	const { username, email, password, fname, lname, confirmpassword } = req.body;
	db.getConnection((err, connection) => {
		if (err) throw err;
		else {
			connection.query("SELECT * FROM users WHERE email =?", [email], async (err, result) => {
				if (err) throw err;
				else if (result.length > 0) {
					res.send({
						status: 410,
						message: 'Email already exist'
					});
				}
				else if (confirmpassword !== password) {
					res.send({
						status: 409,
						message: 'Passwords do not match !!!'
					});
				}
				else {
					let reporter = 1;
					let hashedpassword = await bcrypt.hash(password, 8);
					connection.query("INSERT INTO users SET ?", {
						username: username,
						email: email,
						fname: fname,
						lname: lname,
						isreporter: reporter,
						password: hashedpassword
					}, (err, results) => {
						if (err) throw err;
						else {
							res.send({
								status: 200,
								message: 'Reporter created '
							});
						}
					});
				}
			});
		}
	});
};
exports.adminSignup = async (req, res) => {
	const { username, email, password, fname, lname, confirmpassword } = req.body;
	db.getConnection((err, connection) => {
		if (err) throw err;
		else {
			connection.query("SELECT * FROM users WHERE email =?", [email], async (err, result) => {
				if (err) throw err;
				else if (result.length > 0) {
					res.send({
						status: 410,
						message: 'Email already exist'
					});
				}
				else if (confirmpassword !== password) {
					res.send({
						status: 409,
						message: 'Passwords do not match !!!'
					});
				}
				else {
					let admin = 1;
					let hashedpassword = await bcrypt.hash(password, 8);
					connection.query("INSERT INTO users SET ?", {
						username: username,
						email: email,
						fname: fname,
						lname: lname,
						isadmin: admin,
						password: hashedpassword
					}, (err, results) => {
						if (err) throw err;
						else {
							res.send({
								status: 200,
								message: 'Admin created '
							});
						}
					});
				}
			});
		}
	});
};