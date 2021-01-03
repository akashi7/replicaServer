const jwt = require('jsonwebtoken');
const dotenv = require("dotenv");
dotenv.config();

exports.requiredLogin = (req, res, next) => {
  const token = req.headers.authorization.replace("Bearer ", "");
  jwt.verify(token, `${process.env.JWT_SECRET}`, (err, decoded) => {
    if (err) {
      res.status(401).send({
        status: 401,
        message: 'please login first'
      });
    }
    else {
      req.userdata = decoded;
      next();
    }
  });
};