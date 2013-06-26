ZenlabsBeta.GetstartedRoute = Ember.Route.extend({
	events: {
		showPublic: function(){
			this.render('publicapps', {into: 'getstarted', outlet: 'maintab'})
		},
		showPrivate: function(){
			this.render('privateapps', {into: 'getstarted', outlet: 'maintab'})
		},
		showClassic: function(){
		this.render('classicapps', {into: 'getstarted', outlet: 'maintab'})	
		}

	},


	renderTemplate: function(){
		this.render();
		this.render('privateapps', {into: 'getstarted', outlet: 'maintab'});
	}	

});
