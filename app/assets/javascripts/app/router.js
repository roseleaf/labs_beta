ZenlabsBeta.Router.map(function() {    
  this.resource("extensions", { path: '/extensions' });
  this.resource("extension",  { path: "/extensions/:refId" }, function() {
    this.route("delete");
  });
});

ZenlabsBeta.IndexRoute = Ember.Route.extend({
  redirect: function() {
    this.transitionTo('extensions');
  }
});

ZenlabsBeta.ExtensionsRoute = Ember.Route.extend({
  model: function() {
    return ZenlabsBeta.Extension.find();
  }
});

ZenlabsBeta.ExtensionRoute = Ember.Route.extend({
  model: function(params) {
    return ZenlabsBeta.Extension.find(params.refId);
  },
  // overwrite default serializer (defaults to 'id', member has 'refId')
  serialize: function(model) {
    return { refId: model.refId };
  }
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