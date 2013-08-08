ZenlabsBeta.ExtensionsRoute = Ember.Route.extend({
	// TODO: refactor into one function:
	events: {
		// showGrid: function() {
		// 	var cont = this.controllerFor('extensions');
		// 	this.render('gridview', { into: 'extensions', outlet: 'widgetindex', controller: cont });
		// },
		// showSlider: function() {
		// 	var cont = this.controllerFor('extensions');
		// 	this.render('gridview', { into: 'widgetslider', outlet: 'widgetindex', controller: cont });
		// },
		// setView: function(name) {
		// 	var cont = this.controllerFor('extensions');
		// 	this.render(name, { into: 'extensions', outlet: 'widgetindex' });
		// }
	},	
	model: function(){
		return ZenlabsBeta.Extension.find();
	},
	activate: function(){
		this.render('sidenav', {into: 'application', outlet: 'sideFilter'});		
		this.render();
		this.render('gridview', {into: 'extensions', outlet: 'widgetindex'});
		this.render('extensionfiller', {into: 'extensions'});
	}
});
