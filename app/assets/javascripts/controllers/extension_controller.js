//App.ExtensionController = Ember.ObjectController.extend({});

App.ExtensionController = Ember.ObjectController.extend({
  isEditing: false,
  needs: ['extensionEdit'],	
  recordsLoaded: (function() {
    return !this.get('content').findProperty('isLoaded', false);
  }).property('content.@each.isLoaded'),
  startEditing: function() {
    var extensiontEditController = this.get('controllers.extensionEdit');
    extensiontEditController.set('model', this.get('model'));
    extensiontEditController.startEditing();
    this.set('isEditing', true);
  },

  stopEditing: function() {
    var extensiontEditController = this.get('controllers.extensionEdit');
    extensiontEditController.stopEditing();
    this.set('isEditing', false);
  },

  destroyRecord: function() {
    if (window.confirm("Are you sure you want to delete this contact?")) {
      this.get('model').deleteRecord();
      this.get('store').commit();

      // return to the main contacts listing page
      this.get('target.router').transitionTo('extensions.index');
    }
  }  
});