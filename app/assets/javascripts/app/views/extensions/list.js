ZenlabsBeta.ListExtensionsView = Ember.View.extend({
  templateName:    'app/extensions/list',
  extensionsBinding: 'App.extensionsController',

  showNew: function() {
    this.set('isNewVisible', true);
  },

  hideNew: function() {
    this.set('isNewVisible', false);
  },

  refreshListing: function() {
    ZenlabsBeta.extensionsController.findAll();
  }
});