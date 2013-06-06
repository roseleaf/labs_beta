define('ZenlabsBeta.Router', ['zenlabs_beta'], function(ZenlabsBeta){
	ZenlabsBeta.Router.map(function() {
	  this.resource('extensions', { path: '/extensions'}, function() {
	    this.resource('extension', { path: ':extension_id' });
	  });
	  this.route('extensions');
	});

	return ZenlabsBeta.Router;

});





//ZenlabsBeta.ExtensionsRoute = Ember.Route.Extend();
	// model: function() {
 //    	return ZenlabsBeta.Extension.find();
 //  }
//});

// App.Router.map(function() {
//   this.resource('posts', { path: '/posts' }, function() {
//     this.route('new');
//   });
// });