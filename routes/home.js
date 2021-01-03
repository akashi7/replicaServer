const { Router } = require('express');
const router = Router();
const { homeview, forumDetails } = require('../controllers/homeController');



router.get('/homeview', homeview);
router.get('forumdetails', forumDetails);





module.exports = router;