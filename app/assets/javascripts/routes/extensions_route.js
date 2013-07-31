ZenlabsBeta.ExtensionsRoute = Ember.Route.extend({
	model: function(){
		return ZenlabsBeta.Extension.find();
	},

	activate: function(){
		this.render('sidenav', {into: 'application', outlet: 'sideFilter'});		
		this.render();
		this.render('extensionfiller', {into: 'extensions'});
	}
});


