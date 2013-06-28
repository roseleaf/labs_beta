ZenlabsBeta.GetstartedRoute = Ember.Route.extend({
	events: {

	    selectTab: function(name) {
	      this.controllerFor('getstarted').set('activeTab', name);
	      this.render(name, { into: 'getstarted', outlet: 'maintab' });
	    },		
		showPublic: function(){
			console.log("pub");
			this.render('publicapps', {into: 'getstarted', outlet: 'maintab'})
		},
		showPrivate: function(){
			console.log("priv");
			this.render('privateapps', {into: 'getstarted', outlet: 'maintab'})
		},
		showClassic: function(){
			console.log("clas");
			this.render('classicapps', {into: 'getstarted', outlet: 'maintab'})	
		}

	},

	renderTemplate: function(){
		this.render();
		this.render('privateapps', {into: 'getstarted', outlet: 'maintab'});
	},
	setupController: function(controller) {
		controller.set('activeTab', 'home');
	}
});


