var express = require('express');
var router = express.Router();
const { pool } = require('../db');

router.get("/getPostsById",function(req,res){
    const {id} = req;
    pool.query('select p from post p where p.userId = ',[id],(err,val)=>{
        if(err){
            res.end({
                code:"-1",
                msg:"请求失败"
            })
        }
        res.json({
            code:'0',
            data:val
        })
    })
})


module.exports = router;
