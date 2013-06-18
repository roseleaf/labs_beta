ZenlabsBeta.ExtensionsRoute = Ember.Route.extend({
	model: function(){
		return ZenlabsBeta.Extension.find();
	}	
});




// App.PostsRoute = Ember.Route.extend({
//   model: function() {
//     return App.Post.find();
//   }
// });