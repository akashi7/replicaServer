const fileUpload = require('express-fileupload');
const { Router } = require('express');
const router = Router();

const { postMovie } = require('../controllers/reporterController');


router.use(
    fileUpload({
        useTempFiles: true,
        debug: true,
        limits: {
            fileSize: 2 * 1024 * 1024,
        },
        abortOnLimit: true,
        responseOnLimit: 'File too large',
    }),
);

router.post('/postmovie', postMovie);

module.exports = router;

