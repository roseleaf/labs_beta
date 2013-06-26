ZenlabsBeta.ExtensionsRoute = Ember.Route.extend({
	model: function(){
		return ZenlabsBeta.Extension.find();
	}
});


