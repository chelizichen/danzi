var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var {router:postsRouter} = require('./routes/posts');
const multer = require('multer');


var app = express();

var upload = multer({ dest: 'public/posts' }).any()
const fs  = require("fs")

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/user', usersRouter);
app.use('/post', postsRouter);
app.use(upload)

app.post("/picLoad",function(req,res){
  let _path = req.files[0].destination +"/"+ req.files[0].filename
  let path =  req.files[0].destination +"/"+ req.files[0].filename + ".png"
  fs.renameSync(_path,path)

  let PATH = path.replace("/public","")
  // console.log(_path);
  // fs.writeFileSync(_path,req.files[0].buffer,"utf-8")
  res.send(PATH)
})

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
