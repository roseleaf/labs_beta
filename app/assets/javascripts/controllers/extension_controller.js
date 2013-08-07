//ZenlabsBeta.ExtensionController = Ember.ObjectController.extend({});

ZenlabsBeta.ExtensionController = Ember.ObjectController.extend({
  recordsLoaded: (function() {
    return !this.get('content').findProperty('isLoaded', false);
  }).property('content.@each.isLoaded')
});