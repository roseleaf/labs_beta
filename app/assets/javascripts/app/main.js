// External + Shims for AMD-less Ember
requirejs.config({
  paths: {
    'jquery': 'https://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min',
    'ember':  'https://cdnjs.cloudflare.com/ajax/libs/ember.js/1.0.0-rc.3/ember.min',
    'handlebars': 'https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/1.0.0-rc.3/handlebars.min'
  },
 
  shim: {
    'handlebars': {exports: 'handlebars' },
    'ember': {
      deps: ['handlebars', 'jquery'],
      exports: 'Ember'
    }
  },
});
 
require(['zenlabs_beta']);