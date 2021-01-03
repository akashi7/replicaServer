var cloudinary = require('cloudinary').v2;
const dotenv = require("dotenv");
const db = require('../database/mysql');

dotenv.config();

cloudinary.config({
	cloud_name: process.env.CLOUDINARY_NAME,
	api_key: process.env.CLOUDINARY_API_KEY,
	api_secret: process.env.CLOUDINARY_API_SECRET,
});

const upload = async (profilepic) => {
	try {

		if (profilepic.mimetype === 'image/jpeg' || profilepic.mimetype === 'image/png') {
			const image = await cloudinary.uploader.upload(profilepic.tempFilePath, (results) => results);
			profilepic = image.url;
			return profilepic;
		}

	} catch (err) {
		profilepic = 'err';
		console.log(err);
	}

};

exports.postMovie = async (req, res) => {
	const { moviename, synopsis, releasedate, director, starring, distributor } = req.body;
	const { poster = '' } = req.files || {};

	let Poster = await upload(poster);
	db.getConnection((err, connection) => {
		if (err) throw err;
		else {
			connection.query("INSERT INTO movies SET ?", {
				moviename: moviename,
				synopsis: synopsis,
				releasedate: releasedate,
				director: director,
				starring: starring,
				distributor: distributor,
				poster: Poster
			}, (err, results) => {
				if (err) throw err;
				else {
					connection.query("SELECT * FROM movies WHERE moviename=? ", [moviename], (err, result) => {
						if (err) throw err;
						else {
							res.send({
								data: { movie: result, message: "created succesfully", status: Poster }
							});
						}
						connection.release();
					});
				}
			});
		}
	});


};