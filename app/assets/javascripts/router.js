ZenlabsBeta.Router.map(function() {
  this.route("getstarted");
  this.route("home", {path: "index"});	
  this.resource('extensions', function() {
  });
  this.resource('extension', { path: '/:extension_id'});

});

