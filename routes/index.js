var express = require('express');
var router = express.Router();
const { pool } = require('../db');
const { getPostList, getPostById, getDetailByPostId, getById, getOne, addView } = require('./posts');
/* GET home page. */
router.get('/', function (req, res, next) {
  res.redirect("login")
});

router.get('/login', function (req, res, next) {
  res.render("login", {
    title: "崩坏登录界面"
  })
});

router.get('/loginYs', function (req, res, next) {
  res.render("loginYs", {
    title: "原神登录界面"
  })
});

router.get('/homeYs', function (req, res, next) {
  res.render("ys/home", {
    title: "原神主页"
  })
});

router.get('/homeBh', function (req, res, next) {
  res.render("bh/home", {
    title: "崩坏界面"
  })
});

router.get('/bh/roles', function (req, res, next) {
  res.render("bh/roles", {
    title: "崩坏角色界面"
  })
});

router.get('/bh/world', function (req, res, next) {
  res.render("bh/world")
});


router.get('/news', function (req, res, next) {
  res.render("news")
});


router.get('/ys/roles', function (req, res, next) {
  res.render("ys/roles")
});

router.get('/ys/world', function (req, res, next) {
  res.render("ys/world")
});

router.get('/userInfo/:id', function (req, res, next) {
  const { id } = req.params;
  pool.query('select * from user where userId = ?', [id], (ERR, VAL) => {
    if (ERR) {
      throw Error(ERR)
    }
    console.log(VAL[0]);
    res.render("userInfo", {
      userInfo: VAL[0]
    })
  })
});

router.get('/community/:id', async function (req, res) {
  const { id } = req.params;
  const { only } = req.query
  let data = undefined;
  if (only) {
    data = await getById(id)
  } else {
    data = await getPostById(id)
  }
  res.render('community', {
    list: data,
    only
  })
});

router.get('/posts', function (req, res) {
  const { id } = req.params;
  res.render('comm/posts')
});

router.get('/detail', async function (req, res) {
  const { id } = req.query;
  const data = await getDetailByPostId(id)
  const _data = await getOne(id)
  await addView(id)
  // console.log(data);
  res.render('comm/detail', {
    id,
    list: data,
    data: _data
  })
});



module.exports = router;
