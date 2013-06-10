//= require sprockets/commonjs
//= require handlebars
//= require jquery
//= require jquery_ujs
//= require ember
//= require ./vendor/ember-resource
//= require_self
//= require zenlabs_beta
define( 'ZenlabsBeta',
  [
    'ember',
    'models/extension.module',
    'controllers/extension.module'
  ],
 
  function(Ember, ExtensionModel, ExtensionController) {
    var ZenlabsBeta = Ember.Application.create({
      ready: function() {
      },
 
      doSomething: function() {
        $('body').css({'background': 'red'})
      }
    });
 
    return ZenlabsBeta;
  }
);





// ZenlabsBeta = Ember.Application.create();
