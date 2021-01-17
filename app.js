const express = require('express');
const bodyparser = require('body-parser');
const cors = require('cors');
const morgan = require('morgan');
const home = require('./routes/home');
const reporter = require('./routes/reporter');
const auth = require('./routes/authRoutes');
const user = require('./routes/user');
const admin = require('./routes/admin');






const app = express();
app.use(cors());
app.use(morgan('dev'));

app.use(bodyparser.json({ limit: '50mb' }));
app.use(bodyparser.urlencoded({ extended: false, limit: '50mb' }));




app.get('/', (req, res) => {
	res.send({
		status: 200,
		message: 'Server running OK'
	});
});

app.use('/home', home);
app.use('/reporter', reporter);
app.use('/auth', auth);
app.use('/user', user);
app.use('/admin', admin);



const PORT = process.env.PORT || 4500;
app.listen(PORT, () => {
	console.log(` Server listening on Port ${PORT}`);
});