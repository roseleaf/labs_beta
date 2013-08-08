ZenlabsBeta.ExtensionRoute = Ember.Route.extend({
	renderTemplate: function(){
		var controller = this.controllerFor('extensions');
		this.render();
		this.render('widgetslider', { into: 'extension', outlet: 'slider', controller: controller});
	}
});