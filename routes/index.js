var express = require('express');
var router = express.Router();
const { pool } = require('../db');
const multer = require('multer')
var upload = multer({ dest: '/public/posts/' })
/* GET home page. */
router.get('/', function(req, res, next) {
  res.redirect("login")
});

router.get('/login', function(req, res, next) {
  res.render("login",{
    title:"崩坏登录界面"
  })
});

router.get('/loginYs', function(req, res, next) {
  res.render("loginYs",{
    title:"原神登录界面"
  })
});

router.get('/homeYs', function(req, res, next) {
  res.render("ys/home",{
    title:"原神登录界面"
  })
});

router.get('/news', function(req, res, next) {
  res.render("news")
});


router.get('/ys/roles', function(req, res, next) {
  res.render("ys/roles")
});

router.get('/ys/world', function(req, res, next) {
  res.render("ys/world")
});

router.get('/userInfo/:id', function(req, res, next) {
  const {id} = req.params;
  pool.query('select * from user where id = ?',[id],(ERR,VAL)=>{
    if(ERR){
      throw Error(ERR)
    }
    console.log(VAL[0]);
    res.render("userInfo",{
      userInfo:VAL[0]
    })
  })
});

router.get('/community/:id', function(req, res) {
  const {id} = req.params;
  res.render('community')
});

router.get('/posts', function(req, res) {
  const {id} = req.params;
  res.render('comm/posts')
});

router.post("/picLoad",upload.single('file'),function(req,res){
  const {body} = req;
  console.log(req.file);
  res.send("ok")
})

module.exports = router;
