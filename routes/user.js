const { Router } = require('express');
const fileUpload = require('express-fileupload');
const router = Router();
const { createForum, editForum, deleteForum, createComment, editComment, deleteComment, afterSignup, viewForum, viewEditForum, viewEditForumTopic, userViewProfile, userViewOthersProfile, viewMessageUser, getUserMessages, sendMessage, uploadPhoto } = require('../controllers/userController');
const { requiredLogin } = require('../middleware/userRequired');
// const { v4: uuidv4 } = require('uuid');


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

//upload photo

router.post('/uploadphoto', requiredLogin, uploadPhoto);



//view Profile

router.get('/viewProfile', requiredLogin, userViewProfile);
router.get('/viewOtherProfile', requiredLogin, userViewOthersProfile);

//message user

router.get('/viewMessage', requiredLogin, viewMessageUser);
router.get('/getUserMessage', requiredLogin, getUserMessages);
router.post('/sendMessage', requiredLogin, sendMessage);


//After signup
router.get('/aftersignup', afterSignup);

//Forums
router.get("/viewforum", requiredLogin, viewForum);
router.post('/createforum', requiredLogin, createForum);
router.patch('/editforum', requiredLogin, editForum);
router.get('/viewEditForum', requiredLogin, viewEditForum);
router.get('/viewEditForumTopic', requiredLogin, viewEditForumTopic);
router.delete('/deleteforum', requiredLogin, deleteForum);
//Comments
router.post('/createcomment', requiredLogin, createComment);
router.patch('/editcomment', requiredLogin, editComment);
router.delete('/deletecomment', requiredLogin, deleteComment);


module.exports = router;
