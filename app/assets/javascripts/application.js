//= require handlebars
//= require ./lib/jquery-1.8
//= require jquery_ujs
//= require ember
//= require_tree ./lib
//= require_tree ./vendor
//= require showdown
//= require ember-data
//= require_self
//= require zenlabs_beta

//Ember.FEATURES['query-params'] = true;
Ember.ENV.EXPERIMENTAL_CONTROL_HELPER = true;
App = Ember.Application.create({
	Store: DS.Store.extend({
	})
});




//= require_tree .
