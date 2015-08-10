var github = require('octonode');
var url = require('url');
var auth_url = github.auth.config({
    id: 'c4f1a545d3c19788085d',
    secret: '5313425f57a2d2f055fb0f531377de85ab69984a'
}).login(['user','repo','gist']);
function processlogin(req, res){
    github.auth.login(req.query.code, function(error, token){
        //todo handle error 
        req.session.ghToken = token 
        res.redirect('/')
    })

}
module.exports = function (req, res, next) {
   
    var uri = url.parse(req.url);
    if (!req.session.ghToken && uri.pathname !== '/auth/github') {
        res.redirect(auth_url);
    } else if (uri.pathname === '/auth/github') {
        processlogin(req, res);
    } else {
        next();
    }
}