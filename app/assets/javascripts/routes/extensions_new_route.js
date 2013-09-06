App.ExtensionsNewRoute = Ember.Route.extend({
  // model: function() {
  //   // Because we are maintaining a transaction locally in the controller for editing,
  //   // the new record needs to be created in the controller.
  //   // return null;
  //   return App.Extension.find();

  // },

  setupController: function(controller) {
    this._super.apply(this, arguments);
    controller.startEditing();
  },

  deactivate: function() {
    this.controllerFor('extensions.new').stopEditing();
  }
});