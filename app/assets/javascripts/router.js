ZenlabsBeta.Router.map(function() {
  this.route("getstarted");
  this.route("publicapps", { path: 'getstarted#publicapps' });
  this.route("home", {path: "index"});	
  this.resource('extensions', function() {
    this.resource('extension', { path: '/:extension_id'});
  });
});

