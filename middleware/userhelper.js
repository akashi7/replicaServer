const userSchema = require('../models/usermodel');

exports.userSignUpValidation = (req, res, next) => {
	const { username, email, password, fname, lname } = req.body;
	const { error } = userSchema.signUpSchema.validate({
		username, email, password, fname, lname
	});
	if (error) {
		if (error && error.details[0].type === 'string.pattern.base') {
			res.status(400).send({
				status: 409,
				error: 'Password must be atleast 8 characters long with Capital letter and a number'
			});
		}
		else {
			console.log(error.details[0].message.replace(/[/"]/g, ''));
			res.status(400).send({
				status: 409,
				error: error.details[0].message.replace(/[/"]/g, '')
			});
		}
		console.log("error :>> ", error);
	} else next();

};

exports.userLoginvalidation = (req, res, next) => {
	const { email, password } = req.body;
	const { error } = userSchema.loginSchema.validate({
		email,
		password
	});
	if (error) {
		if (error && error.details[0].type === 'string.pattern.base') {
			res.status(400).send({
				status: 409,
				error: 'Password must be atleast 8 characters long with Capital letter and a number'
			});
		}
		else {
			console.log(error.details[0].message.replace(/[/"]/g, ''));
			res.status(400).send({
				status: 409,
				error: error.details[0].message.replace(/[/"]/g, '')
			});
		}
		console.log("error :>> ", error);
	} else next();
};
