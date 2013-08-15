ZenlabsBeta.GetstartedRoute = Ember.Route.extend({
	events: {
		selectTab: function(name) {
			this.render(name, { into: 'getstarted', outlet: 'maintab' });
			this.controller.setActiveTab();
    	},
    	willTransition: function() {
    		this.controller.setActiveTab();
    	}
	},

	renderTemplate: function(){
		this.render();
		this.render('startside', {into: 'application', outlet: 'startNav'});
		this.render('privateapps', {into: 'getstarted', outlet: 'maintab'});
	},
	setupController: function(controller){
		controller.set('setActiveTab', function(){
    		$('#directionsType a').click(function(){
	      		$('.active').removeClass('active');
	      		$(this).addClass('active');
	    	});
	  	});
	}
});