var http = require('http');
var express = require('express');
var swig = require('swig');
var app = express();
var session = require('express-session');
var bodyParser = require('body-parser');
var githubAuth = require('./githubauth')

var db = require('./Database/bootstrap.js');

// Setup static file serving
app.use(session({secret:'CHANGEME'}))
// Setup POST form data processing
app.use(bodyParser.urlencoded({ extended: false }))
//app.use(githubAuth);
app.use(express.static('public'));
// Adding Swig as a Templating Engine
app.engine('swig', swig.renderFile);
app.set('view engine', 'swig');

app.get('/', function (req, res){
  console.log(req.session.username);
  res.render('index', {});
});

// Show the registration form
app.get('/register', function (req, res){
  res.render('register', {});
});

// Read data from the registration form
app.post('/register', function (req, res){
  // TODO: Insert data into database
  console.log(req.body.email);
  console.log(req.body.password);
  console.log(req.body['confirm-password']);
  if (req.body.name && req.body.email){
    db.run ('insert into users(name, email) VALUES(?,?)', [
      req.body.name, req.body.email
      ]);
    req.session['username'] = req.body.name;
    res.send("Thank you for registering, " + req.body.name);
  }
  else { 
    res.send('please fill out the form');
  }
});


// Listen on port 3000, IP defaults to 127.0.0.1
server = app.listen(3000);

// Put a friendly message on the terminal
console.log("Express Server, with static files middleware running at http://127.0.0.1:3000/");
