const { Router } = require('express');
const router = Router();
const { register, Login, reporterSignup, adminSignup } = require('../controllers/userAuthCont');
const { userSignUpValidation, userLoginvalidation } = require('../middleware/userhelper');


router.post('/adminsignup', userSignUpValidation, adminSignup);
router.post('/reportersignup', userSignUpValidation, reporterSignup);
router.post('/U-signup', userSignUpValidation, register);
router.post('/U-login', userLoginvalidation, Login);


module.exports = router;