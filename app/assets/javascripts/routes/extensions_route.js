App.ExtensionsRoute = Ember.Route.extend({
	model: function(){
		return App.Extension.find();
	},
	renderTemplate: function(){
		this.render('sidenav', {into: 'application', outlet: 'sideFilter'});		
		this.render();
		this.render('gridview', {into: 'extensions', outlet: 'widgetindex'});
		this.render('extensionfiller', {into: 'extensions'});
	}
});
