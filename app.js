var http = require('http');
var express = require('express');
var swig = require('swig');
var app = express();
var session = require('express-session');
var githubAuth = require('./githubauth')

// Setup static file serving
app.use(session({secret:'CHANGEME'}))
app.use(githubAuth)
app.use(express.static('public'));
// Adding Swig as a Templating Engine
app.engine('swig', swig.renderFile);
app.set('view engine', 'swig');

function userTemplate(user) {
    return [
      '<h1>' + user.name + '</h1> (@' + user.username + ')<br />',
      '<img src="' + user.photo_url + '" />'
      ].join("\n");
}
app.get('/users/1', function (req, res) {
  var user = {
    id: 1,
    username: 'iancastillo',
    name: 'Ian Castillo',
    photo_url: 'https://avatars2.githubusercontent.com/u/4645700?v=3&s=400'
  };

  res.send(userTemplate(user));
});

function charityTemplate(charity){
    return[
        '<h1>' + charity.charityname + '</h1> <br/>',
        '<img src="' + charity.photo_url + '" />'
        ].join("\n");
}
app.get('/charity/1', function (req, res){
 var user = {
    id: 1,
    charityname: 'codeup',
    name: 'Ian Castillo',
    photo_url: 'https://avatars2.githubusercontent.com/u/4645700?v=3&s=400'
  };
  var user2 = {
    id: 2,
    charityname: 'codeup',
    name: 'Steve Davis',
    photo_url: 'https://avatars2.githubusercontent.com/u/4645700?v=3&s=400'
  };

  res.send(charityTemplate(user) + charityTemplate(user2) + charityTemplate({}));
});


app.get('/', function (req, res){
  res.render('index', {});
});


// Listen on port 8000, IP defaults to 127.0.0.1
server = app.listen(3000);

// Put a friendly message on the terminal
console.log("Express Server, with static files middleware running at http://127.0.0.1:3000/");