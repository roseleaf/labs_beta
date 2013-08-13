ZenlabsBeta.Router.map(function() {
  this.route("getstarted");
  this.route("home", {path: "index"});	
  this.resource('extensions', function() {
  	this.route('edit');
  	this.route('new');
  });
  this.resource('extension', { path: '/:extension_id'});

});

