const { Router } = require('express');
const { adminViewAllUsers, adminViewUser } = require('../controllers/adminContro');
const { requiredAdminLogin } = require('../middleware/isAdmin');
const router = Router();

router.get('/allUsers', requiredAdminLogin, adminViewAllUsers);
router.get('/user', requiredAdminLogin, adminViewUser);

module.exports = router;