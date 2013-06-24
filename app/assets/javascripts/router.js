ZenlabsBeta.Router.map(function() {
  this.route("getStarted", {path: "getstarted"}, function(){
  	this.route("publicapps");
  });
  this.route("home", {path: "index"});	
  this.resource('extensions', function() {
    this.resource('extension', { path: '/:extension_id'});
  });
});
