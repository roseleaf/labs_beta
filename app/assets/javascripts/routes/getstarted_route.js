ZenlabsBeta.GetstartedRoute = Ember.Route.extend({
	events: {
		selectTab: function(name) {
			this.controllerFor('getstarted').set('activeTab', name);
			this.render(name, { into: 'getstarted', outlet: 'maintab' });
    	}
	},

	renderTemplate: function(){
		this.render();
		this.render('startside', {into: 'application', outlet: 'startNav'});
		this.render('privateapps', {into: 'getstarted', outlet: 'maintab'});
	},
	setupController: function(controller) {
		controller.set('activeTab', 'privateapps');
	}
});