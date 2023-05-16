var express = require('express');
var router = express.Router();
const { pool } = require('../db');

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

router.post('/login', function(req, res, next) {
  console.log(req.body);
  const {username,password} = req.body;
  pool.query('select * from user  where user.username = ? and user.password = ?',[username,password],(err,val)=>{
    if(err){
      throw Error(err)
    }
    if(val.length){
      res.json({
        data:val[0],
        code:'0'
      })
    }else{
      res.json({
        code:'-1'
      })
    }

  })
});


module.exports = router;
