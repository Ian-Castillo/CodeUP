var http = require('http');
var express = require('express');
var swig = require('swig');
var session = require('express-session');
var bodyParser = require('body-parser');

// Local modules
var githubAuth = require('./githubauth')
var config = require('./config');
var db = require('./db')(config);


// Setup our Express Server
var app = express();
app.locals.db = db;
app.locals.config = config;

// Configure the server
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


// Listen on our configured port and IP
server = app.listen(config.port, config.ip);

// Put a friendly message on the terminal
console.log(config.name + ' started [ip:' + config.ip + ', port:' + config.port +
    ', data_dir: "' + config.data_dir + '"]');
