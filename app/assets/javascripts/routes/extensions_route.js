ZenlabsBeta.ExtensionsRoute = Ember.Route.extend({
	model: function(){
		return ZenlabsBeta.Extension.find();
	},
	events: {
	  displayApps: function() {
	  	this.set('content', ZenlabsBeta.Extension.find({category:'display'}));
	  	this.render();
	  },
	  commentsApps: function(){
	  	var displayTypeApps = this.filter(function(extension){
	  		return extension.get('category') == 'comments';
	  	});
	  	return displayTypeApps;
	  }.property('@each.category'),
	  ticketCreationApps: function(){
	  	var displayTypeApps = this.filter(function(extension){
	  		return extension.get('category') == 'ticketCreation';
	  	});
	  	return displayTypeApps;
	  }.property('@each.category'),
	  findingDataApps: function(){
	  	var displayTypeApps = this.filter(function(extension){
	  		return extension.get('category') == 'findingData';
	  	});
	  	return displayTypeApps;
	  }
	}
});




// App.PostsRoute = Ember.Route.extend({
//   model: function() {
//     return App.Post.find();
//   }
// });