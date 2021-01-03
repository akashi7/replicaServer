const joi = require('joi');

const userSchema = {
	signUpSchema: joi.object({
		username: joi.string().min(5).trim(),
		email: joi.string().email(),
		fname: joi.string().regex(/^[A-Za-z]/),
		lname: joi.string().regex(/^[A-Za-z]/),
		password: joi.string()
			.min(8)
			.regex(/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.{6,})/),
	}),
	loginSchema: joi.object({
		email: joi.string().email(),
		password: joi.string()
			.min(8)
			.regex(/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.{6,})/)
	})
};

module.exports = userSchema;